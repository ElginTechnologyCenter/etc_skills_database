class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.belongs_to :member
      t.belongs_to :skill
      t.decimal :years

      t.timestamps
    end
  end
end
