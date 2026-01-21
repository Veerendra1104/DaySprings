class Customer < ApplicationRecord
  def check_email
    # check email is present or not .
    email.nil? "Email is not present" : "Email is present ."
  end

  def name_check
    # check name has only alphabetic values .
    name.nil? "name is not present" : "name is present ."
  end

end
