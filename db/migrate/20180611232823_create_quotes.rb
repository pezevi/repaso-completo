class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.date :date_quote
      t.references :user, foreign_key: true
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
