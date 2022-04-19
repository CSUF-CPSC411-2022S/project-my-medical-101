//
//  modifiers.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 4/19/22.
//

import SwiftUI

// LOGIN MODIFIERS
struct LogoText: ViewModifier {
    func body(content: Content) -> some View {
         content
            .font(.custom("Times New Roman", size: 30))
            .foregroundColor(Color.black)
            .padding()
            .background(Color.white)
            .cornerRadius(10)
    }
 }

struct TopTitleText: ViewModifier {
    func body(content: Content) -> some View {
         content
            .font(.custom("Times New Roman", size: 30))
            .foregroundColor(Color.black)
            .padding()
    }
 }

struct LoginButtonText: ViewModifier {
     func body(content: Content) -> some View {
         content
             .frame(width: 200, height: 30)
            .font(.custom("Times New Roman", size: 22))
            .foregroundColor(Color.black)
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            .background(Color("pastelBlue"))
            .cornerRadius(40)
    }
}

// CREATE ACCOUNT MODIFIERS
struct TopText: ViewModifier {
    func body(content: Content) -> some View {
         content
            .font(.custom("Times New Roman", size: 25))
            .foregroundColor(Color.black)
            .padding()
            .cornerRadius(10)
    }
}

struct CreateButtonText: ViewModifier {
     func body(content: Content) -> some View {
         content
             .frame(width: 200, height: 30)
            .font(.custom("Times New Roman", size: 22))
            .foregroundColor(Color.black)
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            .background(Color("pastelBlue"))
            .cornerRadius(40)
    }
}

struct textTypingBox: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(40)
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 20))
            .frame(width: 200, height: 50)
   }
}

// HOME PAGE MODIFIERS
struct TitleText: ViewModifier {
   func body(content: Content) -> some View {
        content
           .font(.custom("Times New Roman", size:55))
           .foregroundColor(Color.black)
           .padding(EdgeInsets(top: -30, leading: 20, bottom: 70, trailing: 20))
           .frame(maxWidth: .infinity, maxHeight: .infinity)
           .background(Color("pastelBlue"))
   }
}

struct HPButtonText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width:125, height: 50)
            .font(.custom("Times New Roman", size: 22))
            .foregroundColor(Color.black)
            .padding(EdgeInsets(top:20, leading: 20, bottom: 20, trailing: 20))
            .background(Color("pastelBlue"))
            .cornerRadius(10)
            .multilineTextAlignment(.center)
   }
}

// APPOINTMENT MODIFERS


// MY CHART MODIFIERS
struct chartTitle: ViewModifier {
   func body(content: Content) -> some View {
       content
           .font(.custom("Times New Roman", size:60))
           .foregroundColor(Color.black)
           .padding(EdgeInsets(top: 100, leading: 20, bottom: 50, trailing: 20))
           .frame(maxWidth: .infinity, maxHeight: .infinity)
           .background(Color("pastelBlue"))
   }
}

struct chartInfo: ViewModifier {
   func body(content: Content) -> some View {
       content
           .font(.custom("Times New Romant", size: 20))
           .frame(width: 300)
           .background(Color("pastelPurple"))
           .cornerRadius(25)
   }
}

// HELP PAGE MODIFIERS
struct HelpText: ViewModifier {
    func body(content: Content) -> some View {
        content
           .font(.custom("Courier New", size: 25))
           .foregroundColor(Color.black)
           .padding()
           .background(Color("pastelBlue"))
           .cornerRadius(10)
    }
}
