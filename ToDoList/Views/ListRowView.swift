//
//  ListRowView.swift
//  ToDoList
//
//  Created by Kong Martin on 19/04/2023.
//

import SwiftUI


struct ListRowView: View {
    
    let item:ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ?  "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green: .gray)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical,8)
    }
}


struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title:"1", isCompleted: false)
    static var item2 = ItemModel(title:"2", isCompleted: true)
    
    static var previews: some View {
        Group{
            ListRowView(item: item1)
            ListRowView(item: item2)
            
        }
        .previewLayout(.sizeThatFits)
    }
    
}
