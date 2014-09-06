class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :company, index: true, null: false
      t.string :title, null: false
      t.text :raw_description, null: false
      t.datetime :published_at, null: false

      t.timestamps
    end
  end
end
