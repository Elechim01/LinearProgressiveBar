//
//  ProgressBar.swift
//  LinearProgressiveBar
//
//  Created by Michele Manniello on 27/02/21.
//

import SwiftUI

struct ProgressBar: View {
    @Binding var value : Float
    var body: some View {
        
        GeometryReader{geometry in
            ZStack(alignment:.leading) {
                Rectangle().frame(width: geometry.size.width, height: geometry.size.height)
                    .opacity(0.3)
                    .foregroundColor(Color(UIColor.systemTeal))
                Rectangle().frame(
                    width: min(CGFloat(self.value)*geometry.size.width,geometry.size.width),
                    height: geometry.size.height)
                    .foregroundColor(Color(UIColor.systemTeal))
            }
        }.cornerRadius(45.0)
    }
}

struct ProgressBar_Previews: PreviewProvider {
    @State static var prog  : Float = 0.7
    static var previews: some View {
        ProgressBar(value: $prog)
    }
}
