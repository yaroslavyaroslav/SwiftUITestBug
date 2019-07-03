//
//  Model.swift
//  TestBug
//
//  Created by Yaroslav on 03.07.2019.
//  Copyright © 2019 Yaroslav. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class MyObject: BindableObject {

    var didChange = PassthroughSubject<Void, Never>()

    var testVal: String {
        didSet {
            didChange.send()
        }
    }
    
    init(val1: String, store: ObjectsStore?) {
        self.testVal = val1
        if let store = store {
            store.append(object: self)
        }
        didChange.send()
    }
    
    
}

class ObjectsStore: BindableObject {
    var objectsStore: [MyObject] {
        didSet {
            didChange.send()
        }
    }
    
    var didChange = PassthroughSubject<Void, Never>()
    
    init(objects: [MyObject]) {
        self.objectsStore = objects
        didChange.send()

    }
    
    
    public func append(object: MyObject) {
        self.objectsStore.append(object)
        didChange.send()
    }
}

var GLOBAL_OBJECTS_STORAGE = ObjectsStore(objects: [MyObject]())

extension EnvironmentValues {
    var myObjectsStore: ObjectsStore {
        let object1 = MyObject(val1: "TestString", store: nil)
        let object2 = MyObject(val1: "SeconMyObject", store: nil)
        GLOBAL_OBJECTS_STORAGE.append(object: object1)
        GLOBAL_OBJECTS_STORAGE.append(object: object2)
        return GLOBAL_OBJECTS_STORAGE
    }
}
