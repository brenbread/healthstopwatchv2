class StopwatchesController < ApplicationController
  def index
    my_var = 0
    gon.myNum = my_var
  end
end
