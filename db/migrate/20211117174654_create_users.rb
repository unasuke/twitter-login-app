class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')

    create_table :users, id: :uuid do |t|
      t.string :uid, null: false, index: { unique: true }
      t.string :user_id, null: false
      t.string :display_name, null: false
      t.string :email

      t.timestamps
    end
  end
end
