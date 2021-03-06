package UserPanel;
import Objects.Dar.Dar;
import Objects.Dar.DarCtrl;
import Objects.Logowanie.Logowanie;
import Objects.Logowanie.LogowanieCtrl;
import Objects.Pies.Pies;
import Objects.Pies.PiesCtrlU;
import Objects.Rasa.Rasa;
import Objects.Rasa.RasaCtrl;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.*;
import javafx.scene.layout.HBox;

import java.io.IOException;
import java.sql.*;
public class UserPanel{
    @FXML
    private ListView<Logowanie> loglist;
    @FXML
    private ListView<Pies> pieslist;
    @FXML
    private ListView<Dar> darlist;
    @FXML
    private ListView<Pies> starlist;
    @FXML
    private ListView<Rasa> raslist;
    private ObservableList<Logowanie> logowania;
    private ObservableList<Pies> psy;
    private ObservableList<Dar> dary;
    private ObservableList<Rasa> rasy;
    private ObservableList<Pies> stare;
    public UserPanel(){
        logowania=FXCollections.observableArrayList();
        psy=FXCollections.observableArrayList();
        dary=FXCollections.observableArrayList();
        rasy=FXCollections.observableArrayList();
        stare=FXCollections.observableArrayList();
    }
    private void getLogList() throws ClassNotFoundException, SQLException{
        logowania.clear();
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection con=DriverManager.getConnection("jdbc:sqlserver://ERPE;database=bazaDanych", "adnub", "admin");
        Statement stm=con.createStatement();
        ResultSet result=stm.executeQuery("exec proc1");
        while(result.next()){
            Logowanie newlog=new Logowanie(result.getString(1), result.getString(2), result.getString(3));
            logowania.add(newlog);
        }
        con.close();
        loglist.setItems(logowania);
    }
    private void getPiesList() throws ClassNotFoundException, SQLException{
        psy.clear();
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection con=DriverManager.getConnection("jdbc:sqlserver://ERPE;database=bazaDanych", "adnub", "admin");
        Statement stm=con.createStatement();
        ResultSet result=stm.executeQuery("select p.id, p.imie, r.nazwa_pl, p.is_lagodny, p.is_wege from Pies as p inner join Rasa as r on p.id_rasa = r.id");
        while(result.next()){
            boolean permL, permW;
            permL=(result.getInt(4)==1);
            permW=(result.getInt(5)==1);
            Pies newpies=new Pies(result.getInt(1), result.getString(2), result.getString(3), permL, permW);
            psy.add(newpies);
        }
        con.close();
        pieslist.setItems(psy);
    }
    private void getStarList() throws ClassNotFoundException, SQLException{
        stare.clear();
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection con=DriverManager.getConnection("jdbc:sqlserver://ERPE;database=bazaDanych", "adnub", "admin");
        Statement stm=con.createStatement();
        ResultSet result=stm.executeQuery("select p.id, p.imie, r.nazwa_pl, p.isLagodny, p.isWege from Archiwum as p inner join Rasa as r on p.id_rasa = r.id");
        while(result.next()){
            boolean permL, permW;
            permL=(result.getInt(4)==1);
            permW=(result.getInt(5)==1);
            Pies newstar=new Pies(result.getInt(1), result.getString(2), result.getString(3), permL, permW);
            stare.add(newstar);
        }
        con.close();
        starlist.setItems(stare);
    }
    private void getDarList() throws ClassNotFoundException, SQLException{
        dary.clear();
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection con=DriverManager.getConnection("jdbc:sqlserver://ERPE;database=bazaDanych", "adnub", "admin");
        Statement stm=con.createStatement();
        ResultSet result=stm.executeQuery("select d.id, d.data, u.login, d.kwota from Darowizna as d inner join Uzytkownik as u on d.id_uzytkownik = u.id where d.id_uzytkownik=(select top 1 u2.id from Logowanie as l2 inner join Uzytkownik u2 on l2.id_uzytkownik = u2.id order by l2.id desc) order by 1 desc");
        while(result.next()){
            Dar newdar=new Dar(result.getString(1), result.getString(2), result.getString(3), result.getInt(4));
            dary.add(newdar);
        }
        con.close();
        darlist.setItems(dary);
    }
    private void getRasList() throws ClassNotFoundException, SQLException{
        rasy.clear();
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection con=DriverManager.getConnection("jdbc:sqlserver://ERPE;database=bazaDanych", "adnub", "admin");
        Statement stm=con.createStatement();
        ResultSet result=stm.executeQuery("select id, nazwa_pl, nazwa_ang from Rasa");
        while(result.next()){
            Rasa newrasa=new Rasa(result.getString(1), result.getString(2), result.getString(3));
            rasy.add(newrasa);
        }
        con.close();
        raslist.setItems(rasy);
    }

