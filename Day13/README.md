#   Action Text 
    -> it is the component which provides the better stylings like rich text area .
  
    Installation steps of ActionText
        -> ActionText is built-in starting from Rails 6.0
        -> Run the command : rails action_text:install
        -> Run migrations rails db:migration


    Files created in the project after installing ActionText:
        -> app/assets/stylesheets/actiontext.css (newly created)
        -> app/javascript/application.js (updated)
        -> projectDb/app/views/active_storage/blobs/_blob.html.erb (newly created)
        -> projectDb/app/views/layouts/action_text/contents/_content.html.erb (newly created)
        -> projectDb/config/importmap.rb (updated)
        -> projectDb/db/migrate/20260128045538_create_active_storage_tables.active_storage.rb (newly created)
        -> projectDb/db/migrate/20260128045539_create_action_text_tables.action_text.rb (newly created)
        -> projectDb/test/fixtures/action_text/rich_texts.yml (newly created)

    File changes after migration.
        schema.rb (updated)


#   Steps to do 
    * Steps For the existing database table to add new columns with using action text .
    Step1 :
        -> Inside the Product module add a method has_rich_text 
              has_rich_text:description           
    Step2 :
        -> In the Controller inside the private method that is params add the parameter :descrption .
               def product_params
                    params.expect(product: [ :name, :description, :price, :stock, :is_active, :description ])
                end
    Step3 :
        -> In the form now update the form.text_area to form.rich_text_area .
                <div>
                    <%= form.label :description, style: "display: block" %>
                    <%= form.rich_text_area :description %>
                </div>
    Step4 :
        -> In the index update with the descption .
                 <p class="card-text text-muted">
                        <%= if  product.description.nil?
                                "Default Description ."
                            else
                                product.description
                            end              
                        %>       
                    </p>
    Step5 : In the  edit and new we can get as we are render the form .
    Step6 : In the show update with descrption 
                 <%= @product.description  %>

#   Assingments 
    1. Difference between schema.rb file before and after installation of action text .
        -> After the installation of the action text we get the new 2-3 tables which one handles the dectpions and other styling and other one with the storage( blob ) and others .
        -> These tables handles the extra data and connected to the orginal tables with the foreign keys whihc contains column id of the rescptive table and the name to which table does it belongs .
        -> These improves the performance and extra data that stores in original table .
    
#   debug command ( raise params.inspect )
    1. Inside the index : 
        	RuntimeError in CustomersController#index
            #<ActionController::Parameters {"controller" => "customers", "action" => "index"} permitted: false>
        Note :
            here the parmitted is false means it not checked the method params which is in the controller if that gets to exceuted before calling the specific method .

    2 . Inside the show :
            RuntimeError in CustomersController#show
            #<ActionController::Parameters {"controller" => "customers", "action" => "show", "id" => "1"} permitted: false>
    3 . Inside the new :
            RuntimeError in CustomersController#new
            #<ActionController::Parameters {"controller" => "customers", "action" => "new"} permitted: false>


    
    
        

        


