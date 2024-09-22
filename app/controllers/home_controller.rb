class HomeController < ApplicationController
  def index
  end

  def about
    @instance_variable = "This is an instance variable which will work everywhere on home page"
    local_variable = "This is local variable which will just work in this function"

    @about_me = "My name is vishal..."
  end
  
end
