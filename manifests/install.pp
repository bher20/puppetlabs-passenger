class passenger::install (
  $passenger_version
) {

  package { 'passenger':
    ensure   => $passenger_version,
    name     => $passenger::package_name,
    provider => $passenger::package_provider,
  }

  if $passenger::package_dependencies {
    package { $passenger::package_dependencies:
      ensure => present,
    }
  }

}
