#   Action Mailer
        -> Its a gem which is used to send the emails in an application .
        ->  where the active mailer is inbuilt not need to install again .
        -> The mainly used in the real time is the smtp protocal but here for dummy we are using the letter_opener .

##   Steps :
        1. Add the letter_opener and letter_opener_web to gemfile .
        2. In CMD execute the bundle install .
        3. Now generate the mail file using the below command with reqirement specific , here i need a mail for customer execute whenever created .
            -> rails g mailer customer .
            Note :
                -> Its provide the customer_mailer.rb file inheritng the ApplicationMailer .
                -> If we need a method inside we can use 
                    rails g mailer customer welcome_email 
                -> its provides the method welcome .
        4. Now allow the action mailer in development.rb for the letter_opener 
                -> config.action_mailer.perform_deliveries = true 
                -> config.action_mailer.delivery_method = :letter_opener
        5. Provide the implementation for the method in customer_mailer
                class CustomerMailer < ApplicationMailer
                    def welcome_email
                        @customer = params[:customer]
                        mail(
                        to: @customer.email,
                        subject:"Welcome to app"
                        )
                    end

                end
        6. Create the view inside the customer_mailer with same method name as welcome_email.html.erb and provide implementations  
            <html>
            <head>
                <meta content='text/html; charset=UTF-8' http-equiv='Content-Type' />
            </head>
            <body>
                <h1>Welcome to New Connection App, <%= @customer.name %>!</h1>
                <p>
                You have successfully joined this community
                your email is: <%= @customer.email %>.<br>
                </p>
                
                <p>Thanks for joining and have a fun-tastic day!</p>
            </body>
            </html>

        7. Now provide the implemetation that when the customer is saved then to send the mail .
             if @customer.save
            CustomerMailer.with(customer: @customer).welcome_email.deliver

        8. Add the root to get the mail overview after customer saved .
            if Rails.env.development?
                mount LetterOpenerWeb::Engine, at:"/letter_opener"
            end
            