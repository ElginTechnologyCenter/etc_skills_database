class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :phone
      t.string :website
      t.text :bio
      t.string :referral
      t.string :reason

      t.timestamps
    end
  end
end
