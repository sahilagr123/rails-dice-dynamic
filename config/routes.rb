Rails.application.routes.draw do
  #routes

  get("/", { :controller => "dice", :action => "home"})

  get("/dice/:num_dice/:num_sides", { :controller => "dice", :action => "roll"})
  
  '''
  home page "/"
  page for 2d6 "/dice/2/6"
  page for 2d10 "/dice/2/10"
  page for 1d20 "/dice/1/20"
  page for 5d4 "/dice/5/4"
  '''
end
