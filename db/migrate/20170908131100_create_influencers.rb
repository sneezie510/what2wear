class CreateInfluencers < ActiveRecord::Migration[5.0]
  def change
    create_table :influencers do |t|
      t.string :name
      t.string :website_url
      t.string :instagram_url
      t.string :youtube_url
      t.string :facebook_url
      t.string :twitter_url

      t.timestamps
    end
  end
end
