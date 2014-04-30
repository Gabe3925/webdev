###RSpec Commands:
* `rspec --init` sets up an `.rspec` file, a spec folder, and `spec_helper` file in whatever directory you issue the command.

* Your spec file will have to have access to the file with your class definition. To pull that code in, you will use `require_relative`, followed by the file name.

* `rspec` runs your test suite.
