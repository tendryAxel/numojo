struct Array[T: Copyable]:
    var content: Int
    var data: List[Self.T]
    var strides: List[Int]
    var dimensions: List[Int]

    def __init__(out self, array: List[Self.T]):
        self.content = len(array)
        self.data = array.copy()
        self.strides = [1]
        self.dimensions = [self.content]

    def str(self) -> String:
        return "Array of length: {}".format(self.content)
    
    def get(self, index: List[Int]) raises Error -> Self.T:
        if len(index) != len(self.strides):
            raise Error("Index must be the same size as the dimensions, {} and {}".format(index, self.strides))
        flat_index = index[0] * self.strides[0]
        return self.data[flat_index].copy()


def main():
    var intArray = Array([0, 1, 2, 3])
    var strArray = Array(["a", "b", "c", "d"])

    print(intArray.str())
    print(strArray.str())
    try:
        print(intArray.get([1]))
        print(strArray.get([1]))
    except e:
        print("Some exception: {}".format(e))
