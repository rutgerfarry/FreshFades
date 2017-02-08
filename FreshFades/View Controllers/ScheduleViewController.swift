import UIKit

class ScheduleViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
        title = "Schedule"
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func appointmentDateAndTimeChosen(date: Date) {
        let confirmAppointmentViewController = ConfirmAppointmentViewController(date: date)
        navigationController?.pushViewController(confirmAppointmentViewController, animated: true)
    }

    @IBAction func makeAppointmentInAnHourButtonPressed(_ sender: Any) {
        let date = Date(timeIntervalSinceNow: 60*60)
        appointmentDateAndTimeChosen(date: date)
    }

}
