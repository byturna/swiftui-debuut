//
//  Search.swift
//  Debuut
//
//  Created by Metehan Turna on 03/10/2020.
//

import SwiftUI

struct Search: View {
    @State private var searchText = ""
    @State private var showCancelButton: Bool = false
    
    @State private var sort: Int = 0

    var body: some View {

        NavigationView {
            VStack {
                // Search view
                HStack {
                    HStack {
                        Image(systemName: "magnifyingglass")

                        TextField("Search", text: $searchText, onEditingChanged: { isEditing in
                            self.showCancelButton = true
                        }, onCommit: {
                            print("onCommit")
                        }).foregroundColor(.primary)

                        Button(action: {
                            self.searchText = ""
                        }) {
                            Image(systemName: "xmark.circle.fill").opacity(searchText == "" ? 0 : 1)
                        }
                    }
                    .padding(EdgeInsets(top: 8, leading: 6, bottom: 8, trailing: 6))
                    .foregroundColor(.secondary)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10.0)

                    if showCancelButton  {
                        Button("Cancel") {
                                UIApplication.shared.endEditing(true) // this must be placed before the other commands here
                                self.searchText = ""
                                self.showCancelButton = false
                        }
                        .foregroundColor(Color(.systemBlue))
                    }
                }
                .padding(.horizontal)
                .navigationBarHidden(showCancelButton)

                List {
                }
                .navigationBarTitle(Text("Search"))
                .toolbar {
                                ToolbarItem(placement: .primaryAction) {
                                    Menu {
                                        Section {
                                            Button(action: {}) {
                                                Label("Filter", systemImage: "line.horizontal.3.decrease.circle.fill")
                                            }
                                        }
                                        Section {
                                            Picker(selection: $sort, label: Text("Sorting options")) {
                                                                        Text("Relevance").tag(0)
                                                                        Text("Updated").tag(1)
                                                                        Text("Type").tag(2)
                                                                    }
                                        }
                                    }
                                    label: {
                                        Label("Filter/Sort", systemImage: "ellipsis.circle.fill")
                                    }
                                }
                }
                .resignKeyboardOnDragGesture()
            }
        }
    }
}



struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Group {
           Search()
              .environment(\.colorScheme, .light)

           Search()
              .environment(\.colorScheme, .dark)
        }
    }
}

extension UIApplication {
    func endEditing(_ force: Bool) {
        self.windows
            .filter{$0.isKeyWindow}
            .first?
            .endEditing(force)
    }
}

struct ResignKeyboardOnDragGesture: ViewModifier {
    var gesture = DragGesture().onChanged{_ in
        UIApplication.shared.endEditing(true)
    }
    func body(content: Content) -> some View {
        content.gesture(gesture)
    }
}

extension View {
    func resignKeyboardOnDragGesture() -> some View {
        return modifier(ResignKeyboardOnDragGesture())
    }
}
