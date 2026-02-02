# DaySprings
# Day 1
      # Ruby 
            Ruby is the dynamically typed, open source programming language with an simplicity and productivity .
            -> The ruby is founded by yokiro "Matz".
            -> 1995 - ruby released .
               2006 - ruby becomes popular ( reason rails discovered ) .
            -> Ruby is 100% object oriented and  every thing is stored in the format of the object .
            -> Latest version is : #3
            -> It's follow the solid principles except I .
      # Rails 
            Rails is the framework which is used by ruby .
            -> Latest version 8 .
      # IMP
            -> The version management is done by the rbm and rvm( used to switch )
            -> To install rails : gem install rails 
            -> The ruby can alone be able to create the project where the rails and other framework which helps to reduce the time and can provide the boilerplate code and maintains the strucutre .
      # Rails :
            The rails project can be created in 3 ways :
                  1. rails new project_name 
                  2. rails new createapionly ( For specificaly : Example if required two teir )
                  3. Scalefold ( It auto sets Controller and others for mvc )
      # Note :
            -> Flow Order :
                  Ruby code -> Interpretor -> objects -> output .
                  * Its executes top to bottom .
            -> TH methods are executed only when they are called .
            -> only false and nill are false 
                  everything else is thruthly .
# Day2
      * Project with Postgresql
            * There are mainly 3 cmds used 
                  -> rails db:create ( to create the database . )
                  -> rails db:seed ( to connect with the data which is present in file . )
                  -> rails db migrate ( to perform the migration of the created schemas . )
      * Scaffold
            -> It is used to generate the skeleton of an application which creating a each one separatly .
            Command 
                  -> rails generate scaffold Customer name:string email:string
                  -> rails generate controller ( for only controller  )
      * Project Creation cmds
            -> rails new project_name
            -> rails new project_name -d database_name ( for specific data )
            -> rails new project_name -d database_name --skip -test ( which skips the test used if not test is required. )
      * Database.yml ( database config file )
            -> here we will uopdate the host or the ip address, username, password
            -> which should be add details correctly else leads to error during db:create
      * Rails Console
            -> rails console is a command which provides space to interact with the database using the rails query .

# Day3
      Main Features :
            -> Syntatic Sugar
                  * The rails which provides the required mvc controllers, views and models by auto without explitiy programming 
            -> Convolution over configuration 
                  * By just providing the correct name the rails will amake automatic configuration worok flow .
                  * Example: rail generate model Customer ( which creates the database of customers )
                  Note :
                        * The name convention for the model should be in the singular .
                        * The name convention for the controller should be in the plural .
      File Structure :
            -> Config Folder
                   * The config folder is used to configure how the Rails application behaves.
                   * It controls:
                              -> database connection
                              -> routes
                              -> environments
                              -> application settings
                   * Important Files in Config Folder
                         -> config/database.yml
                               * Used to configure database connection
                               * Contains:
                                     -> adapter (postgresql / mysql / sqlite)
                                     -> database name
                                     -> username
                                     -> password
                                     -> host
                                     Note :
                                           If values are wrong → rails db:create fails
                          -> config/routes.rb
                                * Used to define application routes
                                * Connects URL to controller actions
                                * Example:
                                      -> resources :customers
                          -> config/application.rb
                                * Main configuration file for the application
                                * Loads frameworks and gems
                          -> config/environment.rb
                                * Loads the Rails application
                                * Entry point of the app
                          -> config/environments/
                                * Contains environment-specific settings:
                                      -> development.rb
                                      -> test.rb
                                      -> production.rb
                                      Each environment has different behavior
            -> DB Folder
                  * The db folder manages everything related to the database.
                  * It handles:
                        -> table creation
                        -> schema changes
                        -> seed data
                  * Important Files in DB Folder
                        -> db/migrate/
                              * Contains migration files
                              * Used to create or modify tables
                              * Each file has a timestamp
                              * Run using:
                                    -> rails db:migrate            
                        -> db/schema.rb             
                             *  Represents current database structure
                             * Auto-generated by Rails                 
                             * Do not edit manually                  
                        -> db/seeds.rb                  
                             * Used to insert initial or sample data                  
                             * Helpful for testing and setup                  
                             * Run using:
                                   -> rails db:seed
