<%@page contentType="text/html;charset=ISO-8859-9" pageEncoding="ISO-8859-9" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="jdbc" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8"/>

    <title>Satýþ Ekleme Ekraný</title>

</head>
<body>
<sql:setDataSource
        var="getir"
        driver="org.h2.Driver"
        url="jdbc:h2:file:~/tmo_design_pattern"
        user="sa" password=""
/>
<sql:query var="faaliyetgetir"   dataSource="${getir}">
    SELECT * FROM faaliyet_Alani;
</sql:query>
<sql:query var="firmagetir"   dataSource="${getir}">
    SELECT * FROM firma where firma_isyeri_kodu=${user.isyerikodu};
</sql:query>
<sql:query var="urungetir"   dataSource="${getir}">
    SELECT * FROM urun_kodu;
</sql:query>
<sql:query var="subegetir"   dataSource="${getir}">
    SELECT * FROM sube;
</sql:query>
<div class = "container">

    <c:import url="inc/navmenu.jsp"></c:import>



    <div class="row">
        <div class="col-sm-5">

            <h2>Satýþ Ekleme</h2>
            <form onload action="/faaliyetalaniekle" method="get"></form>
            <form action="/satisEkle" method="post">
                <div class="mb-3">

                    <input  readonly="readonly" type="datetime" id="satisTarihi"  name="satisTarihi" class="form-control" />
                </div>

                <div class="mb-3">
                    <input name="islem" class="form-control" placeholder="SATIÞ"/>
                </div>
                <div class="mb-3">
                    Faaliyet Alaný :
                    <select name="satisFaaliyetAlani" >
                        <c:forEach var="faaliyet" items="${faaliyetgetir.rows}">
                            <tr>

                        <option><td><c:out value="${faaliyet.faaliyetAdi}" /></td>

                            </tr>
                        </c:forEach></option>

                    </select>
                </div>
                <div class="mb-3">
                    Firma Unvaný :
                    <select name="satisFirmaAdi" >
                        <c:forEach var="firmalar" items="${firmagetir.rows}">
                            <tr>

                                <option><td><c:out value="${firmalar.firma_unvani}" /></td>

                            </tr>
                        </c:forEach>

                    </select>
                </div>
                <div class="mb-3">
                    Baþvuru Þubesi :
                    <select name="satisBasvuruSubesi" >
                        <c:forEach var="subeler" items="${subegetir.rows}">
                            <tr>

                                <option><td><c:out value="${subeler.subeAdi}" /> </td>

                            </tr>
                        </c:forEach>
                    </select>
                </div>
                <div class="mb-3">
                    Teslimat Þubesi :
                    <input readonly="readonly" name="satisTeslimatSubesi"  value="${user.isyerikodu}" class="form-control" />
                </div>
                <div class="mb-3">
                    Ürün Kodu :
                    <select name="satisUrunKodu"  >
                    <c:forEach var="urunler" items="${urungetir.rows}">
                        <tr>

                            <option><td><c:out value="${urunler.urun_kodu}" /> </td>

                        </tr>
                    </c:forEach>
                    </select>
                </div>
                <div class="mb-3">
                    Satýþ Þekli :
                    <select name="rol" >
                        <option value="PEÞÝN">PEÞÝN</option>
                        <option value="VADELÝ">VADELÝ</option>
                        <option value="DÝÝB">DÝÝB</option>
                        <option value="DÝR">DÝR</option>
                    </select>
                </div>
                <div class="mb-3">
                    <input name="firmaTuketim"  type="number" class="form-control" placeholder="firmaTuketim"/>
                </div>
                <div class="mb-3">
                    <input name="firmaTalep"  type="number" class="form-control" placeholder="firma talep"/>
                </div>
                <div class="mb-3">
                    <input name="firmaTahsis"  type="number" class="form-control" placeholder="firma tahsis"/>
                </div>
                <div class="mb-3">
                    <input name="gunlukYatan"  type="number" class="form-control" placeholder="Ugunluk yatan"/>
                </div>
                <div class="mb-3">
                    <input name="oncekiYatan"  type="number" class="form-control" placeholder="onceki yatan"/>
                </div>
                <div class="mb-3">
                    <input name="toplamYatan"  type="number" class="form-control" placeholder="toplam yatan"/>
                </div>
                <div class="mb-3">
                    <input name="gunlukTeslimat"  type="number" class="form-control" placeholder="gunluk teslimat"/>
                </div>
                <div class="mb-3">
                    <input name="toplamTeslimat"  type="number" class="form-control" placeholder="toplam tslimat"/>
                </div>
                <div class="mb-3">
                    <input name="teslimatYapilacak"  type="number" class="form-control" placeholder="teslimat yapilacak kg"/>
                </div>
                <div class="mb-3">
                    Mahsul Yýlý  :
                    <select name="mahsulYili" >
                        <option value="2018">2018</option>
                        <option value="2019">2019</option>
                        <option value="2020">2020</option>
                        <option value="2021">2021</option>
                    </select>
                </div>

                <div class="mb-3">
                    <input  readonly="readonly" name="firmaIsyeriKodu" class="form-control" value="${user.isyerikodu}" placeholder="${user.isyerikodu}"/>
                </div>
                <div class="mb-3">
                    <input  readonly="readonly" name="firmaIsyeriAdi" class="form-control"value="${user.isyeriadi}" placeholder="${user.isyeriadi}"/>
                </div>
                <div class="mb-3">
                    <input readonly="readonly" name="islemYapan" class="form-control" value="${user.name}" placeholder="${user.name}"/>
                </div>
                <div class="mb-3">

                    <input  readonly="readonly" type="datetime" id="islemtarihi"  name="islemTarihi" class="form-control" />
                </div>

                <button type="submit" class="btn-btn-success">Kayýt</button>
            </form>
        </div>
        <div class="col-sm-7">

            </table>
        </div>
        <h3>Tanýmlý Satýþlarýnýz</h3>
        <table class="table table-hover">
            <thead>
            <tr>
                <th scope="col">Firma Unvaný</th>
                <th scope="col">Satýþ Tarihi</th>
                <th scope="col">Günlük Teslimat</th>
                <th scope="col">Urun Kodu</th>
                <th scope="col">Teslimat Þubesi</th>

            </tr>
            </thead>
            <tbody>


            <c:if test="${not empty satis}" >

            <c:forEach items="${satis}" var="item">
            <tr>
                <c:if test="${item.satisTeslimatSubesi == user.isyerikodu}">
                <th scope="row">${item.satisFirmaAdi}</th>
                    <th scope="row">${item.satisTarihi}</th>
                    <th scope="row">${item.gunlukTeslimat}</th>
                    <th scope="row">${item.satisUrunKodu}</th>
                    <th scope="row">${item.satisTeslimatSubesi}</th>


                <c:if test="${user.rol =='admin'}">
                    <td><a href="/satisSil/${item.satisid}" >Sil</a></td>
                </c:if>
            </tr>
            </c:if>

            </c:forEach>

            </c:if>

    </div>




</div>


<script>
    window.onload = function () {
        var tarih = new Date();
        var tarihMetin = tarih.getDate() + "/" + (tarih.getMonth() + 1) + "/" + tarih.getFullYear()+" "+tarih.getHours()+":"+tarih.getMinutes();
        var tarih2 = tarih.getDate() + "/" + (tarih.getMonth() + 1) + "/" + tarih.getFullYear();
        document.getElementById("islemtarihi").value = tarihMetin;
        document.getElementById("satisTarihi").value = tarih2;
    }

</script>
</body>
</html>