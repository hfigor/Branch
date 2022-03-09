//
//  ProductCell.swift
//  Blocks
//
//  Created by Frank Cipolla on 3/9/22.
//

import SwiftUI

struct ProductCell: View {
    var body: some View {
        HStack {
            Image(systemName: "photo")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 60.0)
            VStack {
                VStack(alignment: .leading) {
                        Text(/*@START_MENU_TOKEN@*/"Text"/*@END_MENU_TOKEN@*/)
                            .font(.title2)
                        .fontWeight(.bold)
                        Text(/*@START_MENU_TOKEN@*/"Detail Text"/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color.gray)
                    HStack {
                        Text(/*@START_MENU_TOKEN@*/"Tertiary Text"/*@END_MENU_TOKEN@*/)
                   
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
        ProductCell()
            .previewLayout(.sizeThatFits)
    }
}
