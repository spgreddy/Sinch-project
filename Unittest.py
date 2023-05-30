import unittest
import requests

class TRDLServiceTestCase(unittest.TestCase):
    def test_response_value(self):
        response = requests.get("http://<service-external-ip>/")
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.text, "42")

if __name__ == '__main__':
    unittest.main()
