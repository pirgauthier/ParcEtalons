class CreateMarques < ActiveRecord::Migration[5.0]
  def change
    create_table :marques do |t|
      t.string :name

      t.timestamps
    end
  end
end
