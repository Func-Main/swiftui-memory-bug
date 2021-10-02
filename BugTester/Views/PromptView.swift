//
//  ConversationPromptView.swift
//  Conversation
//
//  Created by Daniel Morgan on 22/09/2021.
//

import SwiftUI

struct PromptView: View {
    let title: String
    let subtitle: String?
    let color: Color

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(title)
                .font(.system(size: 30, design: .serif))
                .fontWeight(.regular)
            if let subtitle = subtitle {
                Text(subtitle)
                    .font(.callout)
                    .fontWeight(.regular)
            }
            Spacer()
            HStack {
                Text("Personality & Emotions")
                    .font(.body)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName:"seal.fill")
            }
            
        }
        .foregroundColor(.black).padding(30.0)
        .background(
            Rectangle()
                .foregroundColor(color)
                .cornerRadius(20)
        )

    }
}

struct ConversationPromptView_Previews: PreviewProvider {
    static var previews: some View {
        PromptView(
            title: "Attempt to summarise the main ideas of one serious thinker or book you've read.",
            subtitle: "If you remember nothing the fun increases.",
            color: Color.red
        )
    }
}
