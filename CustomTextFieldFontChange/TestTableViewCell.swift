import UIKit

class TestTableViewCell: UITableViewCell, UITextFieldDelegate {
    
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textFieldWidth: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        textField.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 1) { [self] in
            textFieldWidth.constant = 300
            self.layoutIfNeeded()
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 1) { [self] in
            textFieldWidth.constant = 100
            self.layoutIfNeeded()
        }
    }
}
