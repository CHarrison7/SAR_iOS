//
//  ContentView.swift
//  SAR_iOS
//
//  Created by Caleb Harrison, Travis Tomer, Son Doan, and Larry Lu on 1/16/20.
//  Copyright © 2020 Caleb Harrison. All rights reserved.
//
import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Login to DJI SDK")
                .font(.title)
                .bold()
            HStack {
                    Button(action: {
                        // What to perform
                        print("Logon success!")
                        
                        //TEST OF CALLING FUNCTIONS FROM OUR OWN CODE
                        //HAVE TO SET VAR = CLASS TYPE THEN USE DOT OPERATOR
                        let loginTestString = ProductCommunicationManager()
                        loginTestString.djiLogonInitiated()
                        
                    }) {
                        // How the button looks like
                        Text("Login")
                            .font(.title)
                            .bold()
                            .padding()
                    }
                
                Button(action: {
                    // What to perform
                    print("Logout success!")
                }) {
                    // How the button looks like
                    Text("Logoff")
                        .font(.title)
                        .padding()
                    
                        
                }
            }
        }
        .padding()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

