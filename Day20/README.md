# One To Many 
    * The Product which contains the many order by using the one to many relationship .
        ->Example 
            Product.rb 
                class Product < Application record         
                    has_many :orders, dependent: :destroy 
                end
                
            Order.rb
                class Order < ApplicationRecord
                    belongs_to :product
                end

        -> Here the order table will be genrated with product_id cloumn as a foreign key .
        -> The command and the files genrated are add to Day19/readme

# Many to Many
###    has many belongs to :
        * The new table with the only primary key are genrated .
        * Lets take an exaple of the multiple  product with mulitple  tags .
        * Commands :
                    rails g model Tag name:string desc:string
                
                Files genrated :

                    invoke  active_record
                    create    db/migrate/20260206052331_create_tags.rb
                    create    app/models/tag.rb
                    invoke    test_unit
                    create      test/models/tag_test.rb
                    create      test/fixtures/tags.yml
                
                after migration : rails db:migrate

                    == 20260206052331 CreateTags: migrating =======================================
                    -- create_table(:tags)
                    -> 0.0469s
                    == 20260206052331 CreateTags: migrated (0.0479s) ==============================

                Cmd that creates the many to many realtion and table :
                    rails generate migration CreateJoinTableProductsTags products tags

                Files genrated 
                    
                    invoke  active_record
                    create    db/migrate/20260206052902_create_join_table_products_tags.rb
                
                After migration :
                    == 20260206052902 CreateJoinTableProductsTags: migrating ======================
                    -- create_join_table(:products, :tags)
                    -> 0.0169s
                    == 20260206052902 CreateJoinTableProductsTags: migrated (0.0193s) =============
                
            * Console :
                * Tag.column_names :
                        => ["id", "name", "desc", "created_at", "updated_at"]
                
                * To add multiple tags to single product :
                        p = Product.first
                        p.tags<<Tag.first
                        p.tags<<Tag.last
                    
                * To get the all the tags for respective products :
                         p.tags

                         Outcomes :
                                Tag Load (0.7ms)  SELECT "tags".* FROM "tags" INNER JOIN "products_tags" ON "tags"."id" = "products_tags"."tag_id" WHERE "products_tags"."product_id" = 18 /* loading for pp */ LIMIT 11 /*application='DbExmaple'*/
                                =>
                                [#<Tag:0x00000242ff0cab40
                                id: 1,
                                name: "ecofriendly",
                                desc: "This is most eco friendly .",
                                created_at: "2026-02-06 05:36:55.625914000 +0000",
                                updated_at: "2026-02-06 05:36:55.625914000 +0000">,
                                #<Tag:0x00000242ff0ca640
                                id: 4,
                                name: "Best Seller in Gadget",
                                desc: "This is most sold gadget proudct from past 3 month...",
                                created_at: "2026-02-06 05:38:57.876376000 +0000",
                                updated_at: "2026-02-06 05:38:57.876376000 +0000">]

                * To add the multiple product for one tag :
                        t = Tag.find(id = 3)

                        # First product 
                        p1 = Product.find(20) 
                        # second product
                        p2 = Product.find(21)

                        # adding product to tag

                        t.products<<p1
                        t.products<<p2
                            
                        # Fetch the tag with tehir product 
                        t.products

                        #Outcome
                                Product Load (0.8ms)  SELECT "products".* FROM "products" INNER JOIN "products_tags" ON "products"."id" = "products_tags"."product_id" WHERE "products_tags"."tag_id" = 3 /* loading for pp */ LIMIT 11 /*application='DbExmaple'*/
                                =>
                                [#<Product:0x00000242ff0a5f20
                                id: 20,
                                name: "Heavy Duty Linen Pants",
                                price: 0.3237e4,
                                stock: 28,
                                is_active: true,
                                created_at: "2026-01-16 07:15:16.405498000 +0000",
                                updated_at: "2026-01-16 07:15:16.405498000 +0000">,
                                #<Product:0x00000242ff0a5de0
                                id: 21,
                                name: "Practical Bronze Hat",
                                price: 0.19273e5,
                                stock: 28,
                                is_active: false,
                                created_at: "2026-01-16 07:15:16.412648000 +0000",
                                updated_at: "2026-01-16 07:15:16.412648000 +0000">]

###   has many , through :
        * The new tablw which generated will contains the extra data , columns with the primary keys .

        * Lets take an expmale of the Product and the offer to achive 

        * Commands :
                        rails g model Offer name:string status:boolean discount:integer
                        
                Files genrated :
                        invoke  active_record
                        create    db/migrate/20260206062935_create_offers.rb
                        create    app/models/offer.rb
                        invoke    test_unit
                        create      test/models/offer_test.rb
                        create      test/fixtures/offers.yml  

                To build relation 
                            rails generate model ProductOffer product:references offer:references
                            
                        invoke  active_record
                        create    db/migrate/20260206063935_create_product_offers.rb
                        create    app/models/product_offer.rb
                        invoke    test_unit
                        create      test/models/product_offer_test.rb
                        create      test/fixtures/product_offers.yml

                After the migration 

                        == 20260206063935 CreateProductOffers: migrating ==============================
                        -- create_table(:product_offers)
                        -> 0.0307s
                        == 20260206063935 CreateProductOffers: migrated (0.0319s) =====================
                
                
                Offer.column_names
                => ["id", "name", "status", "discount", "created_at", "updated_at"]

                



                  
























