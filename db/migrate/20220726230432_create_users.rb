class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :description
      t.string :date_start
      t.string :date_finish
      t.string :state

      t.timestamps
    end
  end
end
