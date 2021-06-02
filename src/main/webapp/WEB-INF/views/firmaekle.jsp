<%@page contentType="text/html;charset=ISO-8859-9" pageEncoding="ISO-8859-9" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8"/>

    <title>Firma Ekleme</title>

</head>
<body>

<div class = "container">
    <c:import url="inc/navmenu.jsp"></c:import>


    <div class="row">
        <div class="col-sm-5">

            <h2>Firma Ekleme</h2>

            <form action="/firmaEkle" method="post">

                <div class="mb-3">
                    <input name="firmaUnvani" class="form-control" placeholder="Firma Unvaný"/>
                </div>
                <div class="mb-3">
                    <input name="firmaNo" class="form-control" placeholder="Firma Numarasý"/>
                </div>
                <div class="mb-3">
                    <input name="vergiNo" class="form-control" placeholder="Vergi Numarasý"/>
                </div>
                <div class="mb-3">
                    <input name="kimlikNo" class="form-control" placeholder="Kimlik No"/>
                </div>
                <div class="mb-3">
                    <input name="firmaAdresi"  class="form-control" placeholder="Firma Adresi"/>
                </div>
                <div class="mb-3">
                    <input name="firmaTelNo"  type="number" class="form-control" placeholder="Firma Telefon Numarasý"/>
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
            <h3>Tanýmlý Firmalarýnýz</h3>
            <table class="table table-hover">
                <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Firma Unvaný</th>
                    <th scope="col">Firma No</th>
                    <th scope="col">Vergi No</th>

                </tr>
                </thead>
                <tbody>


                <c:if test="${not empty firma}" >

                    <c:forEach items="${firma}" var="item">
                        <tr>
                            <c:if test="${item.firmaIsyeriKodu == user.isyerikodu}">
                            <th scope="row">${item.firmaid}</th>
                            <th scope="row">${item.firmaUnvani}</th>
                            <th scope="row">${item.firmaNo}</th>
                            <th scope="row">${item.firmaVergiNo}</th>
                            <th scope="row">${item.firmaIsyeriKodu}</th>

                            <c:if test="${user.rol =='admin'}">
                            <td><a href="/firmaSil/${item.firmaid}" >Sil</a></td>
                            </c:if>
                        </tr>
                </c:if>

                </c:forEach>

                </c:if>




                </tbody>
            </table>
        </div>
    </div>




</div>


<script>
    window.onload = function () {
        var tarih = new Date();
        var tarihMetin = tarih.getDate() + "/" + (tarih.getMonth() + 1) + "/" + tarih.getFullYear()+" "+tarih.getHours()+":"+tarih.getMinutes();
        document.getElementById("islemtarihi").value = tarihMetin;
    }

</script>
</body>
</html>