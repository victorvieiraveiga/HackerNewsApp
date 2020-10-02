//
//  ContentView.swift
//  Hacker News
//
//  Created by Victor Vieira Veiga on 01/10/20.
//  Copyright © 2020 Victor Vieira Veiga. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List (networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                       HStack {
                                     Text(String(post.points))
                                     Text (post.title)
                                 }
                }
             
        }
        .navigationBarTitle("Hacker News")
        } .onAppear {
            self.networkManager.fechData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

