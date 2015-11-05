schema "42" do

    entity "Car", id: false do
      boolean :is_red
      integer :mileage, primary_key: true
    end

    entity "Model" do
      string :name
    end

end
