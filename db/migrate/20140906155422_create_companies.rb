class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :screen_name, null: false

      t.timestamps
    end
  end
end
