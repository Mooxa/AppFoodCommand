//
//  ContentView.swift
//  iDine
//
//  Created by Mouhamed Dieye on 12/05/2021.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        NavigationView{
            List {
                ForEach(menu) { section in
                    Section(header: Text(section.name)) {
                        ForEach(section.items) { item in
                            NavigationLink(destination: ItemDetail(item: item)) {
                                // existing contents…
                                ItemRow(item: item)
                            }
                            
                        }
                    }
                }
            }
        }
        .navigationTitle("Menu")
        .listStyle(GroupedListStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
