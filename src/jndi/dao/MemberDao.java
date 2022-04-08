package jndi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import jndi.dto.MemberDto;


public class MemberDao {
    private DataSource dataFactory;

	//-------------------------------------------------------------------------
	// Constructor
	//-------------------------------------------------------------------------
    public MemberDao(){
        try{
        	Context ctx = new InitialContext();
        	dataFactory = (DataSource)ctx.lookup("java:/comp/env/jdbc/test");
        }catch (Exception e){
            e.printStackTrace();
        }
    }
 
    public ArrayList  list(){
    	  
        ArrayList list = new ArrayList();
        try{
            Connection con = dataFactory.getConnection();
            Statement stmt = con.createStatement();
            String query = "SELECT * FROM member";
            ResultSet rs = stmt.executeQuery( query );
           

            while( rs.next()){
                String name = rs.getString( "name" );
                String height = rs.getString( "height" );
                String weight = rs.getString( "weight" );
                int  age  = rs.getInt( "age" );
                String sex = rs.getString( "sex" );

                MemberDto  data = new MemberDto();
                data.setName( name );
                data.setHeight(height);
                data.setWeight( weight );
                data.setAge( age );
                data.setSex( sex );
                list.add( data );
            }//end while
        rs.close();
        stmt.close();
        con.close();
    }catch ( Exception e){
        e.printStackTrace();
    }
        return list;
    }//end list()
}
