class AddConsumptionFromVehicles < ActiveRecord::Migration[6.1]
  def change
    add_column :vehicles, :consumption, :real
  end
end
