import configparser

config = configparser.ConfigParser()
config.read('setup.cfg')
print(config['bumpversion']['current_version'])