//
//  addNew.swift
//  ToDoListDeneme2
//
//  Created by Yunus Can on 29/12/2023.
//

import SwiftUI
import SwiftData

struct addNew: View {
    var secilenData : DataItem? = nil
    @Environment(\.modelContext) private var context
    @Environment(\.presentationMode) var presentationMode
    @State private var title = ""
    @State private var title2 = ""
    @State var mesaj = "Kaydet"
    


    var body: some View {
        VStack {
            VStack{
                TextField("Title", text: $title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Title 2", text: $title2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding()
            Button(action: {
                saveIt()
            }) {
                Text(mesaj)
            }
        }
        .onAppear{
            if let secilenData = secilenData {
                mesaj = "Yapıldı"
                title = secilenData.title
                title2 = secilenData.title2
                
            }
        }
    }
    func saveIt() {
        if self.secilenData != nil {
            context.delete(secilenData!)
        }else {
            let save = DataItem(title: title.self, title2: title2.self)
            context.insert(save)
            
            title = ""
            title2 = ""
            
            presentationMode.wrappedValue.dismiss()
        }
    }
}

#Preview {
    addNew()
}
