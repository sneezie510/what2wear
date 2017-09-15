class CreateOutfitTags < ActiveRecord::Migration[5.0]
  def change
    create_table :outfit_tags do |t|
      t.references :tag, foreign_key: true
      t.references :outfit, foreign_key: true

      t.timestamps
    end
  end
end
