require 'rake'
require 'pathname'

namespace :constantizer do

  desc 'Create new constants directory under your app config directory'
  task :install do
    constants_dir = Pathname.new('config').join('constants')
    tamplate_name = 'common.yml'
    template = File.expand_path(File.join('../../templates', tamplate_name), __FILE__)

    FileUtils.mkdir_p constants_dir

    unless File.exists?(constants_dir.join(tamplate_name))
      FileUtils.cp(template, constants_dir.join(tamplate_name))
    end

    puts 'Done!'
  end
end
