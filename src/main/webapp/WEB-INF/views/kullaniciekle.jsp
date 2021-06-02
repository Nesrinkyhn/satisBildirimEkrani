<%@page contentType="text/html;charset=ISO-8859-9" pageEncoding="ISO-8859-9" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8"/>

    <title>Kullan�c� Ekleme</title>

</head>
<body>

<div class = "container">
    <c:import url="inc/navmenu.jsp"></c:import>

    <c:if test="${user.rol=='user'}">
        <div style="text-align:center"><img src="/img/emoji.gif"  style="width: 150px;"></div>
        <Strong>Bu sayfa y�neticiler i�in planlanm�� bir sayfad�r.<br> <br></Strong>
        <Strong>Bir yanl��l�k oldu�unu d���n�yorsan�z Bilgi ��lem Servisine durumu bildiriniz.</Strong>
    </c:if>
    <c:if test="${user.rol =='admin'}">
    <div class="row">
        <div class="col-sm-5">

            <h2>Kullan�c� Ekleme</h2>

            <form action="/kullaniciEkle" method="post">
                <div class="mb-3">
                    Role :
                    <select name="rol" >
                        <option value="user">user</option>
                        <option value="admin">admin</option>
                    </select>
                </div>
                <div class="mb-3">
                    <input name="email" class="form-control" placeholder="Kullan�c� Ad�"/>
                </div>

                <div class="mb-3">
                    <input name="password" class="form-control" placeholder="�ifre"/>
                </div>
                <div class="mb-3">
                    <input name="name" class="form-control" placeholder="�sim"/>
                </div>
                <div class="mb-3">
                    <input name="surname" class="form-control" placeholder="Soyisim"/>
                </div>


                <div class="mb-3">
                    <input name="isyerikodu" class="form-control" placeholder="��yeri Kodu"/>
                </div>
                <div class="mb-3">
                    <input  name="isyeriadi" class="form-control" placeholder="��yeri Ad�"/>
                </div>
                <div class="mb-3">
                    <input readonly="readonly" name="islemYapan" class="form-control" value="${user.name}" placeholder="${user.name}"/>
                </div>
                <div class="mb-3">

                    <input readonly="readonly" type="datetime" id="islemtarihi"  name="islemTarihi" class="form-control" />
                </div>

                <button type="submit" class="btn-btn-success">Kay�t</button>
            </form>
        </div>
        <div class="col-sm-7">
            <h3>Kullan�c�lar</h3>
            <table class="table table-hover">
                <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Kullan�c� Ad�</th>
                    <th scope="col">�sim</th>
                    <th scope="col">Soyisim</th>
                    <th scope="col">��yeri kodu</th>
                    <th scope="col">��yeri Ad�</th>
                    <th scope="col">Rol</th>


                </tr>
                </thead>
                <tbody>
                <c:if test="${not empty kullanici}">
                    <c:forEach items="${kullanici}" var="item">
                        <tr>
                            <th scope="row">${item.uid}</th>
                            <th scope="row">${item.kullaniciAdi}</th>
                            <th scope="row">${item.name}</th>
                            <th scope="row">${item.surname}</th>
                            <th scope="row">${item.isyerikodu}</th>
                            <th scope="row">${item.isyeriadi}</th>
                            <th scope="row">${item.rol}</th>




                            <td><a href="/kullaniciSil/${item.uid}" >Sil</a></td>
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