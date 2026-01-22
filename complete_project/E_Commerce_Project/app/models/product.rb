class Product < ApplicationRecord
  # prewritten validation ( which are in built )
    validates:stock, numericality: true
    validates:stock, length: { minimum: 1, maximum: 20 }
    validates:description, length: { maximum: 500 }  
    # validates:price , numericality: true

    validates :price, numericality: { greater_than_or_equal_to: 3 }

    validate:check_price

    # Customized Validations
    def check_price
        if stock == 0 && price > 0 
            # errors.add(:stock,"Stock is not avaliable ." )
            errors.add "Stock is not avaliable ."
        end
    end


    # def self.limit_with_active
    #     Product.all.limit(10).select{|n| n.is_active = true}
        

    # end

    # @product = Product.all.limit(10)
    # @stock = Product.all.limit(10).pluck(:stock)
    # @prices = Product.all.limit(10).pluck(:price)

    def  check_availabelity
        # Check for stock value more than 0 .
        stock > 10 ? true : false
    end  
   
    def apply_discount
        # use case statements and calculate discount .
        @discount = 0
            case  price
                when 100..200
                discount = 10
                when  201..300
                discount = 20 
                when 301..400
                discount = 30
                when 401..500
                discount = 40
                else
                discount = 5
            end
        
    end

    def total_amount 
        # call the  check_availabelity (if true) and then apply_discount use any math(round) method use it  calculate the total .
        @discount = 0 
        if check_availabelity == true
            @discount = apply_discount(price)
            return @discount
        else
            return 0
        end

    end


end
