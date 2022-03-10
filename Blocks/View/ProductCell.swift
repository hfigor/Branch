//
//  ProductCell.swift
//  Blocks
//
//  Created by Frank Cipolla on 3/9/22.
//

import SwiftUI

struct ProductCell: View {
    
    let image: Image
    let text: Text
    let detailText: Text
    let tertiaryText: Text
    
    var body: some View {
        
        HStack {
            image
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 60.0)
            VStack {
                VStack(alignment: .leading) {
                    text
                        .font(.title2)
                        .fontWeight(.bold)
                    detailText
                        .foregroundColor(Color.gray)
                    HStack {
                        tertiaryText
                        Button("Buy") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        
                    }
                }
            }
        }
        
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(image: Image(systemName: "photo"),
                    text: Text("Text"),
                    detailText: Text(/*@START_MENU_TOKEN@*/"Detail Text"/*@END_MENU_TOKEN@*/),
                    tertiaryText: Text(/*@START_MENU_TOKEN@*/"Tertiary Text"/*@END_MENU_TOKEN@*/)
        )
        .previewLayout(.sizeThatFits)
    }
}
