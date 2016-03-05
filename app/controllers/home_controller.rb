class HomeController < ApplicationController
  def top
  	@remain = current_user.transfers.pluck(:amount).inject(:+).to_i + current_user.init_property
  end
end
