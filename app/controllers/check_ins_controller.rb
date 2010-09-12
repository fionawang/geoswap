class CheckInsController < ApplicationController

  def new
    @check_in = Location.find(params[:location_id]).check_ins.build
  end

end
