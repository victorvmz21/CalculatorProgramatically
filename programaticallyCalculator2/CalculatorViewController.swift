//
//  CalculatorViewController.swift
//  CalculatorProgramatically
//
//  Created by Victor Monteiro on 7/7/20.
//  Copyright © 2020 Atomuz. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    //MARK: - IBOutlet
    
    //MARK: - Variables
    var safeArea: UILayoutGuide {
        return self.view.safeAreaLayoutGuide
    }
    
    //MARK: - View Life Cycle
    override func loadView() {
        super.loadView()
        addAllViews()
        mainStackViewConstrain()
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        addAllViews()
//        mainStackViewConstrain()
        self.view.backgroundColor = .red
    }
    
    //MARK: UIElements Creation
    
    ///StackViews
    let mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    let firstLevelStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    let secondLevelStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    let thirdLevelStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    let fourthLevelStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    let fifthLevelStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    ///End Stack Views
    
    //Buttons
    ///Buttons top Buttons
    let topButtonOne: UIButton = {
        let button = UIButton()
        button.setTitle("AC", for: .normal)
        return button
    }()
    
    let topButtonTwo: UIButton = {
        let button = UIButton()
        button.setTitle("+/-", for: .normal)
        return button
    }()
    
    let topButtonThree: UIButton = {
        let button = UIButton()
        button.setTitle("%", for: .normal)
        return button
    }()
    
    ///Operations Button
    let divideButton: UIButton = {
        let button = UIButton()
        button.setTitle("/", for: .normal)
        return button
    }()
    
    let multiplyButton: UIButton = {
        let button = UIButton()
        button.setTitle("X", for: .normal)
        return button
    }()
    
    let subtractButton: UIButton = {
        let button = UIButton()
        button.setTitle("-", for: .normal)
        return button
    }()
    
    let addButton: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        return button
    }()
    
    let equalButton: UIButton = {
        let button = UIButton()
        button.setTitle("=", for: .normal)
        return button
    }()
    
    ///Numbers button
    let numberOne: UIButton = {
        let button = UIButton()
        button.setTitle("1", for: .normal)
        return button
    }()
    
    let numberTwo: UIButton = {
        let button = UIButton()
        button.setTitle("2", for: .normal)
        return button
    }()
    
    let numberThree: UIButton = {
        let button = UIButton()
        button.setTitle("3", for: .normal)
        return button
    }()
    
    let numberFour: UIButton = {
        let button = UIButton()
        button.setTitle("4", for: .normal)
        return button
    }()
    
    let numberFive: UIButton = {
        let button = UIButton()
        button.setTitle("5", for: .normal)
        return button
    }()
    
    let numberSix: UIButton = {
        let button = UIButton()
        button.setTitle("6", for: .normal)
        return button
    }()
    
    let numberSeven: UIButton = {
        let button = UIButton()
        button.setTitle("7", for: .normal)
        return button
    }()
    
    let numberEight: UIButton = {
        let button = UIButton()
        button.setTitle("8", for: .normal)
        return button
    }()
    
    let numberNine: UIButton = {
        let button = UIButton()
        button.setTitle("9", for: .normal)
        return button
    }()
    
    let numberZero: UIButton = {
        let button = UIButton()
        button.setTitle("0", for: .normal)
        return button
    }()
    
    //UIElements Constraints
    ///StackView Constraints
    func mainStackViewConstrain() {
        mainStackView.addArrangedSubview(firstLevelStackView)
        mainStackView.addArrangedSubview(secondLevelStackView)
        mainStackView.addArrangedSubview(thirdLevelStackView)
        mainStackView.addArrangedSubview(fourthLevelStackView)
        mainStackView.addArrangedSubview(fifthLevelStackView)
    }
    
    func firstLevelViewConstrain() {
        firstLevelStackView.addArrangedSubview(topButtonOne)
        firstLevelStackView.addArrangedSubview(topButtonTwo)
        firstLevelStackView.addArrangedSubview(topButtonThree)
    }
    
    func secondLevelViewConstrain() {
        secondLevelStackView.addArrangedSubview(numberSeven)
        secondLevelStackView.addArrangedSubview(numberEight)
        secondLevelStackView.addArrangedSubview(numberNine)
    }
    
    func thirdLevelViewConstrain() {
        thirdLevelStackView.addArrangedSubview(numberFour)
        thirdLevelStackView.addArrangedSubview(numberFive)
        thirdLevelStackView.addArrangedSubview(numberSix)
    }
    
    func fourthLevelViewConstrain() {
        
    }
    
    //Adding Views to Main View
    func addAllViews() {
        self.view.addSubview(mainStackView)
        self.view.addSubview(firstLevelStackView)
        self.view.addSubview(secondLevelStackView)
        self.view.addSubview(thirdLevelStackView)
        self.view.addSubview(fourthLevelStackView)
        self.view.addSubview(fifthLevelStackView)
    }
    
    
    
}

