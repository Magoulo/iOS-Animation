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
            // Looping the animation in the view
            ApiLottieAnimationView()
           Button{
            
            } label: {
                Text("Start")
            }
            .navigationBarTitle(Text("API Animation Experiment"))
            .frame(width: 200,height: 50)
            .background(Color.black)
            .padding()
            
        }
    }
}

struct ApiAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ApiAnimationView()
    }
}
