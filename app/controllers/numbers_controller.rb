class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end
  
  def losers
    @rando = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @rando.push(giraffe)
    end

    render({ :template => "lottery_stuff/unlucky_numbers.html.erb"})
  end

end
