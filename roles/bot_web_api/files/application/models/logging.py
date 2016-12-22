def _init_log():
    import os, logging, logging.handlers
    
    logger = logging.getLogger(request.application)
    logger.setLevel(logging.DEBUG)
    handler = logging.handlers.RotatingFileHandler(os.path.join(request.folder,'static','applog.txt'),'a',1024*1024,1)
    handler.setLevel(logging.DEBUG)
    handler.setFormatter(logging.Formatter("%(asctime)s %(levelname)s %(filename)s:%(lineno)d %(funcName)s: %(message)s"))
    logger.addHandler(handler)
    return logger

applog = cache.ram('app_wide_log', lambda:_init_log(), time_expire=None)
