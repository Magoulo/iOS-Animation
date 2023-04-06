//
//  CustomAnimationView.swift
//  iOS-Animation
//
//  Created by Sabina Tim on 2023-03-25.
//

import SwiftUI




struct CustomAnimationView: View {
    /*@State private var enabled = false
     @State private var currentColor = Color.red
     @State private var isAnimating = false*/
    @State private var xScale: CGFloat = 50
    @State private var yScale: CGFloat = 50
    @State private var position: Double = 0
    @State private var color: Color = .yellow

    
    
    let yPositions: [Double] = [100, 200, 300, 400]
    let yPositionDurations: [Double] = [1.0, 2.0, 0.5, 1.5]
    
    func animateYPosition(_ index: Int = 0) {
        // Exit condition for the loop
        guard index < yPositions.count else { return }
        
        // Calculate the duration based on the index
        let yPositionDuration = yPositionDurations[index]
        
        // Update the position with animation
        withAnimation(.easeInOut(duration: yPositionDuration)) {
            position = yPositions[index]
        }
        
        // Call the function recursively to animate the next position
        DispatchQueue.main.asyncAfter(deadline: .now() + yPositionDuration) {
            animateYPosition(index + 1)
        }
    }
    
    let xScales: [CGFloat] = [100, 50]
    let xScaleDurations: [Double] = [1.0, 2.0]
    
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
    
    let yScales: [CGFloat] = [100, 50]
    let yScaleDurations: [Double] = [1.0, 2.0]
    
    func animateYScale(_ index: Int = 0) {
        // Exit condition for the loop
        guard index < yScales.count else { return }
        
        // Calculate the duration based on the index
        let yScaleDuration = yScaleDurations[index]
        
        // Update the position with animation
        withAnimation(.easeInOut(duration: yScaleDuration)) {
            yScale = yScales[index]
        }
        
        // Call the function recursively to animate the next position
        DispatchQueue.main.asyncAfter(deadline: .now() + yScaleDuration) {
            animateYScale(index + 1)
        }
    }
    
    
    let colors: [Color] = [.red, .green]
    let colorDurations: [Double] = [1.5, 1.5]
    
    func animateColor(_ index: Int = 0) {
        // Exit condition for the loop
        guard index < colors.count else { return }
        
        // Calculate the duration based on the index
        let colorDuration = colorDurations[index]
        
        // Update the position with animation
        withAnimation(.easeInOut(duration: colorDuration)) {
            color = colors[index]
        }
        
        // Call the function recursively to animate the next position
        DispatchQueue.main.asyncAfter(deadline: .now() + colorDuration) {
            animateColor(index + 1)
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
            }
            
            Button("Start"){

                animateYPosition()
                animateColor()
                animateXScale()
                animateYScale()
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
