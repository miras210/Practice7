Shop located in shop.jsp  
It uses ajax to add item to cart and update cookies  

Shop list is accessed by   
HttpSession session = request.getSession();  
session.setAttribute("list", new ArrayList\<String\>());
session.getAttribute("list");  
You may need to cast it into ArrayList\<String\>  
 
Cookies for 1 minute duration:  
Cookie nk = new Cookie("shopList", "value");

ShopServlet is accessed by /shopUpdate  

After adding to card user click Buy! button which is
action="buy" method="post";

New updates: 
You need to register firstly, then log in.
Logining data will be available for 30 minutes.
During 30 minutes you cannot go to login.jsp, because it will redirect you to shop.jsp page.

