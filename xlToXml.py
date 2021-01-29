import osPath
import openpyxl
from collections import defaultdict


class XlToXml:

    def __init__(self):
        file_name = ""

    def __init__(self, file_name: str):
        file_name = file_name

    def convertXl(self):
        pass

    def convertXml(self):
        pass

    def openFile(self):
        try:
            wb = openpyxl.load_workbook(self.file_name)
        except FileNotFoundError as e:
            print(e)
        return -1

    def readFile(self):
        pass


