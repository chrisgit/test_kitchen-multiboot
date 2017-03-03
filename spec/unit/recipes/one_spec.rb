require 'spec_helper'

describe 'multiboot::one' do
  let(:chef_instance) { ChefSpec::ServerRunner.new(platform: 'windows', version: '2012') }
  let(:chef_run) do
    chef_instance.converge(described_recipe)
  end
  let(:directory) { chef_run.directory('c:/temp/installers') }
  let(:reboot) { chef_run.reboot('temp_folder_requires_reboot') }

  context 'When installers directory does not exist' do
    it 'creates installer directory' do
      expect(chef_run).to create_directory('c:/temp/installers')
    end

    it 'notifies reboot resource' do
      expect(directory).to notify('reboot[temp_folder_requires_reboot]').to(:reboot_now).immediately
    end

    context 'reboot resource not notified' do
      it 'does nothing' do
        expect(reboot).to do_nothing
      end
    end
  end
end
