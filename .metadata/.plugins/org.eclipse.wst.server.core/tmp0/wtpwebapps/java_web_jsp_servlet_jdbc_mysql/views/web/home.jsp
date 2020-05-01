<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Trang chủ</title>
</head>
<body>
  
<div class="row">

        <div class="col-lg-3">

          <h1 class="my-4">Shop Cars</h1>
          <div class="list-group">
          <a href='<c:url value="/group?category=mini"/>' class="list-group-item">Mini Cars</a>
          <a href='<c:url value="/group?category=small"/>' class="list-group-item">Small Cars</a>
          <a href='<c:url value="/group?category=medium"/>' class="list-group-item">Medium Cars</a>
          <a href='<c:url value="/group?category=large"/>' class="list-group-item">Large Cars</a>
          <a href='<c:url value="/group?category=executive"/>' class="list-group-item">Executive Cars</a>
          <a href='<c:url value="/group?category=fullSize"/>' class="list-group-item">Full-size luxury Cars</a>
          <a href='<c:url value="/group?category=sports"/>' class="list-group-item">Sports Coupes</a>
          <a href='<c:url value="/group?category=multi"/>' class="list-group-item">Multi Purpose Cars</a>
          <a href='<c:url value="/group?category=sportUtility"/>' class="list-group-item">Sport-Utility Cars</a>
          <!--  
          	<div class="list-group-item"><a href='<c:url value="/group?action=volkswagen"/>'><img alt="Volkswagen logo not exist" src="./images/logo/Volkswagen-logo-2019-1500x1500.png" style="width:50px;height=50px" title="Volkswagen"></a></div>
          	<div class="list-group-item"><a href="#"><img alt="Vinfast logo not exist" src="./images/logo/Vinfast-logo.png" style="width:50px;height=50px" title="Vinfast"></a></div>
            <div class="list-group-item"><a href="#"><img alt="Audi logo not exist" src="./images/logo/Audi-logo-1999-1920x1080.png" style="width:70px;height=50px" title="Audi"></a></div>
            <div class="list-group-item"><a href="#"><img alt="BMW logo not exist" src="./images/logo/BMW-logo-2000-2048x2048.png" style="width:50px;height=50px" title="BMW"></a></div>
            <div class="list-group-item"><a href="#"><img alt="Cadillac logo not exist" src="./images/logo/Cadillac-logo-2014-1920x1080.png" style="width:70px;height=80px" title="Cadillac"></a></div>
          	<div class="list-group-item"><a href="#"><img alt="Chevrolet logo not exist" src="./images/logo/Chevrolet-logo-2013-2560x1440.png" style="width:50px;height=50px" title="Chevrolet"></a></div>
            <div class="list-group-item"><a href="#"><img alt="Vinfast logo not exist" src="./images/logo/Vinfast-logo.png" style="width:50px;height=50px" title="Vinfast"></a></div>
            <div class="list-group-item"><a href="#"><img alt="Vinfast logo not exist" src="./images/logo/Vinfast-logo.png" style="width:50px;height=50px" title="Vinfast"></a></div>
            <div class="list-group-item"><a href="#"><img alt="Aston Martin logo not exist" src="./images/logo/Aston-Martin-logo-2003-6000x3000.png" style="width:80px;height=40px" title="Aston Martin"></a></div>
            <a href="#" class="list-group-item">BMW</a>
            <a href="#" class="list-group-item">Cadillac</a>
            <a href="#" class="list-group-item">Chevrolet</a>
            <a href="#" class="list-group-item">Ferrari</a>
            -->
          </div>

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <img class="d-block img-fluid" style="width:1500px;height:500px" src="./images/cars/a2_eobn.jpg" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" style="width:1500px;height:500px" src="./images/cars/17043_VinFast.jpg" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" style="width:1500px;height:500px" src="./images/cars/vinfast2_aatg.jpg" alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>

          <div class="row">

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Item One</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Item Two</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Item Three</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Item Four</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Item Five</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Item Six</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

          </div>
          <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->
    </div>

  
      <!-- /.row -->
</body>
</html>