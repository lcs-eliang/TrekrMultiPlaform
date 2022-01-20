//
//  Tip.swift
//  TrekrMultiPlaform
//
//  Created by Xiaoyu Liang on 2022-01-19.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
