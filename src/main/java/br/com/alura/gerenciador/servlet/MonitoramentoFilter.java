package br.com.alura.gerenciador.servlet;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

//@WebFilter("/entrada")
public class MonitoramentoFilter implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		System.out.println("Monitoriza��o");
		long antes = System.currentTimeMillis();
		
		
		
		//executa a a��o
		
		chain.doFilter(request, response);
		
		
		String acao = request.getParameter("acao");
		
		long depois = System.currentTimeMillis();
		System.out.println("tempo de execu��o da a��o "+ acao +": " + (depois - antes) + " milisegundos");
	}

	
}
