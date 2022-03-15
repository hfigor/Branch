//
//  NewsCell+Article.swift
//  Blocks
//
//  Created by Frank Cipolla on 3/9/22.
//

import SwiftUI

extension NewsCell {
    init(article: Article){
        self.init(
            image: Image(article.smallImageName),
            text: Text(article.title),
            detailedText: Text(article.detail),
            tertiaryText: Text(String(describing: article.date)),
            largeImage: Image(article.largeImageName))
    }
}
struct NewsCell_Article_Previews: PreviewProvider {
    static var previews: some View {
        NewsCell(article: .airBlock)
            .previewLayout(.sizeThatFits)
    }
}
