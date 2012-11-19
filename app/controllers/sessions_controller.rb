class SessionsController < ApplicationController
  include SessionsHelper

  before_filter :validate_login_ticket, only: :create

  def new
    @login_ticket = acquire_login_ticket
  end

  def create
    flash[:error] = 'Incorrect username or password.'
    new
    render 'new'
  end
end