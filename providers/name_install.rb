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


action :install do

  raise "no package name was provided" if new_resource.name.nil?
  raise "no repositories were provided" if new_resource.repositories.nil?
  
  install_command_snippet = "install #{new_resource.name} -repositories #{new_resource.repositories} "
  install_command_snippet << " -installationDirectory #{new_resource.install_directory}" unless new_resource.install_directory.nil?
  
  iim_install new_resource.name do
    install_command_snippet install_command_snippet 
    secure_storage_file new_resource.secure_storage_file
    master_password_file new_resource.master_password_file
  end

end
