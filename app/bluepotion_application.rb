class BluePotionApplication < PMApplication

  home_screen HomeScreen

  def on_create
    SwissDB.setup(self)
  end
end
