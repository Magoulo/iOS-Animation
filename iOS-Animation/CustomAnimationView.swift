//
//  CustomAnimationView.swift
//  iOS-Animation
//
//  Created by Sabina Tim on 2023-03-25.
//

import SwiftUI

struct CustomAnimationView: View {
    var body: some View {
        VStack{
            CustomLottieAnimationView()
            Button{
                
            } label: {
                Text("Start")
            }
            .navigationBarTitle(Text("Custom Animation Experiment"))
            .frame(width: 200,height: 100)
            .background(Color.purple)
        }
    }
}

struct CustomAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAnimationView()
    }
}
