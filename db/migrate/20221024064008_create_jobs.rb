class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :description
      t.references :employer, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
