<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kr.or.iei.product.model.vo.ProductAll" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/resources/css/store/main/3_new.css" rel="stylesheet"
	type="text/css" />
</head>
<body>

<%
	ArrayList<ProductAll> newList = (ArrayList<ProductAll>) request.getAttribute("newList");
	
	
	%>

	<div id="content">
		<div class="title">NEW</div>
		<center>
			<div id="newBox">
<%
					for(ProductAll pAll : newList){%>
				<div class="n_box">
				
					<div class="newImg_box">
						<a href="/productList.kh?productNo=<%=pAll.getProduct().getProductNo()%>">
						
						<img src="/resources/images/community/index/7.jpg"
							class="n_img" />
	<%--<img src="/resources/product/<%=pAll.getImg().getChangedName()%>" class="n_img" />	--%>
			
							</a>
					</div>
					<div class="text_box">
					
						<span><%=pAll.getProduct().getProductName()%></span><br>
						<span><%=pAll.getProduct().getProductPrice() %> 원</span>
						
						
					</div>
				</div>
				<%} %>
				
			</div>
		</center>

	</div>
</body>
</html>