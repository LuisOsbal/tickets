class CreateCommissions < ActiveRecord::Migration[5.1]
  def change
    create_table :commissions do |t|
      t.string :payment_form
      t.float :commission_amount
      t.string :commission_type
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
