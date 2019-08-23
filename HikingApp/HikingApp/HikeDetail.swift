//
//  HikeDetail.swift
//  HikingApp
//
//  Created by ioannis giannakidis on 23/8/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import Foundation
import SwiftUI
struct HikeDetail: View {
    let hike: Hike
    @State var zoomed = false
    var body: some View {
        VStack{
            Image(hike.imageURL)
            .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {

                    withAnimation(.easeInOut(duration:2))
                 {
               self.zoomed.toggle()
                 }

                }
            Text(hike.name)
                .font(.largeTitle)
            
            
        }.navigationBarTitle(Text(hike.name))
        
    }
    
    
}
#if  DEBUG
struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike:Hike.all()[1])
    }
}
#endif
