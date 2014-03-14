# CleanFilenames

Convert file name paths to clean paths by converting high-byte and double-byte characters, spaces, capitals, non-alpha-nums, etc, to lowercase alphanums and hyphens.

Example:

    Mary\ Jane\ Lamond/Làn\ Dùil/01\ A\ Mhàiri\ Bhòidheach.mp3 

would be converted to:

    mary-jane-lamond/lan-duil/01-a-mhairi-bhoidheach.mp3


## Installation

Add this line to your application's Gemfile:

    gem 'clean_filenames'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install clean_filenames

## Usage

    clean_filenames --ignore-levels=n PATH_NAME

where:

* *ignore-levels* is the number of directories in the beginning of PATH_NAME to ignore in conversion.

For example:

        clean_filenames --ignore-levels=3 /media/MyAndroidPhone/Music/Mary\ Jane\ Lamond/Làn\ Dùil/01\ A\ Mhàiri\ Bhòidheach.mp3 

would produce:

        /media/MyAndroidPhone/Music/mary-jane-lamond/lan-duil/01-a-mhairi-bhoidheach.mp3

## Contributing

1. Fork it ( http://github.com/<my-github-username>/clean_filenames/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
