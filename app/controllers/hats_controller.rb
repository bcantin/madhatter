class HatsController < ApplicationController

  def index
    @hats = Hat.limit(10)
  end

end
