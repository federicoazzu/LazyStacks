//
//  ContentView.swift
//  LazyStacks
//
//  Created by Federico on 30/11/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            // If you change LazyVStack to VStack, your editor will probably suffer.
            LazyVStack(alignment: .leading) {
                ForEach(1..<1000, id: \.self) { row in
                    HStack {
                        Image(systemName: "person.fill")
                            .foregroundColor(.blue)
                        
                        Text("\(row): Name, Surname")
                            .bold()
                            .padding()
                            .onAppear {
                                print("\(row) loaded!")
                            }
                            .lineLimit(1)
                    }
                }
            }.padding(30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
