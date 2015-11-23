require_relative '../config'

class CreateTeachers < ActiveRecord::Migration
  def change
    	create_table :teachers do |t|
      t.string   :first_name
     	t.string   :last_name
      t.string   :gender
      t.string   :email
      t.string   :phone
      t.date     :birthday

      t.timestamps null: false
    end
  end
end