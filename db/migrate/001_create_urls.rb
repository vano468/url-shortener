ROM::SQL.migration do
  up do
    create_table :urls do
      primary_key :id
      String :key, null: false, unique: true
      Text :url, null: false
    end
  end

  down do
    drop_table :urls
  end
end
