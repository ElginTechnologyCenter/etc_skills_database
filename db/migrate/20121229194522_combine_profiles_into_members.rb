class CombineProfilesIntoMembers < ActiveRecord::Migration
  def up
    drop_table :profiles

    add_column :members, :phone, :string
    add_column :members, :website, :string
    add_column :members, :bio, :text
    add_column :members, :referral, :string
    add_column :members, :reason, :string
  end

  def down
    create_table :profiles do |t|
      t.string :phone
      t.string :website
      t.text :bio
      t.string :referral
      t.string :reason

      t.timestamps
    end

    remove_column :members, :phone, :string
    remove_column :members, :website, :string
    remove_column :members, :bio, :text
    remove_column :members, :referral, :string
    remove_column :members, :reason, :string
  end
end
