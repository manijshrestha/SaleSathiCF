package com.salesathi.controllers

class LocalController {

    def index = { 
		render 'Local Deals Here!'
		}
	
	def deals = {
		 def location = params.location
		 render "Deals for $location"
		}
}
