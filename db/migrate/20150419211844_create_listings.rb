class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.references      :user
      t.references      :organization
      t.string          :name
      t.text            :description
      t.string          :location
      t.string          :url

      t.timestamps       null: false
    end
    add_index :listings, :organization_id
  end
end
