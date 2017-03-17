class AddMarqueToEtalons < ActiveRecord::Migration[5.0]
  def up
    add_reference :etalons, :marque, foreign_key: true
  end
  def down
    remove_reference :etalons, :marque
  end
end
