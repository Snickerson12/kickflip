class AddAmountToPledges < ActiveRecord::Migration[6.0]
  def change
    add_column :pledges, :amount, :integer
  end
end
