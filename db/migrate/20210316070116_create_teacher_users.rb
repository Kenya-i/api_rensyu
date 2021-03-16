class CreateTeacherUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :teacher_users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.integer :university_id
      t.string :self_introduce

      t.timestamps
    end
  end
end
