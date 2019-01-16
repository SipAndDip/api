class CreateBranches < ActiveRecord::Migration[5.2]
  def change
    create_table :branches do |t|
      t.string :name, required: true
      t.string :phone_number
      t.string :email
      t.string :facebook_page
      t.text :address

      t.timestamps
    end
  end
end
