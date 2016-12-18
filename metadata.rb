name 'varnish'
maintainer 'Rackspace'
maintainer_email 'rackspace-cookbooks@rackspace.com'
license 'Apache 2.0'
description 'Installs and configures varnish'
version '3.0.0'

recipe 'varnish', 'Installs and configures varnish'
recipe 'varnish::repo', 'Adds the official varnish project repository'

%w(ubuntu debian redhat amazon centos).each do |os|
  supports os
end

depends 'apt', '>= 2.4', '< 4.1'
depends 'build-essential'
depends 'chef-sugar'
depends 'yum', '>= 3.0', '< 4.1'
depends 'yum-epel'
