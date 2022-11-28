class PagesController < ApplicationController
  def welcome
    render plain: 'ok'
  end
end
