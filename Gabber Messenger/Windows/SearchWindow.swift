//
//  SearchWindow.swift
//  Gabber Messenger
//
//  Created by daadoni coggins on 4/4/22.
//

import SwiftUI

struct SearchWindow: View {
    @State var text: String = ""
    
    let KnownContacts = ["Max"]
    let completion : ((String) -> Void)
    
    init(completion: @escaping ((String) -> Void)) {
        self.completion = completion
    }
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("Username", text: $text)
                    .modifier(CustomField())
                Button("Search"){
                    
                }
                List{
                    ForEach(KnownContacts, id: \.self){ name in
                        HStack{
                            Circle()
                                .frame(width: 55, height: 55)
                                .foregroundColor(.purple)
                            Text(name)
                                .bold()
                            Spacer()
                        }
                        .onTapGesture {
                            completion(name)
                        }
                        
                    }
                    
                    
                }
                
            
                Spacer()
                
                
            }
            .navigationTitle("Search Contacts")
            
            
        }          
    }
 
}

struct SearchWindow_Previews: PreviewProvider {
    static var previews: some View {
        SearchWindow(){ _ in }
            .preferredColorScheme(.dark)
    }
}
