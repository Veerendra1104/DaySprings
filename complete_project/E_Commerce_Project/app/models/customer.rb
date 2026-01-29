class Customer < ApplicationRecord
  has_rich_text:about_me
  has_one_attached:profile_photo






# validations for Customer profile_photo
validates :profile_photo, attached: true, content_type: ['image/png', 'image/jpeg'], size: { less_than: 2.megabytes, message: 'is too large' }





  # prewritten validation ( which are in built )
  validates:email, presence: true
  validates:email, uniqueness: true 

  # 1. name profality
  validates:name , profanity:true
  
  # 2. email profanity
  validates:email , profanity:true


  #  1.checks_aplha numeric
 validates :name, format: { with: /\A[a-zA-Z0-9]+\z/, message: "Only letters and numbers  are allowed" }
 
  #scopes   
  # scope :unique_emails , ->  { where(email: "veeru@gmail.com").select(:email).distinct }


                                        #table_column: pass_reqired_email
    # scope :unique_emails , ->  { pluck(:email).distinct(:email).where(email: "veeru@gmail.com") }

    # Get distinct emails 
    # scope :give_unique_emails_users, -> { select(:email).distinct }


    scope :blacklisted_customers, ->(customer_ids) { where(id: customer_ids) }

    # Scope to get the distinct emails users .
    scope :give_unique_emails_users, -> { select("distinct ON (email) customers.* ").order(:email, :id)}

  # Customized Validation 
  def check_email
    # check email is present or not .
    if email == nil
      return "Email is not present"
    else
      return "Email is present ."
    end

  end

  def name_check(name)
    # check name has only alphabetic values .
    if name == nil
      return "name is not present"
    else
      return "name is present ."
    end
  end



end
