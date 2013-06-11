StripeEventSample::Application.routes.draw do
  mount StripeEvent::Engine => '/my-chosen-path'
end
