//
//  ChatWindow.swift
//  Gabber Messenger
//
//  Created by daadoni coggins on 4/4/22.
//

import SwiftUI

struct ChatWindow: View {
    var body: some View {
        ScrollView(.vertical){
            ChatRow(type: .sent)
                .padding(5)
            ChatRow(type: .received)
                .padding(5)
        }
    }
}

struct ChatWindow_Previews: PreviewProvider {
    static var previews: some View {
        ChatWindow()
    }
}
