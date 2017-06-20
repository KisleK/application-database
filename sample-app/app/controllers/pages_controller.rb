class PagesController < ApplicationController
  def wind
    @title = wind
    render 'gusty.html'
  end
  def pop
    @title = pop
    render 'bath.html'
  end

  def comp
    render 'os.html'
  end

  def ride
    render 'divy.html'
  end

  def metra
    render 'train.html'
  end
  def watch
    @title = watch
    # x = 5
    # y = 6
    # @sum = y + x
    @current_time = Time.now.strftime('%l:%M %p')
    render 'clock'
  end

end
