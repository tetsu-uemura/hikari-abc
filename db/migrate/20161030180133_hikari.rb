class Hikari < ActiveRecord::Migration
  def change
    add_column :hikaris, :priority, :Integer
  end
end
