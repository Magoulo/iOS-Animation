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
    
    var animations: [(CGFloat, Double, Double)] = [
        (100, 1, 0),
        (50, 1, 1),
        (100, 1, 0.0)
    ]
    
    
    let colors: [Color] = [.purple, .red, .yellow, .green, .blue]
    let colorDurations: [Double] = [0.8, 0.8, 0.8, 0.8, 0.8]
    
    let opacities: [Double] = [0, 1, 0, 0, 1]
    let opacityDurations: [Double] = [0.96, 0.02, 0.02, 1.68, 0.02, 0.8]
    
    let yPositions: [Double] = [400, 400, 300, 300, 400, 400]
    let yPositionDurations: [Double] = [1, 0.2, 0.8, 0.2, 0.8, 1]
    
    let yScales: [CGFloat] = [60, 70, 20, 40, 50, 35, 60, 30, 50, 50]
    let yScaleDurations: [Double] = [0.4, 0.4, 0.2, 0.4, 0.6, 0.2, 0.8, 0.2, 0.4, 0.4]
    
    let xScales: [CGFloat] = [40, 30, 80, 60, 40, 60, 45, 70, 50, 50]
    let xScaleDurations: [Double] =  [0.4, 0.4, 0.2, 0.4, 0.6, 0.2, 0.8, 0.2, 0.4, 0.4]
    
    
    func animateColor(_ index: Int = 0) {
        // Exit condition for the loop
        guard index < colors.count else { return }
        
        // Calculate the duration based on the index
        let colorDuration = colorDurations[index]
        
        // Update the position with animation
        withAnimation(.linear(duration: colorDuration)) {
            color = colors[index]
        }
        
        // Call the function recursively to animate the next position
        DispatchQueue.main.asyncAfter(deadline: .now() + colorDuration) {
            animateColor(index + 1)
        }
    }
    
    
    func animateYPosition(_ index: Int = 0) {
        // Exit condition for the loop
        guard index < yPositions.count else { return }
        
        // Calculate the duration based on the index
        let yPositionDuration = yPositionDurations[index]
        
        // Update the position with animation
        withAnimation(.easeIn(duration: yPositionDuration)) {
            position = yPositions[index]
        }
        
        // Call the function recursively to animate the next position
        DispatchQueue.main.asyncAfter(deadline: .now() + yPositionDuration) {
            animateYPosition(index + 1)
        }
    }
    
    func animateXScale(_ index: Int = 0) {
        // Exit condition for the loop
        guard index < xScales.count else { return }
        
        // Calculate the duration based on the index
        let xScaleDuration = xScaleDurations[index]
        
        // Update the position with animation
        withAnimation(.easeInOut(duration: xScaleDuration)) {
            xScale = xScales[index]
        }
        
        // Call the function recursively to animate the next position
        DispatchQueue.main.asyncAfter(deadline: .now() + xScaleDuration) {
            animateXScale(index + 1)
        }
    }
    
    func animateYScale(_ index: Int = 0) {
        // Exit condition for the loop
        guard index < yScales.count else { return }
        
        // Calculate the duration based on the index
        let yScaleDuration = yScaleDurations[index]
        
        // Update the position with animation
        withAnimation(.linear(duration: yScaleDuration)) {
            yScale = yScales[index]
        }
        
        // Call the function recursively to animate the next position
        DispatchQueue.main.asyncAfter(deadline: .now() + yScaleDuration) {
            animateYScale(index + 1)
        }
    }
    
    
    var body: some View {
        VStack{
            
            ZStack {
                Rectangle()
                    .fill(color)
                    .cornerRadius(8)
                    .frame(width: xScale, height: yScale)
                    .position(x:200 , y: position)
                    .onAppear {
                        
                        //color
                        withAnimation(Animation.linear(duration: 0.8).delay(0)) {
                            color = .purple
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        withAnimation(Animation.linear(duration: 0.8).delay(0.8)) {
                            color = .red
                        }
                        withAnimation(Animation.linear(duration: 0.8).delay(0.8*2)) {
                            color = .yellow
                        }
                        withAnimation(Animation.linear(duration: 0.8).delay(0.8*3)) {
                            color = .green
                        }
                        withAnimation(Animation.linear(duration: 0.8).delay(0.8*4)) {
                            color = .blue
                        }
                        
                       
                        
                        
                        //Scale
                         withAnimation(Animation.linear(duration: 0.4).delay(0)) {
                            yScale = 60
                            xScale = 40
                        }
                        withAnimation(Animation.linear(duration: 1).delay(0)) {
                            position = 400
                        }
                        withAnimation(Animation.linear(duration: 0.4).delay(0.4)) {
                            yScale = 70
                            xScale = 30
                        }
                        withAnimation(Animation.linear(duration: 0.2).delay(0.8)) {
                            yScale = 20
                            xScale = 80
                        }
                        withAnimation(Animation.linear(duration: 0.2).delay(1)) {
                            position = 400
                        }
                        withAnimation(Animation.linear(duration: 0.4).delay(1.0)) {
                            yScale = 40
                            xScale = 60
                            
                        }
                        withAnimation(Animation.linear(duration: 0.8).delay(1.2)) {
                            position = 300
                        }
                        withAnimation(Animation.linear(duration: 0.6).delay(1.4)) {
                            yScale = 50
                            xScale = 40
                            
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
                        withAnimation(Animation.linear(duration: 0.4).delay(3.6)) {
                            yScale = 50
                            xScale = 50
                            
                        }
                    }
            }
            
            Button("Start"){
                //animateColor()
                //animateYPosition()
                //animateYScale()
                //animateXScale()
                
            }
            .navigationBarTitle(Text("Custom Animation Experiment"))
            .frame(width: 200,height: 100)
            .background(Color.black)
            .padding()
            
        }
    }
}

struct CustomAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAnimationView()
    }
}