# Day4
      * app Folder 
            -> Its is the main folder and the code which is written .
            -> THe folder are 
                  * Controllers
                        -> These containes the controllers which handles request and provides response .
                  * Views
                        -> These contains the .html.erb files which are used to for UI .
                  * Models
                        -> These maintians the database tables .
                  * Javascript
                        -> These folders are introduces from ruby version 8 which are intrgrated to handle the UI .
                  * mailers
                        -> These contains the files where these files are used to send the specific mails for specific action .
                  * jobs
                        -> These conatins the files that subject to perform  specific operation at the specific time .

             Note :
                   The project is said to be strong with the thin controller and thick models which means the majolry database logic should be written int the models .

      * Data types :
            -> Primitive data types 
                  * String ( mutable : the address may or may not change  )
                  * Integer
                  * Bignum
                  * float 
                  * symbol ( immutable )
                  * Boolean
                  * nil
            -> The every primitive data types stores in format of object .
            -> The efault value will be nil if it nt initialize .
      
      * variables :
            -> There are mainly 6 data types 
                  * Local - just common name 
                  * global - starts with $
                  * instance - starts with @
                  * class - starts with @@
                  * constants - upercase 
# Day 5
      * Note : 
            -> The method will return automatically if neccasary conditions ( Like if  ) then use return .
            -> Comments 
                  * Single line comment : using #
                  * Double line comment : using =begin   =end

      * Type Casting :
            -> The defualt get will be string 
            -> There is no implicit typecasting we need to do explicilty .
            -> Some of are :
                         * String to int : .to_i
                         * int to string : .to_s
                         * String to float : .to_f
                         * float to string : .to_s

      * Created the new package of Product 
            -> Command : rails generate scaffold Product name:string description:text price:decimal stack:integer is_active:boolean 
            -> After every db command should be migrated by db:migrate
            -> Ways to insert the data 
                  1. By Ui : The rails give the auto ui for insertion .
                  2. By Data manually : Using the databse workbench like dbeaver we can add and modify data .
                        -> INSERT INTO "products" ("name", "description", "price", "stock", "is_active", "created_at", "updated_at") VALUES ('Iq ', 'The iq new product', 80, 2, TRUE, '2026-01-16 ', '2026-01-16') 
                  3. By Placing the data insertion command in the seed.rb and run the db:seed command to insert .
                        -> Product.create(name:"Tesla 1",description:  "The tesla 1 product", price: 900,stock: 30,is_active: true)
                        -> Product.create(name:"Tesla 2",description:  "The tesla 2 product", price: 9000,stock: 300,is_active: true)
                  4. By using the rails console which provides the platform to interact By using the runy commands 
                        -> Product.create(name:"Tesla",description:  "The tesla product", price: 90,stock: 3,is_active: true)
            -> Faker Api :
                  * Using Faker Api which is used to insert the fake data By using the Gems .
             -> Note :
                   * During the execution of the rails query command i made a mistake of giving space so the command should be 
                         * sensitive with only the table name with starting letter capital and other small 
                         * THe space should not be given during giving of column name 
                         * if string use "" .
# Day 6 
      * Loops :
            -> The rails contains the ibuilt loops they are 
                  * for loop :
                        -> The for loop the initialization is given and its performs auto increment ie : +1 .
                  * while loop :
                        -> This loop checks the conditions , if the condition is true then its get in .
                  * Loop ( Similar to do while loop ) :
                        -> This performs the opreration and checks condition later .
                  * until loop :
                        -> This runs the loop untill the condtion becomes true .
      * In built methods for Collections :
            -> These are present in the enumerable module which are inbuilt 
                  1. each : The method which is used to acess the each element in the array or thers .
                  2. select : This method which is used achive the specific condition which are eligible for the condtion those are fetched .
                  3. reject : This method which is used achive the specific condition which are eligible for the condtion those are fetched .
                  4. map , collect : These are same methods which is used to iterate through each value and acess them .
      Note :
            * These methods does not effect arrays , the arrays remains same .
            * If we need to modify the array then use ! after the method 
                  -> Example : select!{} .
            * The method to return the boolean then it should use ? after method name 
                  -> Example : all?

      * Method of rails for data communication :
            -> pluck is used to select the specific column .
                  Example : # @product = Product.all.limit(10)
                            # @stock = Product.all.limit(10).pluck(:stock)
                            # @prices = Product.all.limit(10).pluck(:price)
            * Question : Select 10 products which are in active condtition .
                  Ans : Product.all.limit(10).select{|n| n.is_active = true}
