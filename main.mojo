struct Array:
    var content: Int
    var data: List[Int]
    var strides: List[Int]
    var dimensions: List[Int]

    def __init__(out self, array: List[Int]):
        self.content = len(array)
        self.data = array.copy()
        self.strides = [1]
        self.dimensions = [self.content]

    def str(self) -> String:
        return "Array of length: {}".format(self.content)
    
    def get(self, index: List[Int]) raises Error -> Int:
        if len(index) != len(self.strides):
            raise Error("Index must be the same size as the dimensions, {} and {}".format(index, self.strides))
        flat_index = index[0] * self.strides[0]
        return self.data[flat_index]


def main():
    var array = Array([0, 1, 2, 3])

    print(array.str())
    try:
        print(array.get([1]))
    except e:
        print("Some exception: {}".format(e))