    public void initialize() throws SQLException, ClassNotFoundException{
        getLogList();
        getPiesList();
        getDarList();
        getRasList();
        getStarList();
        loglist.setCellFactory(lb -> new ListCell<Logowanie>() {
            private HBox graphic1;
            private LogowanieCtrl controller1;
            {
                try{
                    FXMLLoader loader1=new FXMLLoader(getClass().getResource("/Objects/Logowanie/Logowanie.fxml"));
                    graphic1=loader1.load();
                    controller1=loader1.getController();
                }catch(IOException e){
                    e.printStackTrace();
                }
            }
            @Override
            protected void updateItem(Logowanie log, boolean empty){
                super.updateItem(log, empty);
                if(empty){
                    setGraphic(null);
                }else{
                    controller1.setId(log.getId());
                    controller1.setLogin(log.getLogin());
                    controller1.setData(log.getData());

                    setGraphic(graphic1);
                }
            }
        });
        pieslist.setCellFactory(lb -> new ListCell<Pies>() {
            private HBox graphic2;
            private PiesCtrlU controller2;
            {
                try {
                    FXMLLoader loader2 = new FXMLLoader(getClass().getResource("/Objects/Pies/PiesU.fxml"));
                    graphic2 = loader2.load();
                    controller2 = loader2.getController();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            @Override
            protected void updateItem(Pies pies, boolean empty) {
                super.updateItem(pies, empty);
                if (empty) {
                    setGraphic(null);
                } else {
                    controller2.setImie(pies.getImie());
                    controller2.setRasa(pies.getRasa());
                    if (pies.getIs_Lagodny()) {
                        controller2.setIs_lagodny("/img/hear.gif");
                    } else {
                        controller2.setIs_lagodny("/img/dang.gif");
                    }
                    if (pies.getIs_wege()) {
                        controller2.setIs_wege("/img/broc.gif");
                        System.out.println(pies.getIs_Lagodny());
                    } else {
                        controller2.setIs_wege("/img/meat.gif");
                    }
                    setGraphic(graphic2);
                }
            }
        });
        starlist.setCellFactory(lb -> new ListCell<Pies>() {
            private HBox graphic2;
            private PiesCtrlU controller2;
            {
                try {
                    FXMLLoader loader2 = new FXMLLoader(getClass().getResource("/Objects/Pies/PiesU.fxml"));
                    graphic2 = loader2.load();
                    controller2 = loader2.getController();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            @Override
            protected void updateItem(Pies pies, boolean empty) {
                super.updateItem(pies, empty);
                if (empty) {
                    setGraphic(null);
                } else {
                    controller2.setImie(pies.getImie());
                    controller2.setRasa(pies.getRasa());
                    if (pies.getIs_Lagodny()) {
                        controller2.setIs_lagodny("/img/hear.gif");
                    } else {
                        controller2.setIs_lagodny("/img/dang.gif");
                    }
                    if (pies.getIs_wege()) {
                        controller2.setIs_wege("/img/broc.gif");
                        System.out.println(pies.getIs_Lagodny());
                    } else {
                        controller2.setIs_wege("/img/meat.gif");
                    }
                    setGraphic(graphic2);
                }
            }
        });
        darlist.setCellFactory(lb -> new ListCell<Dar>() {
            private HBox graphic3;
            private DarCtrl controller3;
            {
                try{
                    FXMLLoader loader1=new FXMLLoader(getClass().getResource("/Objects/Dar/Dar.fxml"));
                    graphic3=loader1.load();
                    controller3=loader1.getController();
                }catch(IOException e){
                    e.printStackTrace();
                }
            }
            @Override
            protected void updateItem(Dar dar, boolean empty){
                super.updateItem(dar, empty);
                if(empty){
                    setGraphic(null);
                }else{
                    controller3.setId(dar.getId());
                    controller3.setLogin(dar.getLogin());
                    controller3.setData(dar.getData());
                    controller3.setKwota(dar.getKwota());
                    setGraphic(graphic3);
                }
            }
        });
        raslist.setCellFactory(lb -> new ListCell<Rasa>() {
            private HBox graphic4;
            private RasaCtrl controller4;
            {
                try{
                    FXMLLoader loader4=new FXMLLoader(getClass().getResource("/Objects/Rasa/Rasa.fxml"));
                    graphic4=loader4.load();
                    controller4=loader4.getController();
                }catch(IOException e){
                    e.printStackTrace();
                }
            }
            @Override
            protected void updateItem(Rasa rasa, boolean empty){
                super.updateItem(rasa, empty);
                if(empty){
                    setGraphic(null);
                }else{
                    controller4.setId(rasa.getId());
                    controller4.setPol(rasa.getPol());
                    controller4.setAng(rasa.getAng());
                    setGraphic(graphic4);
                }
            }
        });
    }
}
