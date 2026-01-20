# DaySprings
# Day 1
      # Ruby 
            Ruby is the dynamically typed, open source programming language with an simplicity and productivity .
            -> Every thing is stored in the format of the object .
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
# Day 6 :
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
# Day 7 :
      * Class :
            -> The class name should be write in the Camel Case , Example : CustomController .
      * Methods :
            -> THe method or variable name sould be in the snake clase , Example : limit_active .
      * Inheritance :
            * Its allows only single level inheritance .
            * The super keyword is used to access the parents method and variables .
            * Method Hirerachy : The methods work flow will be 
                  -> Child 
                  -> Base
                  -> Object 
                  -> Kernel
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

# Commands to remmber :
      -> ruby --version
      -> rails --version 
      -> gem insatll rails
      -> rails new ProjectName
            
            
      
            
                       
                  
                  
                  
      
            


            
      


      
      
