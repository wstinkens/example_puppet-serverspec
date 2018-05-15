# This class can be used to setup a bare minimum node, on top of which we can add the required technology stack.
#
# @example when declaring the bootstrap class
#  class { '::profiles::bootstrap': }
#
# @param file Manage files on this node.
class profiles::bootstrap (
  Boolean $file  = false,
) {

  if $file {
    class { '::profiles::bootstrap::file': }
  }
}

