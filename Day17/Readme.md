#   ActiveRecord methods 
        -> THe following are the activerecord query methods that are inbuilt and used in real time .

        1.  New | Create 
            * New :
                -> The new which is used to just create the object of the module but not save until using the save method .
                    db-exmaple(dev):002> c = Customer.new(name:"Demo", email:"demo@gmail.com", mob:123458765, dob:"11-04-2024" )
                        =>
                        #<Customer:0x0000020e690122e0
                        ...
                        db-exmaple(dev):003> c
                        =>
                        #<Customer:0x0000020e690122e0
                        id: nil,
                        name: "Demo",
                        email: "[FILTERED]",
                        created_at: nil,
                        updated_at: nil,
                        mob: 123458765,
                        dob: "2024-04-11">
                        db-exmaple(dev):004>
                -> This is not saved as the id is nillbut if i execute 
                        c.save then :
                            db-exmaple(dev):004> c.save
                            TRANSACTION (0.7ms)  BEGIN /*application='DbExmaple'*/
                            Customer Exists? (9.0ms)  SELECT 1 AS one FROM "customers" WHERE "customers"."email" = 'demo@gmail.com' LIMIT 1 /*application='DbExmaple'*/
                            Customer Create (17.2ms)  INSERT INTO "customers" ("name", "email", "created_at", "updated_at", "mob", "dob") VALUES ('Demo', 'demo@gmail.com', '2026-02-03 06:43:12.041358', '2026-02-03 06:43:12.041358', 123458765, '2024-04-11') RETURNING "id" /*application='DbExmaple'*/
                            TRANSACTION (3.9ms)  COMMIT /*application='DbExmaple'*/
                            => true
                            db-exmaple(dev):005> c
                            =>
                            #<Customer:0x0000020e690122e0
                            id: 21,
                            name: "Demo",
                            email: "[FILTERED]",
                            created_at: "2026-02-03 06:43:12.041358000 +0000",
                            updated_at: "2026-02-03 06:43:12.041358000 +0000",
                            mob: 123458765,
                            dob: "2024-04-11">
                            db-exmaple(dev):006>
            * Create :
                -> By using the create it automatically saves the data , no need of the save explicilty
                    db-exmaple(dev):006> c = Customer.create(name:"Demo1", email:"demo1@gmail.com", mob:123458765, dob:"11-04-2024" )
                    TRANSACTION (0.6ms)  BEGIN /*application='DbExmaple'*/
                    Customer Exists? (2.3ms)  SELECT 1 AS one FROM "customers" WHERE "customers"."email" = 'demo1@gmail.com' LIMIT 1 /*application='DbExmaple'*/
                    Customer Create (1.2ms)  INSERT INTO "customers" ("name", "email", "created_at", "updated_at", "mob", "dob") VALUES ('Demo1', 'demo1@gmail.com', '2026-02-03 06:47:13.984820', '2026-02-03 06:47:13.984820', 123458765, '2024-04-11') RETURNING "id" /*application='DbExmaple'*/
                    TRANSACTION (1.3ms)  COMMIT /*application='DbExmaple'*/
                    =>
                    #<Customer:0x0000020e6eaeb680
                    ...
                    db-exmaple(dev):007> c
                    =>
                    #<Customer:0x0000020e6eaeb680
                    id: 22,
                    name: "Demo1",
                    email: "[FILTERED]",
                    created_at: "2026-02-03 06:47:13.984820000 +0000",
                    updated_at: "2026-02-03 06:47:13.984820000 +0000",
                    mob: 123458765,
                    dob: "2024-04-11">
                    db-exmaple(dev):008>

        2. Delete | Destory :
            * delete :
                -> The delete method will delete the actual value store in the table .
                db-exmaple(dev):008> Customer.delete(21)
                Customer Delete All (10.5ms)  DELETE FROM "customers" WHERE "customers"."id" = 21 /*application='DbExmaple'*/
                => 1
            * Destory :
                -> The destory method will delete the acutal value and also the referenced values along with that 
                    db-exmaple(dev):011> Customer.destroy(22)
                    Customer Load (2.9ms)  SELECT "customers".* FROM "customers" WHERE "customers"."id" = 22 LIMIT 1 /*application='DbExmaple'*/
                    TRANSACTION (0.4ms)  BEGIN /*application='DbExmaple'*/
                    ActionText::RichText Load (3.0ms)  SELECT "action_text_rich_texts".* FROM "action_text_rich_texts" WHERE "action_text_rich_texts"."record_id" = 22 AND "action_text_rich_texts"."record_type" = 'Customer' AND "action_text_rich_texts"."name" = 'about_me' LIMIT 1 /*application='DbExmaple'*/
                    ActiveStorage::Attachment Load (1.5ms)  SELECT "active_storage_attachments".* FROM "active_storage_attachments" WHERE "active_storage_attachments"."record_id" = 22 AND "active_storage_attachments"."record_type" = 'Customer' AND "active_storage_attachments"."name" = 'profile_photo' LIMIT 1 /*application='DbExmaple'*/
                    Customer Destroy (0.6ms)  DELETE FROM "customers" WHERE "customers"."id" = 22 /*application='DbExmaple'*/
                    TRANSACTION (1.0ms)  COMMIT /*application='DbExmaple'*/
                    =>
                    #<Customer:0x0000020e6ec51ba0
                    id: 22,
                    name: "Demo1",
                    email: "[FILTERED]",
                    created_at: "2026-02-03 06:47:13.984820000 +0000",
                    updated_at: "2026-02-03 06:47:13.984820000 +0000",
                    mob: 123458765,
                    dob: "2024-04-11">
                    db-exmaple(dev):012>

        3. Insert one data  | Insert Mulitple data  
            * Insert one data  :
                -> To insert one data we can use create method and pass the parameters .
                        Exm : Customer.create(name:"Demo1", email:"demo1@gmail.com", mob:123458765, dob:"11-04-2024" )
            * Insert Multiple data :
                -> To insert multiple data we can use the hashes by separating them using commas 
                        Exm :  Customer.create({name:"Demo1", email:"demo1@gmail.com", mob:123458765, dob:"11-04-2024"}, {name:"Demo", email:"demo@gmail.com", mob:123458765, dob:"11-04-2024"} )
        4. Find | Find_By
            * find :
                -> The find method is the value exits it fetches but if the value not present then it shows or throw error .
                     def index
                        @customers = Customer.find(111)
                    end

                    Output :

                    ActiveRecord::RecordNotFound in CustomersController#index
                    Couldn't find Customer with 'id'=111
             * find_by :
                -> here if we use the find_by then it doesnot shows or throw error it makes it nil .
                    def index
                         @customers = Customer.find_by(id:111)
                    end

                    output :

                    NoMethodError in Customers#index
                    Showing E:/DaySprings_company/DaySprings/complete_project/E_Commerce_Project/app/views/customers/index.html.erb where line #27 raised:

                    undefined method 'name' for nil
        5 Where :
            -> Where method which fethes the array list matches with given condition.
            -> If the values are present get displced if not present it returns empty array and table with out values but it doesnot throws error .
               


