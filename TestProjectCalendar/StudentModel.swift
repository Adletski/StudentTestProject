//
//  StudentModel.swift
//  TestProjectCalendar
//
//  Created by Adlet Zhantassov on 28.07.2023.
//

import Foundation

// MARK: - Student
struct Student: Codable {
    let iupSid: String
    let title: String
    let documentURL: String
    let academicyearid: String
    let academicyear: String
    let semesters: [Semester]

    enum CodingKeys: String, CodingKey {
        case iupSid = "IUPSid"
        case title = "Title"
        case documentURL = "documentUrl"
        case academicyearid, academicyear, semesters
    }
}

// MARK: - Semester
struct Semester: Codable {
    let number: String
    let disciplines: [Discipline]
}

// MARK: - Discipline
struct Discipline: Codable {
    let disciplineid: String
    let disciplinename: Disciplinename
    let lesson: [Lesson]
}

// MARK: - Disciplinename
struct Disciplinename: Codable {
    let nameKk, nameRu, nameEn: String
}

// MARK: - Lesson
struct Lesson: Codable {
    let lessontypeid, hours, realhours: String
}
