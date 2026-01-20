# Created the new package of Product 
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

        -> Task Given : 
                * if the Product is active then make the color as green otherwise red
                    -> During the applying of selector we can select if it is active then active as class and if it is inactive then not_active as selector 
                    CMD :  <td > <p class="<%= product.is_active ? 'status_active' : 'status_inactive' %> "><%= product.is_active %> </p></td>

