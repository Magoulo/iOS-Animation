//
//  ApiAnimationView.swift
//  iOS-Animation
//
//  Created by Sabina Tim on 2023-03-25.
//

import SwiftUI
import Lottie

struct ApiAnimationView: View {
   // @State var player : ApiLottieAnimationView
  //var player =  ApiLottieAnimationView(url: URL(string: "https://assets4.lottiefiles.com/datafiles/0BklE7L1HhdHa4v/data.json")!)
    var body: some View {

        VStack{
        
            // Looping the animation in the view
            ApiLottieAnimationView(url: URL(string: "https://assets4.lottiefiles.com/datafiles/0BklE7L1HhdHa4v/data.json")!)
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
