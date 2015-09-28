class openstack::resources::repo::epel {
  if ($::osfamily == 'RedHat' and
      $::operatingsystem != 'Fedora' and
      versioncmp($::operatingsystemmajrelease, 6) >= 0 ) {
    include openstack::resources::repo::yum_refresh

    include ::epel
  }
}
