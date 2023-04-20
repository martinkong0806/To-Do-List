//
//  ListView.swift
//  ToDoList
//
//  Created by Kong Martin on 19/04/2023.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel:ListViewModel
    
    var body: some View {
        List{
            
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(Animation.linear){
                            listViewModel.updateItem(item: item)
                        }
                    }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
            
            
        }
        .listStyle(PlainListStyle())
        .navigationTitle("List")
        .navigationBarItems(
            leading: EditButton(),
            
            trailing: NavigationLink("Add", destination:  AddView()))
        
        
    }
    

    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
        
    }
}