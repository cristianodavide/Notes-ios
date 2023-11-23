//
//  ContentView.swift
//  notes2
//
//  Created by Davide Cristiano on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    @State var viewModel = ViewModel()
    
    var newNote: Note = Note(title: "New Note", text: "", data: "Now")
    
    var body: some View {
        NavigationStack {
            
            List {
                ForEach(viewModel.notes) { note in
                    NavigationLink(destination: {
                        Noteopen(noteClicked: note)
                    },
                                   label: {
                        VStack(alignment: .leading) {
                            Text(note.title)
                                .bold()
                                .multilineTextAlignment(.leading)
                            
                            HStack {
                                Text(note.data)
                                    .foregroundStyle(Color.gray)
                                    .bold()
                                Text(note.text)
                                    .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                                    .font(.subheadline)
                                    .bold()
                                    .foregroundStyle(Color.gray)
                            }
                        }
                    })
                }
                .navigationTitle("Notes")
            }
            .searchable(text: $searchText)
            .toolbar(content: {
                ToolbarItemGroup(placement: .bottomBar, content: {
                    Spacer()
                    Text("8 notes")
                        .font(.footnote)
                    Spacer()
                    
                    NavigationLink(destination: {
                        
                    }, label: {
                        Image(systemName: "square.and.pencil")
                    
                    })
                    .onTapGesture(perform: {
                        viewModel.notes.append(newNote)
                    })
                })
                
                
            })
        }
        .tint(Color.yellow)
    }
}


#Preview {
    ContentView()
}
