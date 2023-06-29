<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.or.iei.question.model.vo.Board" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/resources/css/store/question/questionReadSuccessM.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<style>
	#boardText{border: 1px solid lightgrey;
		resize: none;
		font-size : 20px;
	}
</style>
<body>
<%
	Board qboard = (Board)request.getAttribute("qBoard");
	// 일반	
%>

	<div id="header">
		<%-- <%@ include file="/views/section/header.jsp" %> --%>
		<%@ include file="/views/section/header/headerShopPage.jsp"%>
	</div>
	<div id="navigator">
	<%-- <%@ include file="/views/section/navigator.jsp" %>		 --%>	
		<%@ include file="/views/section/navi/naviShop.jsp"%>
	
	</div>
<div id="wrapper">
<div id="contents">
		<div id="board">
			<form action="/questionBoardUpdate.kh" method="post" > 
				<table cellspacing="0" cellpadding="0" border="1px solid black" >
					<tr>
						<th>NO</th>
						<th>ITEM</th>
						<th>CATEGORY</th>
						<th>SUBJECT</th>
						<th>NAME</th>
						<th>VIEW</th>
						<th>DATE</th>
					</tr>
						<tr>
						<th><%=qboard.getboardNo() %></th>
						<%if(qboard.getProductName()==null){ %>
						<th></th>
						<%}else{ %>
						<th><%=qboard.getProductName() %></th>
						<%} %>
						<th><%=qboard.getboardCategoryName() %></th>
						<th><input style="width:100% ; height:100%; font-size: 20px" type="text" name="subject" value="<%=qboard.getboardName() %>" /></th>
						<%if(qboard.getProductName()==null){ %>
						<th>관리자</th>
						<%}else{ %>
						<th><%=qboard.getuserNickname() %></th>
						<%} %>
						<th><%=qboard.getboardViewCount() %></th>
						<th><%=qboard.getboardDate() %></th>
					</tr>
					<tr>	
						<td colspan="7" style="width: 800px; height: 500px;">
						<textarea id="boardText" name="content"  cols="120" rows="25"><%=qboard.getboardText() %></textarea>
						
						</td>
					</tr>
				</table>	
				<% if(mAll == null) { %>
				
				<%}else if((mAll.getM().getMemberNickname()).equals(qboard.getuserNickname()) ||(0<=mAll.getM().getMemberNo() && mAll.getM().getMemberNo()<=100) ){ %>			
				<div id="btnDiv">
					         		
	                     
	                                 
	               </form>
	               		<button class="button"  type="submit" style="float:left " >수정</button>
	                     <input type="hidden" name="boardNo" value="<%=qboard.getboardNo() %>"/>                
	               <form action="/questionDelete.kh" method="post"  >		               
		                     <button class="button" type="submit">삭제</button>
		                     <input type="hidden" name="boardNo" value="<%=qboard.getboardNo() %>"/>  		                             
		               </form>
				</div>
				<%}	%>				
			</div>
			
		</div>
		</div>
	<div id="footer">
		<%@ include file="/views/section/footer/footer.jsp" %>
	</div>

</body>
</html>