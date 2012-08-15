# Class: os
#
# This module manages os
#
# Parameters:
#
#   $message_source
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class os ($message_source = "puppet:///modules/os/motd.tail") {

  # ASCII from http://www.network-science.de/ascii/ using font "slant"
  file {"/etc/motd.tail":
    source => $message_source,
  }

  exec {"Writing system information into the message of the day":
    command     => "/bin/uname --kernel-name --nodename --kernel-release --kernel-version --machine > /var/run/motd",
    subscribe   => File["/etc/motd.tail"],
    refreshonly => true,
  }

  exec {"Customizing message of the day":
    require     => Exec["Writing system information into the message of the day"],
    command     => "/bin/cat /etc/motd.tail >> /var/run/motd",
    subscribe   => File["/etc/motd.tail"],
    refreshonly => true,
  }

}