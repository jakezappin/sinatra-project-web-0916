class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table (:businesses) do |t|
      t.string :name
      t.string :address
      t.float :rating
      t.string :url
    end
  end
end

