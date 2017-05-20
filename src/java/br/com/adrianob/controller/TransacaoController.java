/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.adrianob.controller;

import br.com.adrianob.modelo.Conta;
import br.com.adrianob.modelo.Pessoa;
import br.com.adrianob.modelo.Transacao;
import br.com.adrianob.service.DaoGenerico;
import java.util.ArrayList;
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
public class TransacaoController {

    @RequestMapping("/movimentarConta")
    public String realizarMovimento(HttpSession session) {
        Pessoa usu = (Pessoa) session.getAttribute("usuarioLogado");
        StringBuilder sql = new StringBuilder("Select c from br.com.adrianob.modelo.Conta c ");
        sql.append(" where c.titular = :titular");
        Map<String, Object> par = new HashMap<String, Object>();
        par.put("titular", usu);
        List<Conta> contas = DaoGenerico.getInstance().listar(sql.toString(),
                par);
        DaoGenerico.getInstance().closeEm();
        session.setAttribute("contas", contas);
        return "transacao/inicio";
    }

    @RequestMapping("/processarMovimento")
    public String processarMovimento(HttpSession s, HttpServletRequest r, Transacao t) {
        int idx = Integer.parseInt(r.getParameter("conta_id"));
        ArrayList<Conta> lst = (ArrayList<Conta>) s.getAttribute("contas");
        Conta conta = lst.get(idx);
        if (t.getTipo().equals(Transacao.TP_ENTRADA)) {
            conta.depositar(t.getValor());
        } else if (t.getTipo().equals(Transacao.TP_SAIDA)) {
            try {
                conta.sacar(t.getValor());
            } catch (Exception ex) {
                s.setAttribute("erro", ex.getMessage());
                return "transacao/semSaldo";
            }
        }
        t.setConta(conta);
        List<Object> lista = new ArrayList<Object>();
        lista.add(t);
        lista.add(conta);
        DaoGenerico.getInstance().salvarOuRemover(lista, DaoGenerico.SALVAR);
        DaoGenerico.getInstance().closeEm();
        s.setAttribute("transacao", t);
        s.setAttribute("conta", conta);
        return "transacao/comprovante";
    }

    @RequestMapping("/imprimirExtrato")
    public String extrato(HttpSession session) {
        Pessoa usu = (Pessoa) session.getAttribute("usuarioLogado");
        StringBuilder sql = new StringBuilder("Select t from br.com.adrianob.modelo.Transacao t ");
        sql.append(" where t.conta in ( :conta )");
        Map<String, Object> par = new HashMap<String, Object>();
        par.put("conta", usu.getContas());
        List<Transacao> transacoes = DaoGenerico.getInstance().listar(sql.toString(), par);
        session.setAttribute("textrato", transacoes);
        return "transacao/extrato";
    }
}
