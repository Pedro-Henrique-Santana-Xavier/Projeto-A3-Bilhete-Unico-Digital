package br.com.caelum.vraptor.controller;

import javax.inject.Inject;
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

@Path("cadastro")
@Controller
public class CadastroController {
	
	
	@Inject Result result;
	@Inject UsuarioDAO usuarioDao;
	@Inject Validator validator;
	
	
	
	@Get("")
	public void cadastro() {
		
	}
	
	@IncludeParameters
	@Post("salvausuario")
	public void salvausuario(@Valid Usuario usuario, String confirmaSenha) {	
	boolean asSenhasSaoIguais = confirmaSenha.equals(usuario.getSenha());
	validator.addIf(!asSenhasSaoIguais, new SimpleMessage("confirmaSenha", "as senhas não são iguais!"));
	validator.onErrorRedirectTo(this).cadastro();
	 usuarioDao.insertOrUpdate(usuario);
	 result.redirectTo(HomeController.class).home();
	}
}
