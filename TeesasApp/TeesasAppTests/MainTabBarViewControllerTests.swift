//
//  MainTabBarViewControllerTests.swift
//  TeesasAppTests
//
//  Created by Tes on 25/03/2022.
//

import XCTest
@testable import TeesasApp

class MainTabBarViewControllerTests: XCTestCase {
    
    var sut: MainTabBarViewController!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = MainTabBarViewController()
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func testIfTabBarHasWhiteBackgroundColor(){
        // given
        let guess = sut.tabBar.backgroundColor
        
        // when
        sut.loadViewIfNeeded()

        // then
        XCTAssertEqual(guess, .white)
    }
    
    func testIfTabBarHasTabConfiguration(){
        // given
        let guess: () = sut.configureTabs()
        
        // when
        sut.loadViewIfNeeded()
        
        // then
        XCTAssertNotNil(guess)
        
    }
    
    func testIfMainTabBarViewControllerHasFourViewControllersInIt(){
        // given
        let guess = sut.viewControllers?.count

        // when
        sut.loadViewIfNeeded()

        // then
        XCTAssertEqual(guess, 4)
    }

}
