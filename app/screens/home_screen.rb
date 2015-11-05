class HomeScreen < PMScreen

  # If you are using XML for this screen:
  #uses_xml :xml_file_name
  #xml_widgets :some_widget
  #xml_fragments :some_fragment

  uses_action_bar false
  title "Your title here"
  stylesheet HomeScreenStylesheet

  # This is optional, it will default to a RelativeLayout
  #def load_view
    #Potion::LinearLayout.new(self.activity)
  #end

  def on_load
    Car.create(is_red: true, mileage: (rand * 100_000).floor)
    car = Car.first
    car.is_red = true
    car.save
    mp Car.all.to_a
    car = Car.last
    car.update_attribute('is_red', false)
  end
end
