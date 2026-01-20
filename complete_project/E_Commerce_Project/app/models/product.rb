class Product < ApplicationRecord
    def self.limit_with_active
        Product.all.limit(10).select{|n| n.is_active = true}
        

    end

    # @product = Product.all.limit(10)
    # @stock = Product.all.limit(10).pluck(:stock)
    # @prices = Product.all.limit(10).pluck(:price)
end
