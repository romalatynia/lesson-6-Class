//
//  ViewController.swift
//  Class
//
//  Created by Harbros47 on 15.12.20.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let worker1 = Worker(name: "Антон", lastName: "Лукашевич")
        let worker2 = Worker(name: "Тима", lastName: "Дулкарнаев")
        let worker3 = Worker(name: "Лёша", lastName: "Кныш")
        let worker4 = Worker(name: "Вадим", lastName: "Кабачук")
        let worker5 = Worker(name: "Рома", lastName: "Латыня")
        let workers = [
            worker1,
            worker2,
            worker3,
            worker4,
            worker5
        ]
        
        printPresent(workers: workers)
        printNoPresent(workers: workers)
        let newWorker = newWorkers(newWorker: workers)
        printOldAndNewWorkers(workers: workers, newWorker: newWorker)
    }
    
    private func present(workers: [Worker]) -> [Worker] {
        workers
            .filter { $0.inPlace == true }
            .sorted { $0.lastName < $1.lastName }
    }
    
    private func printPresent(workers: [Worker]) {
        workers.forEach {print($0.lastName)}
    }
    
    private func noPresent(workers: [Worker]) -> [Worker] {
        workers
            .filter { !$0.inPlace }
            .sorted { $0.name < $1.name }
    }
    
    private func printNoPresent(workers: [Worker]) {
        print("====")
        workers.forEach {print($0.name)}
    }
    
    private func printWork(workers: [Worker]) {
        for work in workers {
            print("\(work.name) \(work.lastName) \(work.presenceOfAnEmployee())")
            guard !work.inPlace else {continue}
            work.inPlace = true
            print("Работник \(work.name) \(work.lastName) пришёл и приступил к работе")
        }
    }
    
    private func newWorkers( newWorker: [Worker]) -> [Worker] {
        let names = ["Катя", "Дана", "Алеся", "Катя", "Аня"]
        let lastNames = ["Валевич", "Горская", "Данилюк", "Гайдучик", "Полещук"]
        var newWorkers = [Worker]()
        for new in newWorker {
            new.name = names.randomElement() ?? "имя отсутствует"
            new.lastName = lastNames.randomElement() ?? "фамилия отсутсвует"
            newWorkers.append(new)
        }
        return newWorker
    }
    
    private func printOldAndNewWorkers(workers: [Worker], newWorker: [Worker]) {
        workers.forEach {print("Старый работник \($0.name) \($0.lastName)")}
        
        newWorker.forEach {print("Новый работник \($0.name) \($0.lastName)")}
    }
}
