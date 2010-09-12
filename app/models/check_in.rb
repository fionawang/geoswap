class CheckIn < ActiveRecord::Base
  belongs_to :location # every check-in has a related location
end
