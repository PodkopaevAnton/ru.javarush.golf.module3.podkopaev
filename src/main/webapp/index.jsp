<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Beginning</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <link href="main.css" rel="stylesheet">

</head>
    <body>
    <div class="startPage" >
        <h1 class="text-center"><%= "Пролог" %>
        </h1>
        <p class="text-center" >В Хоббитании дела шли своим чередом. Люди там жили веселые и отходчивые.
            Раздные праздники были для них особой усладой. Сегодня как раз один из таких! На такое событие приехал
            ваш старый знакомый. Высокий старик с большой шляпой и посохом. Пир был на весь мир,и в пылу ты потерял своего дядю!
        </p>
        <h1 class="text-center"><%= "Интересная находка"%></h1>
        <p class="text-center">Ты быстрее побежал домой. Открыв дверь, ты обнаружил на полу необычное колечко.</p>

        <p class="text-center">Хочешь ли ты подобрать его?</p>
        <br><br>
        <form action="hello-servlet" method="get">
            <input hidden name="id" value="1">
            <div class="d-grid gap-2 col-6 mx-auto">
                <button  type="submit" class="btn btn-warning ">Подобрать</button>
            </div>
        <%--<a href="hello-servlet">Hello Servlet</a>--%>
        </form>
    </div>
</body>
</html>