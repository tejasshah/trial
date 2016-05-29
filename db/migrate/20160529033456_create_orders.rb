class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_no
      t.datetime :date
      t.decimal :amount
      t.references :customer, index: true

      t.timestamps
    end
  end
end
