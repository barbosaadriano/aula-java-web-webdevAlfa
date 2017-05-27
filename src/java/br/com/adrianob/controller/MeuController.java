package br.com.adrianob.controller;

import br.com.adrianob.modelo.Conta;
import br.com.adrianob.modelo.Pessoa;
import br.com.adrianob.service.DaoGenerico;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MeuController {

    @RequestMapping("/inicio")
    public String index(HttpSession session) {
        return "index";
    }

    @RequestMapping("/")
    public String begin() {
        return "redirect:inicio";
    }

    @RequestMapping("/cadastrarAlguem")
    public String cadastro(HttpSession session) {
        List<Pessoa> lista = DaoGenerico.getInstance().listar("Select p from br.com.adrianob.modelo.Pessoa p",
                new HashMap<String, Object>());
        session.setAttribute("lpessoas", lista);
        return "pessoas/listar";
    }
    @RequestMapping(value = "/editarPessoa/{idx}", method = RequestMethod.GET)
    public String editarPessoa(@PathVariable int idx, HttpSession session) {
        List<Pessoa> lst = (List<Pessoa>) session.getAttribute("lpessoas");
        Pessoa get = lst.get(idx);
        session.setAttribute("pessEdit", get);
        return "redirect:/novaPessoa";
    }
    @RequestMapping("/novaPessoa")
    public String novo() {
        return "pessoas/cadastroPessoa";
    }

    @RequestMapping("/cadastrarConta")
    public String cadastroConta(HttpSession session) {
        return "contas/cadastroConta";
    }

    @RequestMapping("/listarContas")
    public String listarContas(HttpSession session) {
        Pessoa p = (Pessoa) session.getAttribute("usuarioLogado");
        HashMap<String, Object> par = new HashMap<String, Object>();
        par.put("pessoa", p);
        List<Conta> lista = DaoGenerico.getInstance()
                .listar("Select c from br.com.adrianob.modelo.Conta c where c.titular = :pessoa",
                        par
                );
        session.setAttribute("lcontas", lista);
        return "contas/listar";
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
        Pessoa p = (Pessoa) s.getAttribute("usuarioLogado");
        c.setTitular(p);
        List<Conta> lista = new ArrayList<Conta>();
        lista.add(c);
        DaoGenerico.getInstance().salvarOuRemover(lista, DaoGenerico.SALVAR);
        DaoGenerico.getInstance().closeEm();
        s.setAttribute("conta", c);
        return "pessoas/salvo";
    }
}
