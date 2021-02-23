//
//  PolynomialExpr.swift
//  Polynomial
//
//  Created by Mike Cargal on 2/19/21.
//

import Foundation
class Polynomial: Equatable, CustomDebugStringConvertible {
    lazy var debugDescription = {
        self.description()
    }()

    func description() -> String {
        "Just some Polynomial 🤷🏼‍♂️"
    }

    func isEqual(_ other: Polynomial) -> Bool {
        fatalError("\(#function)Must be overridden")
    }

    func maxDegree() -> Int {
        fatalError("\(#function)Must be overridden")
    }

    func simplified() -> Polynomial {
        fatalError("\(#function)Must be overridden")
    }

//    static func +(_ lhs: Polynomial, rhs: Polynomial) -> Polynomial
//    static func -(_ lhs: Polynomial, rhs: Polynomial) -> Polynomial
//    static func *(_ lhs: Polynomial, rhs: Polynomial) -> Polynomial
//    static func /(_ lhs: Polynomial, rhs: Polynomial) -> Polynomial
//    static prefix func -(_ polynomial: Polynomial) -> Polynomial
}

func == (lhs: Polynomial, rhs: Polynomial) -> Bool {
    return lhs.isEqual(rhs)
}

// struct PolynomialExpr : Polynomial {
//    private var terms: [PolynomialTerm]!
//
//    init(_ term: PolynomialTerm) {
//        terms = [term]
//    }
//
//    init(_ terms: [PolynomialTerm]) {
//        self.terms = terms
//    }
//
//    func simplified() -> Polynomial {
//        let sortedTerms = terms.sorted { $0.degree < $1.degree }
//        var simplifiedTerms: [PolynomialTerm] = []
//
//        for term in sortedTerms {
//            if let last = simplifiedTerms.last,
//               last.degree == term.degree
//            {
//                _ = simplifiedTerms.popLast()
//                let newTerm = last + term
//                simplifiedTerms.append(newTerm)
//            } else {
//                simplifiedTerms.append(term)
//            }
//        }
//
//        return PolynomialExpr(simplifiedTerms)
//    }
//
//    static func + (_ lhs: PolynomialExpr, _ rhs: PolynomialTerm) -> PolynomialExpr {
//        return PolynomialExpr(lhs.terms + [rhs])
//    }
//
//    static func + (_ lhs: PolynomialExpr, _ rhs: PolynomialExpr) -> PolynomialExpr {
//        return PolynomialExpr(lhs.terms + rhs.terms)
//    }
//
//    static func - (_ lhs: PolynomialExpr, _ rhs: PolynomialTerm) -> PolynomialExpr {
//        let newRHS = PolynomialTerm(rhs.v,
//                                    coefficient: 0 - rhs.coefficient,
//                                    degree: rhs.degree)
//        return lhs + newRHS
//    }
//
//    static func * (_ lhs: PolynomialExpr, _ rhs: PolynomialTerm) -> PolynomialExpr {
//        PolynomialExpr(lhs.terms.map { $0 * rhs })
//    }
//
//    static func * (_ lhs: PolynomialTerm, _ rhs: PolynomialExpr) -> PolynomialExpr {
//        return rhs * lhs
//    }
//
//    static func * (_ lhs: PolynomialExpr, rhs: PolynomialExpr) -> PolynomialExpr {
//        PolynomialExpr(lhs.terms.flatMap { leftTerm in
//            rhs.terms.map { rightTerm in
//                leftTerm * rightTerm
//            }
//        })
//    }
// }

class SingleTermPolynomialExpr: Polynomial {
    let coefficient: Double
    let v: String?
    let degree: Int

    init(_ v: String?, coefficient: Double, degree: Int) {
        self.v = v
        self.coefficient = coefficient
        self.degree = degree
    }

    override func description() -> String {
        "\(coefficient)\(v ?? "")^\(degree)"
    }

