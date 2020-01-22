//MIT License
//
//Copyright (c) [2018] [Harsh Srivastav]
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//SOFTWARE.

import UIKit

open class CCCollectionViewCell: UICollectionViewCell {
    
    
    open private(set) var CCCellBackgorundView: UIView!
    open private(set)var upperView: UIView!
    open private(set) var lowerView: UIView!
    open private(set)var lowerDetailsView: UIView!
    open private(set) var animationDuration:Double! = 0.5
    
    open func assignValue(CCCellBackgroundView:UIView,upperView:UIView,lowerView:UIView,lowerdetailsView:UIView) -> Void {
        self.CCCellBackgorundView = CCCellBackgroundView
        self.lowerView = lowerView
        self.upperView = upperView
        self.lowerDetailsView = lowerdetailsView
    }
    
    
    open func defaultLayoutForClosedCell(lowerDetailsView:UIView,lowerView:UIView) -> Void {
        self.lowerView = lowerView
        self.lowerDetailsView = lowerDetailsView
    }
    
    
    open func animateCloseCell(lowerDetailsView:UIView,lowerView:UIView,animationDuration:Double) -> Void {
        self.lowerDetailsView = lowerDetailsView
        self.lowerView = lowerView
        self.animationDuration = animationDuration
    }
    
    open func animateCellOpen(lowerDetailsView:UIView,lowerView:UIView,animationDuration:Double) -> Void {
        self.lowerDetailsView = lowerDetailsView
        self.lowerView = lowerView
        self.animationDuration = animationDuration
    }
}
