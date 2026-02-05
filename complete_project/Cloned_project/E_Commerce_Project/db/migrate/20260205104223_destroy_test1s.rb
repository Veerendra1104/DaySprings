class DestroyTest1s < ActiveRecord::Migration[8.1]
  def change
      drop_table :test1s
  end
end
