//
//  ItemModel.swift
//  ToDoList
//
//  Created by Kong Martin on 19/04/2023.
//

import Foundation

struct ItemModel:Identifiable, Encodable, Decodable  {
    let id:String
    let title:String
    let isCompleted:Bool
    
    
    init(id:String = UUID().uuidString, title:String,isCompleted:Bool){
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
 
