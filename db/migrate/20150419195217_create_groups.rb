class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.references  :user, index: true
      t.string      :name, unique: true
      t.text        :description
      t.string      :url
      t.string      :picture

      t.timestamps  null: false
    end
  end
end
