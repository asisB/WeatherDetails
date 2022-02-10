//
//  LottieViews.swift
//  WeatherUpdate (iOS)
//
//  Created by Ashish Basnet on 03/02/2022.
//

import Foundation
import SwiftUI
import Lottie

struct LottieViews: UIViewRepresentable {
    var name: String
    var loopMode: LottieLoopMode = .loop
    
    
    func makeUIView(context: Context) -> some UIView {
        let view = UIView()
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<LottieViews>) {
        uiView.subviews.forEach({$0.removeFromSuperview()})
        
        let animationView = AnimationView()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        uiView.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: uiView.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: uiView.heightAnchor)
        ])
        
        animationView.animation = Animation.named(name)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.play()
    }
}
