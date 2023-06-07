package br.com.caelum.vraptor.model;

import javax.persistence.Entity;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Usuario extends Model {
	
@NotEmpty(message="{usuario.nome.embranco}") @Size(min = 4, max=20, message="{usuario.nome.size}")
private String nome;
@NotEmpty(message="{usuario.cpf.embranco}") @Size(min=11, max=11, message="{usuario.cpf.size}")
private String cpf;
@NotEmpty(message="{usuario.nbilhete.embranco}") @Size(min=8, max=8, message="{usuario.nbilhete.size}")
private String nbilhete;
@NotEmpty(message="{usuario.email.embranco}") @Email
private String email;
@NotEmpty(message="{usuario.telefone.embranco}") @Size(min=11, max=11, message="{usuario.telefone.size}")
private String telefone;
@NotEmpty (message="{usuario.genero.embranco}")
private String genero;
@NotEmpty (message="{usuario.senha.embranco}") @Size(min = 4, max=20, message="{usuario.senha.size}")
private String senha;
private int Saldo;

public String getNome() {
	return nome;
}
public void setNome(String nome) {
	this.nome = nome;
}
public String getCpf() {
	return cpf;
}
public void setCpf(String cpf) {
	this.cpf = cpf;
}
public String getNbilhete() {
	return nbilhete;
}
public void setNbilhete(String nbilhete) {
	this.nbilhete = nbilhete;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getTelefone() {
	return telefone;
}
public void setTelefone(String telefone) {
	this.telefone = telefone;
}
public String getGenero() {
	return genero;
}
public void setGenero(String genero) {
	this.genero = genero;
}
public String getSenha() {
	return senha;
}
public void setSenha(String senha) {
	this.senha = senha;
}
public int getSaldo() {
	return Saldo;
}
public void setSaldo(int saldo) {
	Saldo = saldo;
}

}

