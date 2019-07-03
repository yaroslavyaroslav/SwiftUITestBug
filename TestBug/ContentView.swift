//
//  ContentView.swift
//  TestBug
//
//  Created by Yaroslav on 03.07.2019.
//  Copyright © 2019 Yaroslav. All rights reserved.
//

import SwiftUI

struct InitialView : View {
//    @State var objectsStore = GLOBAL_OBJECTS_STORAGE
    @Environment(\.myObjectsStore) var objectsStore: ObjectsStore
    var body: some View {
        Group {
//            PresentationLink(destination: ObjectsListView(objectsStore: objectsStore)) {
            PresentationLink(destination: ObjectsListView()) {
                Text("Show ListView")
            }
            PresentationLink(destination: EmptyView()) {
                Text("Show AnotherListView")
            }
        }
    }
}


#if DEBUG
struct InitialView_Previews : PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
#endif
