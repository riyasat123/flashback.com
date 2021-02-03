<div class="container mt-5">
    <div class="row profile">
		<div class="col-md-3  mb-3">
			<div class="profile-sidebar">
				<!-- SIDEBAR USERPIC -->
				<div class="profile-userpic">
					<img src="${images}/${activeUser}/${activeUser}.jpg" class="img-responsives">
				</div>
				<!-- END SIDEBAR USERPIC -->
				<!-- SIDEBAR USER TITLE -->
				<div class="profile-usertitle">
					<div class="card-title">
						${activeUser}
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
        
        <button type="button" class="btnLike" onclick="likedfun('${activeUser}','${GetSetGo.ID}')">
        	<c:set value="false" var="useractive"/>
        	<c:forEach items="${CUserLike}"  var="data">
        	<c:if test="${data==GetSetGo.ID}">
        	<c:set value="true" var="useractive"/>
            </c:if>
            </c:forEach> 
            <c:if test="${useractive=='true'}">
        	 <span id = "a${GetSetGo.ID}" style="color:blue;">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-hand-thumbs-up" viewBox="0 0 16 16">
            <path d="M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.144 2.144 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84 9.84 0 0 0-.443.05 9.365 9.365 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111L8.864.046zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a8.908 8.908 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224 2.224 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866 0 0 1-.121.416c-.165.288-.503.56-1.066.56z"/>
            </svg>
            </span> 
            </c:if>
            <c:if test="${useractive=='false'}">
        	 <span id = "a${GetSetGo.ID}">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-hand-thumbs-up" viewBox="0 0 16 16">
            <path d="M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.144 2.144 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84 9.84 0 0 0-.443.05 9.365 9.365 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111L8.864.046zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a8.908 8.908 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224 2.224 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866 0 0 1-.121.416c-.165.288-.503.56-1.066.56z"/>
            </svg>
            </span> 
            </c:if> 
                       <span id="${GetSetGo.ID}">${GetSetGo.likecount}</span>
        </button> 
        
        <button type="button" class="btnLike" onclick="displaycommentfun('${GetSetGo.ID}')" data-toggle="modal" data-target="#commentModel${GetSetGo.ID}">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat-left-text" viewBox="0 0 16 16">
            <path d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H4.414A2 2 0 0 0 3 11.586l-2 2V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12.793a.5.5 0 0 0 .854.353l2.853-2.853A1 1 0 0 1 4.414 12H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
            <path d="M3 3.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zM3 6a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 3 6zm0 2.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z"/>
       </svg>
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



<!-- CommentModel -->

<div class="modal fade" id="commentModel${GetSetGo.ID}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-md" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        
        <div class="container">
            <!-- Fluid width widget -->        
    	    <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <span class="glyphicon glyphicon-comment"></span>
                        Recent Comments
                    </h3>

                		<div style="overflow-y: scroll; height:550px;">
                			<c:forEach items="${comment}"  var="CommentEntity">
                			<c:if test="${CommentEntity.postID==GetSetGo.ID}">
                            <hr><div class="media-left">
                                 <img alt="" src="${images}/${CommentEntity.userID}/${CommentEntity.userID}.jpg" height = "40" width = "50" class="rounded"> 
                            </div>
                            <div class="media-body">
                                <h5 class="card-title mt-1"><b>${CommentEntity.userID}</b></h5>
                                <p>${CommentEntity.postcomment}</p>
                            </div>
                            </c:if>
                    		</c:forEach>
                    </div>
                    
                     <div class="commentFooter"> 
                    <input type="text" placeholder="Comment.." class="commentStyle" name="comment" id ="b${GetSetGo.ID}">
                    <button type="button" class="btn btn-link" onclick="commentfun('${activeUser}','${GetSetGo.ID}')">post »</button>
                    </div>
                    
                </div>
            </div>
        </div>
         
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