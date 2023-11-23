//
//  noteopen.swift
//  notes2
//
//  Created by Davide Cristiano on 15/11/23.
//

import SwiftUI

struct Noteopen: View {
    var noteClicked: Note
    var body: some View {
        VStack(alignment: .leading) {
            Text(noteClicked.title)
                .bold()
                .font(.title)
                Text(noteClicked.text)
            Spacer()
            }
        .padding(.horizontal)
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: 380, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 750, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        //.frame(width: 380, height: 750, alignment: .leading)//
        .tint(Color.yellow)
        }
            
    
    }


#Preview {
    Noteopen(noteClicked: Note(title: "Nota di prova", text: "Io sono una persona non un AI", data: "Yesterday"))
}

