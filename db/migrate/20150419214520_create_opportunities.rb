class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.integer        :user_id
      t.integer        :listing_id
      t.string         :status
      t.datetime       :status_changed, default: Time.now

        # updated at will be used for changes to children
      t.timestamps null: false
    end
    add_index :opportunities, :user_id
    add_index :opportunities, [:user_id, :status]
    add_index :opportunities, [:user_id, :listing_id], unique: true
  end
end
