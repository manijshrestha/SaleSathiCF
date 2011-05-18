package com.salesathi.domain

import java.util.Date;

/*
* Domain obejct to hold posting
* We will hold the title and an image.
* Can only have one "profile" image
*/
class Posting {
   String contactEmail
   
   String title
   
   String description
   
   Category category
   
   Date postingDate = new Date()
   Date modifiedDate = new Date()
   
   String img
   
   double price

   static constraints = {
	   contactEmail(blank:false, email:true)
	   title(blank:false, maxSize:148)
	   price(blank:false)
	   description(blank:false, maxSize:5000)
	   category(nullable:true)
	   img(nullable:true)
	   postingDate()
	   modifiedDate()
   }
}