class AddAmountToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :amount, :integer
  end
end
