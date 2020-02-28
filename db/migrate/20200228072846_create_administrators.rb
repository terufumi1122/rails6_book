class CreateAdministrators < ActiveRecord::Migration[6.0]
  def change
    create_table :administrators do |t|
      t.string  :email,           null: false # メールアドレス
      t.string  :hashed_password, null: false # パスワード
      t.boolean :suspended,       null: false # 無効フラグ

      t.timestamps
    end

    add_index :administrators, "LOWER(email)", unique: true
  end
end
