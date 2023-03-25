//
//  ContentView.swift
//  iOS-Animation
//
//  Created by Sabina Tim on 2023-03-25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    /*@FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)*/
    
    @State var apiAnimation = false
    @State var customAnimation = false
    
    var body: some View {
        NavigationView {
            VStack{
                Button{
                    apiAnimation.toggle()
                } label: {
                    Text("API")
                }
                Button{
                    customAnimation.toggle()
                } label: {
                    Text("Custom")
                }
                
                NavigationLink(isActive: $apiAnimation){
                    ApiAnimationView()
                } label:{
                    EmptyView()
                }
                NavigationLink(isActive: $customAnimation){
                    CustomAnimationView()
                } label:{
                    EmptyView()
                }
                
            }.navigationBarTitle(Text("Animation Experiment"))
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
