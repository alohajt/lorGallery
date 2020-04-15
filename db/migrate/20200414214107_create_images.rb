class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :name
      t.string :url
      t.string :region
      t.string :attack
      t.string :health
      t.string :cost
      t.string :description
      t.string :cardCode
      t.string :type

      t.timestamps
    end
  end
end
