<div class="posts">
<g:each in="${posts}" var="postingInstance">
      <div class="post-item">
            <div class="img-container">
                 <img class="img" src="images/unknown_item.jpg"/>
                 
            </div>
            <div class="posting-details">
	            <div class="posting-title">
	                 <g:link action="show" id="${postingInstance.id}">${fieldValue(bean: postingInstance, field: "title")}</g:link>
	                 <div class="item-category">${fieldValue(bean: postingInstance, field: "category.type")}</div>  
	            </div>
	       			 
	       		<div class="item-detail">${fieldValue(bean: postingInstance, field:"description")}</div>
		       		
		       	<ul class="post-item-meta">
		       		<li>25</li>
		       		<li>Email</li>
		       		<li>Follow</li>	
		       	</ul>              
            </div>     
            <div class="item-price">
               	<div class="price">
               		 ${fieldValue(bean: postingInstance, field: "price")}
               	</div>
            </div>
       </div>
   
</g:each>
</div>