//
//  AnimationType.swift
//  AnimationApp
//
//  Created by Valya on 26.02.22.
//

import UIKit

enum AnimationType: String, CaseIterable {
        case shake
        case pop
        case morph
        case squeeze
        case wobble
        case swing
        case flipX
        case flipY
        case fall
        case squeezeLeft
        case squeezeRight
        case squeezeDown
        case squeezeUp
        case slideLeft
        case slideRight
        case slideDown
        case slideUp
        case fadeIn
        case fadeOut
        case fadeInLeft
        case fadeInRight
        case fadeInDown
        case fadeInUp
        case zoomIn
        case zoomOut
        case flash
}

enum CurveType: String, CaseIterable {
        case spring
        case linear
        case easeIn
        case easeOut
        case easeInOut
}

struct AnimationSettings {
    let animation: String
    let curve: String
    let delay: CGFloat
    let force: CGFloat
    let duration: CGFloat
    let repeatCount: Float
}
