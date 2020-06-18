//
//  ContentView.swift
//  eLearningCollectionview
//
//  Created by Dhaval Gevariya on 18/06/20.
//  Copyright © 2020 Dhaval Gevariya. All rights reserved.
//

import SwiftUI
struct DataModel: Identifiable {
    let id: String
    let imageName: String
}
struct ContentView: View {
    let data: [DataModel] = [
        .init(id: "0", imageName: "Momos"),
        .init(id: "1", imageName: "PaniPuri"),
        .init(id: "2", imageName: "Pulao"),
        .init(id: "3",  imageName: "VadaPav")
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(data) { items in
                    ForEach(0..<2) { item in
                        CollectionView(data: items)
                    }
                }
            }.navigationBarTitle("Food Collection")
        }
    }
}
struct CollectionView: View {
    let data: DataModel
    var body: some View {
        VStack {
            HStack {
                ForEach(0..<3) { items in
                    Spacer()
                    Image(self.data.imageName)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.yellow)
                        .shadow(radius: 10)
                    Spacer()
                }.padding(.bottom, 16)
            }
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.colorScheme, .light)
    }
}
