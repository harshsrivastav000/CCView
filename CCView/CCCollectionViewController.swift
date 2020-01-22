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

private let screenWidth = UIScreen.main.bounds.size.width
private let screenHeight = UIScreen.main.bounds.size.height

open class CCCollectionViewController: UICollectionViewController {
    
    open var openCellIndex:Int! = 0
    open var isOpen:Bool! = false
    
    
    // Toggle Cell
    open func toggleCell(cellInstance:CCCollectionViewCell,indexPath:IndexPath ,for duration:Double) -> Void {
        if self.isOpen == true {
            if self.openCellIndex == indexPath.row {
                cellInstance.animateCellOpen(lowerDetailsView: cellInstance.lowerDetailsView, lowerView: cellInstance.lowerView, animationDuration: duration)
            }
        }
        if self.isOpen == false {
            cellInstance.defaultLayoutForClosedCell(lowerDetailsView: cellInstance.lowerDetailsView, lowerView: cellInstance.lowerView)
        }
    }
    
    open func expandCell(_ collectionView: UICollectionView, at indexPath: IndexPath, for duration:Double) -> Void {
        //Checking if open closing the cell
        if (isOpen == true) {
            for cell in (self.collectionView? .visibleCells)! {
                let indexPath = self.collectionView?.indexPath(for: cell)
                if (indexPath?.row == self.openCellIndex) {
                    let collectionCell:CCCollectionViewCell = cell as! CCCollectionViewCell
                    collectionCell.animateCloseCell(lowerDetailsView: collectionCell.lowerDetailsView, lowerView: collectionCell.lowerView, animationDuration: duration)
                    self.isOpen = false
                    self.openCellIndex = 0
                }
            }
        }else{
            //opening the cell
            self.openCellIndex = indexPath.row
            self.isOpen = true
            collectionView.reloadData()
        }
    }
}
