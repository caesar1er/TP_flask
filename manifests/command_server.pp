# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include flask_init::command_server
class flask_init::command_server {

  exec { "set url page":
    cwd => "/etc/puppetlabs/code/modules/adrien_flask/manifests/",
    path => "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
    environment => ["FLASK_APP=entrypoint.py", "FLASK_ENV=development"],
    command => "flask run -h localhost -p 5150",
  }
}
