# Core Ruby Concpets 
#   Data Types :
        -> They are defined in the migartions .
        -> Mapped into the objects .
        -> used in models , fomrs, validations .

        -> Example :
                rails g model User name: string email: string mob; biginteger.
        
        -> The after the migartion the table created .
        -> If the value entered during the input or front end the active record class will type cast to the integer or same as the table coumns later used for validations or others .
        
        Rails handling data types in real time :
                -> Defined in migrations .
                -> casted by active records .
                -> used as ruby object .
                -> validates in models .
#   Variables :
                Variables               |               Symbol          |               Used in rails 
                
                local                                    a                              inside methods
                instance                                @a                              controller -> Views
                class                                   @@a                             avoid
                global                                  $a                              avoid
                constant                                A                               config
                params                                  params                          request
                sessions                                session                         login
                flash                                   flash                           messages

                Variables in rails
                -> Views only see insatnce variables .
                -> local variables die aftert the method .
                -> avoid global and class variables .
                -> params are string .

#   Type Casting :
        -> The convertion of onde data type to other data type is called type casting .

        The main use of typecasting 
                -> Http request sends everything in the string .
                -> DB stores the values in the typed column .
                -> Ruby excepts the correct parameters .
                -> The active records class automatically cast based on the database columns .
#   Active records :
        -> Rails ORM .
        -> Maps model to tables .
        -> handles crud, validations , associations .
        -> abstract sql .

        Note :
                -> The every model inherit the ActiveRecord class and performs the operations as the contains inbuilt methods .

        







