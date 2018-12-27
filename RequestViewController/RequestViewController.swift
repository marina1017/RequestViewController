//
//  RequestViewController.swift
//  RequestViewController
//
//  Created by 中川万莉奈 on 2018/12/28.
//  Copyright © 2018年 中川万莉奈. All rights reserved.
//

import Foundation

// publicもしくはopenにしておかないと、アプリ側（別モジュール）から利用できない
public extension UIColor {
    static var bondiBlue: UIColor = .init(hex: "0095b6")
}

private extension UIColor {
    convenience init(hex: String) {
        let v = hex.map({String($0)}) + Array(repeating: "0", count: max(6 - hex.count, 0))
        let r = CGFloat(Int(v[0] + v[1],radix:16) ?? 0) / 255.0
        let g = CGFloat(Int(v[2] + v[3],radix:16) ?? 0) / 255.0
        let b = CGFloat(Int(v[4] + v[5],radix:16) ?? 0) / 255.0
        self.init(red: r, green: g, blue: b, alpha: 1.0)
    }
}
