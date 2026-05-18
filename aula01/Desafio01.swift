//
//  ContentView.swift
//  Aula01
//
//  Created by Gian Lucca on 18/05/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 230, height: 250)
                .foregroundColor(.red)
            HStack(spacing: 20){
                VStack (spacing: 20){
                    Rectangle()
                        .frame(width: 80, height: 80)
                        .foregroundColor(.yellow)
                    Circle()
                        .frame(width: 80, height: 80)
                        .foregroundColor(.blue)
                }
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 60, height: 180)
                    .foregroundColor(.green)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
