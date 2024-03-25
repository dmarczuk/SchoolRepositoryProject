
package javaapplication2;

import com.microsoft.sqlserver.jdbc.*;
import java.sql.*;

   

public class JavaApplication2 {
    
    public static void printTableAbsolwenci(Connection conn) throws SQLException {
        System.out.println("-------------------------------ABSOLWENCI-------------------------------");
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Absolwenci");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            System.out.println("Imie: " + rs.getString("Imie"));
            System.out.println("Nazwisko: " + rs.getString("Nazwisko"));
            System.out.println("Pesel: " + rs.getString("Pesel"));
            System.out.println("Data_ukonczenia: " + rs.getString("Data_ukonczenia"));
            System.out.println();
        }
    }
    
    public static void printTableAutor(Connection conn) throws SQLException {
        System.out.println("-------------------------------AUTOR-------------------------------");
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Autor");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            System.out.println("IdAutora: " + String.valueOf(rs.getInt("IdAutora")));
            System.out.println("Imie: " + rs.getString("Imie"));
            System.out.println("Nazwisko: " + rs.getString("Nazwisko"));
            System.out.println();
        }
    }
    
    public static void printTableBiblioteka(Connection conn) throws SQLException {
        System.out.println("-------------------------------BIBLIOTEKA-------------------------------");
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Biblioteka");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            System.out.println("Id: " + String.valueOf(rs.getInt("Id")));
            System.out.println("Od_kiedy: " + rs.getString("Od_kiedy"));
            System.out.println("Do_kiedy: " + rs.getString("Do_kiedy"));
            System.out.println("IdKsiazki: " + String.valueOf(rs.getString("Ksiazka")));
            System.out.println("Kto pozyczyl: " + String.valueOf(rs.getString("Kto")));
            System.out.println();
        }
    }
    
    public static void printTableData(Connection conn) throws SQLException {
        System.out.println("-------------------------------DATA-------------------------------");
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Data");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            System.out.println("Id_daty: " + String.valueOf(rs.getInt("Id_daty")));
            System.out.println("Dzien: " + rs.getString("Dzien"));
            System.out.println("Od: " + rs.getString("Od"));
            System.out.println("Do: " + rs.getString("Do"));
            System.out.println();
        }
    }
    
    public static void printTableDyzur(Connection conn) throws SQLException {
        System.out.println("-------------------------------DYZUR-------------------------------");
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Dyzur");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            System.out.println("Id_dyzuru: " + String.valueOf(rs.getInt("Id_dyzuru")));
            System.out.println("Data: " + String.valueOf(rs.getInt("Data")));
            System.out.println("NrSali: " + String.valueOf(rs.getInt("NrSali")));
            System.out.println();
        }
    }
    
        public static void printTableKlasa(Connection conn) throws SQLException {
        System.out.println("-------------------------------KLASA-------------------------------");
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Klasa");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            System.out.println("NrKlasy: " + rs.getString("NrKlasy"));
            System.out.println("Liczba_uczniow: " + String.valueOf(rs.getInt("Liczba_uczniow")));
            System.out.println("Profil: " + rs.getString("Profil"));
            System.out.println();
        }
    }
        
    public static void printTableKsiazka(Connection conn) throws SQLException {
        System.out.println("-------------------------------KSIAZKA-------------------------------");
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Ksiazka");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            System.out.println("Id: " + String.valueOf(rs.getInt("id")));
            System.out.println("Tytul: " + rs.getString("Tytul"));
            System.out.println("Rok wydania: " + rs.getString("Rok_wydania"));
            System.out.println("IdAutora: " + String.valueOf(rs.getInt("IdAutora")));
            System.out.println();
        }
    }

    public static void printTableNauczyciel(Connection conn) throws SQLException {
        System.out.println("-------------------------------NAUCZYCIEL-------------------------------");
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Nauczyciel");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            System.out.println("Imie: " + rs.getString("Imie"));
            System.out.println("Nazwisko: " + rs.getString("Nazwisko"));
            System.out.println("Pesel: " + rs.getString("Pesel"));
            System.out.println("Wychowawca: " + rs.getString("Wychowawca"));
            System.out.println("IdPrzedmiotu: " + String.valueOf(rs.getInt("IdPrzedmiotu")));
            System.out.println("DyzurId: " + String.valueOf(rs.getInt("DyzurId")));
            System.out.println();
        }
    }
    
  /*  public static void printTableOceny(Connection conn) throws SQLException {
        System.out.println("-------------------------------OCENY-------------------------------");
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Oceny");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            System.out.println("Pesel_ucznia: " + rs.getString("Pesel_ucznia"));
            System.out.println("Przedmiot: " + String.valueOf(rs.getInt("Przedmiot")));
            System.out.println("Ocena: " + String.valueOf(rs.getInt("Ocena")));
            System.out.println();
        }
    }    */
    
    public static void printTablePlanLekcji(Connection conn) throws SQLException {
        System.out.println("-------------------------------PLAN LEKCJI-------------------------------");
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Plan_lekcji");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            System.out.println("Id_zajec: " + String.valueOf(rs.getInt("Id_zajec")));
            System.out.println("Data: " + String.valueOf(rs.getInt("Data")));
            System.out.println("NrKlasy: " + rs.getString("NrKlasy"));
            System.out.println("Przedmiot: " + rs.getInt("Przedmiot"));
            System.out.println("Prowadzacy_pesel: " + rs.getString("Prowadzacy_pesel"));
            System.out.println("NrSali: " + String.valueOf(rs.getInt("NrSali")));
            System.out.println();
        }
    }
    
        public static void printTablePracownik(Connection conn) throws SQLException {
        System.out.println("-------------------------------PRACOWNIK-------------------------------");
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Pracownik");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            System.out.println("Imie: " + rs.getString("Imie"));
            System.out.println("Nazwisko: " + rs.getString("Nazwisko"));
            System.out.println("Pesel: " + rs.getString("Pesel"));
            System.out.println("Pensja: " + String.valueOf(rs.getInt("Pensja")));
            System.out.println("IdZawodu: " + String.valueOf(rs.getInt("IdZawodu")));
            System.out.println();
        }
    }
    
    public static void printTableProdukt(Connection conn) throws SQLException {
        System.out.println("-------------------------------PRODUKT-------------------------------");
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Produkt");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            System.out.println("Id: " + String.valueOf(rs.getInt("Id")));
            System.out.println("Nazwa: " + rs.getString("Nazwa"));
            System.out.println("Cena: " + rs.getString("Cena"));
            System.out.println();
        }
    }
    
    public static void printTablePrzedmiot(Connection conn) throws SQLException {
        System.out.println("-------------------------------PRZEDMIOT-------------------------------");
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Przedmiot");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            System.out.println("IdPrzedmiotu: " + String.valueOf(rs.getInt("IdPrzedmiotu")));
            System.out.println("Nazwa: " + rs.getString("Nazwa"));
            System.out.println();
        }
    }
    
    public static void printTableSala(Connection conn) throws SQLException {
        System.out.println("-------------------------------SALA-------------------------------");
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Sala");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            System.out.println("Nr_Sali: " + String.valueOf(rs.getInt("Nr_Sali")));
            System.out.println("Pietro: " + String.valueOf(rs.getInt("Pietro")));
            System.out.println();
        }
    }
    
    public static void printTableSklepik(Connection conn) throws SQLException {
        System.out.println("-------------------------------SKLEPIK-------------------------------");
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Sklepik");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            System.out.println("Id: " + String.valueOf(rs.getInt("Id")));
            System.out.println("Data_dostawy: " + rs.getString("Data_dostawy"));
            System.out.println("Data_sprzedazy: " + rs.getString("Data_sprzedazy"));
            System.out.println("Produkt: " + String.valueOf(rs.getInt("Produkt")));
            System.out.println();
        }
    }
    
    public static void printTableUczen(Connection conn) throws SQLException {
        System.out.println("-------------------------------UCZEN-------------------------------");
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Uczen");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            System.out.println("Imie: " + rs.getString("Imie"));
            System.out.println("Nazwisko: " + rs.getString("Nazwisko"));
            System.out.println("Pesel: " + rs.getString("Pesel"));
            System.out.println("NrKlasy: " + rs.getString("NrKlasy"));
            System.out.println();
        }
    }
    
    public static void printTableZawod(Connection conn) throws SQLException {
        System.out.println("-------------------------------ZAWOD-------------------------------");
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Zawod");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            System.out.println("IdZawodu" + rs.getInt("IdZawodu"));
            System.out.println("Nazwa: " + rs.getString("Nazwa"));
        }
    }    
        
    public static void main(String[] args) {
        String url ="jdbc:sqlserver://DESKTOP-FOL2MR8\\SQLEXPRESS:1433; databaseName=Szkola3; integratedSecurity=true;";
        try {
            Connection conn = DriverManager.getConnection(url);
            printTableAbsolwenci(conn);
            printTableAutor(conn);
            printTableBiblioteka(conn);
            printTableData(conn);
            printTableDyzur(conn);
            printTableKlasa(conn);
            printTableKsiazka(conn);
            printTableNauczyciel(conn);
//            printTableOceny(conn);
            printTablePlanLekcji(conn);
            printTablePracownik(conn);
            printTableProdukt(conn);
            printTablePrzedmiot(conn);
            printTableSala(conn);
            printTableSklepik(conn);
            printTableUczen(conn);
            printTableZawod(conn);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
}

    
