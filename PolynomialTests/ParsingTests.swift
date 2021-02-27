//
//  ParsingTests.swift
//  PolynomialTests
//
//  Created by Mike Cargal on 2/20/21.
//

@testable import Polynomial
import XCTest

class ParsingTests: XCTestCase {
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTermParse() throws {
        XCTAssertEqual(PolyParse.parsePoly("2x^3"),
                       .success(SingleTermPolynomialExpr("x", coefficient: 2, degree: 3)))
    }

    func testTwoTermPolynomial() throws {
        let t1 = SingleTermPolynomialExpr("x", coefficient: 2, degree: 2)
        let t2 = SingleTermPolynomialExpr(nil, coefficient: 7, degree: 0)
        let poly = PolyParse.parsePoly("2x^2+7")
        XCTAssertEqual(poly, .success(AddSubPolynomialExpr(t1, .add, t2)))
        XCTAssertNotEqual(poly, .success(AddSubPolynomialExpr(t2, .add, t1)))
    }

    func testTwoTermSameDegreePolynomial() throws {
        let poly = PolyParse.parsePoly("2x^2+4x^2")
        XCTAssertNotEqual(poly, .success(SingleTermPolynomialExpr("x", coefficient: 6, degree: 2)))
    }

    func testBadTerm() throws {
        XCTAssertEqual(PolyParse.parsePoly("3x3"),
                       .failure(.invalidInput("col:2 extraneous input \'3\' expecting <EOF>")))
    }
    
    func testThreeTermPolynomial() throws {
        let t1 = SingleTermPolynomialExpr("x", coefficient: 4, degree: 3)
        let t2 = SingleTermPolynomialExpr("x", coefficient: 2, degree: 2)
        let t3 = SingleTermPolynomialExpr(nil, coefficient: 7, degree: 0)
        let expected = AddSubPolynomialExpr(AddSubPolynomialExpr(t1,.add,t2),.add,t3)
        let poly = PolyParse.parsePoly("4x^3+2x^2+7")
        XCTAssertEqual(poly, .success(expected))
        XCTAssertNotEqual(poly, .success(AddSubPolynomialExpr(t2, .add, t1)))
    }
    
    func testFourTermPolynomial() throws {
        let t1 = SingleTermPolynomialExpr("x", coefficient: 9, degree: 4)
        let t2 = SingleTermPolynomialExpr("x", coefficient: 4, degree: 3)
        let t3 = SingleTermPolynomialExpr("x", coefficient: 2, degree: 2)
        let t4 = SingleTermPolynomialExpr(nil, coefficient: 7, degree: 0)
        let expected = AddSubPolynomialExpr(AddSubPolynomialExpr(AddSubPolynomialExpr(t1,.add,t2),.add,t3),.add,t4)
        let poly = PolyParse.parsePoly("9x^4+4x^3+2x^2+7")
        XCTAssertEqual(poly, .success(expected))
        XCTAssertNotEqual(poly, .success(AddSubPolynomialExpr(t2, .add, t1)))
    }
    
    func testFourTermPolynomialWithSub() throws {
        let t1 = SingleTermPolynomialExpr("x", coefficient: 9, degree: 4)
        let t2 = SingleTermPolynomialExpr("x", coefficient: 4, degree: 3)
        let t3 = SingleTermPolynomialExpr("x", coefficient: 2, degree: 2)
        let t4 = SingleTermPolynomialExpr(nil, coefficient: 7, degree: 0)
        let expected = AddSubPolynomialExpr(AddSubPolynomialExpr(AddSubPolynomialExpr(t1,.add,t2),.subtract,t3),.add,t4)
        let poly = PolyParse.parsePoly("9x^4+4x^3-2x^2+7")
        XCTAssertEqual(poly, .success(expected))
        XCTAssertNotEqual(poly, .success(AddSubPolynomialExpr(t2, .add, t1)))
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
