 <div class="container">
 <div class="row px-4">
 <div class="col-lg-4">
 </div>
 
 <div class="editprofile my-5 ml-1 col-lg-4">

         <form action="SelectPhoto" id="fileupload" method="POST" enctype="multipart/form-data">
         
         <p><img id="output" src="${images}/${UserID}/${UserID}.jpg" width="100" height="100px" class="mt-4"/></p>
         <p><input type="file"  accept="image/*" name="images" id="file"  onchange="loadFile(event)" style="display: none;"></p>
         <p><label class="btn-link" for="file" style="cursor: pointer;">select Image</label></p>

		<button type="submit" class="btn1 mt-2 mb-3">Submit</button>
   </form>
   
   </div>
   </div>
   </div>
