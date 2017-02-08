import UIKit

class HaircutCollectionViewCell: UICollectionViewCell {

    var image: UIImage? {
        didSet {
            imageView.image = image
        }
    }
    let leftTextLabel: UILabel
    let rightTextLabel: UILabel

    private let imageView: UIImageView

    override init(frame: CGRect) {
        imageView = UIImageView(frame: CGRect(x: 0,
                                              y: 0,
                                              width: frame.width,
                                              height: frame.height))
        leftTextLabel = UILabel(frame: CGRect(x: 10,
                                              y: frame.height - 30,
                                              width: frame.width - 20,
                                              height: 20))
        rightTextLabel = UILabel(frame: CGRect(x: 10,
                                               y: frame.height - 30,
                                               width: frame.width - 20,
                                               height: 20))

        super.init(frame: frame)
        contentView.addSubview(imageView)
        contentView.addSubview(leftTextLabel)
        contentView.addSubview(rightTextLabel)
        contentView.clipsToBounds = true
        setupImageView()
        setupTextLabel()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupImageView() {
        imageView.contentMode = .scaleAspectFill

        // Add gradient behind text
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = imageView.frame
        gradientLayer.colors = [UIColor.clear.cgColor,
                                UIColor.black.cgColor]
        imageView.layer.addSublayer(gradientLayer)
    }

    func setupTextLabel() {
        leftTextLabel.textColor = .white
        rightTextLabel.textColor = .white
        leftTextLabel.textAlignment = .left
        rightTextLabel.textAlignment = .right
    }

}
