class BasicController < ApplicationController
  def index
  	@titre = "Welcome" 
  end 
  
  def event
  	@titre = "Your event"
  end 

  def content
  	@titre = "Content"
  end 

  def branding
  	@titre = "Branding"
  end 

  def layout
  	@titre = "Layout"
  end 

  def logistics
  	@titre = "Logistics"
  end 

  def app
  	@titre = "Your App"
  end 
end
 
