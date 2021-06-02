<%@page contentType="text/html;charset=ISO-8859-9" pageEncoding="ISO-8859-9" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8"/>

    <title>Ürün Ekleme</title>

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

            <h3>Ürün Ekleme</h3>

            <form action="/urunKoduEkle" method="post">
                <div class="mb-3">
                    <input name="urunKodu" class="form-control" placeholder="Ürün Kodu"/>
                </div>
                <div class="mb-3">
                    <input name="grupKodu" class="form-control" placeholder="Grup Kodu"/>
                </div>
                <div class="mb-3">
                    <input name="urunAdi" class="form-control" placeholder="Ürün Adý"/>
                </div>
                <div class="mb-3">
                    <input name="stokTuru" class="form-control" placeholder="Stok Türü"/>
                </div>
                <div class="mb-3">
                    <input name="stokHesap" class="form-control" placeholder="Stok Hesap"/>
                </div>
                <div class="mb-3">
                    <input readonly="readonly" name="islemYapan" class="form-control" value="${user.name}" placeholder="${user.name}"/>
                </div>
                <div class="mb-3">

                    <input readonly="readonly" type="datetime" id="islemtarihi"  name="islemTarihi" class="form-control" />
                </div>

                <button type="submit" class="btn-btn-success">Kayýt</button>
            </form>
        </div>
        <div class="col-sm-7">
            <h3>Eklenmiþ Ürünler</h3>
            <table class="table table-hover">
                <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Urun Kodu</th>
                    <th scope="col">Grup Kodu</th>
                    <th scope="col">Ürün Adý</th>
                    <th scope="col">Stok Türü</th>
                    <th scope="col">Hesap</th>
                    <th scope="col">Faaliyeti Ekleyen</th>
                    <th scope="col">Ýþlem Tarihi</th>

                </tr>
                </thead>
                <tbody>
                <c:if test="${not empty urunKodu}">
                    <c:forEach items="${urunKodu}" var="item">
                        <tr>
                            <th scope="row">${item.urunid}</th>
                            <th scope="row">${item.urunKodu}</th>
                            <th scope="row">${item.grupKodu}</th>
                            <th scope="row">${item.urunAdi}</th>
                            <th scope="row">${item.stokTuru}</th>
                            <th scope="row">${item.stokHesap}</th>
                            <th scope="row">${item.islemYapan}</th>
                            <th scope="row">${item.islemTarihi}</th>



                            <td><a href="/urunKoduSil/${item.urunid}" >Sil</a></td>
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