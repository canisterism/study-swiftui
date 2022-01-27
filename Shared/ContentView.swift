//
//  ContentView.swift
//  Shared
//
//  Created by canisterism on 2022/01/25.
//

import SwiftUI

struct ContentView: View {
    let chars = ["a","b", "c", "d"]
    let dashes = ["a'","b'", "c'", "d'"]

    var body: some View {
        List {
            Section(header: Text("chars").font(.largeTitle), footer: Text("This is the footer.")) {
                ForEach(0 ..< chars.count) { index in
                    Text(self.chars[index])
                }
            }
            Section(header: Text("dashes").font(.largeTitle), footer: Text("This is the footer.")) {
                ForEach(0 ..< dashes.count) { index in
                    Text(self.dashes[index])
                }
            }
        }.listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
