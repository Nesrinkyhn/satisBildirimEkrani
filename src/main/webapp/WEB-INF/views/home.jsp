<%@page contentType="text/html;charset=ISO-8859-9" pageEncoding="ISO-8859-9" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="tr" >

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Kullanýcý Giriþi</title>
    <link rel="stylesheet" href="/css/indexbootstrap.min.css">
    <link href="/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/indexstyles.min.css">
</head>
<body>

<section class="login-clean">
    <form action="/userLogin" method="post" style="width:400px;">

        <div style="text-align:center"><img src="/img/logo.jpg"  style="width: 250px;"></div>
        <h2>Kullanýcý Giriþi</h2>

        <c:if test="${not empty error}">
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>Kullanýcý Adý veya Þifre Hatalý</strong>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>

        </c:if>
    <div class="mb-3"><input class="form-control"  name="email" placeholder="Kullanýcý Adý"></div>
    <div class="mb-3"><input class="form-control" type="password" name="password" placeholder="Þifre"></div>
    <div class="mb-3"><button class="btn btn-primary d-block w-100" type="submit">Giriþ</button></div>
    </div>
    </form>
</section>



<script src="/js/bootstrap.min.js"></script></body>
<script src="/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
</body>
</html>