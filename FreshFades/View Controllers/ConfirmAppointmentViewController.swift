import UIKit

class ConfirmAppointmentViewController: UIViewController {

    @IBOutlet weak var dayOfMonthLabel: UILabel!
    @IBOutlet weak var monthNameLabel: UILabel!
    @IBOutlet weak var haircutDetailLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!

    let date: Date

    init(date: Date) {
        self.date = date
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func confirmAppointment() {
        let message = "Your appointment with Chulo the Barber has been confirmed for \(date)"
        let alertController = UIAlertController(title: "Appointment confirmed",
                                                message: message,
                                                preferredStyle: .alert)

        let OKAction = UIAlertAction(title: "Fugg yeah", style: .default)
        alertController.addAction(OKAction)

        present(alertController, animated: true)
    }

    @IBAction func payWithApplePayButtonPressed(_ sender: Any) {
        confirmAppointment()
    }

    @IBAction func payAtAppointmentButtonPressed(_ sender: Any) {
        confirmAppointment()
    }

}
