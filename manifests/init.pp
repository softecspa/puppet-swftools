# == class swftools
#
#  Install collection of utilities for SWF file manipulation/creation
#
# === Params
#
# === Examples
#
class swftools {
    case $lsbdistcodename {
        "lucid": {
           package {
                "swftools":
                    ensure  => present,
                    require => [ Class["apt"] ],
            }
        }

        default : {
            package {
                "swftools":
                    ensure => present;
            }
        }
    }
}
