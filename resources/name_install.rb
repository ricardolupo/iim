#
# Cookbook Name:: iim
# Provider:: iim_NameInstall
#
# (C) Copyright IBM Corporation 2013.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

=begin
#<

Installs an IBM product by executing the IBM Installation manager and selecting the default installation options.

@action install Installs an IBM product.

@section examples

Installing from a repository.

```ruby
iim_name_install Package.Name do
  repositories "repository.ibm.com"
end
```

Installing from a password protected repository.

```ruby
iim_name_install Package.Name do
  repositories "repository.ibm.com"
  secure_storage_file /path/to/secure_storage_file
  master_password_file /path/to/master_password_file
end
```

#>
=end

actions :install
default_action :install

#<> @attribute secure_storage_file Sets the `secureStorageFile` `imcl` option.
attribute :secure_storage_file, :kind_of => String, :default => nil
#<> @attribute master_password_file Sets the `masterPasswordFile` `imcl` option.
attribute :master_password_file, :kind_of => String, :default => nil
#<> @attribute repositories The repository to search. Multiple repositories can be specified with a comma-separated list.
attribute :repositories, :kind_of => String, :default => nil
#<> @attribute install_directory The directory in which to install the package.
attribute :install_directory, :kind_of => String, :default => nil
