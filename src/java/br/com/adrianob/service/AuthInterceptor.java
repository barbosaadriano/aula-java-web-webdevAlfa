/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.adrianob.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 *
 * @author Administrador
 */
public class AuthInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String uri = request.getRequestURI();
        if (uri.endsWith("validarLogin")
                || uri.endsWith("encerrarSessao")
                || uri.endsWith("logar")
                || uri.contains("resources")) {
            return true;
        }

        if (request.getSession().getAttribute("usuarioLogado") != null) {
            return true;
        }

        response.sendRedirect("logar");
        return false;
    }

}
