class WebhookController < ApplicationController
  def circleci

    render plain: 'circleci web hook'
  end
end
