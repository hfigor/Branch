//
//  Article.swift
//  Blocks
//
//  Created by Frank Cipolla on 3/9/22.
//

import Foundation

struct Article: Identifiable {
    var id: Int
    
    let title: String
    let date: Date
    let detail: String
    let smallImageName: String
    let largeImageName: String
}
