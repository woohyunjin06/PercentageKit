//
//  CGRect+Intersection.swift
//  PercentageKit
//
//  Created by 현진 on 2021/02/04.
//

import UIKit

public extension CGRect {
    func intersectionRatio(_ r: CGRect) -> CGFloat {
        let intersectedSize = self.intersection(r).size
        
        guard intersectedSize != .zero else { return 0 }
        return intersectedSize.area / size.area
    }
}

public extension CGSize {
    var area: CGFloat {
        return width * height
    }
}
