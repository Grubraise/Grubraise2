class DropPtosTable < ActiveRecord::Migration
  def up
  	drop_table :ptos
  end

  def down
  end
end
