package br.com.adrianob.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MeuController {

    @RequestMapping("/inicio")
    public String index() {
        return "index";
    }

    @RequestMapping("/cadastrarAlguem")
    public String cadastro() {
        return "pessoas/cadastroPessoa";
    }
}
