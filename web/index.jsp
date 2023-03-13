<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
<head><title>FORM INDEX</title></head><body>
<script>
function EkleyeGit(){
document.myForm.action="EkleUserForm.jsp";
document.myForm.submit();
}
function ListeyeGit(){
document.myForm.action="Liste.jsp";
document.myForm.submit();
}
</script>
<form name=myForm method=POST >
<input type=button name=Ekle value="Kayıt Ekle" onclick=EkleyeGit()>
<input type=button name=ListeleGuncelle value="Listele&Guncelle" onclick=ListeyeGit()>

</form>
</body></html>