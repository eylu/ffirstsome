class WebhookController < ApplicationController
  def circleci

    render plain: 'circleci web hook'
  end

  def github
    puts "====> #{params[:payload]} ==>"
    render plain: 'github web hook'
  end
end
