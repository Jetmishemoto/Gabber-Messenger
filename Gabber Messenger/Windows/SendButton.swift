//
//  SendButton.swift
//  Gabber Messenger
//
//  Created by daadoni coggins on 4/4/22.
//

import SwiftUI

struct SendButton: View {
    @Binding var text: String
    
    var body: some View {
        Button(action: {
            self.sendMessage()
            
            
        }, label: {
            Image(systemName: "paperplane")
                .font(.system(size: 30))
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.purple)
                .background(Color.yellow)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
         })
        }
    func sendMessage(){
        guard !text.isEmpty else{ return}
        
    }
}

struct SendButton_Previews: PreviewProvider {
    static var previews: some View {
        SendButton(text: .constant(""))
    }
}
