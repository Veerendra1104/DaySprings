#   Associations 
    1. Sql Association :
        -> It is used to connect between the models or tables with the foreign key constraint  . 
        -> Command :  rails g model User name:string email:string
                            invoke  active_record
                            create    db/migrate/20260205051204_create_users.rb
                            create    app/models/user.rb
                            invoke    test_unit
                            create      test/models/user_test.rb
                            create      test/fixtures/users.yml
                    * after migration :                            
                            == 20260205051204 CreateUsers: migrating ======================================
                            -- create_table(:users)
                            -> 0.0699s
                            == 20260205051204 CreateUsers: migrated (0.0714s) =============================
        
        -> Now generate the table with foreign key :  rails g model Vendor location:string user:references                            
                            invoke  active_record
                            create    db/migrate/20260205052154_create_vendors.rb
                            create    app/models/vendor.rb
                            invoke    test_unit
                            create      test/models/vendor_test.rb
                            create      test/fixtures/vendors.yml
                    * after migration : rails db:migrate
                            == 20260205052154 CreateVendors: migrating ====================================
                            -- create_table(:vendors)
                            -> 0.0703s
                            == 20260205052154 CreateVendors: migrated (0.0715s) ===========================
        
        -> The Sql association is only to built the connection if we want to access the tbale woth other which is not possible in rails application .
                    * Example :
                            db-exmaple(dev):004> Vendor.last.user
                            Vendor Load (1.1ms)  SELECT "vendors".* FROM "vendors" ORDER BY "vendors"."id" DESC LIMIT 1 /*application='DbExmaple'*/
                            (db-exmaple):4:in '<main>': undefined method 'user' for an instance of Vendor (NoMethodError)
                            Did you mean?  user_id
                            db-exmaple(dev):005> Vendor.last.User
                            Vendor Load (1.0ms)  SELECT "vendors".* FROM "vendors" ORDER BY "vendors"."id" DESC LIMIT 1 /*application='DbExmaple'*/
                            (db-exmaple):5:in '<main>': undefined method 'User' for an instance of Vendor (NoMethodError)
                            Did you mean?  user_id
                            db-exmaple(dev):006>

    2. Rails Assocition : 
        -> The rails assocation which is plays an important role for the data acessing .
        -> We can perform crud opertion of other table by using the connected table as they are connect via sql assocition .
        -> There are main 4 types and 6 ways to achive it .
        -> There are mainly 4 types of association and 6 ways to achive it 
            * 4 Types : 
                1. One to one 
                2. One to many
                3. many to one 
                4. many to many     
            * 6 ways :
                1. has_one
                2. has_many
                3.belongs_to
                4. has_one, through
                5. has_many, through
                6. has_many_belongs_to
        -> The rails association is bi-directional where we need provide correct implementation ob both side .
                    * Example :    
                            -> In Order.rb model :
                                class Order < ApplicationRecord                           
                                    belongs_to :product
                                end
                            -> In Product.rb model :
                                class Product < ApplicationRecord
                                    has_many :orders
                                end 
        -> Now if we try to access which can be accessable 
                            -> db-exmaple(dev):007> Order.last.product
                                Order Load (1.3ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."id" DESC LIMIT 1 /*application='DbExmaple'*/
                                Product Load (1.0ms)  SELECT "products".* FROM "products" WHERE "products"."id" = 21 LIMIT 1 /*application='DbExmaple'*/
                                =>
                                #<Product:0x00000249be027948
                                id: 21,
                                name: "Practical Bronze Hat",
                                price: 0.19273e5,
                                stock: 28,
                                is_active: false,
                                created_at: "2026-01-16 07:15:16.412648000 +0000",
                                updated_at: "2026-01-16 07:15:16.412648000 +0000">
                                db-exmaple(dev):008>
                    
                            Note : 
                                -> If it any values not present then it gives the empty array 
                                    db-exmaple(dev):010> Product.last.orders
                                    Product Load (0.9ms)  SELECT "products".* FROM "products" ORDER BY "products"."id" DESC LIMIT 1 /*application='DbExmaple'*/
                                    Order Load (2.2ms)  SELECT "orders".* FROM "orders" WHERE "orders"."product_id" = 44 /* loading for pp */ LIMIT 11 /*application='DbExmaple'*/
                                    => []
                                    db-exmaple(dev):011>


    Assingment :
        1 . Drop the table which as dependecy :
            -> Here i had used the two tables test1s and test2s where test2s depend on test1s , If i try to delete test1s it cannot able to delete as it has dependency .

	                * Example :  rails g migration DestroyTest1s

                            PG::DependentObjectsStillExist: ERROR:  cannot drop table test1s because other objects depend on it
                            DETAIL:  constraint fk_rails_7b772ba554 on table test2s depends on table test1s
                            HINT:  Use DROP ... CASCADE to drop the dependent objects too.
                            E:/DaySprings_company/DaySprings/complete_project/Cloned_project/E_Commerce_Project/db/migrate/20260205104223_destroy_test1s.rb:3:in 'DestroyTest1s#change'

                            Caused by:
                            ActiveRecord::StatementInvalid: PG::DependentObjectsStillExist: ERROR:  cannot drop table test1s because other objects depend on it (ActiveRecord::StatementInvalid)
                            DETAIL:  constraint fk_rails_7b772ba554 on table test2s depends on table test1s
                            HINT:  Use DROP ... CASCADE to drop the dependent objects too.
                            E:/DaySprings_company/DaySprings/complete_project/Cloned_project/E_Commerce_Project/db/migrate/20260205104223_destroy_test1s.rb:3:in 'DestroyTest1s#change'

                            Caused by:
                            PG::DependentObjectsStillExist: ERROR:  cannot drop table test1s because other objects depend on it (PG::DependentObjectsStillExist)
                            DETAIL:  constraint fk_rails_7b772ba554 on table test2s depends on table test1s
                            HINT:  Use DROP ... CASCADE to drop the dependent objects too.
                            E:/DaySprings_company/DaySprings/complete_project/Cloned_project/E_Commerce_Project/db/migrate/20260205104223_destroy_test1s.rb:3:in 'DestroyTest1s#change'
                            Tasks: TOP => db:migrate
                            (See full trace by running task with --trace)
        
        2. If we try to create a reference table with other which has records then it doesnot allow because the newly genrated foreign key should not be null so here we have 2 options :
            1. Make the null value true in the migration file before db:migrate .
                             class AddReferenceProductToOrder < ActiveRecord::Migration[8.1]
                                def change
                                    add_reference :orders, :product, null: true, foreign_key: true
                                end
                            end
                                
            2. Assign a default value in migration file before db:migrate .
                            class AddReferenceProductToOrder < ActiveRecord::Migration[8.1]
                                def change
                                    add_reference :orders, :product, null: false, foreign_key: true , default: 20
                                end
                            end
                        
                            result :

                                rails db:migrate 
                                    == 20260205101006 AddReferenceProductToOrder: migrating =======================
                                -- add_reference(:orders, :product, {null: false, foreign_key: true, default: 20})
                                -> 0.0327s
                                == 20260205101006 AddReferenceProductToOrder: migrated (0.0337s) ==============
        3. roll back :
                -> By using the roll back we can restore to previous migrated file later if we migrate then the database also cahnges .
                -> Her i had rollback the foreignkey created migration file later the foreign column in the table has removed after roll back .
                                == 20260205061418 AddProductToOrder: reverting ================================
                                -- remove_reference(:orders, :product, {null: false, foreign_key: true})
                                -> 0.0754s
                                == 20260205061418 AddProductToOrder: reverted (0.0902s) =======================

                                rails db: migrate 
                                    == 20260205061418 AddProductToOrder: migrating ================================
                                -- add_reference(:orders, :product, {null: false, foreign_key: true})
                                bin/rails aborted!







                                        








                        


            



