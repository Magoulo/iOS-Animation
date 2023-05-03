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

    func makeUIView(context: UIViewRepresentableContext<ApiLottieAnimationView>) -> some UIView {
        let view = UIView(frame: .zero)
                var animationView = LottieAnimationView()
                let animation = LottieAnimation.named("lottieAnimation")
                animationView = LottieAnimationView(animation: animation)

                animationView.contentMode = .scaleAspectFit
                animationView.loopMode = .repeat(15)
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
