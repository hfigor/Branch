//
//  NewsCell.swift
//  Blocks
//
//  Created by Frank Cipolla on 3/9/22.
//

import SwiftUI

struct NewsCell: View {
    
    let image: Image
    let text : Text
    let detailedText: Text
    let tertiaryText: Text
    let largeImage: Image
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                image
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 44.0, height: 44.0)
                
                VStack(alignment: .leading) {
                    text
                        .font(.title2)
                        .fontWeight(.bold)
                    tertiaryText
                }
            }
            detailedText
            largeImage
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .frame(maxHeight: 240.0)
                .clipped()
        }
    }
}


struct NewsCell_Previews: PreviewProvider {
    static var previews: some View {
        NewsCell(image: Image(systemName: "photo"),
                 text: Text("Text"),
                 detailedText: Text("Detail Text"),
                 tertiaryText: Text("tertiaryText"),
                 largeImage: Image(systemName: "photo")
        )
        .previewLayout(.sizeThatFits)
        
    }
}
