package br.app.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import br.app.beans.Aluno;
import br.app.utils.ConnectionFactory;

public class AlunoDAO {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	private Aluno aluno;

	public AlunoDAO() throws Exception {
		// chama a classe ConnectionFactory e estabele uma conexão
		try {
			this.conn = ConnectionFactory.getConnection();
		} catch (Exception e) {
			throw new Exception("erro: \n" + e.getMessage());
		}
	}

	// método de salvar
	public void salvar(Aluno aluno) throws Exception {
		if (aluno == null)
			throw new Exception("O valor passado nao pode ser nulo");
		try {
			String SQL = "INSERT INTO aluno (rgm, nome, email, dt_nascimento, idade, endereco, foto) values (?, ?, ?, ?, ?, ?, ?)";
			conn = this.conn;
			ps = conn.prepareStatement(SQL);
			ps.setInt(1, aluno.getCaAluno());
			ps.setString(2, aluno.getNomeAluno());
			ps.setString(3, aluno.getEmailAluno());
			ps.setDate(4, new java.sql.Date(aluno.getDtaNasc().getTime()));
			ps.setInt(5, aluno.getIdadeAluno());
			ps.setString(6, aluno.getEndAluno());
			ps.setString(7, aluno.getFoto());
			
			ps.executeUpdate();
			
		} catch (SQLException sqle) {
			throw new Exception("Erro ao inserir dados " + sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps);
		}
	}

	// método de atualizar
	public void atualizar(Aluno aluno) throws Exception {
		if (aluno == null)
			throw new Exception("O valor passado nao pode ser nulo");
		try {
			String SQL = "UPDATE aluno set nome=?, email=?, dt_nascimento=?, idade=?, endereco=?, foto=? WHERE rgm = ?";
			conn = this.conn;
			ps = conn.prepareStatement(SQL);
			
			ps.setString(1, aluno.getNomeAluno());
			ps.setString(2, aluno.getEmailAluno());
			ps.setDate(3, new java.sql.Date(aluno.getDtaNasc().getTime()));
			ps.setInt(4, aluno.getIdadeAluno());
			ps.setString(5, aluno.getEndAluno());
			ps.setString(6, aluno.getFoto());
			ps.setInt(7, aluno.getCaAluno());
			
			ps.executeUpdate();
			
		} catch (SQLException sqle) {
			throw new Exception("Erro ao alterar dados " + sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps);
		}
	}

	// método de excluir
	public void excluir(Aluno aluno) throws Exception {
		if (aluno == null)
			throw new Exception("O valor passado nao pode ser nulo");
		try {
			String SQL = "DELETE FROM aluno WHERE rgm = ?";
			conn = this.conn;
			ps = conn.prepareStatement(SQL);
			ps.setInt(1, aluno.getCaAluno());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new Exception("Erro ao excluir dados " + sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps);
		}
	}

	// Procurar Aluno
	public Aluno procurarAluno(int caAluno) throws Exception {
		try {
			String SQL = "SELECT * FROM aluno WHERE rgm=?";
			conn = this.conn;
			ps = conn.prepareStatement(SQL);
			ps.setInt(1, caAluno);
			rs = ps.executeQuery();

			if (rs.next()) {
				int ca = rs.getInt(1);
				String nome = rs.getString(2);
				String email = rs.getString(3);
				Date nascimento = rs.getDate(4);
				int idade = rs.getInt(5);
				String endereco = rs.getString(6);
				String foto = rs.getString(7);
				aluno = new Aluno(ca, nome, email, nascimento, idade, endereco, foto);
			}
			return aluno;
		} catch (SQLException sqle) {
			throw new Exception(sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps, rs);
		}
	}
	// Listar todos os alunos
	public List todosAlunos() throws Exception {
		try {
			conn = this.conn;
			ps = conn.prepareStatement("SELECT * FROM aluno");
			rs = ps.executeQuery();
			List<Aluno> list = new ArrayList<Aluno>();
			while (rs.next()) {
				int ca = rs.getInt(1);
				String nome = rs.getString(2);
				String email = rs.getString(3);
				Date nascimento = rs.getDate(4);
				int idade = rs.getInt(5);
				String endereco = rs.getString(6);
				String foto = rs.getString(7);
				list.add(new Aluno(ca, nome, email, nascimento, idade, endereco, foto));
			}
			return list;
		} catch (SQLException sqle) {
			throw new Exception(sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps, rs);
		}
	}
}