//
//  DetailView.swift
//  Hacker News
//
//  Created by Victor Vieira Veiga on 02/10/20.
//  Copyright © 2020 Victor Vieira Veiga. All rights reserved.
//

import SwiftUI


struct DetailView: View {
    let url : String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


