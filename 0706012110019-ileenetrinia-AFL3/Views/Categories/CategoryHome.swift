//
//  CategoryHome.swift
//  0706012110019-ileenetrinia-AFL3
//
//  Created by MacBook Pro on 23/04/23.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                //anjay keren
                //biar kliatan ada yg "title" pic nya gitu
                    .listRowInsets(EdgeInsets())
                    //modifier pada List yang digunakan untuk menentukan jarak antara konten setiap baris dalam daftar (list). EdgeInsets() dipke buat mengatur tepi (margin) pada setiap sisi dari baris, seperti jarak dari atas, bawah, kiri, dan kanan. -> biar lebih ngezoom ajah biar ndak makan tempat banyak marginnya
                
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    //krn for each, yg di for each kan itu adalah ngepass category information dlm bentuk row
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
