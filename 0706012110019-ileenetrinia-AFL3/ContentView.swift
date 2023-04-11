//
//  ContentView.swift
//  0706012110019-ileenetrinia-AFL3
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        This is view
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.green)
            VStack(alignment: .leading) {
                VStack {
                    Text("Turtle Rock")
                        .font(.title)
                    .foregroundColor(.green)
                    HStack {
                        HStack {
                            Text("Joshua Tree National Park")
                                .font(.subheadline)
                            Spacer()
                            Text("California")
                                .font(.subheadline)
                        }
                        .padding()
                    }
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
