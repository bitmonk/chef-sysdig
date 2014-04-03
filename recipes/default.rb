#
# Cookbook Name:: sysdig
# Recipe:: default
#
# Copyright (C) 2014 Justin Alan Ryan
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Based on https://github.com/draios/sysdig/wiki/How%20to%20Install%20Sysdig%20for%20Linux

apt_repository 'sysdig' do
  uri 'http://download.draios.com/stable/deb'
  components ['stable-$(ARCH)/']
  key 'EC51E8C4'
  keyserver 'keyserver.ubuntu.com'
end

package "linux-headers-#{node['kernel']['release']}" 

package 'sysdig'

