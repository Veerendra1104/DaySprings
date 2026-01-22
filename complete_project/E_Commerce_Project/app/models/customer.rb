class Customer < ApplicationRecord
  # prewritten validation ( which are in built )
  validates:email, presence: true
  validates:email, uniqueness: true 
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters are allowed" }

  # Customized Validation 



  # def check_email(email)
  #   # check email is present or not .
  #   email.nil? "Email is not present" : "Email is present ."
  # end

  # def name_check(name)
  #   # check name has only alphabetic values .
  #   name.nil? "name is not present" : "name is present ."
  # end



end
