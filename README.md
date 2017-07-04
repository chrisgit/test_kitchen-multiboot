# multiboot

Simple cookbook to demonstrate the multiple reboot support in test kitchen.

Announcement: https://discourse.chef.io/t/test-kitchen-1-10-0-released/8721

This cookbooks demonstrates the reboot functionality for Windows 2008r2 or Windows 2012r2 server but test kitchen supports reboots for both Windows and Linux servers.

The demonstration cookbook does the following
* Creates a directory which triggers a reboot
* Adds a phony configuration file to the directory created in the above step.

Cookbook also contains skeleton for integration tests using Inspec or unit test using chefspec.

## Usage
Download, fork or branch this cookbook, from the commandline use test kitchen to converge, verify or test the cookbook.

### Windows 2008
kitchen converge windows2008

OR

kitchen test windows2008

### Windows 2012
kitchen converge windows2012

OR

kitchen test windows2012

## Contributing

If there is a bug or cool feature that I have missed then please get in touch or update the source and create a PR but keep in mind this repo is for demonstrating the brilliant test kitchen reboot functionality.
