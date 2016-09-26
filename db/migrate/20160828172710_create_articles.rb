class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.text     :title, :subtitle, :content, :css, :image, :image_description
      t.string   :slug, :draft_code
      t.string   :status, default: "draft"
      t.datetime :published_at

      t.string   :year, :month, :day

      t.timestamps
    end
  end
end
