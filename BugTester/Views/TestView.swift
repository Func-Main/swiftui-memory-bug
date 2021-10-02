//
//  TestView.swift
//  BugTester
//
//  Created by Daniel Morgan on 02/10/2021.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        VStack {
            GeometryReader { geo in
                ScrollView() {
                   ForEach(testPrompts, id: \.id) { prompt in
                       HStack {
                           PromptView(
                               title: prompt.title,
                               subtitle: prompt.subtitle,
                               color: prompt.color
                           )
                           //TODO:  Uncomment .aspectRatio and look at swift-frontend memory usage grow up up up
//                            .aspectRatio(0.75, contentMode: .fit)
                           .frame(width: geo.size.width)
                       }
                   }
               }
            }
        }
    }
    
    let testPrompts = [
        Prompt(
            title: "A test prompt",
            subtitle: "A test subtitle",
            category: "A Test Category",
            color: Color.red
        ),
        Prompt(
            title: "A test prompt",
            subtitle: "A test subtitle",
            category: "A Test Category",
            color: Color.yellow
        ),
        Prompt(
            title: "A test prompt",
            subtitle: "A test subtitle",
            category: "A Test Category",
            color: Color.green
        ),
        Prompt(
            title: "A test prompt",
            subtitle: "A test subtitle",
            category: "A Test Category",
            color: Color.blue
        ),
        Prompt(
            title: "A test prompt",
            subtitle: "A test subtitle",
            category: "A Test Category",
            color: Color.purple
        ),
        Prompt(
            title: "A test prompt",
            subtitle: "A test subtitle",
            category: "A Test Category",
            color: Color.black
        )
    ]
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

struct Prompt: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let subtitle: String?
    let category: String
    let color: Color
}
