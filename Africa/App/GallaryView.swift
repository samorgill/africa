//
//  GallaryView.swift
//  Africa
//
//  Created by Sam Orgill on 26/12/2020.
//

import SwiftUI

struct GallaryView: View {
    // MARK: - PROPERTIES
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    // SIMPLE GRID DEFINITION
    //    let gridLayout: [GridItem] = [
    //        GridItem(.flexible()),
    //        GridItem(.flexible()),
    //        GridItem(.flexible())
    //    ]
    
    // EFFICIENT GRID DEFINITION
    
    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    @State private var selectedAnimal: String = "lion"
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            // MARK: - IMAGE
            
            Image(selectedAnimal)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 8))
            VStack(alignment: .center, spacing: 30) {
                // MARK: - GRID
                
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10, content: {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .overlay(Circle().stroke(Color.white, lineWidth: 1))
                            .onTapGesture {
                                selectedAnimal = item.image
                            }
                    } //: LOOP
                }) //: GRID
            } //: VSTACK
            .padding(.horizontal, 10)
            .padding(.vertical, 15)
        } //: SCROLL
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

// MARK: - PREVIEWS

struct GallaryView_Previews: PreviewProvider {
    static var previews: some View {
        GallaryView()
    }
}
