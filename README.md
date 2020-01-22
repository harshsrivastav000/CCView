# CCView
You want to add pod 'CCView', '~> 1.1.3' similar to the following to your Podfile:

```
target 'MyApp' do
pod 'CCView', '~> 1.1.3'
end
```

Then run a pod install inside your terminal, or from CocoaPods.app.

## How to use?
First Import the class where you want to use CCView
```
import CCView
```

Create UICollectionViewController and UICollectionViewCell class with XIB and change the class type to CCCollectionViewController and CCCollectonViewCell respectively

For UICollectionViewController:-
```
class CollectionViewController: CCCollectionViewController,UICollectionViewDelegateFlowLayout {
.
.
.
.
 }
```

For UICollectionViewCell
```
class CollectionViewCell: CCCollectionViewCell {
.
.
.
.
}
```

Modification required in UICollectionViewController
```
override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
let cell:CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
.
.
self.toggleCell(cellInstance: cell, indexPath: indexPath, for: 0.5) //0.5 is the duration for animaiton
.
.
return cell
}

override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
.
.
.
self.expandCell(collectionView, at: indexPath, for: 0.7) //0.7 is the durartion for animation

}
```

or call self.expandCell(collectionView, at: indexPath, for: duration)  on the expand action in the cell



### For UICollectionViewCell
Create a CollectionViewCell Class with XIB and create similar layout as in demo for desired results  and add the code below in your CCCollecitonViewCell class


```
override func defaultLayoutForClosedCell(lowerDetailsView:UIView,lowerView:UIView) -> Void {
          super.defaultLayoutForClosedCell(lowerDetailsView:lowerDetailsView,lowerView:lowerView)
          self.lowerDetailsView.isHidden = true
          self.lowerView.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
          self.layoutIfNeeded()
}


override func animateCloseCell(lowerDetailsView:UIView,lowerView:UIView,animationDuration:Double) -> Void {
          super.animateCloseCell(lowerDetailsView:lowerDetailsView,lowerView:lowerView,animationDuration:animationDuration)
          UIView.animate(withDuration: animationDuration) {
              self.lowerDetailsView.isHidden = true
              self.lowerView.transform = CGAffineTransform(scaleX: 0.3,y: 0.3)
              self.layoutIfNeeded()
        }
}

override func animateCellOpen(lowerDetailsView:UIView,lowerView:UIView,animationDuration:Double) -> Void {
          super.animateCellOpen(lowerDetailsView:lowerDetailsView,lowerView:lowerView,animationDuration:animationDuration)
          UIView.animate(withDuration: animationDuration) {
              self.lowerView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
              self.lowerDetailsView.isHidden = false
              self.layoutIfNeeded()
          }
}
```

### Demo App gif
![](http://g.recordit.co/x87bJ0jg3e.gif)

### Demo App link
![Demo Example][https://github.com/harshsrivastav000/CCViewDemo]

## Requirements:-
* XCode 9.4 +
* Swift 4


### Author
Harsh Srivastava
