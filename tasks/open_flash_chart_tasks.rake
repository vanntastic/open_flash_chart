require 'fileutils'
PUBLIC_PATH = File.expand_path(File.join(RAILS_ROOT, "public"))
ASSETS = File.expand_path(File.join(RAILS_ROOT,"vendor/plugins/open_flash_chart/assets"))

namespace :ofc do
  desc 'Install all the asset files for open flash chart'
  task :install do
    js = Dir.glob(File.join(ASSETS, "javascripts", "*.js"))
    swfs = Dir.glob(File.join(ASSETS, "*.swf"))
    FileUtils.cp_r swfs, PUBLIC_PATH
    FileUtils.cp_r js, File.join(PUBLIC_PATH, "javascripts")
    puts "Open Flash Chart files installed successfully!"
  end
  
end
