//
//  LandmarkList.swift
//  0706012110019-ileenetrinia-AFL3
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        //kyknya ngerepeat sesuai id yg disetting? harusnya yes
        // jd klo isinya itu ada parameter landmark [0][1] brti repeat 0,1 aja tp berkali2
        // ^berlaku klo paramater id nya exist, semua dimunculin
        //        List(landmarks, id: \.id) { landmark in
        //            LandmarkRow(landmark: landmarks[0])
        //            LandmarkRow(landmark: landmarks[1])
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                .navigationTitle("Landmarks")
            }
        }
    }
    
    struct LandmarkList_Previews: PreviewProvider {
        static var previews: some View {
            //        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            //            LandmarkList()
            //                .previewDevice(PreviewDevice(rawValue: deviceName))
            //                .previewDisplayName(deviceName)
            LandmarkList()
                .environmentObject(ModelData())
        }
    }
}
