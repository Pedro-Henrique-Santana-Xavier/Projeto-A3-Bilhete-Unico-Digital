package br.com.caelum.vraptor.controller;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.UsuarioDAO;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.com.caelum.vraptor.model.Usuario;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;

@Path("saldorecarga")
@Controller
public class SaldoRecargaController {
	
	
	@Inject EntityManager em;
	@Inject Result result;
	@Inject UsuarioDAO usuarioDao;
	@Inject Validator validator;
	
	@Get("")
	public void saldorecarga() {
		//usuarioDao.select(usuario.getSaldo());
	}
	
	
	
	@IncludeParameters
	@Post("inserirrecarga")
	public void inserirrecarga(Usuario usuario) {	
	//usuarioDao.insertOrUpdate(usuario.getSaldo());	
    result.redirectTo(SaldoRecargaController.class).saldorecarga();
	}
}
