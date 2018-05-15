require 'spec_helper'

describe file('/tmp/file') do
  it { should exist }
  its(:content) { should match 'This is a file'}
end

