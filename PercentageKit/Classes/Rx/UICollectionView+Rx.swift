//
//  UICollectionView+Rx.swift
//  PercentageKit
//
//  Created by 현진 on 2021/02/08.
//

import Foundation
import UIKit

import RxCocoa
import RxSwift

extension Reactive where Base: UICollectionView {
    
    var didScroll: ControlEvent<Void> {
        let event = delegate.methodInvoked(#selector(UIScrollViewDelegate.scrollViewDidScroll(_:)))
            .map { _ in Void() }
        return ControlEvent(events: event)
    }
    
    var visibleCells: ControlEvent<[UICollectionViewCell]> {
        ControlEvent(events: didScroll.map { _ in
            base.visibleCells
        })
    }
    
}
