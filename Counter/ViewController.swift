import UIKit

class ViewController: UIViewController {
    
    private var count: Int = 0

    @IBOutlet private weak var labelCount: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        count = UserDefaults.standard.integer(forKey: "countValue")
        counterUpdate()
    }
    
    private func counterUpdate(){
        labelCount.text = "Значение счетчика: \(count)"
    }

    @IBAction private func buttonCounterFunc(_ sender: Any) {
        count += 1
        counterUpdate()
        saveResult()
    }
    
    @IBAction private func buttonInfo(_ sender: Any) {
        print(count)
    }
    
    func saveResult(){
        UserDefaults.standard.set(count, forKey: "countValue")
        
        print("Value \(count) is saved")
    }
}
