namespace :swissdb do
  desc "Pull the swissdb from the phone into a file called swissdb"
  task :pull do
    app_name = 'com.your_company.debug'
    `adb -d shell "run-as #{app_name} cat /data/data/#{app_name}/databases/swissdb > /sdcard/swissdb"`
    `adb pull /sdcard/swissdb`
  end
end
