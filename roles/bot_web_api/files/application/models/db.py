from gluon.contrib.appconfig import AppConfig

myconf = AppConfig(reload=True)

db = DAL(myconf.get('db.uri'),
         pool_size=myconf.get('db.pool_size'))
