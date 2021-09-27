//
//  ContentView.swift
//  My First Card App
//
//  Created by MacBook on 27.09.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.10, green: 0.74, blue: 0.61).ignoresSafeArea()
            VStack(alignment: .center, spacing: 0.0) {Image("For Cards New")
                .clipShape(Circle())
                    .overlay(Circle()
                    .stroke(lineWidth: 4))
                Text("Тихонов Михаил")
                    .font(.title)
                    .foregroundColor(Color.black)
                    
                Text("iOS Developer")
                    .font(.title)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                Divider()
                ExtractedView(image: "phone.fill", message: "+79266410234" )
                    .padding(.bottom)
                ExtractedView(image: "envelope.fill", message: "miha-racer@mail.ru" )
          }
        }
      }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    let image: String
    let message: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .padding(.horizontal)
            .frame(width: 400, height: 50)
            .overlay(HStack
            {Image(systemName: image)
                
                
                Text(message)
                    .font(.title2)
                    .foregroundColor(Color.white)
                
            }.foregroundColor(.green)            )
    }
}
