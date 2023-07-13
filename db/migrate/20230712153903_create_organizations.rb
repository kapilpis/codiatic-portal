class CreateOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table :organizations do |t|
      t.string :title
      t.string :phone
      t.string :email
      t.string :website
      t.text :description
      t.integer :status

      t.timestamps
    end
  end
end
