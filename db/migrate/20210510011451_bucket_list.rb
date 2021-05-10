class BucketList < ActiveRecord::Migration[6.1]
  def change
    create_table :bucketlist do |t|
    t.string :list
  end
end
end 