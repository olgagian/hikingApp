//
//  ContentView.swift
//  HikingApp
//
//  Created by ioannis giannakidis on 23/8/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let hikes = Hike.all()
    var body: some View {
        NavigationView{
        List(hikes) { hike in
            HikeCell(hike:hike)
            
        }
        .navigationBarTitle(Text("Hikings"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    let hike:Hike
    var body: some View {
        NavigationLink(destination:HikeDetail(hike:hike)) {
        HStack{
            Image(hike.imageURL)
                .resizable()
                .frame(width:100, height:100)
                .cornerRadius(16)
            VStack(alignment: .leading) {
                Text(hike.name)
                Text(String(format:"%.1f",hike.miles))
            }
        }
        }
    }
}
