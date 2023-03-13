package com.notepet;
import java.util.*;
public class OnayBean {
    private String musteriId;
    private String fname;
    private String surname;
    private String homePhone;
    private String mobilePhone;
    private String adres;
    private String email;
    private String dogumTarihi;
    private Hashtable errors;
    public boolean onay(){
        boolean allOk=true;
        if(musteriId.equals("")){
            errors.put("musteriId","Lutfen Musteri Id nizi giriniz!");
            musteriId="";
            allOk=false;
        }else {
            try {
                double x = Double.parseDouble(musteriId);
            } catch (NumberFormatException e) {
                errors.put("musteriId","Lutfen sadece rakam giriniz!");
                musteriId="";
                allOk=false;
            }
        }
        if(fname.equals("")){
            errors.put("fname","Lutfen Name giriniz!");
            fname="";
            allOk=false;
        }
        if(surname.equals("")){
            errors.put("surname","Lutfen Surname giriniz!");
            surname="";
            allOk=false;
        }
        if (homePhone.equals("") || homePhone.length() !=10 ) {
            errors.put("homePhone","Lutfen 10 haneli(212 123 45 67) telefonunuzu bosluksuz olarak giriniz");
            homePhone="";
            allOk=false;
        } else {
            try {
                double y = Double.parseDouble(homePhone);
            } catch (NumberFormatException e) {
                errors.put("homePhone","Lutfen gecerli bir telefon giriniz");
                homePhone="";
                allOk=false;
            }
        }
        if (mobilePhone.equals("") || mobilePhone.length() !=10 ) {
            errors.put("mobilePhone","Lutfen 10 haneli(212 123 45 67) telefonunuzu bosluksuz olarak giriniz");
            mobilePhone="";
            allOk=false;
        } else {
            try {
                double z = Double.parseDouble(mobilePhone);
            } catch (NumberFormatException e) {
                errors.put("mobilePhone","Lutfen gecerli bir telefon giriniz");
                mobilePhone="";
                allOk=false;
            }
        }
        if(adres.equals("")){
            errors.put("adres","Lutfen Adres giriniz!");
            adres="";
            allOk=false;
        }
        if (email.equals("") || (email.indexOf('@') == -1)) {
            errors.put("email","Lutfen gecerli bir Email adresi giriniz");
            email="";
            allOk=false;
        }
        StringTokenizer dtarih=new StringTokenizer(dogumTarihi,"/.,");
        
        if (dogumTarihi.equals("") || dogumTarihi.length() !=10  || (dtarih.countTokens()==0) ){
            errors.put("dogumTarihi","Lutfen gecerli (12/12/1980 seklinde) bir dogum tarihi giriniz");
            dogumTarihi="";
            allOk=false;
        } else {
            StringTokenizer tok=new StringTokenizer(dogumTarihi,"/,.");
            StringBuffer buffertok=new StringBuffer();
            try {
                while(tok.hasMoreTokens()){
                    String toks=tok.nextToken();
                    buffertok.append(toks);
                }
                String al=buffertok.toString();
                double z = Double.parseDouble(al);
            } catch (NumberFormatException e) {
                errors.put("dogumTarihi","Lutfen gecerli bir dogum tarihi giriniz");
                dogumTarihi="";
                allOk=false;
            }
        }
        return allOk;
    }
    public String getErrorMsg(String s) {
        String errorMsg =(String)errors.get(s.trim());
        return (errorMsg == null) ? "":errorMsg;
    }
    /** Creates a new instance of OnayBean */
    public OnayBean() {
        musteriId="";
        fname="";
        surname="";
        homePhone="";
        mobilePhone="";
        adres="";
        email="";
        dogumTarihi="";
        errors=new Hashtable();
    }
    public String getMusteriId(){
        return musteriId;
    }
    public String getFname(){
        return fname;
    }
    public String getSurname(){
        return surname;
    }
    public String getHomePhone(){
        return homePhone;
    }
    public String getMobilePhone(){
        return mobilePhone;
    }
    public String getAdres(){
        return adres;
    }
    public String getEmail(){
        return email;
    }
    public String getDogumTarihi(){
        return dogumTarihi;
    }
    public void setMusteriId(String mustid){
        musteriId=mustid;
    }
    public void setFname(String firstname){
        fname=firstname;
    }
    public void setSurname(String sname){
        surname=sname;
    }
    public void setHomePhone(String hphone){
        homePhone=hphone;
    }
    public void setMobilePhone(String mphone){
        mobilePhone=mphone;
    }
    public void setAdres(String adr){
        adres=adr;
    }
    public void setEmail(String em){
        email=em;
    }
    public void setDogumTarihi(String dtarihi){
        dogumTarihi=dtarihi;
    }
    public void setErrors(String key, String msg) {
        errors.put(key,msg);
    }
}