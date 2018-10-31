func toastView(message : String)
{
   // var str:CGFloat = heightForLabel(text: message, font: UIFont(name: "System", size: 10.0)!, width: 300)
    let label:UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: CGFloat.greatestFiniteMagnitude))
    label.numberOfLines = 0
    label.lineBreakMode = NSLineBreakMode.byWordWrapping
    label.font = UIFont(name: "System", size: 12.0)
    label.text = message as String
    
    label.sizeToFit()
    
   let toastLabel = UILabel(frame: CGRect(x: UIApplication.shared.keyWindow!.frame.size.width/2 - 150, y: 80, width:300,  height : (label.frame.height + 10) ))

    toastLabel.backgroundColor = UIColor.black.withAlphaComponent(1.0)
    toastLabel.textColor = UIColor.white
    toastLabel.textAlignment = NSTextAlignment.center;
    //appDelegate.window!.addSubview(toastLabel)
    UIApplication.shared.keyWindow?.addSubview(toastLabel)
    toastLabel.text = message
    toastLabel.numberOfLines = 0
    
    toastLabel.alpha = 0.8
    toastLabel.font = UIFont(name: "System", size: 10.0)
    toastLabel.layer.cornerRadius = 10;
    toastLabel.clipsToBounds  =  true
    UIView.animate(withDuration: 2.5, delay: 1, options: UIViewAnimationOptions.curveEaseOut, animations: {
        toastLabel.alpha = 0.0
    })
}
