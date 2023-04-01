class CreateRequisitions < ActiveRecord::Migration[6.1]
  def change
    create_table :requisitions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :approver, null: false, foreign_key: { to_table: :users }
      t.time :time, null: false
      t.string :description, null: false
      t.integer :status, null: false, default: 0
      t.string :reason_refusal
      t.integer :type_requisition, null: false, default: 0

      t.timestamps
    end
  end
end
