package model.dao;
import java.sql.Connection;

/** 
* Super class of DAO classes that stores the database information 
*  
*/

public abstract class DB {   

protected String URL = "jdbc:sqlite:database/manager.db";//replace this string with your jdbc:derby local host url   
protected String driver = "org.sqlite.JDBC"; //jdbc client driver - built in with NetBeans   
protected Connection conn; //connection null-instance to be initialized in sub-classes

}
