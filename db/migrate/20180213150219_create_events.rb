class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :event_date
      t.integer :number_of_tickets
      t.string :place
      t.float :pricing_by_ticket

      t.timestamps
    end
  end
end
