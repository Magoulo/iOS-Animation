//
//  ApiAnimationView.swift
//  iOS-Animation
//
//  Created by Sabina Tim on 2023-03-25.
//

import SwiftUI
import Lottie

struct ApiAnimationView: View {
    var body: some View {

        VStack{
            
           Button{
                
            } label: {
                Text("Start")
            }
            .navigationBarTitle(Text("API Animation Experiment"))
            .frame(width: 200,height: 100)
            .background(Color.purple)
            
        }
    }
}

struct ApiAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ApiAnimationView()
    }
}
