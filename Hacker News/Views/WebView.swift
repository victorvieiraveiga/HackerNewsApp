//
//  WebView.swift
//  Hacker News
//
//  Created by Victor Vieira Veiga on 02/10/20.
//  Copyright © 2020 Victor Vieira Veiga. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView : UIViewRepresentable {
    
    let urlString: String?
 
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
   
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
