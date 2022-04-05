//
//  Gabber_MessengerApp.swift
//  Gabber Messenger
//
//  Created by daadoni coggins on 4/4/22.
//

import SwiftUI

@main
struct Gabber_MessengerApp: App {
    var body: some Scene {
        WindowGroup {
            ConversationListWindow()
        }
    }
}

struct Gabber_MessengerApp_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello, Me")
    }
}
