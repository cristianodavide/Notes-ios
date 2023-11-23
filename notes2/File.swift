//
//  File.swift
//  notes2
//
//  Created by Davide Cristiano on 14/11/23.
//

import SwiftUI
import SwiftData
import Observation

struct Note : Identifiable {
    var id = UUID()
    var title : String
    var text : String
    var data : String
}

@Observable
class ViewModel {
    var notes : [Note] = [
        Note (title: "Era una notte buia", text: "As Snoopy learnt us everybody can", data: "Wed" ),
        Note (title: "Rosso", text: "An idea for new drama where", data: "Thue"),
        Note (title: "Favourite movies", text: "Synedoche New York, Kill Bill", data: "Thue"),
        Note (title: "", text: "Giorgia club 3339819383", data: "Mon"),
        Note (title: "Remember", text: "", data: "Sun"),
        Note (title: "Forse perché della fatal quiete", text: "tu sei l'imago a me sì cara vieni", data: "11-19"),
        Note (title: "You must start to  code", text: "", data: "11-13"),
        Note (title: "Ascoltami i poeti laureati", text:"si muovono soltanto tra le piante", data: "11-3")
    ]
}






