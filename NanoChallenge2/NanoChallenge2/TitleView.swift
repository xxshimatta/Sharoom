//
//  Title View.swift
//  NanoChallenge2
//
//  Created by Jeffrey Clay Setiawan on 26/07/22.
//

import SwiftUI
struct Data: Identifiable{
    let id = UUID()
    var title: String
}

private let values : [Data] = [
    Data(title: "SwiftUI"),
    Data(title: "UIKit"),
    Data(title: "CoreData")
]

struct TitleView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var datas: FetchedResults<DataExample>

    @State private var showingAddScreen = false
    
    var body: some View {
        
        NavigationView{
            VStack (alignment: .leading){
                Text("Sharoom")
                    .fontWeight(.bold)
                    .padding(.leading, 20)
                    .padding(.bottom, 20)
                    .font(.custom("Arial", size: 75))
                    .frame(width: 390, alignment: .center)
                    .offset(x:-10)
                    .background(Color.grayDefault)
                    .toolbar {
                                ToolbarItem(placement: .navigationBarTrailing) {
                                    Button {
                                        showingAddScreen.toggle()
                                    } label: {
                                        Label("Add Data", systemImage: "plus")
                                            .foregroundColor(Color.darkTeal)
                                    }
                                }
                            }
                            .sheet(isPresented: $showingAddScreen) {
                                AddDataView()
                            }
                Text("Select your Topic")
                    .fontWeight(.semibold)
                    .padding(.leading, 20)
                    .frame(width: 390, alignment: .bottomLeading)
                    .font(.system(size: 30))
//                  .background(Color.grayDefault)
//                    .background(.ultraThinMaterial)
                List{
                    ForEach(datas){ data in
                        NavigationLink(destination: DataDetail(title: data.name ?? "unknown", key: data.key ?? "unknown", textURL: data.url ?? "unknown", notes: data.note ?? "unknown")){
                            Design(title: data.name ?? "unknown")
                        }
                    }
                }
                Spacer()
            }.background(.ultraThinMaterial)
        }
    }
}
//func deleteBooks(at offsets: IndexSet) {
//    for offset in offsets {
//        // find this book in our fetch request
//        let data = DataExample[offset]
//
//        // delete it from the context
//        moc.delete(book)
//    }
//
//    // save the context
//    try? moc.save()
//}

struct Title_View_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
