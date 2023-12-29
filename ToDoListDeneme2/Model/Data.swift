//
//  Data.swift
//  ToDoListDeneme2
//
//  Created by Yunus Can on 29/12/2023.
//

import Foundation
import SwiftData

@Model
class DataItem : Identifiable{
    
    var id : String
    var title : String
    var title2 : String
    
    init(title: String, title2: String) {
        self.id = UUID().uuidString
        self.title = title
        self.title2 = title2
    }
    
    
}






