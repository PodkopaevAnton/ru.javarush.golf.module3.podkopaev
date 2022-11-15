<%--
  Created by IntelliJ IDEA.
  User: Antony
  Date: 13.11.2022
  Time: 20:49
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <link href="main.css" rel="stylesheet">
</head>
<%--    <style>--%>
<%--        section {--%>
<%--            border-radius: 1em;--%>
<%--            padding: 1em;--%>
<%--            position: absolute;--%>
<%--            top: 50%;--%>
<%--            left: 50%;--%>
<%--            margin-right: -50%;--%>
<%--            transform: translate(-50%, -50%) }--%>
<%--    </style>--%>
<<<<<<< HEAD
=======
        <style>
            section{
                border: 3px solid black;
                padding: 5px;
                position: absolute;
                top: 70%;
                left: 10%
            }
        </style>
>>>>>>> f1b362a (second)
    <body>
<%--    </section>--%>
        <h2 class="text-center">${question}</h2>
<%--        <section>--%>
        <form action="hello-servlet" method="get" class="serv">
            <c:forEach items="${answers.keySet()}" var="answer">
                <div class="form-check">
                    <label class="form-check-label"><input type="radio" name="id" value="${answer}" checked> ${answers.get(answer)}</label>
                </div>
            </c:forEach>
<%--        </section>--%>
            <p>
<<<<<<< HEAD
=======

>>>>>>> f1b362a (second)
                <div class="d-grid gap-2 col-6 mx-auto">
                    <button type="submit" class="btn btn-warning">${answers == null ? "Заново" :"Выбрать"}</button>
                </div>
            </p>
        </form>
<<<<<<< HEAD
=======
<br>
    <section class="info">
        <p>Статистика:</p>
        <p >Имя в игре: ${name}</p>
        <p >id сессии: ${sessionId}</p>
        <p >ip address: ${sessionIp}</p>
        <p >Количество игр: ${countGames}</p>
    </section>
>>>>>>> f1b362a (second)
<%--    </section>--%>
    </body>
</html>
