//
//  BannerViewController.swift
//  PagingScrollerProject
//
//  Created by Guerson on 6/25/19.
//  Copyright © 2019 ItandehuiP. All rights reserved.
//

import UIKit

class BannerViewController: UIViewController {
    
    @IBOutlet weak var pageControl: UIPageControl!
}

extension BannerViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageWidth = scrollView.bounds.width
        pageControl.currentPage = Int( scrollView.contentOffset.x / pageWidth)
    }
}
