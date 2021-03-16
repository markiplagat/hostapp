class DropNetworkings < ActiveRecord::Migration[6.1]
=begin
Another way to drop a database:
rails c
ActiveRecord::Migration.drop_table(:table_name)
=end
  def up
    drop_table :networkings
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
