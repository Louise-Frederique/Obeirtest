class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firtsname
      t.string :lastname
      t.string :mail

      t.timestamps null: false
    end
  end
end
