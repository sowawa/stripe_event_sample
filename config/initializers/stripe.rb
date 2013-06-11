Stripe.api_key  = ENV['STRIPE_API_KEY']
Stripe.api_base = ENV['STRIPE_API_BASE']

StripeEvent.setup do
  subscribe do |event|
    require 'pp'
    Rails.logger.info(event.pretty_inspect)
  end
end
