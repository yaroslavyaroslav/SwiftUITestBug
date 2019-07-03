//
//  ObjectDetailView.swift
//  TestBug
//
//  Created by Yaroslav on 03.07.2019.
//  Copyright © 2019 Yaroslav. All rights reserved.
//

import SwiftUI

struct ObjectsDetailView : View {
    
    @ObjectBinding var myObject: MyObject
    
    var body: some View {
        Text("\(myObject.testVal)")
    }
}

#if DEBUG
struct ObjectDetailView_Previews : PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
#endif
