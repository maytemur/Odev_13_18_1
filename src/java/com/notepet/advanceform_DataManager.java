package com.notepet;
import java.sql.*;
public class advanceform_DataManager {
    public void ekle(String userName,String password1,String firstName,
            String lastName,String email,String zip,boolean rock,boolean pop,boolean bluegrass,boolean blues,
            boolean caz,boolean country,boolean notify) {
        try{
            advanceform_database_connect adf=new advanceform_database_connect();
            Connection adfbaglanti=adf.getConnection();
            String sql="insert into advanceform(username,password,firstname,lastname," +
                    "email,zip,rock,pop,bluegrass,blues,caz,country,notify) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement adfekle=adfbaglanti.prepareStatement(sql);
            adfekle.setString(1, userName);
            adfekle.setString(2, password1);
            adfekle.setString(3,firstName);
            adfekle.setString(4,lastName);
            adfekle.setString(5,email);
            adfekle.setString(6,zip);
            adfekle.setBoolean(7,rock);
            adfekle.setBoolean(8,pop);
            adfekle.setBoolean(9,bluegrass);
            adfekle.setBoolean(10,blues);
            adfekle.setBoolean(11,caz);
            adfekle.setBoolean(12,country);
            adfekle.setBoolean(13,notify);
            
            int sonuc=adfekle.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        advanceform_DataManager dm1=new advanceform_DataManager();
        dm1.ekle("fre","re","red","r","re@","45632",true,true,true,true,true,true,true);
    }}