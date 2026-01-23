# Scopes 
    * There are mainly two types of scopes 
        1 . Non parameterized scope :
            ->  scope :out_of_stock, -> { where("stock <= ?", 0) }
        2. Parameterized scope :
            ->  scope :blacklisted_customers, ->(customer_ids) { where(id: customer_ids) }

# Assingment 
    1. Customers : block_list_members 
        -> The belows steps are used to get the list of blocked members
            Step1 : proivde the routes 
                ->  resources :products do
                            collection do
                            get 'out_of_stock'
                            end
                    end

            Step2 : Implement the scope as per requirment 
                ->  scope :blacklisted_customers, ->(customer_ids) { where(id: customer_ids) }

            Step3 : With same name of the route create a method in controller to handle and provide specific implementations using the scopes .
                ->  def blacklisted_customers
                        @list_of_blocked = [1, 5, 6]
                        @customers = Customer.blacklisted_customers(@list_of_blocked)
                    end

            Step4 : with the name of the route make the view file ie : blacklisted_customers.html.erb handles data give the frontend 
                ->  <% @customers.each do |customer| %>
                        <tr>
                            <td> <%= customer.name %> </td>
                            <td> <%= customer.email %> </td>
                            <td >  <%= link_to "Show this customer", customer, class: "show-customer-link"  %> </td>
                        </tr>                     
                    <% end %>
    2. Product : out_of stock 
            -> The belows steps are used to get the list of blocked members
            Step1 : provide the routes 
                ->  resources :customers do
                        collection do
                            get 'blacklisted_customers'
                        end
                    end
            Step2 : Implement the scope as per requirment 
                ->  scope :out_of_stock, -> { where("stock <= ?", 0) }

            Step3 : With same name of the route create a method in controller to handle and provide specific implementations using the scopes .
                ->  def out_of_stock    
                        @products = Product.out_of_stock
                    end 

            Step4 : with the name of the route make the view file ie : blacklisted_customers.html.erb handles data give the frontend 
                ->   <% @products.each do |product| %>           
                        <h5 >
                        <%= product.name %>
                        </h5>

                        <p >
                        <%= product.description %>
                        </p>

                        <p >
                        <strong>Price:</strong> ₹<%= product.price %>
                        </p>

                        <p>
                        <strong>Stock:</strong> <%= product.stock %>
                        </p>

                        <p>
                        <strong>Status:</strong>
                        <span class="badge <%= product.is_active ? 'bg-success' : 'bg-danger' %>">
                            <%= product.is_active ? "Active" : "Inactive" %>
                        </span>
                        </p>                

                        <div>
                            <%= link_to "View Product", product %>
                        </div>
                    <% end %>
# Note :
    * The name which holds the values should be same , should not change otherwise leads to error example : @products or @customers for new created methods which include the scopes .




        


