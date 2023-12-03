//
//  TabView.swift
//  FitFam
//
//  Created by Kelvin Chung on 12/2/23.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Home")
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                            .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                        Text("Home")
                    }
                }
                .onAppear { selectedTab = 0 }
                .tag(0)
            
            Text("Friends")
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab == 1 ? "person.2.fill" : "person.2")
                            .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                        Text("Friends")
                    }
                }
                .onAppear { selectedTab = 1 }
                .tag(1)
            
            Text("Inbox")
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab == 2 ? "mail.fill" : "mail")
                            .environment(\.symbolVariants, selectedTab == 2 ? .fill : .none)
                        Text("Inbox")
                    }
                }
                .onAppear { selectedTab = 2 }
                .tag(2)
            
            Text("Account")
                .tabItem {
                    VStack {
                        // Need Image of accountholder here
                        Text("Account")
                    }
                }
                .onAppear { selectedTab = 3 }
                .tag(3)
        }
        .tint(.black)
    }
}

#Preview {
    MainTabView()
}
