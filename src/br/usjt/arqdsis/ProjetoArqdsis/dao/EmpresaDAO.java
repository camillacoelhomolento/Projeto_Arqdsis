package br.usjt.arqdsis.ProjetoArqdsis.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.xml.crypto.Data;

import br.usjt.arqdsis.ProjetoArqdsis.model.Empresa;

public class EmpresaDAO {

	public int criar(Empresa empresa) {
		String sqlInsert = "INSERT INTO empresas(CNPJ, razaoSocial, horarioFuncionamento, temperaturaPadao, horarioAr, idConjunto ) VALUES (?, ?, ?, ?, ?, ?)";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlInsert);) {
			stm.setString(1, empresa.getCNPJ());
			stm.setString(2, empresa.getRazaoSocial());
			stm.setString(3, empresa.getHorarioFuncionamento());
			stm.setInt(4, empresa.getTemperaturaPadrao());
			stm.setString(5, empresa.getHorarioAr());
			stm.setInt(6, empresa.getConjuntos());
			
			stm.execute();
			String sqlQuery = "SELECT LAST_INSERT_ID()";
			try (PreparedStatement stm2 = conn.prepareStatement(sqlQuery); ResultSet rs = stm2.executeQuery();) {
				if (rs.next()) {
					empresa.setId(rs.getInt(1));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return empresa.getId();
	}

	public void atualizar(Empresa empresa) {
		String sqlUpdate = "UPDATE empresas SET CNPJ=?, razaoSocial=?, horarioFuncionamento=?, temperaturaPadao=?, horarioAr=?, idConjunto=? WHERE id =?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlUpdate);) {
			stm.setString(1, empresa.getCNPJ());
			stm.setString(2, empresa.getRazaoSocial());
			stm.setString(3, empresa.getHorarioFuncionamento());
			stm.setLong(4, empresa.getTemperaturaPadrao());
			stm.setString(5, empresa.getHorarioAr());
			stm.setLong(6, empresa.getConjuntos());
			stm.setInt(7, empresa.getId());
			stm.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void excluir(int id) {
		String sqlDelete = "DELETE FROM empresas WHERE id = ?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlDelete);) {
			stm.setInt(1, id);
			stm.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Empresa carregar(int id) {
		Empresa empresa = new Empresa();
		empresa.setId(id);
		String sqlSelect = "SELECT CNPJ, razaoSocial, horarioFuncionamento, temperaturaPadao, horarioAr, idConjunto FROM empresas WHERE empresas.id = ?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			stm.setInt(1, empresa.getId());
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					empresa.setCNPJ(rs.getString("CNPJ"));
					empresa.setRazaoSocial(rs.getString("razaoSocial"));
					empresa.setHorarioFuncionamento(rs.getString("horarioFuncionamento"));
					empresa.setTemperaturaPadrao(rs.getInt("temperaturaPadao"));
					empresa.setHorarioAr(rs.getString("horarioAr"));
					empresa.setConjuntos(rs.getInt("idConjunto"));
				} else {
					empresa.setId(-1);
					empresa.setCNPJ(null);
					empresa.setRazaoSocial(null);
					empresa.setHorarioFuncionamento(null);
					empresa.setTemperaturaPadrao((Integer) null);
					empresa.setHorarioAr(null);
					empresa.setConjuntos((Integer) null);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return empresa;
	}
}
