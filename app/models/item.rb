class Item < ActiveRecord::Base
    belongs_to :cart


    def in_cart?
        self.cart_id.present?
    end
end
