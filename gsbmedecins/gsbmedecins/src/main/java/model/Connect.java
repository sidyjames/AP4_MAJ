
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect { //singleton qui garantit qu’il n’y aura qu’une seule instance de cette classe.

    private static Connection cnx = null;

    private static Connection open() {
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("Pilote mal installÃ©... " + e); 
        }
        try {
            cnx = DriverManager.getConnection("jdbc:postgresql://localhost:5433/ap4", "postgres", "Sidyjames2001?");
        } catch (SQLException e) {
            System.out.println("Erreur SQL : " + e);
        }
        return cnx;
    }
//Méthode qui va nous retourner notre instance et la créer si elle n'existe pas
    public static Connection get() {
        if (cnx == null) {
            cnx = Connect.open();
        }
        return cnx;
    }

    public static void close() {
        try {
            cnx.close();
        } catch (SQLException e) {
            System.out.println("Erreur SQL : " + e);
        }
    }
}