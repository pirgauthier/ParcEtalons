class CreateEtalons < ActiveRecord::Migration[5.0]
  def change
    create_table :etalons do |t|
      t.string :serie
      t.string :modele

      t.timestamps
    end
  end
end
