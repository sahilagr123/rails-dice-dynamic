Rails.application.routes.draw do

  get("/dice/:number_of_dice/:number_of_sides", { :controller => "zebra", :action => "lion"})

  get("/", { :controller => "zebra", :action => "rules"})
end
