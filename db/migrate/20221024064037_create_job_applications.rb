class CreateJobApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :job_applications do |t|
      t.references :job_id, null: false, foreign_key: true
      t.references :job_seeker_id, null: false, foreign_key: { to_table: :users }
      t.integer :status

      t.timestamps
    end
  end
end
