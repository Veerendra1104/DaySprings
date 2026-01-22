class Customer < ApplicationRecord
  # prewritten validation ( which are in built )
  validates:email, presence: true
  validates:email, uniqueness: true 
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters are allowed" }

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
