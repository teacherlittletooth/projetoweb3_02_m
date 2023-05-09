package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MapaDAO {
        private static Connection conn;
        
        public MapaDAO() throws ClassNotFoundException, SQLException {
            conn = MyConnection.getConnection();
        }
        
        public void insertMapa(Mapa mapa) throws SQLException{
           //Criando a query genérica
            String sql = "INSERT INTO mapas(nome, missao, clima)"
                                        + "VALUES (?, ?, ?)";
            
            //Instanciando o objeto de conexão informando a query
            PreparedStatement prep = conn.prepareStatement(sql);
            
            //Informando os parâmetros enviados para a query
            prep.setString(1, mapa.getNome());
            prep.setString(2, mapa.getMissao());
            prep.setString(3, mapa.getClima());
            
            prep.execute(); //Lançando o SQL pronto na base de dados
            prep.close();
        }
}
