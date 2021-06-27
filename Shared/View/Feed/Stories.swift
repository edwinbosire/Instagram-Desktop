//
//  Stories.swift
//  Instagram
//
//  Created by Edwin Bosire on 27/06/2021.
//

import SwiftUI

struct Stories: View {
	var stories = [james, peter, diane, jane, simeon, paul, lazarous, marry]
    var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			HStack(spacing: 15) {
				Button(action: {}, label: {
					Image(systemName: "plus")
						.font(.title2)
						.foregroundColor(.white)
						.frame(width: 55, height: 55)
						.background(Color.orange.opacity(0.15))
						.clipShape(Circle())
				})
				.buttonStyle(PlainButtonStyle())

				ForEach(stories, id: \.self) { story in
					Image(story.profilePic)
						.resizable()
						.aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
						.frame(width: 55, height: 55)
						.clipShape(Circle())
						.padding(6)
						.background(Circle().stroke(gradient, lineWidth: 2))
						.clipShape(Circle())
						.contentShape(Circle())
				}
			}
			.padding()
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct Stories_Previews: PreviewProvider {
    static var previews: some View {
        Stories()
    }
}
