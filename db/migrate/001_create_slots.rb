migration 1, :create_slots do
  up do
    create_table :slots do
      column :id, Integer, :serial => true
      
    end
  end

  down do
    drop_table :slots
  end
end
