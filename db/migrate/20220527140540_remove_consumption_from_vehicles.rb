class RemoveConsumptionFromVehicles < ActiveRecord::Migration[6.1]
  def change
    remove_column :vehicles, :consumption, :string
  end
end
