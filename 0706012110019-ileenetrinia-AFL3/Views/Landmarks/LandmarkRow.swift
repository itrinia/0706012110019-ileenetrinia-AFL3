//
//  LandmarkRow.swift
//  0706012110019-ileenetrinia-AFL3
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            //cornerradius ini juga buat mac nya
                .cornerRadius(5)
            Text(landmark.name)
                .bold()
            Text(landmark.park)
                .font(.caption)
                .foregroundColor(.secondary)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                //biar warnanya kuningg
                    .foregroundColor(.yellow)
            }
        }
        .padding(.vertical, 4)
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
                .previewLayout(.fixed(width: 300, height: 70))
            LandmarkRow(landmark: landmarks[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
