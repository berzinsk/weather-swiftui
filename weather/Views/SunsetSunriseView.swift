//
//  SunsetSunriseView.swift
//  weather
//
//  Created by Karlis Berzins on 23/03/2023.
//

import SwiftUI

struct SunsetSunriseView: View {
    private let dayLength = 24*60
    private let nightTime = 200
    private let dayTime = 548
    @State private var size: CGSize = .zero

    var body: some View {
        VStack {
            HStack {
                Text("SUNSET & SUNRISE")
                    .font(.custom("Poppins-Medium", size: 12))
                    .foregroundColor(Color(0xC4C4C4))
                Spacer()
            }
            .padding(.bottom, 32)
            HStack {
                GeometryReader { proxy in
                    let availableSize = proxy.size
                    let minuteSize = availableSize.width / Double(dayLength)
                    let dayWidth = Double(dayTime) * minuteSize
                    let nightWidth = Double(nightTime) * minuteSize
                    ZStack {
                        Path() { path in
                            path.move(to: CGPoint(x: 0, y: 0))
                            path.addQuadCurve(to: CGPoint(x: nightWidth, y: 0), control: CGPoint(x: nightWidth / 2, y: 50))
                        }
                        .fill(Color(0x001F70))
                        .frame(width: 42, height: 50)
                        .offset(x: 0, y: 30)

                        Path() { path in
                            path.move(to: CGPoint(x: 0, y: 80))
                            path.addQuadCurve(to: CGPoint(x: dayWidth, y: 80), control: CGPoint(x: dayWidth / 2, y: 0))
                        }
                        .fill(Color(0x001F70))
                        .frame(width: 42, height: 50)
                        .offset(x: nightWidth, y: -50)
                    }
                }
                .frame(height: 60)
            }
            DayLengthView(title: "Length of day:", value: "13H12M")
            DayLengthView(title: "Remaining daylight:", value: "9H22M")
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 16)
        .background(Color(0xFDFCFC))
        .cornerRadius(16)
    }
}

struct DayLengthView: View {
    let title: String
    let value: String

    var body: some View {
        HStack(spacing: 0) {
            Text("Length of day:")
                .font(.custom("Poppins-Regular", size: 10))
                .foregroundColor(Color(0x9A9A9A))
                .padding(.trailing, 4)
            Text("13H12M")
                .font(.custom("Poppins-Regular", size: 10))
                .foregroundColor(Color(0x2C2C2C))
            Spacer()
        }
    }
}

struct SunsetSunriseView_Previews: PreviewProvider {
    static var previews: some View {
        SunsetSunriseView()
    }
}
