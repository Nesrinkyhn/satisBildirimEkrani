<%@page contentType="text/html;charset=ISO-8859-9" pageEncoding="ISO-8859-9" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/css/menubootstrap.min.css">
<link rel="stylesheet" href="/css/menusimple-line-icons.min.css">
<link rel="stylesheet" href="/css/menuAdvanced-NavBar---Multi-dropdown.css">
<link rel="stylesheet" href="/css/menustyles.css">


<div class="header2 bg-success-gradiant">
    <div class="">
        <!-- Header 1 code -->
        <nav class="navbar navbar-expand-lg h2-nav">
            <div style="text-align:center"><img src="/img/logo.jpg"  style="width: 75px;"></div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#header2" aria-controls="header2" aria-expanded="false" aria-label="Toggle navigation">
                <span class="icon-menu"></span>
            </button>
            <div class="collapse navbar-collapse hover-dropdown" id="header2">
                <ul class="navbar-nav">
                    <li class="nav-item active"><a class="nav-link" href="/satis">Satýþ Bildirim Ekraný</a></li>
                    <li class="nav-item"><a class="nav-link" href="/firmaekle">Firma Tanýmlama</a></li>
                    <li class="nav-item dropdown position-relative">
                        <a class="nav-link dropdown-toggle" href="#" id="h2-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Admin Paneli
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="/faaliyetalaniekle">Faaliyet Alaný Ekleme</a></li>
                            <li><a class="dropdown-item" href="/urunkodu">Ürün Kodu Ekleme</a></li>
                            <li><a class="dropdown-item" href="/kullaniciekle">Kulanýcý Ekleme</a></li>
                            <li><a class="dropdown-item" href="#">Kulanýcý Güncelleme</a></li>
                        </ul></a></li>

                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a onclick = "return fncAlert()" class="btn rounded-pill btn-dark py-2 px-4" href="/logout">Çýkýþ Yap</a></li>

                </ul>
                </ul>
            </div>

        </nav>


    </div>

</div>
<table a style="left: auto">
    <li class="nav-item"><a style="text-align:right"  href="#">${user.name}- ${user.isyeriadi}- </a></li>
</table>
<script src="/js/menujquery.min.js"></script>
<script src="/js/menubootstrap.min.js"></script>
<script>
    function fncAlert(){
    return confirm("Çýkmak istediðinizden emin misiniz?");
    }
</script>