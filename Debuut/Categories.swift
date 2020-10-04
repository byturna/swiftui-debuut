//
//  Categories.swift
//  Debuut
//
//  Created by Metehan Turna on 03/10/2020.
//

import SwiftUI

struct Categories: View {
    var body: some View {
        NavigationView {
                List {
                    Section {
                        NavigationLink(destination: About()) {
                            Text("All Packages")
                        }
                        
                    }
                    
                    Section {
                        DisclosureGroup("Add-ons") {
                            Label("Add-ons", systemImage:"puzzlepiece.fill")
                            NavigationLink(destination: Changelog()) {
                                Text("Dayn")
                            }
                            NavigationLink(destination: Changelog()) {
                                Text("HSWidgets")
                            }
                            NavigationLink(destination: Changelog()) {
                                Text("ShortLook")
                            }
                        }
                        
                        NavigationLink(destination: Changelog()) {
                            HStack {
                                ZStack {
                                    Image(systemName: "puzzlepiece.fill").font(.callout)
                                        .foregroundColor(.white)
                                }.frame(width: 28, height: 28).background(Color.green).cornerRadius(6)
                                Text("Add-ons")
                            }
                        }
                        NavigationLink(destination: Changelog()) {
                            HStack {
                                ZStack {
                                    Image(systemName: "apps.iphone").font(.callout)
                                        .foregroundColor(.white)
                                }.frame(width: 28, height: 28).background(Color.blue).cornerRadius(6)
                                Text("Applications")
                            }
                        }
                        NavigationLink(destination: Changelog()) {
                            HStack {
                                ZStack {
                                    Image(systemName: "command").font(.callout)
                                        .foregroundColor(.white)
                                }.frame(width: 28, height: 28).background(Color.gray).cornerRadius(6)
                                Text("Developer tools")
                            }
                        }
                        NavigationLink(destination: Changelog()) {
                            HStack {
                                ZStack {
                                    Image(systemName: "paintbrush.pointed.fill").font(.callout)
                                        .foregroundColor(.white)
                                }.frame(width: 28, height: 28).background(Color.orange).cornerRadius(6)
                                Text("Themes")
                            }
                        }
                        NavigationLink(destination: Changelog()) {
                            HStack {
                                ZStack {
                                    Image(systemName: "shippingbox.fill").font(.callout)
                                        .foregroundColor(.white)
                                }.frame(width: 28, height: 28).background(Color.yellow).cornerRadius(6)
                                Text("Tweaks")
                            }
                        }
                        
                    }
                }
                .navigationBarTitle("Categories")
                .listStyle(InsetGroupedListStyle())
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        Categories()
    }
}
