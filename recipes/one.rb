directory 'c:/temp/installers' do
  recursive true
  action :create
  notifies :reboot_now, 'reboot[temp_folder_requires_reboot]', :immediately
end

reboot 'temp_folder_requires_reboot' do
  reason 'Chef has folder structure and requires a reboot'
  action :nothing
end
