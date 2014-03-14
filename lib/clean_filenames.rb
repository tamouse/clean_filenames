require "clean_filenames/version"
require "stringex_lite"
require "methadone"
require 'pry'

module CleanFilenames

  extend Methadone::CLILogging

  DEFAULT_OPTIONS = {}
  
  def self.run(*args)
    options = DEFAULT_OPTIONS.merge(args.pop) if args.last.is_a?(Hash)
    ignore_levels = options.fetch("ignore-levels", "0").to_i
    name = args.shift if args.first.is_a?(String)
    self.convert_name(name,ignore_levels)
  end

  def self.convert_name(name=nil, ignore_levels=0)
    # When performing the split below, if there is a leading file
    # separator on the file name, an empty string will be in the
    # leading resulting array, just as needed. However, the number of
    # levels expected needs to be increased to accomodate this fact.
    ignore_levels += 1 if name[0] == File::SEPARATOR
    
    parts = name.dup.to_s.split(File::SEPARATOR)
    leading_parts = []
    (0...ignore_levels).each {|l| leading_parts.push parts.shift}

    converted_parts = parts.map do |p|
      extension = File.extname(p)
      basename = File.basename(p,extension)
      basename = basename.to_url
      "#{basename}#{extension}"
    end

    File.join(leading_parts + converted_parts)

  end

end
