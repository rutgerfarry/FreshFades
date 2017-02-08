import UIKit

class HaircutCollectionViewCell: UICollectionViewCell {

    var image: UIImage? {
        didSet {
            imageView.image = image
        }
    }

    private let imageView: UIImageView

    override init(frame: CGRect) {
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
        super.init(frame: frame)
        backgroundColor = .blue
        imageView.contentMode = .scaleAspectFill
        contentView.addSubview(imageView)
        contentView.clipsToBounds = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
