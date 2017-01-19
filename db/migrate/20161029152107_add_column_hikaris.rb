class AddColumnHikaris < ActiveRecord::Migration
  def change
    add_column :hikaris, :provider, :text
  end
end
