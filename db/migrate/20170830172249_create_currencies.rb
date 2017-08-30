class CreateCurrencies < ActiveRecord::Migration[5.1]
  def change
    create_table :currencies do |t|
      t.string :cc
      t.float :rate

      t.timestamps
    end
  end
end
