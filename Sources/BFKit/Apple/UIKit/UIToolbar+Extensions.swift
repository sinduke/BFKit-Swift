//
//  UIToolbar+Extensions.swift
//  BFKit-Swift
//
//  The MIT License (MIT)
//
//  Copyright (c) 2015 - 2019 Fabrizio Brancati.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import Foundation
import UIKit

// MARK: - UIToolbar extension

/// This extesion adds some useful functions to UIToolbar.
public extension UIToolbar {
    // MARK: - Functions
    
    /// Set the UIToolbar transparent or not.
    ///
    /// - Parameters:
    ///   - transparent: Set to true if trasparent, otherwise false.
    ///   - translucent: Set to true if translucent, otherwise false.
    func setTransparent(_ transparent: Bool, translucent: Bool = true) {
        if transparent {
            setBackgroundImage(UIImage(), forToolbarPosition: .any, barMetrics: .default)
            setShadowImage(UIImage(), forToolbarPosition: .any)
        } else {
            setBackgroundImage(nil, forToolbarPosition: .any, barMetrics: .default)
            setShadowImage(nil, forToolbarPosition: .any)
        }
        
        isTranslucent = translucent
    }
}
