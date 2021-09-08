extension UIView {
    func applyGradient(colours: [UIColor], horizontal:Bool = false) -> Void {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.startPoint = horizontal ?  CGPoint(x: 0.0, y: 0.5) : CGPoint(x: 0.5, y: 0.0)
        gradient.endPoint = horizontal ? CGPoint(x: 1.0, y: 0.5) : CGPoint(x: 0.5, y: 1.0)
        self.layer.insertSublayer(gradient, at: 0)
    }
}
