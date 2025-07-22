//
//  ContentView.swift
//  GoTime
//
//  Created by Eric Langhorne on 7/22/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            AppColor.background
                .ignoresSafeArea() // extends full screen

            VStack {
                Spacer()
                Spacer()
                Text("Rain Alerts")
                    .bold()
                    .monospaced()
                    .font(.largeTitle)
                    .foregroundColor(.black)

                Button(action: {
                    print("Toggle button pressed")
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 250, height: 250)
                            .foregroundColor(AppColor.matchIcon)

                        Circle()
                            .stroke(AppColor.background, lineWidth: 7)
                            .frame(width: 220, height: 220)

                        Image(systemName: "drop.circle")
                            .font(.system(size: 75))
                            .foregroundColor(AppColor.background)
                    }
                }
                .frame(width: 250, height: 250)
                .background(Color.red.opacity(0.3))
                .clipShape(Circle())
                .contentShape(Circle())
                .padding()

                Spacer()

                HStack {
                    Button(action: {
                        print("Info button pressed")
                    }) {
                        Image(systemName: "info.circle")
                            .font(.system(size: 25))
                    }

                    Spacer()

                    Button(action: {
                        print("Settings button pressed")
                    }) {
                        Image(systemName: "gearshape")
                            .font(.system(size: 25))
                    }
                }
                .padding(.horizontal, 30)
                .padding(.bottom, 30)
            }
        }
    }
}

#Preview {
    HomeView()
}
