package com.salesathi.controllers

import com.salesathi.domain.Posting

class DashboardController {
	
	static defaultAction = "dashboard"

    //def index = { }
	
	def dashboard = {
		def posts = Posting.getAll()
		return [posts: posts]
		}
	
	def search = {
		   String searchString = params.q
		   render 'Search for: '+searchString 
		}
}
