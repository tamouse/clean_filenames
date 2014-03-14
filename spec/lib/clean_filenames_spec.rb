require 'spec_helper'
require 'clean_filenames'

describe CleanFilenames do

  it "knows how to run" do
    expect(CleanFilenames).to respond_to(:run)
  end

  it "knows how to convert" do
    expect(CleanFilenames).to respond_to(:convert_name)
  end

  it "converts a full path file name" do
    expect(CleanFilenames.convert_name('/A Dir/Another Dir/A String',2)).to eq "/A Dir/Another Dir/a-string"
  end

  it "converts a relative path file name" do
    expect(CleanFilenames.convert_name('A Dir/Another Dir/A String',2)).to eq "A Dir/Another Dir/a-string"
    
  end

end
