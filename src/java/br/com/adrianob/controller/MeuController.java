package br.com.adrianob.controller;

import br.com.adrianob.modelo.Conta;
import br.com.adrianob.modelo.Pessoa;
import br.com.adrianob.service.DaoGenerico;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MeuController {

    @RequestMapping("/inicio")
    public String index(HttpSession session) {
//        if (session.getAttribute("usuarioLogado") == null) {
//            return "login/form";
//        }
        return "index";
    }

    @RequestMapping("/cadastrarAlguem")
    public String cadastro() {
        return "pessoas/cadastroPessoa";
    }

    @RequestMapping("/cadastrarConta")
    public String cadastroConta(HttpSession session) {
        Pessoa p = (Pessoa) session.getAttribute("usuarioLogado");
        List<Pessoa> pessoas = new ArrayList<Pessoa>();
        pessoas.add(p);
        session.setAttribute("pessoas", pessoas);
        return "contas/cadastroConta";
    }

    @RequestMapping("/salvarAlguem")
    public String salvarPessoa(HttpSession session, Pessoa p) {
        List<Pessoa> lista = new ArrayList<Pessoa>();
        lista.add(p);
        DaoGenerico.getInstance().salvarOuRemover(lista, DaoGenerico.SALVAR);
        DaoGenerico.getInstance().closeEm();
        session.setAttribute("pessoa", p);
        return "pessoas/salvo";
    }

    @RequestMapping(value = "/salvarConta")
    public String salvandoUmaConta(HttpSession s, HttpServletRequest r, Conta c) {
        int idx = Integer.parseInt(r.getParameter("titular_id"));
        ArrayList<Pessoa> lst = (ArrayList<Pessoa>) s.getAttribute("pessoas");
        c.setTitular(lst.get(idx));
        List<Conta> lista = new ArrayList<Conta>();
        lista.add(c);
        DaoGenerico.getInstance().salvarOuRemover(lista, DaoGenerico.SALVAR);
        DaoGenerico.getInstance().closeEm();
        s.setAttribute("conta", c);
        return "contas/salvo";
    }
}