# Day 7 
      * Class :
            -> The class name should be write in the Camel Case , Example : CustomController .
      * Methods :
            -> THe method or variable name sould be in the snake clase , Example : limit_active .
            -> THere are mainly 2 types are methods which are majorly used :
                  1. Predicate method : The method which returns only either true or false .
                  2. Bang method : The normaly the methods does not change their original data but using the "!" symbol we can make original data to change .
      * Inheritance :
            * Its allows only single level inheritance .
            * The super keyword is used to access the parents method and variables .
            * Method Hirerachy : The methods work flow will be 
                  -> Child 
                  -> Base
                  -> Object 
                  -> Kernel ( its not a class it is a module . )
                  -> BasicObject .
      * Ancestores :
            -> The method during fetching it fetches from child and later goes to flow as shown above .
      * responds_to :
            -> It's check whether the method is exists or not .
                 * Example : "Sample".responds_to?(:uppercase) .
                           2 . The responds_to? return true for the inbuilts methods of child class if not overiden as these are present in the inbuilts class  , Base, Object, Kernel, Basic Object .
      Note :
            -> The puts methods will not be access without overriding because it is private methods .
            -> The basicObject is only able to acess the private varibales which is fetature of ruby .
# Day 8 
      * Conditional Statements :
            -> There are used to perform the operations based on the conditions .
            -> There are mainly 3 types 
                  * If Else: 
                        -> it check the condtion and enters if condition satisfies .
                              * Example : stock = -20
                                        is_availabe = false
                                        if stock > 0
                                        is_availabe = true
                                        else 
                                        puts "Item not availabe ."
                                        end
                  * Els If :
                        -> Here two or more conditions can be checked .
                              * Example : price = 350
                                          discount = 0
                                          if price > 100
                                            discount = 10
                                          elsif price > 200
                                            discount = 20
                                          elsif price > 300
                                            discount = 30
                                          elsif present > 400
                                            discount = 40  
                                          else
                                            discount = 5
                                          end
                                          
                                          puts discount
                  * Ternary Operator :
                        -> It is similar to the if but written in the single line similar to lambda .
                              * Example : puts is_active ? " Item present" :  "Not present"
                  * Unless :
                        -> it is oppsoite to the if where if the condition is true it goes to else part .
                              * Example : stock = 15
                                          unless stock < 0
                                            puts "Stock availabe"
                                          else
                                            puts "Stock "
                  * Cases :
                        -> It is used to perform the specific operation by switching to the corresponding condtition .
                        -> Example : price = 350
                                    discount = 0
                                    case  
                                    when price >= 100  &&  price < 200
                                      discount = 10
                                    when  price>= 200 &&  price < 300
                                      discount = 20 
                                    when price >= 300 &&  price < 400
                                      discount = 30
                                    when price >= 400 &&  price < 500
                                      discount = 40
                                    else
                                      discount = 5
                                    end
                        -> Note :
                              * When the logic , and, or, < , >  are used without any varibale refernce as shown in the below .
                              * When the ranges , flag are used then no need of variable as shown below 
                                    Example : case  price
                                                when 100..200
                                                  discount = 10
                                                when  200..300
                                                  discount = 20 
                                                when 300..400
                                                  discount = 30
                                                when 400..500
                                                  discount = 40
                                                else
                                                  discount = 5
                                                end
                                                
                                                puts discount
                                                
      * Acess Modifier : 
            -> There are 3 types of access modifiers 
                  * Public : These class or methods can be acess any where as it is made public .
                  * Private : The methods cannot be acessed outside of the class it belongs to only inside the class .
                  * Protected : These class or methods which can be accessed inside classs or sub classes .
            -> Note :
                  * To fetch the private methods , we need to call them in the public method and as the method is public now we can acess them indirectly .
                  * To fetch the protected methods do as similar to above or we can call the in child / sub class public methods and can access them .
