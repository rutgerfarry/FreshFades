import UIKit

class ScheduleViewController: UIViewController {

    func appointmentDateAndTimeChosen(date: Date) {
        let confirmAppointmentViewController = ConfirmAppointmentViewController(date: date)
        navigationController?.pushViewController(confirmAppointmentViewController, animated: true)
    }

    @IBAction func makeAppointmentInAnHourButtonPressed(_ sender: Any) {
        let date = Date(timeIntervalSinceNow: 60*60)
        appointmentDateAndTimeChosen(date: date)
    }

}
