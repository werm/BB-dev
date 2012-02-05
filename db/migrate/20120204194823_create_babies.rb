class CreateBabies < ActiveRecord::Migration
  def change
    create_table :babies do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :sex
      t.string :mother
      t.string :father
      t.string :birthday
      t.string :word
      t.string :walk
      t.string :other

      t.timestamps
    end
  end
end
