class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.references :user
      t.references :friend
      t.timestamps
    end
  end
end
