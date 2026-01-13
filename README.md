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
# Commands to remmber :
      -> ruby --version
      -> rails --version 
      -> gem insatll rails
      -> rails new ProjectName

#Day2
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
            
      


      
      
