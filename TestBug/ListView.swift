//
//  ListView.swift
//  TestBug
//
//  Created by Yaroslav on 03.07.2019.
//  Copyright © 2019 Yaroslav. All rights reserved.
//

import SwiftUI


struct ObjectsListView : View {
    
    @Environment(\.myObjectsStore) var objectsStore: ObjectsStore
//    @Binding var objectsStore: ObjectsStore
    
    var body: some View {
        Group {
            Form {
                Section {
                    ForEach(objectsStore.objectsStore) { object in
                        NavigationLink(destination: ObjectsDetailView(myObject: object)) {
                            ObjectsDetailView(myObject: object)
                        }
                    }
                }
                Section {
                    // this little boi
                    PresentationLink(destination: ObjectsDetailView(myObject: MyObject(val1: "New Object", store: objectsStore))) {
                        Text("Add new object")
                    }
                }
            }
        }
    }
}

#if DEBUG
struct ListView_Previews : PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
#endif
