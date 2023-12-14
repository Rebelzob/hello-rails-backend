class CreateCreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :create_messages do |t|
      t.string :text, null: false

      t.timestamps
    end
  end
end
