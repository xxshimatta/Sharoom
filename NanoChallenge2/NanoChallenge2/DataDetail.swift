//
//  DataDetail.swift
//  NanoChallenge2
//
//  Created by Jeffrey Clay Setiawan on 28/07/22.
//

import SwiftUI

extension Color{
    static let lightGray = Color("LightGray")
    static let grayDefault = Color("GrayDefault")
    static let lightTeal = Color("LightTeal")
    static let tealDefault = Color("TealDefault")
    static let darkTeal = Color("DarkTeal")
}

struct DataDetail: View {
    @State var title: String
    @State var key: String
    @State var textURL: String
    @State var notes: String
    
    
    var body: some View {
        VStack{
            Text(title)
                .fontWeight(.bold)
                .frame( width: 390, height:100, alignment: .bottomLeading)
                .padding(.leading, 20)
                .padding(.bottom, 20)
                .font(.custom( "Arial", size: 40))
                .foregroundColor(.white)
                .background(Color.tealDefault)
            Text("Key Findings")
                .fontWeight(.semibold)
                .font(.custom("Arial", size: 25))
                .frame(width: 360, alignment: .bottomLeading)
                .padding(.bottom, 10)
            Text(key)
                .frame(width: 360, alignment: .bottomLeading)
            HStack{
                Text("URL")
                    .fontWeight(.semibold)
                    .font(.custom("Arial", size: 25))
                    .frame( alignment: .bottomLeading)
                Spacer()
                Link("Press the link Here!", destination: URL(string: textURL)!)
                    .font(.body)
                    .foregroundColor(.red)
            }
                .padding(.top, 20)
                .padding(.bottom, 10)
                .frame(width: 360, alignment: .topLeading)
            Text("Notes")
                .fontWeight(.semibold)
                .frame(width: 360, alignment: .topLeading)
                .font(.custom("Arial", size: 25))
            Text(notes)
                .frame(width: 360, height: 150, alignment: .topLeading)
            Spacer()
            
        }
    }
}

struct DataDetail_Previews: PreviewProvider {
    static var previews: some View {
        DataDetail(title: "Example", key: "ASDJ;FLASLJKFALJKHFASJKDFLHALJKSHFLAJSKHDFLJKSHFLKJSAHDFLJKSAHDFLKJHASFLKJHASDFKLJHASFLKJHASDLFKJHASLFKJHASDLFKJHASLDKFJHALSKJHFALSKJHFALSKJHFALJSKHDFLAJSKHFLJASKHFLAJSHFLJAKSHFLJAKHSFLKJAHSDF", textURL: "http://www.google.com", notes: "something")
    }
}
