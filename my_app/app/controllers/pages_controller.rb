class PagesController < ApplicationController
  def fortune #action
    @fortune = ["Life is good", "You will be rich", "Fail"].sample

    render 'fortune.html.erb'
  end

  def lottery
    @list_of_numbers = []

    6.times do 
      @list_of_numbers << rand(1..60)
    end

    @winning_numbers = list_of_numbers.join(", ")

    render 'lottery_numbers.html.erb'
  end

  

end
