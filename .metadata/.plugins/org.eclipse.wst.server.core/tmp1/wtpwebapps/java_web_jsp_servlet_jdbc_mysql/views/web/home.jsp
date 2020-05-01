<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Home Page</title>
</head>

<body>
<!--  
	<audio controls autoplay loop>
		<source src="./sounds/BMW_DRIVEBY.mp3" type ="audio/mpeg">
	</audio>
	-->
	<div class="big" style="background-color: #696969">
		<div class="allcontain">
			<div id="carouselExampleIndicators" class="carousel slide my-4"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="carousel-item active">
						<img class="d-block img-fluid"
							style="width: 1500px; height: 500px"
							src="./images/image/bluecar.jpeg" alt="First slide">
					</div>
					<div class="carousel-item">
						<img class="d-block img-fluid"
							style="width: 1500px; height: 500px"
							src="./images/image/Website-background-image-1.jpg"
							alt="Second slide">
					</div>
					<div class="carousel-item">
						<img class="d-block img-fluid"
							style="width: 1500px; height: 500px"
							src="./images/image/bmw-zseries-z4-inspire-stage-sp-xxl.jpg"
							alt="Third slide">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-3">
				<h1 class="my-4 text-center " style="color: #F08A43;">Category
					Car</h1>
				<div class="col-sm-3"></div>
				<div class="col-sm-12">
					<div class="list-group">
						<!--  <a href='<c:url value="/group?strCategory=mini&page=1&maxPageItem=8&sortName=title&sortBy=desc"/>'
							class="list-group-item btn btn-outline-primary" style="background-color: #DDDDDD;"><b>Mini Cars</b></a> <br> -->
						<a href='<c:url value="/group?strCategory=mini&sortName=title&sortBy=desc"/>'
							class="list-group-item btn btn-outline-primary" style="background-color: #DDDDDD;"><b>Mini Cars</b></a> <br>
						<a href='<c:url value="/group?strCategory=compact&sortName=title&sortBy=desc"/>'
							class="list-group-item btn btn-outline-danger" style="background-color: #DDDDDD;"><b>Compact Cars</b></a><br>
						<a href='<c:url value="/group?strCategory=midsize&sortName=title&sortBy=desc"/>'
							class="list-group-item btn btn-outline-success" style="background-color: #DDDDDD;"><b>Midsize Cars</b></a><br>
						<a href='<c:url value="/group?strCategory=large&sortName=title&sortBy=desc"/>'
							class="list-group-item btn btn-outline-info" style="background-color: #DDDDDD;"><b>Large Cars</b></a>
					</div>
				</div>

			</div>
			<!-- /.col-lg-3 -->
			<div class="col-lg-9">
				<div class="row">
					<c:forEach var="item" items="${model.listResult}" begin="1" end="6">
						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card h-100">
								<img class="card-img-top" src="${item.thumbnail}"
									style="width: 312.75px; height: 220.14px;" alt="">
								<div class="card-body" style="background-color: #DDDDDD;">
									<h4 class="card-title">${item.title}</h4>
									<p class="card-text">${item.shortDescription}</p>
								</div>
								<div class="card-footer text-center"
									style="background-color: #e3f2fd;">
									<a href='<c:url value="/item?id=${item.id}"/>'
										class="btn btn-primary">See More</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<!-- /.row -->
	</div>
</body>

</html>