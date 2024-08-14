/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.contatos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Aluno
 */
public class Contatos {
    private int id;
    private String nome;
    private String telefone;
    private int idade;
    
    public Contatos(String nome, String telefone, int idade){
        this.nome = nome;
        this.telefone = telefone;
        this.idade = idade;
}
    public Contatos() {
        this.nome = "";
        this.telefone = "";
        this.idade = 0;
    }

    
    //Método para salvar a receita no banco e dados
    
    public boolean salvar(){
        Connection conn = null;
        PreparedStatement ps = null;
        String sql = "INSERT INTO `contatos` (`nome`, `telefone`, `idade`) VALUES ( ?, ?, ?)";
                
        try {
            conn = dbUtil.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, getNome());
            ps.setString(2, getTelefone());
            ps.setInt(3, getIdade());
            
            int rowsUpdate = ps.executeUpdate();
            return rowsUpdate > 0;
        }   catch (SQLException e) {
            e.printStackTrace();
            
            return false;
            
        } finally {
            try {
                if (ps != null) {
                    ps.close();}
                
                if (conn != null) {
                    conn.close();}
                
            } catch (SQLException e) {
                e.printStackTrace();
            }  
        }
    }
    
     // Método para retornar todas as receitas do banco de dados
    public static List<Contatos> getAllContatos() {
        List<Contatos> receitas = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM contatos";

        try {
            conn = dbUtil.getConnection();
            ps = conn.prepareStatement(sql);
            rs = (ResultSet) ps.executeQuery();

            while (rs.next()) {
                Contatos contatos = new Contatos();
                
                contatos.setId(rs.getInt("id"));
                contatos.setNome(rs.getString("nome"));
                contatos.setTelefone(rs.getString("telefone"));
                contatos.setIdade(rs.getInt("idade"));
                receitas.add(contatos);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return receitas;
    }
    
    
    //Método para atualizar um registro na tabela
    public boolean atualizar(){
        Connection conn = null;
        PreparedStatement ps = null;
        String sql = "UPDATE `contatos` SET `nome` = ?, `telefone` = ?, `idade` = ? WHERE `contatos`.`id` = ?";
                
        try {
            conn = dbUtil.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, getNome());
            ps.setString(2, getTelefone());
            ps.setInt(3, getIdade());
            ps.setInt(4, getId());
            
            int rowsInserted = ps.executeUpdate();
            return rowsInserted > 0;
        }   catch (SQLException e) {
            e.printStackTrace();
            
            return false;
            
        } finally {
            try {
                if (ps != null) {
                    ps.close();}
                
                if (conn != null) {
                    conn.close();}
                
            } catch (SQLException e) {
                e.printStackTrace();
            }  
        }
    }
    
    
    public boolean deletar() {
        Connection conn = null;
        PreparedStatement ps = null;
        String sql = "DELETE FROM `contatos`WHERE `contatos`.`id` = ?";
                
        try {
            conn = dbUtil.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, getId());
            
            int rowsDelete = ps.executeUpdate();
            return rowsDelete > 0;
        }   catch (SQLException e) {
            e.printStackTrace();
            
            return false;
            
        } finally {
            try {
                if (ps != null) {
                    ps.close();}
                
                if (conn != null) {
                    conn.close();}
                
            } catch (SQLException e) {
                e.printStackTrace();
            }  
        }
    }
    
    
     // Método para retornar todas as receitas do banco de dados
    public static List<Contatos> getContatos(int id) {
        List<Contatos> contatos = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM contatos where id=?";

        try {
            conn = dbUtil.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = (ResultSet) ps.executeQuery();

            while (rs.next()) {
                Contatos contato = new Contatos();
                
                contato.setId(rs.getInt("id"));
                contato.setNome(rs.getString("nome"));
                contato.setTelefone(rs.getString("telefone"));
                contato.setIdade(rs.getInt("idade"));
                contatos.add(contato);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return contatos;
    }
    
    
    
    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the telefone
     */
    public String getTelefone() {
        return telefone;
    }

    /**
     * @param telefone the telefone to set
     */
    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    /**
     * @return the idade
     */
    public int getIdade() {
        return idade;
    }

    /**
     * @param idade the idade to set
     */
    public void setIdade(int idade) {
        this.idade = idade;
    }

    private String getDescricao() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    private void add(Contatos contatos) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    
}
