#   Action MailBox
        -> Its a gem which is used to recive and view the recived emails in an application .
        ->  We nee to install the gem 
            * Install the action mail box using the following command :
                rails action_mailbox:install
                rails db:migrate

##   Steps :
        1. After the install of actionmailbox we will get the following files :
            * app/mailboxes/application_mailbox.rb
            * db/migrate/XXXXXXXXXX_create_action_mailbox_tables.rb
        2. Configure of development and production file 
            -> Here there is no configuration is required fornthe development  env as it reciing the mail .
            -> We need to configure the production 
                  config.action_mailbox.ingress = :any_ingress_server
                Note :
                    Ingress :
                    Configuring ingress involves setting up credentials and endpoint information for the chosen email service. Here are the steps for each of the supported ingresses.
        3. In the milboxes folder we need to provide the implemetation for application_mailbox to provide the routes 
            class ApplicationMailbox < ActionMailbox::Base
                # routing @any_domain
                    routing all: :support                    
            end
        4. Now we need to create the support_mailbox.rb using the command and configure that to view 
            class SupportMailbox < ApplicationMailbox
                def process
                    # This method is for processing the incoming mails 
                    # body =  mail.decoded   ( this will create the body )
                end
            end

            Note :
                -> here the process is default method to view , we can override that method for styling and modify .

        5. Now we can wee the mails using the following path :
            http://localhost:3000/rails/conductor/action_mailbox/inbound_emails
