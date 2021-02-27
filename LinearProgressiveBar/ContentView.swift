//
//  ContentView.swift
//  LinearProgressiveBar
//
//  Created by Michele Manniello on 27/02/21.
//

import SwiftUI

struct ContentView: View {
    @State var proggressValue : Float = 0.0
    var body: some View {
        VStack {
            ProgressBar(value: $proggressValue).frame( height: 20)
            Button(action: {
                start()
            }, label: {
                Text("Start")
            })
            .padding()
            Button(action: {
                reset()
            }, label: {
                Text("Reset")
            }).padding()
            Spacer()
        }.padding()
    }
    func start(){
        for _ in 0...80{
            self.proggressValue += 0.015
            print("progr \(proggressValue)")
        }
    }
    func reset(){
        self.proggressValue = 0.0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
