class DiceController < ApplicationController
  def home
    render({ :template => "game_templates/home"})
  end

  def roll
    @p = params
    @num_dice = (params.fetch("num_dice")).to_i
    @num_sides = (params.fetch("num_sides")).to_i

    @roll_lst = []
    (1..@num_dice).each do |n|
      random_val = rand(1..@num_sides)
      @roll_lst.push(random_val)
    end
    render({ :template => "game_templates/roll"})
  end
end
