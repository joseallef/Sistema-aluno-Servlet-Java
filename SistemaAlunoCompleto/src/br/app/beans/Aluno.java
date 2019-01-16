package br.app.beans;

import java.util.Date;

public class Aluno {
	// padrão JavaBean ou POJO – Classe com getters/setters, mais métodos
	// construtores
	private int caAluno;
	private String nomeAluno;
	private String emailAluno;
	private Date dtaNasc;
	private int idadeAluno;
	private String endAluno;
	private String foto;

	public Aluno(int caAluno, String nomeAluno, String emailAluno, Date dtaNasc, int idadeAluno, String endAluno, String foto) {
		this.caAluno = caAluno;
		this.nomeAluno = nomeAluno;
		this.emailAluno = emailAluno;
		this.dtaNasc = dtaNasc;
		this.idadeAluno = idadeAluno;
		this.endAluno = endAluno;
		this.foto = foto;
	}

	public Aluno() {
	}

	public int getCaAluno() {
		return caAluno;
	}

	public void setCaAluno(int caAluno) {
		this.caAluno = caAluno;
	}

	public String getNomeAluno() {
		return nomeAluno;
	}

	public void setNomeAluno(String nomeAluno) {
		this.nomeAluno = nomeAluno;
	}

	public String getEmailAluno() {
		return emailAluno;
	}

	public void setEmailAluno(String emailAluno) {
		this.emailAluno = emailAluno;
	}

	public Date getDtaNasc() {
		return dtaNasc;
	}

	public void setDtaNasc(Date dtaNasc) {
		this.dtaNasc = dtaNasc;
	}

	public int getIdadeAluno() {
		return idadeAluno;
	}

	public void setIdadeAluno(int idadeAluno) {
		this.idadeAluno = idadeAluno;
	}

	public String getEndAluno() {
		return endAluno;
	}

	public void setEndAluno(String endAluno) {
		this.endAluno = endAluno;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}
}