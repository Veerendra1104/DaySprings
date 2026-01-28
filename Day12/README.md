#   Components 
        -> Which are the inbuilt methods and that are inherited .

                     Belongs                             Component                               Descrption
            
                1. Model                                ActiveModel                        -These are used virually to get models if table
                                                                                             is present .
                                                        ActiveRecord                       -Its is the orm which mapps table columns and
                                                                                             object .
                2. Controllers                          ActionController                   -It provides the ibuilt methods for curd
                                                                                             opertaions .                            
                3. Views                                ActionView                          -it provides the inbuilt files to perform 
                                                                                             operations .
                4. Views                                ActionText                          -Used for rich text content .
                5. Routes                               Action Dispatcher                   -It provides the ibuilt routes specifications .
                6. Views and Controllers                ActionPack                          -It synces the controller and the views by 
                                                                                             generating controller it provides views .
                7. Mails                                ActionMailer                         -It provides the inbuit methods for the 
                                                                                             outbound mails .
                                                        ActionMailBox                       -It provides the inbuilts to handle inbound 
                                                                                               mails which can be used as requirement .
                8. Inbuilt                              ActiveSupport                       -It provides the libarary methods for rails 
                                                                                              like( presence, other validations and others )
                9. Jobs                                 ActiveJob                            -It is used for the background job processing
                                                                                                Exmaple: rabbit, sidze plugins are used .
                10. Network                             ActionCables                          -It is used to achieve syncrhonous and 
                                                                                                asyncrhonous websockets .
                11.Inbuilt                              ActiveStorage                         -It earlier the images, blobs
                                                                                                are not directly stored in databse it reuired some plugins but                                                                                                         after version 6 the activeStorage allows it .
# Which component does what 
        CRUD → ActiveRecord        
        Validations → ActiveModel        
        Forms → ActionView        
        Params → ActionController        
        Routes → ActionDispatch        
        Helpers → ActionView        
        Background jobs → ActiveJob        
        WebSockets → ActionCable
# Rails Request Flow (VERY IMPORTANT)
        Browser
         → Routes (ActionDispatch)
         → Controller (ActionController)
         → Model (ActiveRecord)
         → View (ActionView)
         → Response

#   Assingment 
        1. If routes with except route for the route it will show following error
                CMD : resources :products, except: [:show]
                Exceptions : Nor route matches GET "/products/19" .
        2. By deleting or removing the show methods in controller then
                Exceptions : ProductController#show not found . 
        3. if we delete show.html.erb then 
                Exception : ActionController::UnknownFormat in ProductController#show .
        4. if we use only then it will work for those routes 
                CMD : resourse:products, only:[:edit, :destory]
        5. Adding the column to the existing table 
                CMD : rails g migrations AddMobToCustomer mob:bigint
                rails db:migrate
                -> THe mob added to the table .
        6. By using the controller generate cmd it also generate the views .
                rails g controller admin
                -> it generates the admin views also with the controller .
         

                              
                             

                
