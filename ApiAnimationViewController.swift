//
//  ApiAnimationViewController.swift
//  iOS-Animation
//
//  Created by Sabina Tim on 2023-03-25.
//

import Foundation
import Lottie
import SwiftUI

struct ApiLottieAnimationView: UIViewRepresentable{
    var url: URL
    func makeUIView(context: UIViewRepresentableContext<ApiLottieAnimationView>) -> some UIView {
        let view = UIView(frame: .zero)
        let animationView = LottieAnimationView()
        
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        
       LottieAnimation.loadedFrom(url: url, closure: {
            animation in
            animationView.animation = animation
            animationView.play()
        }, animationCache: LRUAnimationCache.sharedCache)
        
        view.addSubview(animationView)
        animationView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        
        return view
   //    animationView = LottieAnimationView(animation: apiAnimation)
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
