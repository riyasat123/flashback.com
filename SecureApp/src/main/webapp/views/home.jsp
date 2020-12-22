<!-- carousel-control -->

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="${images}/MyShlider/shliderone.jpg" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
      </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="${images}/MyShlider/shlidertwo.jpg" alt="Second slide">
      <div class="carousel-caption d-none d-md-block">
      </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="${images}/MyShlider/shliderthree.jpg" alt="Third slide">
      <div class="carousel-caption d-none d-md-block">
      </div>
    </div>
       <div class="carousel-item">
      <img class="d-block w-100" src="${images}/MyShlider/shliderfour.jpg" alt="Third slide">
      <div class="carousel-caption d-none d-md-block">
      </div>
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

<!-- main content -->
<div class = "container" Style = "padding-top:5px">
  <div class="row">
<c:forEach items="${post}"  var="GetSetGo">
   <div class="col-sm-6" Style = "padding-top:10px">
    <div class="card">
      <div class="card-body">
        <img alt="" src="${images}/${GetSetGo.userID}/${GetSetGo.userID}.jpg" height = "50" width = "60" class="rounded">
        <h5 class="card-title mt-1"><b>${GetSetGo.userID}</b></h5>
        <h6 class="card-subtitle mb-2 text-muted"><b>${GetSetGo.category}</b></h6><hr>
        <p class="card-text textjustify">${GetSetGo.summary}</p>
        
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-link" data-toggle="modal" data-target="#exampleModal${GetSetGo.ID}">
             read me..
        </button>
        </div>
        

<!-- Modal -->
<div class="modal fade" id="exampleModal${GetSetGo.ID}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">
                <img alt="" src="${images}/${GetSetGo.userID}/${GetSetGo.userID}.jpg" height = "50" width = "60" class="rounded"/>
               <span class="card-title">${GetSetGo.userID}</span><br>
               <span class="card-subtitle text-muted"><b>${GetSetGo.category}</b></span>
        </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p class="textjustify">${GetSetGo.story}</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
    </div>
  </div>
  </c:forEach>
</div>
</div>