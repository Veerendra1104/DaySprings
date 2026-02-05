class AddReferenceProductToOrder < ActiveRecord::Migration[8.1]
  def change
    add_reference :orders, :product, null: false, foreign_key: true , default: 20
  end
end
