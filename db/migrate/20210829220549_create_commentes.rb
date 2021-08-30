class CreateCommentes < ActiveRecord::Migration[6.1]
  def change
    create_table :commentes do |t|
      t.reference :post
      t.text :body

      t.timestamps
    end
  end
end
