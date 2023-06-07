
package br.com.caelum.vraptor.controller;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.validation.Constraint;
import javax.validation.ConstraintValidatorContext;
import javax.validation.Payload;
import javax.validation.Valid;

import antlr.collections.List;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.DAO;
import br.com.caelum.vraptor.dao.UsuarioDAO;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.com.caelum.vraptor.model.Usuario;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;

@Path("login")
@Controller
public class LoginController {
	

	@Inject
	Result result;
	
	@Inject
	UsuarioDAO usuarioDao;
	
	@Inject
	Validator validator;
	
	@Get("")
	public void login() {
	
	}
	
	@IncludeParameters
	@Post ("validarlogin")
	public void validarlogin(Usuario usuario, String validaremail, String validarsenha) {
	boolean validarLogin = validaremail.equals(usuario.getEmail());
	validator.addIf(!validarLogin, new SimpleMessage("verificaLogin", "Email incorreto"));
	boolean validarLogin1 = validarsenha.equals(usuario.getSenha());
	validator.addIf(!validarLogin1, new SimpleMessage("verificaLogin1", "Senha Incorreta"));
	validator.onErrorRedirectTo(this).login();
	result.redirectTo(DashbordController.class).dashbord();
	
}
}
