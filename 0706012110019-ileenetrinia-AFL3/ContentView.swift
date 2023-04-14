//
//  ContentView.swift
//  0706012110019-ileenetrinia-AFL3
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
            //ignoressafearea biarr naik n maksimal bgt mentok smpe atas (gada putih2 di atas)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            //dipanggil circle image nya (udah disetting jd circle di file circle image
            CircleImage()
            //disetting lagi biar numpuk di atasnya map view
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                
                .font(.subheadline)
                .foregroundColor(.secondary)
                //divider pemisah - kek garis gt
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            //dikasi spacer biar dorong elemen2 nya ke atas biar rapi (ke tgh, tapi masih ada space poni ipon nya, jd kasi ignoressafearea)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
