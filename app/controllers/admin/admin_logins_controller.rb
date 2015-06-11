class AdminloginsController < ApplicationController

  def new
    @admin = Admin_log_ins.new
  end
end