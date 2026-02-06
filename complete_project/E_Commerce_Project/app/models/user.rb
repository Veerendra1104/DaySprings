class User < ApplicationRecord
   has_one :vendor, dependent: :destroy
end
