# This class can be used to setup a basic node.
#
# @example when declaring the node role
#  class { '::roles::node': }
#
class roles::node {
  anchor { 'node::begin': }
  -> class { '::profiles::bootstrap': }
  -> anchor { 'node::end': }
}
