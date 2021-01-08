//
//  GallaryView.swift
//  Africa
//
//  Created by Sam Orgill on 26/12/2020.
//

import SwiftUI

struct GallaryView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
        } //: SCROLL
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

struct GallaryView_Previews: PreviewProvider {
    static var previews: some View {
        GallaryView()
    }
}
