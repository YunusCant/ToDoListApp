//
//  ContentView.swift
//  ToDoListDeneme2
//
//  Created by Yunus Can on 28/12/2023.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query private var dataItem : [DataItem]
    @Environment(\.managedObjectContext) private var context
    @State private var secilenData : DataItem?
    var body: some View {
        NavigationView{
            VStack {
                HStack {
                    Image("pencil")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width * 0.12, height: UIScreen.main.bounds.height * 0.05, alignment: .leading)
                        .padding()
                    Spacer()
                    Text("To Do List")
                        .bold()
                        .font(.title2)
                        .foregroundStyle(Color.black)
                    Spacer()
                    NavigationLink {
                        addNew()
                    } label: {
                        Image(systemName: "plus")
                            .font(.title)
                            .foregroundStyle(Color.black)
                        
                        
                    }.padding()
                    
                    
                }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.07)
                    .background(Color.yellow)
                List{
                    ForEach(dataItem, id: \.id) { data in
                        NavigationLink(destination: addNew(secilenData : data)) {
                            Text(data.title)
                        }
                        
                    }
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
