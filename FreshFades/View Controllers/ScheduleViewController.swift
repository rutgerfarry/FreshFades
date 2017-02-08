import UIKit

class ScheduleViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!

    let haircutStyles = ["Fresh Fade",
                         "Line-up",
                         "Custom"
    ]
    let haircutPrices = [23,
                         15,
                         30]

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(HaircutCollectionViewCell.classForCoder(),
                                forCellWithReuseIdentifier: "HaircutCollectionViewCell")

        let collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout.itemSize = CGSize(width: view.frame.width - 40,
                                               height: (view.frame.height - 150) / 3)
        collectionViewLayout.minimumLineSpacing = 20

        collectionView.setCollectionViewLayout(collectionViewLayout, animated: false)
    }

}

extension ScheduleViewController: UICollectionViewDataSource, UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HaircutCollectionViewCell", for: indexPath)
        if let cell = cell as? HaircutCollectionViewCell {
            cell.image = #imageLiteral(resourceName: "yeezy")
            cell.leftTextLabel.text = haircutStyles[indexPath.row]
            cell.rightTextLabel.text = "$\(haircutPrices[indexPath.row])"
        }
        return cell
    }

}
