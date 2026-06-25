struct Array:
    var length: Int

    def __init__(out self):
        self.length = 0

    def str(self) -> String:
        return "Array of length: {}".format(self.length)


def main():
    var array = Array()

    print(array.str())
