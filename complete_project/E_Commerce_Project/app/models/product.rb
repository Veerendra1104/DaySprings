class Product < ApplicationRecord
    has_rich_text:description
  # prewritten validation ( which are in built )
    validates:stock, numericality: true
    validates:stock, length: { minimum: 1, maximum: 20 }
    # validates:description, length: { maximum: 500 }  
    # validates:price , numericality: true

    validates :price, numericality: { greater_than_or_equal_to: 3 }

      #  1.checks_aplha numeric
      validates :name, format: { with: /\A[a-zA-Z0-9]+\z/, message: "Only letters and numbers  are allowed" }

    # 2. Check is_Active usig the acceptance .
    validates:is_active , acceptance:true

   # 3. If the product is active the product price should be add 
   validate:price_input_validate

   # 4. If the product is active the product stock should be add s
    validate:stock_input_validate

    # 5. THe decrption should not allow specials symbols .
    #  validates:description, format: { with: /\A[a-zA-Z0-9 ]+\z/, message: "Only letters and numbers  are allowed" }
     validate:check_price


    #  scopes 
    scope :out_of_stock, -> { where("stock <= ?", 0) }
    # for sql query 
    # scope :test_scope , -> query("You can write query here .")





    # Customized Validations
    def check_price
        if stock == 0 && price > 0 
            errors.add(:stock,"Stock is not avaliable ." )
            # errors.add "Stock is not avaliable ."
        end
    end

    # 3. If the product is active the product price should be add 
    def price_input_validate
        if !is_active
            errors.add(:price, ", First the product should be active to add price .")
      
        end
    end

     # 4. If the product is active the product stock should be add 
       def stock_input_validate
            if !is_active
                errors.add(:stock, ", First the product should be active to add stocks .")
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
        discount = 0 
        if check_availabelity
            discount = (apply_discount * price).to_i
          
            return discount
        else
            return discount 
        end

    end


end
