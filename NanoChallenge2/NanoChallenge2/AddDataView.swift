//
//  AddDataView.swift
//  NanoChallenge2
//
//  Created by Jeffrey Clay Setiawan on 29/07/22.
//

import SwiftUI

struct AddDataView: View {
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss
    @State private var name = ""
    @State private var key = ""
    @State private var url = ""
    @State private var note = ""
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Name of Topic", text: $name)
                    TextField("Key Findings", text: $key)
                    
                    TextField("URL", text: $url)
                    TextEditor(text: $note)
                    
                    Button("Save") {
                        // add the book
                        let newData = DataExample(context: moc)
                        newData.id = UUID()
                        newData.name = name
                        newData.key = key
                        newData.url = url
                        newData.note = note

                        try? moc.save()
                        dismiss()
                    }
                }
            }
            .navigationTitle("Add Topic")
        }
    }
    
    struct AddDataView_Previews: PreviewProvider {
        static var previews: some View {
            AddDataView()
        }
    }
}
