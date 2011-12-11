class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.date :date
      t.time :time
      t.text :text
      t.integer :phone
      t.integer :user_id

      t.timestamps
    end
  end
end
