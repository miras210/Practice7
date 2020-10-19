<%--
  Created by IntelliJ IDEA.
  User: Amiran
  Date: 18-Oct-20
  Time: 11:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <title>Shop Page</title>
    <script>
            function selectItem(item) {
                item = $(item).children('h6').text()
                $.ajax({
                    url: 'shopUpdate',
                    type: "POST",
                    data: {
                        item: item
                    }, accepts: "application/json; charset=utf-8",
                    success: function (data) {
                        $(".list").empty();
                        if (data.msg == "error") {
                            $('.list').append("<div>Error</div>");
                        } else {
                            var res = data;
                            for (let i = 0; i < data.length; i++) {
                                $(".list").append(
                                    "<div>" + res[i] + "</div>"
                                );
                            }
                        }
                    }
                });
            }
    </script>
</head>
<body>
<form action="buy.jsp" method="post">
    <input type="submit" value="Buy!">
</form>
    <div class="shop">
        <h3>Games</h3>
        <div class="category" style="display: flex; flex-direction: row">
            <div class="item" id="item-witcher">
                <img src="https://sonycenter.kz/image/cache_v/catalog/kostas/games/witcher-3-wild-hunt-600x600.png">
                <h6>Witcher 3 GOTY Edition PS4</h6>
                <input type="button" value="Add to cart" class="cart" onclick="selectItem('#item-witcher')">
            </div>
            <div class="item" id="item-iphone12">
                <img src="https://s1.stc.all.kpcdn.net/putevoditel/projectid_346574/images/tild3138-3164-4632-b964-343662643031__12-4.jpg">
                <h6>IPhone 12</h6>
                <input type="button" value="Add to cart" class="cart" onclick="selectItem('#item-iphone12')">
            </div>
        </div>
    </div>
    <div class="list">

    </div>
</body>
</html>
