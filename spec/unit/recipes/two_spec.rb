require 'spec_helper'

describe 'multiboot::two' do
  let(:chef_instance) { ChefSpec::ServerRunner.new(platform: 'windows', version: '2012') }
  let(:chef_run) do
    chef_instance.converge(described_recipe)
  end

  it 'creates config file' do
    expect(chef_run).to create_file('c:/temp/installers/config.txt').with(
        content: 'LICENCE_KEY=1234'
    )
  end
end
