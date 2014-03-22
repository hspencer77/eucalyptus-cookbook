#### Install Info
default["eucalyptus"]["install-type"] = "packages"
default["eucalyptus"]["source-repo"] = "https://github.com/eucalyptus/eucalyptus.git"
default["eucalyptus"]["source-branch"] = "testing"
default["eucalyptus"]["eucalyptus-repo"] = "http://downloads.eucalyptus.com/software/eucalyptus/3.4/centos/6/x86_64/"
default["eucalyptus"]["euca2ools-repo"] = "http://downloads.eucalyptus.com/software/euca2ools/3.0/centos/6/x86_64/"
default['eucalyptus']['load-balancer-repo'] = ""
default['eucalyptus']['user-console-repo'] = ""
default["eucalyptus"]["build-deps-repo"] = "http://downloads.eucalyptus.com/software/eucalyptus/build-deps/3.3/centos/6/x86_64/"
default['eucalyptus']['vddk-libs-repo'] = "http://packages.release.eucalyptus-systems.com/yum/tags/euca-master-plugin-build-bootstrap/centos/$releasever/$basearch/"
default["eucalyptus"]["epel-rpm"] = "http://downloads.eucalyptus.com/software/eucalyptus/3.4/centos/6/x86_64/epel-release-6.noarch.rpm"
default["eucalyptus"]["elrepo-rpm"] = "http://downloads.eucalyptus.com/software/eucalyptus/3.4/centos/6/x86_64/elrepo-release-6.noarch.rpm"
default['eucalyptus']['install-load-balancer'] = false
default['eucalyptus']['eustore-url'] = "http://emis.eucalyptus.com/"
default['eucalyptus']['yum-options'] = ""
default['eucalyptus']['init-script-url'] = ""

#### GLOBALS
default['eucalyptus']['admin-cred-dir'] = "/root"
default['eucalyptus']['admin-ssh-pub-key'] = ""
default["eucalyptus"]["home-directory"] = "/"
default["eucalyptus"]["log-level"] = "INFO"
default["eucalyptus"]["source-directory"] = "/opt/eucalyptus"
default["eucalyptus"]["user"] = "eucalyptus"
default["eucalyptus"]["cloud-opts"] = ""
default["eucalyptus"]["install-load-balancer"] = true
default["eucalyptus"]["local-cluster-name"] = "default"
default["eucalyptus"]["default-image"] = "cirros"
default["eucalyptus"]["cloud-keys"] = {}
default["eucalyptus"]["ntp-server"] = "pool.ntp.org"
default["eucalyptus"]["compile-timeout"] = 7200

default["eucalyptus"]["network"]["mode"] = "EDGE"

## Networking Config for EDGE
default["eucalyptus"]["network"]['config-json'] = {
    "InstanceDnsDomain" => "eucalyptus.internal",
    "InstanceDnsServers"=> ["8.8.8.8"],
    "PublicIps" => ["10.0.1.50-10.0.1.59"],
    "Subnets" => [],
    "Clusters" => [
        {
            "Name" => node["eucalyptus"]["local-cluster-name"],
            "MacPrefix" => "d0:0d",
            "Subnet" => {
                "Name" => "10.0.0.0",
                "Subnet" => "10.0.0.0",
                "Netmask" => "255.255.0.0",
                "Gateway" => "10.0.1.1"
            },
            "PrivateIps" => [ "10.0.1.60-10.0.1.69"]
        }
     ]
}

## Networking config for managed modes
default["eucalyptus"]["network"]["private-interface"] = "eth0"
default["eucalyptus"]["network"]["public-interface"] = "eth0"
default["eucalyptus"]["network"]["bridge-interface"] = "br0"
default["eucalyptus"]["network"]["bridged-nic"] = "eth0"
default["eucalyptus"]["network"]["public-ips"] = ""
default["eucalyptus"]["network"]["subnet"] = "172.16.0.0"
default["eucalyptus"]["network"]["netmask"] = "255.255.0.0"
default["eucalyptus"]["network"]["addresses-per-net"] = "32"
default["eucalyptus"]["network"]["dns-server"] = "8.8.8.8"
default["eucalyptus"]["network"]["dhcp-daemon"] = "/usr/sbin/dhcpd"

## Define Topology - Used for registration on CLC
default["eucalyptus"]["topology"]["clc-1"] = "" 
default["eucalyptus"]["topology"]["clusters"]["default"]["cc-1"] = ""
default["eucalyptus"]["topology"]["clusters"]["default"]["sc-1"] = ""
default["eucalyptus"]["topology"]["clusters"]["default"]["nodes"] = ""
default["eucalyptus"]["topology"]["clusters"]["default"]["storage-backend"] = "overlay"
default["eucalyptus"]["topology"]["clusters"]["default"]["das-device"] = "vg01"
default["eucalyptus"]["topology"]["walrus"] = ""
default["eucalyptus"]["topology"]["osg"] = ""
default['eucalyptus']['topology']['riak']['endpoint'] = ""
default['eucalyptus']['topology']['riak']['access-key'] = ""
default['eucalyptus']['topology']['riak']['secret-key'] = ""


## CC Specific
default["eucalyptus"]["cc"]["port"] = "8774"
default["eucalyptus"]["cc"]["scheduling-policy"] = "ROUNDROBIN"

## NC Specific
default["eucalyptus"]["nc"]["port"] = "8775"
default["eucalyptus"]["nc"]["work-size"] = "0"
default["eucalyptus"]["nc"]["cache-size"] = "0"
default["eucalyptus"]["nc"]["service-path"] = "axis2/services/EucalyptusNC"
default["eucalyptus"]["nc"]["hypervisor"] = "kvm"
default["eucalyptus"]["nc"]["max-cores"] = "0"
default["eucalyptus"]["nc"]["instance-path"] = "/var/lib/eucalyptus/instances" 
