class Customer < ApplicationRecord
  # prewritten validation ( which are in built )
  validates:email, presence: true
  validates:email, uniqueness: true 

  # 1. name profality
  validates:name , profanity:true
  
  # 2. email profanity
  validates:email , profanity:true


  #  1.checks_aplha numeric
 validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters and numbers  are allowed" }
 

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
