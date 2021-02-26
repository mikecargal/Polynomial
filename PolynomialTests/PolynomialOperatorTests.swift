//
//  PolynomialTests.swift
//  PolynomialTests
//
//  Created by Mike Cargal on 2/18/21.
//

@testable import Polynomial
import XCTest

class PolynomialOperatorTests: XCTestCase {
    let px3 = PolyParse.poly("x^3")
    let p2x3 = PolyParse.poly("2x^3")
    let p3x3 = SingleTermPolynomialExpr("x", coefficient: 3, degree: 3)
    let p5x3 = SingleTermPolynomialExpr("x", coefficient: 5, degree: 3)
    let p7x3 = SingleTermPolynomialExpr("x", coefficient: 7, degree: 3)

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPolynomialTermAddition() throws {
      //  let res = PolyParse.poly("x^3") + PolyParse.poly("2x^3")
        XCTAssertEqual(p2x3 + p5x3, p7x3)
    }

    func testThreeTermPolynomial() throws {
        let t1 = SingleTermPolynomialExpr("x", coefficient: 4, degree: 3)
        let t2 = SingleTermPolynomialExpr("x", coefficient: 2, degree: 2)
        let t3 = SingleTermPolynomialExpr(nil, coefficient: 7, degree: 0)
        let as1 = AddSubPolynomialExpr(AddSubPolynomialExpr(t1,.add,t2),.add,t3)
        let as2 = AddSubPolynomialExpr(t1,.add,(AddSubPolynomialExpr(t2,.add,t3)))
        XCTAssertEqual(as1, as2)
    }
    
     func testPolynomialTermSubtraction() throws {
        // TODO:
  //      XCTAssertEqual(p5x3 - p2x3, p3x3)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
}
