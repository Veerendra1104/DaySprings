# Validations :
    1. Inbuilt validations 
        * Customer : 
            validates:email, presence: true
            validates:email, uniqueness: true 
            validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters are allowed" }
        * products :
            validates:stock, numericality: true
            validates:stock, length: { minimum: 1, maximum: 20 }
            validates:description, length: { maximum: 500 }  
            validates:price , numericality: true
            validates :price, numericality: { greater_than_or_equal_to: 3 }
    2. Custom Validation :
        * customers :
            # Customized Validation 
            validate: check_email


            # def check_email(email)
            #   # check email is present or not .
            #   email.nil? "Email is not present" : "Email is present ."
            # end
        * products :
            validate:check_price

                # Customized Validations
            def check_price
                if stock == 0 && price > 0 
                # errors.add(:stock,"Stock is not avaliable ." )
                    errors.add "Stock is not avaliable ."
                    end
                end
                
   # Note :
        The below code is used to handle and display the error messages cought 
            
        <% if @product.errors.any? %>
        <div id="error_explanation">
            <h2><%= pluralize(@product.errors.size, "error") %> prohibited this object from being saved:</h2>
            <ul>
            <% @product.errors.full_messages.each do |message| %>
                <li><%= message %></li>
            <% end %>
            </ul>
        </div>
        <% end %>
    
    Assingment :
   # 1.checks_aplha numeric
      validates :name, format: { with: /\A[a-zA-Z0-9]+\z/, message: "Only letters and numbers  are allowed" }

   # 2. Check is_Active usig the acceptance .
    validates:is_active , acceptance:true

   # 3. If the product is active the product price should be add 
    validate:price_input_validate
        def price_input_validate
            if !is_active
                errors.add(:price, ", First the product should be active to add price .")
        
            end
         end

   # 4. If the product is active the product stock should be add s
    validate:stock_input_validate
        def stock_input_validate
            if !is_active
                errors.add(:stock, ", First the product should be active to add stocks .")
            end
        end

   # 5. THe decrption should not allow specials symbols .
    validates:description, format: { with: /\A[a-zA-Z0-9 ]+\z/, message: "Only letters and numbers  are allowed" }


	