# SwiftUITestBug
Project that represents the SwfitUI bug with objects duplication.

There's a strange behavior of the objects that passes to the Navigation Stack by `@Environment(\.keypath)`.

This project present both: the strange behaviour in `init commit` and the fix in second commit.

[Here's][1] the related stackoverflow question to that repo. 


  [1]: https://stackoverflow.com/questions/56865067/how-to-create-an-instance-of-an-object-in-swiftui-without-duplication
