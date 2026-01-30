#   Active Storage
            Active Storage is Rails’ built-in way to attach files to your models and store them somewhere (locally or in the cloud) without you having to reinvent file uploads.

            -> Active Storage is used to   
                * Upload files (images, PDFs, videos, etc.)
                * Attach them to Active Record models
                * Store them on:
                * Local disk (dev/test)
                * Cloud services (S3, GCS, Azure)
                * Generate URLs for downloading or displaying files
                * Process images (resize, crop, etc.)
                * Handle multiple files per record
                * active_storage_blobs file stores the metadata.
            -> It provides 2 tables in the database 
                -> active_storage_attachments :
                    -> file joins the model to a blob it contians 
                        * image name 
                        * Image type( which tabls does it belongs )
                        * record id
                        * blob id 
                -> active_storage_blob :
                    -> Its contains the details of the file which uploaded .
                
            -> Installation steps
                -> Install Active Storage
                -> command: rails active_storage
                -> rails db:migrate

            -> Configure storage(config/storage.yml)

            -> Attaching files to models
                -> Then in the model, has_one_attached :profile_photo(profile_photo is an example.)
                -> In controller file, add this column to the private method(params). By doing this controller allows the attached file to database.
                -> params.expect(product: [ :name, :description, :price, :profile_photo])
                -> Replace form with form.file_fiels (this type of field allows files to upload just like characters form other normal fields.)

            -> Accessing:
                user.profile_photo.attached?
                user.profile_photo.filename.to_a
                user.profile_photo.content_type
                user.profile_photo.byte_size
                If the files are multiple, replace has_one_attached with has_many_attached in the model file

            -> Update the controller file by providing array of items.
                params.expect(product: [ :name, :description, :price, profile_photo:[] ])  (Access the multiple file using loops in the ) form.