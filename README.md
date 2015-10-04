# CleanFilenames

Convert file name paths to clean paths by converting high-byte and double-byte
characters, spaces, capitals, non-alpha-nums, etc, to lowercase alphanums and
hyphens.


## Installation

    $ sudo gem install clean_filenames

## Usage

    clean_filenames --help

## Example:

    $ clean_filenames Mary\ Jane\ Lamond/Làn\ Dùil/01\ A\ Mhàiri\ Bhòidheach.mp3 

would produce:

    mary-jane-lamond/lan-duil/01-a-mhairi-bhoidheach.mp3

By default, `clean_filenames` copies instead of replacing.

## Contributing

1. Fork it ( http://github.com/tamouse/clean_filenames/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
