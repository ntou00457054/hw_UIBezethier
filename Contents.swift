import UIKit

let bgView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
let heartsView = UIView(frame: bgView.frame)
heartsView.backgroundColor = UIColor.red

let path = UIBezierPath()
path.move(to: CGPoint(x: 49.343, y: 82.238))
path.addLine(to: CGPoint(x: 19.469, y: 52.016)) // I to D
path.addQuadCurve(to: CGPoint(x: 16.516, y: 35.863), controlPoint: CGPoint(x: 11.826, y: 46.979)) //D to L, DL2
path.addQuadCurve(to: CGPoint(x: 32.495, y: 23.705), controlPoint: CGPoint(x: 19.469, y: 23.531)) //L to G , LG1
path.addQuadCurve(to: CGPoint(x: 49.169, y: 31.695), controlPoint: CGPoint(x: 42.048, y: 21.447))//G to F,GF1
path.addQuadCurve(to: CGPoint(x: 65.496, y: 23.531), controlPoint: CGPoint(x: 52.469, y: 23.531)) // F to J , FJ1
path.addQuadCurve(to: CGPoint(x: 81.822, y: 35.863), controlPoint: CGPoint(x: 78.869, y: 23.531)) // J to K , JK1
path.addQuadCurve(to: CGPoint(x: 78.869, y: 52.016), controlPoint: CGPoint(x: 86.512, y: 46.979))// K to E ,
path.addLine(to: CGPoint(x: 49.343, y: 82.238))

path.addLine(to: CGPoint(x: 49.343, y: 82.238))

path.close()

let shapeLayer = CAShapeLayer()
shapeLayer.path = path.cgPath

heartsView.layer.mask = shapeLayer
heartsView.transform = CGAffineTransform(rotationAngle: CGFloat.pi) //沒法轉？
heartsView
