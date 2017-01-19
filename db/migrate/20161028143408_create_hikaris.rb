class CreateHikaris < ActiveRecord::Migration
  def change
    create_table :hikaris do |t|
      t.string :name
      t.boolean :docomo
      t.boolean :softbank
      t.boolean :au
      t.boolean :ymobile
      t.boolean :flets
      t.boolean :tel
      t.boolean :tv
      t.string :path
      t.boolean :apartment
      t.timestamps null: false
    end
  end
end
