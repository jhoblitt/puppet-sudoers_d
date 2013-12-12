# based on some code in https://github.com/phinze/puppet-sudoers/blob/master/manifests/allowed_command.pp

define sudoers_d(
  $filename = $title,
  $content,
) {

  file { "/etc/sudoers.d/${filename}":
    ensure => file,
    content => $content,
    #content => validate("asdfasdf", "/usr/sbin/visudo -cq -f"),
    mode => "440", owner => root, group => root,
  }
}
