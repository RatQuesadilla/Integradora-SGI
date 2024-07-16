package mx.edu.utez.sgi.dao;

import mx.edu.utez.sgi.utils.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

    public class DaoLogin {
        private final DBConnection DB_CONNECTION= new DBConnection();
        private PreparedStatement pstm;
        private ResultSet rs;
        private Connection con;
        private final String[] QUERIES = {
                "SELECT * from user where password=? and (username=? OR email=?) LIMIT 1;"
        };

        public boolean findUsernameAndPassword(String username, String password){
            try{
                con=DB_CONNECTION.getConnection();
                pstm=con.prepareStatement(QUERIES[0]);
                pstm.setString(1,password);
                pstm.setString(2,username);
                pstm.setString(3, username);
                rs=pstm.executeQuery();
                return rs.next();
            }catch(SQLException e){
                e.printStackTrace();
                return false;
            }finally{
                closeConnection();
            }
        }

        public static void main(String[] args) {
            DaoLogin dao = new DaoLogin();
            System.out.println(dao.findUsernameAndPassword("Katia","Katia"));
        }
        public void closeConnection(){
            try{
                if(rs!=null){
                    rs.close();
                }
                if (con!=null){
                    con.close();
                }
            }catch(SQLException e){
                e.printStackTrace();
            }
        }
    }
