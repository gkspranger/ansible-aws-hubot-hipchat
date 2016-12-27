import logging
logger = logging.getLogger("web2py.app.bot")
logger.setLevel(logging.DEBUG)

def index():
    logger.debug("authorizing user")
    return "authorize user"
