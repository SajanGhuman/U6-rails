class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :fullName
      t.string :phoneNumber
      t.string :email
      t.text :notes

      t.timestamps
    end
  end
end
