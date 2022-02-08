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

  def one_six
    @rando = Array.new
    
    1.times do
      @rando.push(rand(1...6))
    end

     render({ :template => "dice_rolls/one_six_roll.html.erb"})
  end

end
