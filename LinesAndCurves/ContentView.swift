//
//  ContentView.swift
//  LinesAndCurves
//
//  Created by ramil on 21/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                // Modifier Order: Trim -> Stroke -> Frame
                .trim(from: 1/2, to: 1)
                .stroke()
                .frame(width: 300, height: 300)
                .foregroundColor(.red)
            Divider()
            Circle()
                // Modifier Order: Trim -> Stroke -> Frame
                .trim(from: 1/2, to: 1)
                .stroke()
                .frame(width: 300, height: 300)
                .foregroundColor(.blue)
                .rotationEffect(.degrees(45))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