# Day 9
      * Note :
            -> The email validation inbuilt features had came to rails from the version 6
            -> THe encrypt , decrypt came to rails from version 7 where by using the method by calling the method name inside the models .
      * Validatores :
            -> The validations can be done 2 ways :
                  * From the frontend in html code ( which checks during the entry of data if valid then inserts otherwise not . ) .
                  * From the methods in the class ( which checks inside the rails methods after data came from front end . ) .
            -> There are mainly 2 types 
                  1. Inbuilt validations :
                        * Rails has inbuilt validation methods which can be accessed directly inside the models to insert valid data .
                              -> Example :  validates:email, presence: true
                                            validates:email, uniqueness: true 
                                            validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters and numbers  are allowed" }
                  2. Custom Validations :
                        * We can create a methods as our requirement and can be called when ever required .
                              -> Example : 
                                          def check_price
                                                  if stock == 0 && price > 0 
                                                      # errors.add(:stock,"Stock is not avaliable ." )
                                                      errors.add "Stock is not avaliable ."
                                                  end
                                          end
                                         * validate:check_price ( To call this method )
      * Note :
            -> The during the calling of the inbuilt methods we use the validates .
            -> THe during the calling of the custom function we need to use the validate .
# Day 10 
      * Scopes :
            -> THese are only used in the modules which are used to handle the repetative queryies in the databases .
            -> They return the table records .
            -> The methods and scopes are similar but different in the use cases 
                  * Methods :
                        -> These are mainly used for the cases like methods chaining and repetative .
                  * Scopes :
                        -> These are not used for chaining , used where to perform the single oparation on the databases or other collections one time .
            -> These can be used to perform the both rails query and the sql query .
                  * Rails query :
                        ->  scope :out_of_stock, -> { where("stock <= ?", 0) }
                  * Sql query :
                        -> scope : test_scope, -> query("Write the required query ") .
            -> There are mainly two types of scopes 
                  1 . Non parameterized scope :
                        ->  scope :out_of_stock, -> { where("stock <= ?", 0) }
                  2. Parameterized scope :
                        ->  scope :blacklisted_customers, ->(customer_ids) { where(id: customer_ids) }
      * The code for the assingment is upload in the Day10 folder .
      Note :
            -> <%  %>   --> it is used to embed the ruby code in the html .
            -> <%=  %>  --> it is used to embed the ruby code in the html and to display in the web page .  
#   Day11  
      -> Republic holiday revision .
#   Day12 
      * Components :
            -> The rails provides the many components which contains the many inbuilt methods or operations simplifyies the code .
            -> The different types of components are listed in the Day12 readme.md .
      * ActivePack :
            -> The using this component which provides the views by genrating the controllers .
                  Example :
                        * CMD : rails g controller admin .
                        -> This generates the admin controller and also the admin views .
      * Command to add the new column to the product .
            -> rails g migartion AddMobToProduct mob:bigint .
            -> rails db:migrate .
            -> This will add the new column to the existing table .
            Note :
                  -> To remove 
                        rails g migration RemoveFromCustomers mob:bigint .
      * Routes config :
            1. To skip the routes we can use the following command 
                  resources :products, except: [:show]
            2. To only use the specific 
                  resources :products, only: [:edit, :destroy]
