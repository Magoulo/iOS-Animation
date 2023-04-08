//
//  CustomAnimationView.swift
//  iOS-Animation
//
//  Created by Sabina Tim on 2023-03-25.
//

import SwiftUI
import SwiftUI


struct CustomAnimationView: View {
    
    @State private var color: Color = .blue
    @State private var opacity: Double = 0
    @State private var xScale: CGFloat = 50
    @State private var yScale: CGFloat = 50
    @State private var position: Double = 100
    @State private var runBoxAnimation = false
    @State private var runLineAnimation = false
    
    
    var body: some View {
        HStack{
            GeometryReader { geometry in
                ZStack {
                    Rectangle()
                        .fill(color)
                        .cornerRadius(8)
                        .frame(width: xScale, height: yScale)
                        .offset(x:geometry.size.width / 2 - xScale / 2, y: position)
                        .onChange(of: runBoxAnimation) { newValue in
                            if newValue {
                                withAnimation(Animation.linear(duration: 0.4).delay(0)) {
                                    yScale = 60
                                    xScale = 40
                                }
                                withAnimation(Animation.linear(duration: 0.8).delay(0)) {
                                    color = .purple
                                }
                                withAnimation(Animation.linear(duration: 1).delay(0)) {
                                    position = 400
                                }
                                
                                withAnimation(Animation.linear(duration: 0.4).delay(0.4)) {
                                    yScale = 70
                                    xScale = 30
                                }
                                withAnimation(Animation.linear(duration: 0.8).delay(0.8)) {
                                    color = .red
                                }
                                withAnimation(Animation.linear(duration: 0.2).delay(0.8)) {
                                    yScale = 20
                                    xScale = 80
                                }
                                withAnimation(Animation.linear(duration: 0.4).delay(1.0)) {
                                    yScale = 40
                                    xScale = 60
                                }
                                withAnimation(Animation.linear(duration: 0.2).delay(1)) {
                                    position = 400
                                }
                                withAnimation(Animation.linear(duration: 0.8).delay(1.2)) {
                                    position = 300
                                }
                                withAnimation(Animation.linear(duration: 0.6).delay(1.4)) {
                                    yScale = 50
                                    xScale = 40
                                }
                                withAnimation(Animation.linear(duration: 0.8).delay(1.6)) {
                                    color = .yellow
                                }
                                withAnimation(Animation.linear(duration: 0.2).delay(2)) {
                                    position = 300
                                }
                                withAnimation(Animation.linear(duration: 0.2).delay(2.0)) {
                                    yScale = 35
                                    xScale = 60
                                }
                                withAnimation(Animation.linear(duration: 0.8).delay(2.2)) {
                                    position = 400
                                }
                                withAnimation(Animation.linear(duration: 0.8).delay(2.2)) {
                                    yScale = 60
                                    xScale = 45
                                }
                                withAnimation(Animation.linear(duration: 0.8).delay(2.4)) {
                                    color = .green
                                }
                                withAnimation(Animation.linear(duration: 1).delay(3)) {
                                    position = 400
                                }
                                withAnimation(Animation.linear(duration: 0.2).delay(3.0)) {
                                    yScale = 30
                                    xScale = 70
                                }
                                withAnimation(Animation.linear(duration: 0.4).delay(3.2)) {
                                    yScale = 50
                                    xScale = 50
                                }
                                withAnimation(Animation.linear(duration: 0.8).delay(3.2)) {
                                    color = .blue
                                }
                                withAnimation(Animation.linear(duration: 0.4).delay(3.6)) {
                                    yScale = 50
                                    xScale = 50
                                }
                            }
                        }
                }
                
                GeometryReader { geometry in
                    ZStack {
                        
                        Rectangle()
                            .fill(.black)
                            .frame(width: 150, height: 2)
                            .position(x: geometry.size.width / 2, y: 450)
                            .opacity(opacity)
                            .onChange(of: runLineAnimation) { newValue in
                                if newValue {
                                    withAnimation(Animation.linear(duration: 0.96).delay(0)) {
                                        opacity = 0
                                    }
                                    withAnimation(Animation.linear(duration: 0.2).delay(0.96)) {
                                        opacity = 1
                                    }
                                    withAnimation(Animation.linear(duration: 0.2).delay(0.98)) {
                                        opacity = 0
                                    }
                                    withAnimation(Animation.linear(duration: 1.68).delay(1)) {
                                        opacity = 0
                                    }
                                    withAnimation(Animation.linear(duration: 0.2).delay(2.68)) {
                                        opacity = 1
                                    }
                                    withAnimation(Animation.linear(duration: 0.8).delay(3)) {
                                        opacity = 1
                                    }
                                }
                            }
                    }
                }
            }
        }
        
        
        Button("Start") {
            runBoxAnimation.toggle()
            runLineAnimation.toggle()
        }
        .navigationBarTitle(Text("Custom Animation Experiment"))
        .frame(width: 200,height: 100)
        .background(Color.black)
        .padding()
    }
}

struct CustomAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAnimationView()
    }
}
