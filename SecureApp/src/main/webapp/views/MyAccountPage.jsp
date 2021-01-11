<div class="container mt-5">
    <div class="row profile">
		<div class="col-md-3  mb-3">
			<div class="profile-sidebar">
				<!-- SIDEBAR USERPIC -->
				<div class="profile-userpic">
					<img src="${images}/${UserID}/${UserID}.jpg" class="img-responsives">
				</div>
				<!-- END SIDEBAR USERPIC -->
				<!-- SIDEBAR USER TITLE -->
				<div class="profile-usertitle">
					<div class="card-title">
						${UserID}
					</div>
					<div class="card-subtitle text-muted">
						<b>${name.name}</b>
					</div>
				</div>
				<!-- END SIDEBAR USER TITLE -->
				<!-- SIDEBAR BUTTONS -->
				<div class="profile-userbuttons">
					<a href="/MyAccount/editProfile" type="button" class="editbtn  btn-ml">Edit</a>
					<a href="/MyAccount/StoryWriting" type="button" class="postbtn  btn-ml">Post</a>
					
				</div>
				<!-- END SIDEBAR BUTTONS -->

			</div>
		</div>
		<div class="col-md-9 profile-content">
            <div class="mypost">
			   All Post
            </div>
            
<div class="mainpost">             	  
<div class="row">             	  
<c:forEach items="${post}"  var="GetSetGo">
   <div class="col-sm-8" Style = "padding-top:10px">
    <div class="card">
      <div class="card-body">
 		<div class="gravity">
        <img src="${images}/${GetSetGo.userID}/${GetSetGo.userID}.jpg" height = "50" width = "60">
        <a href="" class="theeDots" data-toggle="dropdown">
        <svg width="1.4em" height="1.4em" viewBox="0 0 16 16" class="bi bi-three-dots-verstical" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z"/>
        </svg></a>
        <ul class="dropdown-menu">
        	<li><a data-toggle="modal" data-target="#deleteleModal${GetSetGo.ID}" >Delete Post</a></li>
        </ul>
        
        </div>
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
                <img alt="" src="${images}/${GetSetGo.userID}/${GetSetGo.userID}.jpg" height = "50" width = "60"/>
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


<!-- Delete Modal -->
<div class="modal fade bd-example-modal-sm" id="deleteleModal${GetSetGo.ID}" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <div class="delet-body">
        Do You Want To Delete This Post ?
      </div>
      <div class= "deletepost my-4">
        <a type="button" class="editbtn btn-ml" data-dismiss="modal">No</a>
        <a type="button" class="postbtn btn-ml" href="/deleteItem/${GetSetGo.ID}">delete</a>
        </div>
    </div>
  </div>
</div>



    </div>
  </div>
  </c:forEach>
</div>
            </div>
		</div>
	</div>
</div>