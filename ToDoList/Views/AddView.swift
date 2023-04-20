//
//  AddView.swift
//  ToDoList
//
//  Created by Kong Martin on 19/04/2023.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                
                Button(action:saveButtonPressed,label: {
                    Text("Save")
                })
                
                
                .cornerRadius(10)
            }
            .padding(14)
        }
        .navigationTitle("Add an item")
        .alert("Item must not be empty!", isPresented: $showAlert, actions: {
            
        })
        
        
    }
    
    
    
    func saveButtonPressed() {
        if(textIsAppropriate()){
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
        
    }
    
    func textIsAppropriate()-> Bool{
        if textFieldText.count < 1 {
            
            
            showAlert.toggle()
            return false
        }
        return true
    }
    
    
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
        
    }
}
