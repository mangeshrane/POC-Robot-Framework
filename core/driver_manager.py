from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.firefox import GeckoDriverManager


class WebdriverManager(object):
    """
    This class is used for setting up driver executables for browsers
    """
    
    ROBOT_LIBRARY_VERSION = 1.0
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'

    def get_chrome_driver_path(self):
        return ChromeDriverManager().install()

    def get_firefox_driver_path(self):
        return GeckoDriverManager().install()
