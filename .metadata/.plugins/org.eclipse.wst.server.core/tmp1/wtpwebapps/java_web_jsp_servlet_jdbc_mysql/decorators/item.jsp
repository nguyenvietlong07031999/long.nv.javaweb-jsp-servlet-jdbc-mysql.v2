<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Item</title>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- css -->
<link rel="stylesheet" href="template/web/bootstrap/css/bootstrap.min.css"/>
<link href="<c:url value='/template/web/css/shop-item.css'/>" rel="stylesheet" type="text/css" media ="all"/>
</head>
<body>
<!-- header -->
<%@include file="/common/web/header.jsp" %>
<!-- header -->


<dec:body/>

<!-- footer -->
<%@include file = "/common/web/footer.jsp" %>
<!-- footer -->


<script type="text/javascript" src="<c:url value='/template/web/jquery/jquery.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/template/web/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
</body>
</html>