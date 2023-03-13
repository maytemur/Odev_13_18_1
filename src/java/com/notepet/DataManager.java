package com.notepet;
import java.sql.*;
public class DataManager {
    public void ekle(double no,String name,String surname,String homephone,
            String mobilephone,String adres,String email,String dogumtarihi) {
        try{
            database_connect m=new database_connect();
            Connection baglanti=m.getConnection();
            String sql="insert into Musteri(MusteriId,Name,Surname,HomePhone,MobilePhone,Adres,Email,DogumTarihi) values(?,?,?,?,?,?,?,?)";
            PreparedStatement ekle=baglanti.prepareStatement(sql);
            ekle.setDouble(1, no);
            ekle.setString(2, name);
            ekle.setString(3,surname);
            ekle.setString(4,homephone);
            ekle.setString(5,mobilephone);
            ekle.setString(6,adres);
            ekle.setString(7,email);
            ekle.setString(8,dogumtarihi);            
            
            int sonuc=ekle.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        DataManager dm=new DataManager();
        dm.ekle(23,"wer","wer","234","2324","wtrww","qwe@gu.wer","23/42/23424");
    }}