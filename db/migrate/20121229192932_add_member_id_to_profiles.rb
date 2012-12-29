class AddMemberIdToProfiles < ActiveRecord::Migration
  def change
    change_table :profiles do |t|
      t.belongs_to :member
    end
  end
end
