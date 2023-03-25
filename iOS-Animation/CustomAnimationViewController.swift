//
//  ViewController.swift
//  iOS-Animation
//
//  Created by Sabina Tim on 2023-03-25.
//

import Foundation
import Lottie
import SwiftUI

struct CustomLottieAnimationView: UIViewRepresentable{
    
    func makeUIView(context: UIViewRepresentableContext<CustomLottieAnimationView>) -> some UIView {
        let view = UIView(frame: .zero)
        var animationView = LottieAnimationView()
        let customAnimation = LottieAnimation.named("star")
        animationView = LottieAnimationView(animation: customAnimation)
        
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .repeat(50)
        animationView.play()
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        
        return view
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}


/*
private var animationView: LottieAnimationView?

override func viewDidLoad(){
    super.viewDidLoad()
    
    animationView = .init(name: "star")
    
    animationView!.frame = view.bounds
    
    animationView!.contentMode = .scaleAspectFit
    
    animationView!.loopMode = .loop
    
    animationView!.animationSpeed = 0.5
    
    view.addSubview(animationView!)
    
    animationView!.play()
}
*/
