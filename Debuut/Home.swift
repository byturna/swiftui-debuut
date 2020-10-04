//
//  Home.swift
//  Debuut
//
//  Created by Metehan Turna on 03/10/2020.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
                List {
                    Section {
                        NavigationLink(destination: Changelog()) {
                            HStack {
                                ZStack {
                                    Image(systemName: "sparkles").font(.callout)
                                        .foregroundColor(.white)
                                }.frame(width: 28, height: 28).background(Color.yellow).cornerRadius(6)
                                Text("Changelog")
                            }
                        }
                        NavigationLink(destination: Changelog()) {
                            HStack {
                                ZStack {
                                    Image(systemName: "sparkles").font(.callout)
                                        .foregroundColor(.white)
                                }.frame(width: 28, height: 28).background(Color.yellow).cornerRadius(6)
                                Text("Changelog")
                            }
                        }
                        
                    }
                    
                    Section {
                        NavigationLink(destination: About()) {
                            HStack {
                                ZStack {
                                    Image(systemName: "info.circle").font(.callout).foregroundColor(.white)
                                }.frame(width: 28, height: 28).background(Color.blue).cornerRadius(6)
                                Text("About")
                            }
                        }
                        
                    }
                }
                .navigationBarTitle("Welcome")
                .listStyle(InsetGroupedListStyle())
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
