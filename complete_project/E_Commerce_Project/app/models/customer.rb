class Customer < ApplicationRecord
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
