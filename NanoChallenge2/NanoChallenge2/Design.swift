//
//  Design.swift
//  NanoChallenge2
//
//  Created by Jeffrey Clay Setiawan on 27/07/22.
//

import SwiftUI

struct Design: View {
    @State var title: String
    
    var body: some View {
        ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color.darkTeal)
                .frame(height: 100)
            Text(title)
                .foregroundColor(.white)
                .font(.title)
                .padding()
        }
        .padding()
    }
}

struct Design_Previews: PreviewProvider {
    static var previews: some View {
        Design(title:"SwiftUI")
    }
}
