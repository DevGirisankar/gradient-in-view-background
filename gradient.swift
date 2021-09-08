import UIKit

@IBDesignable
class GradientView: UIView {

    override class var layerClass: AnyClass { return CAGradientLayer.self }

    private var gradientLayer: CAGradientLayer { return layer as! CAGradientLayer }

    @IBInspectable var color1: UIColor = .white { didSet { updateColors() } }
    @IBInspectable var color2: UIColor = .blue  { didSet { updateColors() } }

    @IBInspectable var startX: CGFloat = 0.0 {
        didSet {
            configureGradient()
        }
    }

    @IBInspectable var startY: CGFloat = 0.0 {
        didSet {
            configureGradient()
        }
    }

    @IBInspectable var endX: CGFloat = 1.0 {
        didSet {
            configureGradient()
        }
    }

    @IBInspectable var endY: CGFloat = 1.0 {
        didSet {
            configureGradient()
        }
    }

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        configureGradient()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureGradient()
    }

    private func configureGradient() {
        gradientLayer.startPoint = CGPoint(x: startX, y: startY)
        gradientLayer.endPoint = CGPoint(x: endX, y: endY)
        updateColors()
    }

    private func updateColors() {
        gradientLayer.colors = [color1.cgColor, color2.cgColor]
    }

}
