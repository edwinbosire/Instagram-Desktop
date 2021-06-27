//
//  StatsLabel.swift
//  Instagram
//
//  Created by Edwin Bosire on 26/06/2021.
//

import SwiftUI

struct StatsLabel: View {
	var title: String
	var value: String

	var body: some View {
		VStack(spacing: 8) {
			Text(value)
				.foregroundColor(.white)

			Text(title)
				.fontWeight(.semibold)
				.foregroundColor(.gray)
		}
		.frame(maxWidth: .infinity)
    }
}

struct StatsLabel_Previews: PreviewProvider {
    static var previews: some View {
		StatsLabel(title: "1.5k", value: "Posts")
			.previewLayout(PreviewLayout.sizeThatFits)
			.padding()
    }
}
