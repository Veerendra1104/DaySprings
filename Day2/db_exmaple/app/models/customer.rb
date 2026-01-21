class Customer < ApplicationRecord
    def limit
        Customer.limit(10)
    end
end
