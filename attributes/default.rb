# Cookbook Name:: im
# Attributes:: default
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-20c.
#https://github.com/WASdev/ci.chef.iim/edit/master/attributes/default.rb#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and

#<> User and group name under which the server will be installed and running.
default[:im][:user] = 'im'
default[:im][:group] = 'im-admin'

#<
# Home directory for `im user`. The attribute is ignored if `im user` is root. 
# For nonAdmin access mode, the registry of IBM Installation Manager (IM) is found at `user_home_dir/etc/.ibm/registry/InstallationManager.dat`.
# The registry path MUST NOT be equal to `base_dir`, or a parent directory or a subdirectory of `base_dir`.
#>
default[:im][:user_home_dir] = '/home/im'

#<> Base installation directory.
default[:im][:base_dir] = '/opt/IBM/InstallationManager'
#<> Data directory.
default[:im][:data_dir] = '/var/ibm/InstallationManager'

#<
# The IM install zip file. Set this attribute if the installer is on a local filesystem.
#>
default[:im][:install_zip][:file] = nil

#<
# The IM install zip url. Set this attribute if the installer is on a remote fileserver.
#>
default[:im][:install_zip][:url] = nil

#<> The mode in which the installation is run. Valid options are: 'admin' 'nonAdmin' and 'group'. 
default[:im][:access_mode] = 'nonAdmin'

#<> A default secure storage file, which is only used if the cookbook that calls the provider does not supply its own secure storage file
default[:im][:secure_storeage_file] = nil

#<> A default master password file, which is only used if the cookbook that calls the provider does not supply its own master password and secure storage files
default[:im][:master_password_file] = nil
