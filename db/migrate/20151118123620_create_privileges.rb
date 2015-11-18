class CreatePrivileges < ActiveRecord::Migration
  def change
    create_table :privileges do |t|
      t.references :user, index: true
      t.integer :plan, default: 0
      t.date  :expiration
      t.boolean :status, default: true

      t.timestamps null: false
    end
  end
end
