<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Group</title>
</head>
<body>
	<!-- Page Content -->
	<div class="main-container" style="background-color: #696969">
		<!-- Jumbotron Header -->
		<header class="jumbotron my-4">
		<c:if test ="${model.strCategory == 'mini'}">
			<h1 class="display-3"><b>Mini Cars</b></h1>
			<p class="lead"><b>The Mini is a small economy car produced by the English-based British Motor Corporation (BMC) and its successors from 1959 until 2000. The original is considered an icon of 1960s British popular culture.Its space-saving transverse engine and front-wheel drive layout – allowing 80% of the area of the car's floorpan to be used for passengers and luggage – influenced a generation of car makers.In 1999, the Mini was voted the second-most influential car of the 20th century, behind the Ford Model T, and ahead of the Citroën DS and Volkswagen Beetle.The front-wheel-drive, transverse-engine layout of the Mini was copied for other "supermini" designs including the Honda N360 (1967), Nissan Cherry (1970), and Fiat 127 (1971). The layout was also adapted for larger subcompact designs.</b></p>
			<!-- <a href="#" class="btn btn-primary btn-lg">Call to action!</a> -->
			</c:if>
			<c:if test ="${model.strCategory == 'compact'}">
			<h1 class="display-3"><b>Compact Cars</b></h1>
			<p class="lead"><b>Compact car is a vehicle size class — predominantly used in North America — that sits between subcompact cars and mid-size cars. The present-day definition is equivalent to the European C-segment or the British term "small family car". However, prior to the downsizing of the United States car industry in the 1970s and 1980s, larger vehicles with wheelbases up to 110 in (2.79 m) were considered "compact cars" in the United States.

In Japan, small size passenger vehicle is a registration category that sits between kei cars and regular cars, based on overall size and engine displacement limits.</b></p>
			
			</c:if>
			<c:if test ="${model.strCategory == 'midsize'}">
			<h1 class="display-3"><b>Midsize Cars</b></h1>
			<p class="lead"><b>A mid-size car— also known as intermediate— is a vehicle size class which originated in the United States and is used for cars that are larger than compact cars, but smaller than full-size cars.The equivalent European category is D-segment, which is also called "large family car". Mid-size cars are manufactured in a variety of body styles, including sedans, coupes, station wagons, hatchbacks, and convertibles. Entry-level luxury cars can also fall under the mid-size category.</b></p>
			
			</c:if>
			<c:if test ="${model.strCategory == 'large'}">
			<h1 class="display-3"><b>Large Cars</b></h1>
			<p class="lead"><b>Large car— also known as Full-size car  — is a vehicle size class which originated in the United States and is used for cars larger than mid-size cars. It is the largest size class for cars.

After World War II, the majority of full-size cars have used the sedan and station wagon body styles, however in recent years most full-size cars have been sedans. The highest-selling full-size car nameplate is the Chevrolet Impala, sold as a full-size car from 1958 to 1986, 1994 to 1996, and from 2000 to 2020.</b></p>
			
			</c:if>
		</header>
		<div class="row text-center">
			<c:forEach var="item" items="${model.listResult}">

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="${item.thumbnail}"
							style="width: 312.75px; height: 220.14px" alt="">
						<div class="card-body" style="background-color: #DDDDDD">
							<h4 class="card-title">${item.title}</h4>
							<p class="card-text">${item.shortDescription}</p>
						</div>
						<div class="card-footer text-center"
							style="background-color: #e3f2fd">
							<a href='<c:url value="/item?id=${item.id}"/>'
								class="btn btn-primary">See More!</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<!--  
		<div class="col-xs-12" >
		<ul class="pagination justify-content-center" id="pagination"></ul>
		<input type="hidden" value="" id="page" name="page" />
		<input type="hidden" value="" id="maxPageItem" name="maxPageItem" />
		<input type="hidden" value="" id="sortName" name="sortName" />
		<input type="hidden" value="" id="sortBy" name="sortBy" />
		</div>	
		-->
	</div>
	<!--  
	<script>
			var totalPages = ${model.totalPage};
			var currentPage = ${model.page};
			var limit = 8;
			$(function () {
				window.pagObj = $('#pagination').twbsPagination({
					totalPages: totalPages,
					visiblePages: 10,
					startPage: currentPage,
					onPageClick: function (event, page) {
						if (currentPage != page) {
							$('#maxPageItem').val(limit);
							$('#page').val(page);
							$('#sortName').val('title');
							$('#sortBy').val('desc');
							$('#formSubmit').submit();
						}
					}
				});
			});
		</script>
		
		-->
</body>
</html>