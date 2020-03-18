//
//  ContentView.swift
//  HW2
//
//  Created by User23 on 2020/3/18.
//  Copyright © 2020 User23. All rights reserved.
//

import SwiftUI

struct note1: Shape {
    func path(in rect: CGRect) -> Path {
        Path { (path) in
            path.addRect(CGRect(x: 50, y: 0, width: 10, height: 80))
            path.addArc(center: CGPoint(x: 50-10, y: 80+6), radius: 20,startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)            
        }
    }
}

struct note1View: View {
    var color: Color
    var offsetX: CGFloat = 0
    var offsetY: CGFloat = 0
    var rotationDegrees: Double = 0
        
    var body: some View{
        note1()
        .fill(color)
        .offset(x: offsetX, y: offsetY)
        .rotationEffect(.degrees(rotationDegrees))
    }
}

struct note2: Shape {
    func path(in rect: CGRect) -> Path {
        Path { (path) in
            path.addRect(CGRect(x: 50, y: 0, width: 100, height: 20))
            path.addRect(CGRect(x: 50, y: 0, width: 10, height: 80))
            path.addArc(center: CGPoint(x: 50-10, y: 80+6), radius: 20,startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
            path.addRect(CGRect(x: 50+100, y: 0, width: 10, height: 80))
            path.addArc(center: CGPoint(x: 50-10+100, y: 80+6), radius: 20,startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
            
        }
    }
}

struct note2View: View {
    var color: Color
    var offsetX: CGFloat = 0
    var offsetY: CGFloat = 0
    var rotationDegrees: Double = 0
        
    var body: some View{
        note2()
        .fill(color)
            .offset(x: offsetX, y: offsetY)
        .rotationEffect(.degrees(rotationDegrees))
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack{
                Image("VTL")
                    .resizable()
                    .scaledToFit()
                    .blur(radius: 5)
                    note2View(color: .red, offsetX: 70, offsetY: 0, rotationDegrees: 30)
                    note2View(color: .green, offsetX: -50, offsetY: 650, rotationDegrees: -20)
                    note1View(color: .blue, offsetX: 30, offsetY: 0, rotationDegrees: -10)
                    note1View(color: .orange, offsetX: 45, offsetY: 20, rotationDegrees: 15)
                    note1View(color: .purple, offsetX: 500, offsetY: 550, rotationDegrees: 40)
                Text("にじさんじ")
                    .font(.title)
                    .bold()
                    .offset(y: 150)
                Group {
                    Path{(path) in
                        path.move(to: CGPoint(x: 124, y: 149))
                        path.addArc(center: CGPoint(x: 125, y: 150), radius: 217-125,startAngle: .degrees(0), endAngle: .degrees(270), clockwise: false)
                    }.fill(Color(red:42/255, green: 75/255, blue: 113/255))
                    Path { (path) in
                        path.move(to: CGPoint(x: 31, y: 242))
                        path.addLine(to: CGPoint(x: 71, y: 224))
                        path.addLine(to: CGPoint(x: 50, y: 203))
                    }.fill(Color(red:42/255, green: 75/255, blue: 113/255))
                    Path { (path) in
                        path.addArc(center: CGPoint(x: 81,y: 120), radius: 29, startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
                    }.fill(Color.white)
                    Path { (path) in
                        path.addArc(center: CGPoint(x: 81 + 14,y: 120 - 14), radius: 15, startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
                    }.fill(Color(red:42/255, green: 75/255, blue: 113/255))
                    Group {
                        Path { (path) in
                        path.move(to: CGPoint(x: 137, y: 135))
                            path.addArc(center: CGPoint(x: 137, y: 135), radius: 231 - 137, startAngle: .degrees(-90), endAngle: .degrees(0), clockwise: false)
                        }.fill(Color(red: 219/255, green: 8/255, blue: 45/255))
                        Path { (path) in
                        path.move(to: CGPoint(x: 137, y: 135))
                            path.addArc(center: CGPoint(x: 137, y: 135), radius: 231 - 137 - 14, startAngle: .degrees(-90), endAngle: .degrees(0), clockwise: false)
                        }.fill(Color(red: 239/255, green: 122/255, blue: 3/255))
                        Path { (path) in
                        path.move(to: CGPoint(x: 137, y: 135))
                            path.addArc(center: CGPoint(x: 137, y: 135), radius: 231 - 137 - (14 * 2), startAngle: .degrees(-90), endAngle: .degrees(0), clockwise: false)
                        }.fill(Color(red: 242/255, green: 235/255, blue: 30/255))
                        Path { (path) in
                        path.move(to: CGPoint(x: 137, y: 135))
                            path.addArc(center: CGPoint(x: 137, y: 135), radius: 231 - 137 - (14 * 3), startAngle: .degrees(-90), endAngle: .degrees(0), clockwise: false)
                        }.fill(Color(red: 0/255, green: 156/255, blue: 78/255))
                        Path { (path) in
                        path.move(to: CGPoint(x: 137, y: 135))
                            path.addArc(center: CGPoint(x: 137, y: 135), radius: 231 - 137 - (14 * 4), startAngle: .degrees(-90), endAngle: .degrees(0), clockwise: false)
                        }.fill(Color(red:77/255, green: 193/255, blue: 240/255))
                        Path { (path) in
                        path.move(to: CGPoint(x: 137, y: 135))
                            path.addArc(center: CGPoint(x: 137, y: 135), radius: 231 - 137 - (14 * 4), startAngle: .degrees(-90), endAngle: .degrees(0), clockwise: false)
                        }.fill(Color(red:77/255, green: 193/255, blue: 240/255))
                        Path { (path) in
                        path.move(to: CGPoint(x: 137, y: 135))
                            path.addArc(center: CGPoint(x: 137, y: 135), radius: 231 - 137 - (14 * 5), startAngle: .degrees(-90), endAngle: .degrees(0), clockwise: false)
                        }.fill(Color(red: 3/255, green: 101/255, blue: 178/255))
                        Path { (path) in
                        path.move(to: CGPoint(x: 137, y: 135))
                            path.addArc(center: CGPoint(x: 137, y: 135), radius: 231 - 137 - (14 * 6), startAngle: .degrees(-90), endAngle: .degrees(0), clockwise: false)
                        }.fill(Color(red: 99/255, green: 55/255, blue: 145/255))
                    }
                }.offset(x: 80, y: 280)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

