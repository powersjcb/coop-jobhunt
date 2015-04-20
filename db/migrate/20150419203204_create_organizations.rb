class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.references      :user
      t.references      :group
      t.string          :name, unique: true
      t.text            :description
      t.string          :location
      t.string          :url

      t.timestamps       null: false
    end
    add_index :organizations, :group_id
  end
end
