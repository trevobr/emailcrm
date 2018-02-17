class CreateEmailSwaps < ActiveRecord::Migration[5.0]
  def change
    create_table :email_swaps do |t|
      t.string :name
      t.string :folder
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end
