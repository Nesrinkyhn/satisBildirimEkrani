<%@page contentType="text/html;charset=ISO-8859-9" pageEncoding="ISO-8859-9" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8"/>

    <title>Faaliyet Alaný Ekleme</title>

    </head>
<body>

<div class = "container">
    <c:import url="inc/navmenu.jsp"></c:import>

    <c:if test="${user.rol=='user'}">
        <div style="text-align:center"><img src="/img/emoji.gif"  style="width: 150px;"></div>
        <Strong>Bu sayfa yöneticiler için planlanmýþ bir sayfadýr.<br> <br></Strong>
        <Strong>Bir yanlýþlýk olduðunu düþünüyorsanýz Bilgi Ýþlem Servisine durumu bildiriniz.</Strong>
    </c:if>
    <c:if test="${user.rol =='admin'}">
        <div class="row">
       <div class="col-sm-5">

           <h3>Faaliyet Alaný Ekleme</h3>
           <c:if test="${status=true}">

               <strong>Kayýt Yapýldý</strong>
               <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>

           </c:if>
           <form action="/FaaliyetEkle" method="post">
               <div class="mb-3">
                   <input name="faaliyetadi" class="form-control" placeholder="Faaliyet Türü"/>
               </div>
               <div class="mb-3">
                   <input readonly="readonly" name="faaliyetiekleyen" class="form-control" value="${user.name}" placeholder="${user.name}"/>
               </div>
               <div class="mb-3">

                   <input readonly="readonly" type="datetime" id="islemtarihi"  name="islemtarihi" class="form-control" />
               </div>

               <button type="submit" class="btn-btn-success">Send</button>
           </form>
       </div>
       <div class="col-sm-7">
           <h3>Eklenmiþ Faaliyet Alanlarý</h3>
           <table class="table table-hover">
               <thead>
               <tr>
                   <th scope="col">ID</th>
                   <th scope="col">Faaliyet Türü</th>
                   <th scope="col">Faaliyeti Ekleyen</th>
                   <th scope="col">Ýþlem Tarihi</th>

               </tr>
               </thead>
               <tbody>
               <c:if test="${not empty faaliyetler}">
                   <c:forEach items="${faaliyetler}" var="item">
               <tr>
                   <th scope="row">${item.fid}</th>
                   <td>${item.faaliyetadi}</td>
                   <td>${item.faaliyetiekleyen}</td>
                   <td>${item.islemtarihi}</td>

                   <td><a href="/faaliyetSil/${item.fid}" >Sil</a></td>
               </tr>
                   </c:forEach>
               </c:if>


               </tbody>
           </table>
       </div>
   </div>




</div>

</c:if>
<script>
    window.onload = function () {
        var tarih = new Date();
        var tarihMetin = tarih.getDate() + "/" + (tarih.getMonth() + 1) + "/" + tarih.getFullYear()+" "+tarih.getHours()+":"+tarih.getMinutes();
        document.getElementById("islemtarihi").value = tarihMetin;
    }

</script>
</body>
</html>