#   Day13
      * ActionText
            -> Installation steps of ActionText
            -> ActionText is built-in starting from Rails 6.0      
      * Run the command :
            -> rails action_text:install
      
      * Run migrations rails
            -> db:migration
      
      
      * Files created in the project after installing ActionText:
            app/assets/stylesheets/actiontext.css (newly created)
            app/javascript/application.js (updated)
            projectDb/app/views/active_storage/blobs/_blob.html.erb (newly created)
            projectDb/app/views/layouts/action_text/contents/_content.html.erb (newly created)
            projectDb/config/importmap.rb (updated)
            projectDb/db/migrate/20260128045538_create_active_storage_tables.active_storage.rb (newly created)
            projectDb/db/migrate/20260128045539_create_action_text_tables.action_text.rb (newly created)
            projectDb/test/fixtures/action_text/rich_texts.yml (newly created)
            
            File changes after migration.
            schema.rb (updated)
      
      * Steps to add a ActionText column to a table.
            -> ActionText does not add a column into an existing table, instead it creates its own table and associaltes it with model.
      
            -> Add has_rich_text to existing model
                  In the cutomer/product.rb file, add --> has_rich_text :col_name
      
            -> Permit the rich text Attribute (controller)
                  In the controller files, update the private method modelname_params() by adding the col_name.
      
            -> Update the form to use rich_text_area      
                  <%= f.label :col_name%>      
                  <%= f.rich_text_area :col_name %>      

#   Day14 
      * Active Storage 
            -> It used to handle the files content with out storing the extra data in tables , there creates new table and match with primary keys .
            -> It is mainly used to store the images , files , pdf's, others 
            -> TO perform we need to install ActionStorage .
            The code and the assignment updated in Day14 readme .
      * Storage 
            -> The storage can be locally or cloud storage .
            -> For the specific cloud storage we need specific gem to install .
                  * aws -> aws gem .
                  * GCS -> Gcs gem .
            -> Steps to do for specific cloud storage .  
                  1. install acitve Stoorage .
                  2. rails db: migrate .
                  3. storage,yml (we need to configure which storage to use )
            -> In the environment we call the storage.yml  we can use  the different storages for the env .

      * Order to write in model 
            -> ActiveText related .
            -> ActionStorage.
            -> Scope Validations .
            -> Assocition .
            -> These steps are not compulsory but which maintains an orders which can be analyzed the project .
      * Styling 
            -> We can do two ways of styling 
                  1. Using the html tags .
                  2. The gems like ImageProcessing and carrierweb which provides the styles can be applied simliar like validations .

#   Day15
   **ActionMailer**
      * Action Mailer allows you to send emails from your Rails application. It's one of the two email related components in the Rails framework

   **Steps to Do**
      * Generate the mailer name using the following command 
            -> rails generate mailer mailername 
            -> rails db:migrate
      * It will generate the some of the files 
            -> demp-app\app\mailers\customer_mailer.rb
            -> demp-app\app\views\customer_mailer
            -> demp-app\test\mailers\previews\customer_mailer_preview.rb
            -> demp-app\test\mailers\customer_mailer_test.rb
      * We need to add the cmd in the application.rb
            -> require "action_mailer/railtie" 
      * we need to configure in the development.rb
            -> config.action_mailer.perform_deliver = true
            -> config.action_mailer.delivery_method = smtp  
      * But here we are using the  letter_opener
            -> config.action_mailer.delivery_method = letter_opener 
      * add the route 
            -> if Rails.env.development? 
                  mount LetterOpenerWeb::Engine, at:"/letter_open
                  end
      * config the mailer method and html page 
            -> class CustomerMailer < ApplicationMailer 
                      def welcome_email 
                          @customer = params[:customer]
                        mail(
                        to: @customer.email,
                        subject:"Welcome to app"
                         )
                      end
                    end  
      * Now if the user is created then make configure to send the mail .
                  -> if @customer.save
                  CustomerMailer.with(customer: @customer).welcome_email.deliver 


# Commands to remmber :
      -> ruby --version
      -> rails --version 
      -> gem insatll rails
      -> rails new ProjectName
      -> rails g Scaffold Customers name: string email:string 
      -> rails g Contoller Products ( creates only controllers )
      -> rails g model Product ( creates only model )
      -> rails db:create
      -> rails db: seed
      -> rails db:migrate 
      -> rails new project_name --skip -test ( which creates the file without test )
      -> rails c( which creates the platform to execute the rails query )
      -> rails s ( to start server )
      -> gem install faker ( to install gem )
      
            
            
      
            
                       
                  
                  
                  
      
            


            
      


      
      
