#   Components 
        -> Which are the inbuilt methods and that are inherited .

                     Belongs                             Component                               Descrption
            
                1. Model                                ActiveModel                        -These are used virually to get models if table
                                                                                             is present .
                                                        ActiveRecord                       -Its is the orm which mapps table columns and
                                                                                             object .
                2. Controllers                          ActionController                   -It provides the ibuilt methods for curd
                                                                                             opertaions .                            
                3. Views                                Action                              -it provides the inbuilt files to perform 
                                                                                             operations .
                4. Views                                ActionText                          -It provides the form methods or attributes .
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
                                                                                                are not directly stored in databse it reuired some plugins but after version 6 the activeStorage allows it .
                                                         

                