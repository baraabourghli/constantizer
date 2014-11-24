require 'rake'

namespace :constantizer do
  desc 'Create new constants directory under your app config directory'
  task :install do
    constants_dir = File.join('config', 'constants')
    template_name = 'common.yml'
    template = File.expand_path(File.join('../../templates', template_name), __FILE__)

    FileUtils.mkdir_p constants_dir

    unless File.exists?(File.join(constants_dir, template_name))
      FileUtils.cp(template, File.join(constants_dir, template_name))
    end

    puts 'Done!'
  end
end
