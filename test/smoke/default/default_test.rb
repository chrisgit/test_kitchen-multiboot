# # encoding: utf-8

# Inspec test for recipe multiboot::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe file('c:/temp/installers/config.txt') do
  it { should be_file }
  its('content') { should match 'LICENCE_KEY=1234' }
end