    override func isEqual(_ other: Polynomial) -> Bool {
        if let other = other as? SingleTermPolynomialExpr {
            return v == other.v &&
                coefficient == other.coefficient &&
                degree == other.degree
        }
        return false
    }

    override func maxDegree() -> Int {
        return degree
    }

    override func simplified() -> Polynomial {
        return self
    }

//    static func * (lhs: SingleTermPolynomialExpr, rhs: SingleTermPolynomialExpr) -> Polynomial {
//        return lhs // TODO:
//    }
//
//    static func / (lhs: SingleTermPolynomialExpr, rhs: SingleTermPolynomialExpr) -> Polynomial {
//        return lhs // TODO:
//    }
//
//    static func * (lhs: SingleTermPolynomialExpr, rhs: Polynomial) -> Polynomial {
//        return lhs // TODO:
//    }
//
//    static func / (lhs: SingleTermPolynomialExpr, rhs: Polynomial) -> Polynomial {
//        return lhs // TODO:
//    }
//
//    static func + (lhs: SingleTermPolynomialExpr, rhs: Polynomial) -> Polynomial {
//        return lhs // TODO:
//    }
//
//    static func * (lhs: Polynomial, rhs: SingleTermPolynomialExpr) -> Polynomial {
//        return lhs // TODO:
//    }
//
//    static func / (lhs: Polynomial, rhs: SingleTermPolynomialExpr) -> Polynomial {
//        return lhs // TODO:
//    }
//
//    static func + (lhs: Polynomial, rhs: SingleTermPolynomialExpr) -> Polynomial {
//        return lhs // TODO:
//    }
}

func + (lhs: SingleTermPolynomialExpr, rhs: SingleTermPolynomialExpr) -> Polynomial {
    if lhs.degree == rhs.degree,
       lhs.v == rhs.v
    {
        return SingleTermPolynomialExpr(lhs.v,
                                        coefficient: lhs.coefficient + rhs.coefficient,
                                        degree: lhs.degree)
    } else {
        return AddPolynomialExpr(lhs, rhs)
    }
}

func * (lhs: SingleTermPolynomialExpr, rhs: SingleTermPolynomialExpr) -> Polynomial {
    if lhs.degree == rhs.degree,
       lhs.v == rhs.v
    {
        return SingleTermPolynomialExpr(lhs.v,
                                        coefficient: lhs.coefficient * rhs.coefficient,
                                        degree: lhs.degree + rhs.degree)
    } else {
        return AddPolynomialExpr(lhs, rhs)
    }
}

func + (_ lhs: Polynomial, _ rhs: Polynomial) -> Polynomial {
    if let lhs = lhs as? SingleTermPolynomialExpr,
       let rhs = rhs as? SingleTermPolynomialExpr
    {
        return lhs + rhs
    }
    fatalError("\(#function) addition of \(lhs.self) and \(rhs.self) not yet implemented")
}

let negationPolynomial = SingleTermPolynomialExpr(nil, coefficient: -1, degree: 0)

class AddPolynomialExpr: Polynomial {
    let lhs: Polynomial
    let rhs: Polynomial

    init(_ lhs: Polynomial, _ rhs: Polynomial, subtraction: Bool = false) {
        let (l, r) = lhs.maxDegree() > rhs.maxDegree()
            ? (lhs, rhs)
            : (rhs, lhs)
        self.lhs = l
//        if subtraction {
//            self.rhs = rhs * negationPolynomial
//        } else {
        self.rhs = r
//        }
    }

    override func description() -> String {
        "\(lhs.description()) + \(rhs.description())"
    }

    override func maxDegree() -> Int {
        return lhs.maxDegree()
    }

    override func isEqual(_ other: Polynomial) -> Bool {
        if let other = other as? AddPolynomialExpr {
            return (lhs == other.lhs && rhs == other.rhs)
        }
        return false
    }

    override func simplified() -> Polynomial {
        return self // TODO:
        //  return lhs + rhs
    }
}

class MultPolynomialExpr: Polynomial {
    override func simplified() -> Polynomial {
        // TODO:
        return self
    }
}
