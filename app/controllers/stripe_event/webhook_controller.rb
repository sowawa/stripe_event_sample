module StripeEvent
  class WebhookController < ActionController::Base
    def event
      StripeEvent.instrument(params)
      head :ok
    rescue Stripe::StripeError => e
      logger.error e
      logger.error e.backtrace.join("\n")
      head :unauthorized
    end
  end
end
