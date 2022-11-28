class WebhookController < ApplicationController
  def circleci

    render plain: 'circleci web hook'
  end

  def github

    render plain: 'github web hook'
  end
end
