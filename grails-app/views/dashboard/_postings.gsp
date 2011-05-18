<div class="posts">
<g:each in="${posts}" var="postingInstance">
      <div class="post-item">
            <div class="img-container">
                 <!-- img class="img" src="../grailsUploaded/${postingInstance.id}/${postingInstance.img}"/ -->
                 Image Goes Here
            </div>
            <div class="posting-details">
            <div class="posting-title">
                 <g:link action="show" id="${postingInstance.id}">${fieldValue(bean: postingInstance, field: "title")}</g:link>
            </div>
       			 
       		<div class="item-category">${fieldValue(bean: postingInstance, field: "category")}</div>                 
                 
            <div class="item-price">
               	<div class="price">
               	 ${fieldValue(bean: postingInstance, field: "price")}</div>
               	 </div>
           </div>
                        
       </div>
   
</g:each>
</div>