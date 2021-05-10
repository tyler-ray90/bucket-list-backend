class CreateBucketlists < ActiveRecord::Migration[6.1]
  def change
    create_table :bucketlists do |t|
      t.string :listitem

      t.timestamps
    end
  end
end
