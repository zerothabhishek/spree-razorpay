module Spree
  class RazorpayController < StoreController

    skip_before_action :verify_authenticity_token

    def index
      @product = Spree::Product.last
    end

    def purchase_status
      order = Spree::Order.process_razorpayment(params)
    end
  end
end
