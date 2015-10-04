require "clean_filenames/version"
require "stringex_lite"
require "methadone"
require 'pathname'
# require 'pry'

module CleanFilenames

  extend Methadone::CLILogging

  DEFAULT_OPTIONS = {}

  class << self
    
    def convert(paths, options={})
      @options = DEFAULT_OPTIONS.merge(options)
      @ignore_levels = @options.fetch("ignore-levels", "0").to_i
      debug "Converting #{paths.count} paths"
      paths.each do |path|
        debug "Path: #{path}"
        self.convert_path(path, @ignore_levels)
      end
    end

    def convert_path(path, ignore_level=0)
      path = Pathname(path)
      components = path.to_s.split(File::Separator)
      save_components = components.shift(ignore_level + (path.absolute? ? 1 : 0))

      components.each do |component|
        converted_component = convert_component(component)
        debug "converting #{component} to #{converted_component}"
      end
      
    end

    def convert_component(component)
      component.to_url.gsub(/-dot-/,'.')
    end

  end

end
