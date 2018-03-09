import unittest

from selenium import webdriver


class NewVisitorTest(unittest.TestCase):

    def setUp(self):
        self.browser = webdriver.Firefox()

    def tearDown(self):
        self.browser.quit()

    def test_can_start(self):
        self.browser.get('http://0.0.0.0:8000')
        self.assertIn('Your Title', self.browser.title, msg='Browser title was {}'.format(self.browser.title))
        self.fail('Finish the test')


if __name__ == '__main__':
    unittest.main(warnings='ignore')
