default['app']['owncloud']['version'] = 'latest'
default['app']['owncloud']['repo_url'] = "https://download.owncloud.org/community/"
default['app']['owncloud']['repo_type'] = 'remote_archive'

default['app']['owncloud']['revision'] = lazy {
    "owncloud-#{node['app']['owncloud']['version']}.tar.bz2"
}
default['app']['owncloud']['db_type'] = 'mysql'
default['app']['owncloud']['max_upload_size'] = '512M'

default['app']['owncloud']['default_user'] = 'owncloud'
default['app']['owncloud']['default_group'] = 'owncloud'
default['app']['owncloud']['default_datadir'] = lazy  {
  "#{node['app']['owncloud']['target_path']}/../ownclouddata"
}
