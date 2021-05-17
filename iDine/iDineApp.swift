//
//  iDineApp.swift
//  iDine
//
//  Created by Mouhamed Dieye on 12/05/2021.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
