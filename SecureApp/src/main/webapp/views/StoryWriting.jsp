
<div class="container">
<form  action = "submit" onsubmit="return poststory(this)" method="post" enctype="multipart/form-data">
 <div class="story pt-5">
    <h5><b>My FlashBack :</b></h5>
        <!-- Error -->
        <div class="ErrorStory" style="color:red;" id="ErrorStoryID"></div>
    <textarea class="form-control" id="StoryID" rows="10" name="Story" placeholder = "write here your whole story..."></textarea>
    </div>
    
    <div class="summary pt-3">
        <h5><b>Sort Summary :</b></h5>
        <!-- Error -->
        <div class="ErrorSummary" style="color:red;" id="ErrorSummaryID"></div>
        <h5>You have entered <span id="countchar" style="color:red">0</span>/200 characters !</h5>
        <textarea onkeyup="charcounts(SummaryID, countchar)" onkeydown="charcounts(SummaryID, countchar)" onmouseout="charcounts(SummaryID, countchar)"
        class="form-control" id="SummaryID" rows="4" name="Summary" maxlength="200" placeholder = "this is your thumbnail with the help of thumbnail other users can read your story, thumbnail should be sort and intresting 200 letters allow.."></textarea>
    </div>
    
      <div class="py-3">     
      <h5><b>Select Category:</b></h5>
       <!-- Error -->
       <div class="ErrorSummary" style="color:red;" id="ErrorCategoryID"></div>
      <select class="custom-select" id="CategoryID" name="Category">
      	<option class="opt" value="">Select</option>
        <option value="Love">Love</option>
        <option value="Horror">Horror</option>
        <option value="Success">Success</option>
        <option value="Motivational">Motivational</option>
        <option value="Secrets">Secrets</option>
        <option value="Lust Story">Lust Story</option>
        <option value="Depression">Depression</option>
        <option value="Others">Others</option>
      </select>
      <!-- Error -->
        <div class="ErrorSelect" id="ErrorSelectID"></div>
      </div>    
    <div>
    <button type="submit" class="btn2">Post Story</button>
    </div>
</form>
</div>
