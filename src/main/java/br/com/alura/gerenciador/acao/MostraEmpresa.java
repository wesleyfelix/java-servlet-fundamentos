package br.com.alura.gerenciador.acao;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.modelo.Banco;
import br.com.alura.gerenciador.modelo.Empresa;

public class MostraEmpresa {
	
	public String executa(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
		
		
		String paramId = request.getParameter("id");
		System.out.println(paramId);
		Integer id = Integer.valueOf(paramId);
		
		Banco banco = new Banco();
		
		Empresa empresa = banco.buscaEmpresaPelaID(id);
		System.out.println(empresa.getNome());
		
		request.setAttribute("empresa", empresa);
		
		return "forward:/formAlteraEmpresa.jsp";
		
	}
}
