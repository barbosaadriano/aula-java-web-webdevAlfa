/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.adrianob.controller;

import br.com.adrianob.modelo.Pessoa;
import br.com.adrianob.service.DaoGenerico;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Administrador
 */
@Controller
public class LoginController {

    @RequestMapping("/logar")
    public String telaDeLogin() {
        return "login/form";
    }

    @RequestMapping("/validarLogin")
    public String validar(HttpSession s, HttpServletRequest r) {
        String login = r.getParameter("login");
        String senha = r.getParameter("senha");
        System.out.println(login);
        System.out.println(senha);
        StringBuilder sql = new StringBuilder("Select p from br.com.adrianob.modelo.Pessoa p");
        sql.append(" where p.login = :login and p.senha = :senha");
        Map<String, Object> parametros = new HashMap<String, Object>();
        parametros.put("login", login);
        parametros.put("senha", senha);
        List<Pessoa> pessoa = DaoGenerico.getInstance().listar(sql.toString(), parametros);
        DaoGenerico.getInstance().closeEm();
        if (pessoa.isEmpty()) {
            s.setAttribute("erro", "Credenciais inválidas!");
            return "login/form";
        }
        s.setAttribute("usuarioLogado", pessoa.get(0));
        return "index";
    }

    @RequestMapping("/encerrarSessao")
    public String logout(HttpSession s) {
        s.invalidate();
        return "login/form";
    }
}
