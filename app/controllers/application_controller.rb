class ApplicationController < ActionController::Base
  include SessionsHelper

  def index
    render html: '<h1> BIENVENIDO AL CLUB </h1>'
  end
end
