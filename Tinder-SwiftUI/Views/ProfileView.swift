//
//  ProfileView.swift
//  Tinder-SwiftUI
//
//  Created by Safar Safarov on 23/08/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("img_jd")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 120)
                .cornerRadius(60)
                .shadow(radius: 5)
            VStack(spacing: 5) {
                Text("JD")
                    .font(.system(size: 30))
                    .fontWeight(.heavy)
                Text("iOS Engineer")
                Text("Uzbekistan, Tashkent")
            }
            ZStack {
                HStack(spacing: 50) {
                    VStack(spacing: 8) {
                        Image(systemName: "gearshape.fill")
                            .font(.system(size: 35, weight: .heavy))
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
