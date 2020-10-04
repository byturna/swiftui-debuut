//
//  Welcome.swift
//  Playground
//
//  Created by Metehan Turna on 03/10/20.
//

import SwiftUI

struct Welcome: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Welcome to Installer").font(.system(size: 50)).fontWeight(.heavy).foregroundColor(.primary)
            
            Spacer()
            
            VStack (alignment: .leading, spacing: 24) {
                HStack (alignment: .top, spacing: 20) {
                    Image(systemName: "sparcles").resizable().frame(width: 40, height: 40).foregroundColor(.yellow)
                        
                        VStack (alignment: .leading, spacing: 4) {
                            Text("All New Design").font(.headline).bold()
                            
                            Text("Easily View Stock Options, Quotes, Charts etc.").font(.subheadline)
                        }
                    }
              
              HStack (alignment: .top, spacing: 20) {
                Image(systemName: "swift").resizable().frame(width: 40, height: 40).foregroundColor(.red)
                        
                        VStack (alignment: .leading, spacing: 4) {
                            Text("All New Design").font(.headline).bold()
                            
                            Text("Easily View Stock Options, Quotes, Charts etc.").font(.subheadline)
                        }
                    }
              
              HStack (alignment: .top, spacing: 20) {
                Image(systemName: "chart.bar.fill").resizable().frame(width: 40, height: 40).foregroundColor(Color.blue)
                        
                        VStack (alignment: .leading, spacing: 4) {
                            Text("All New Design").font(.headline).bold()
                            
                            Text("Easily View Stock Options, Quotes, Charts etc.").font(.subheadline)
                        }
                    }
            }
            
            Spacer()
            
            Button(action: {}) {
                Text("Welcome").foregroundColor(.white).bold()
            }.frame(width: 280, height: 50).background(Color.orange).cornerRadius(12)
        }.padding(.all, 40)
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Welcome()
        }
    }
}
