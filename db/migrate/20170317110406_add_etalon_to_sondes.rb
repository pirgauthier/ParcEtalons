class AddEtalonToSondes < ActiveRecord::Migration[5.0]
  def up
    add_reference :sondes, :etalon, foreign_key: true
  end
  def down
	remove_reference :sondes, :etalon
  end
end
