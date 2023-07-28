//
//  NetworkService.swift
//  TestProjectCalendar
//
//  Created by Adlet Zhantassov on 28.07.2023.
//
import Foundation

let jsonString = """
{
    "IUPSid": "6020fdd49607af09001d5aeb",
    "Title": "ИНДИВИДУАЛЬНЫЙ УЧЕБНЫЙ ПЛАН СТУДЕНТА №2018-24907",
    "documentUrl": "",
    "academicyearid": "1",
    "academicyear": "2018-2019 учебный год",
    "semesters": [
        {
            "number": "5",
            "disciplines": [
                {
                    "disciplineid": "5d762432cbbc35013c1dff3f",
                    "disciplinename": {
                        "nameKk": "Электрохимия (ағылшын)",
                        "nameRu": "Электрохимия на англ. Яз",
                        "nameEn": "Electrochemistry"
                    },
                    "lesson": [
                        {
                            "lessontypeid": "1",
                            "hours": "30",
                            "realhours": "10"
                        },
                        {
                            "lessontypeid": "2",
                            "hours": "15",
                            "realhours": "15"
                        },
                        {
                            "lessontypeid": "3",
                            "hours": "30",
                            "realhours": "10"
                        }
                        ]
                },
                {
                    "disciplineid": "5d762432cbbc35013c1dff3f",
                    "disciplinename": {
                        "nameKk": "Шет тілі C1",
                        "nameRu": "Иностранный язык C1",
                        "nameEn": "Foreign language C1"
                    },
                    "lesson": [
                        {
                            "lessontypeid": "1",
                            "hours": "30",
                            "realhours": "10"
                        },
                        {
                            "lessontypeid": "2",
                            "hours": "15",
                            "realhours": "15"
                        },
                        {
                            "lessontypeid": "3",
                            "hours": "30",
                            "realhours": "10"
                        }
                        ]
                },
                {
                    "disciplineid": "5d762432cbbc35013c1dff3f",
                    "disciplinename": {
                        "nameKk": "Химиялық анализ негіздері",
                        "nameRu": "Основы химического анализа",
                        "nameEn": "Fundamentals of chemical analysis"
                    },
                    "lesson": [
                        {
                            "lessontypeid": "1",
                            "hours": "30",
                            "realhours": "10"
                        },
                        {
                            "lessontypeid": "2",
                            "hours": "15",
                            "realhours": "15"
                        },
                        {
                            "lessontypeid": "3",
                            "hours": "30",
                            "realhours": "10"
                        }
                        ]
                }
                ]
            
        },
        {
            "number": "7",
            "disciplines": [
                {
                    "disciplineid": "5d762432cbbc35013c1dff3f",
                    "disciplinename": {
                        "nameKk": "Электрохимия (ағылшын)",
                        "nameRu": "Электрохимия на англ. Яз",
                        "nameEn": "Electrochemistry"
                    },
                    "lesson": [
                        {
                            "lessontypeid": "1",
                            "hours": "30",
                            "realhours": "10"
                        },
                        {
                            "lessontypeid": "2",
                            "hours": "15",
                            "realhours": "15"
                        },
                        {
                            "lessontypeid": "3",
                            "hours": "30",
                            "realhours": "10"
                        }
                        ]
                },
                {
                    "disciplineid": "5d762432cbbc35013c1dff3f",
                    "disciplinename": {
                        "nameKk": "Шет тілі C1",
                        "nameRu": "Иностранный язык C1",
                        "nameEn": "Foreign language C1"
                    },
                    "lesson": [
                        {
                            "lessontypeid": "1",
                            "hours": "30",
                            "realhours": "10"
                        },
                        {
                            "lessontypeid": "2",
                            "hours": "15",
                            "realhours": "15"
                        },
                        {
                            "lessontypeid": "3",
                            "hours": "30",
                            "realhours": "10"
                        }
                        ]
                },
                {
                    "disciplineid": "5d762432cbbc35013c1dff3f",
                    "disciplinename": {
                        "nameKk": "Химиялық анализ негіздері",
                        "nameRu": "Основы химического анализа",
                        "nameEn": "Fundamentals of chemical analysis"
                    },
                    "lesson": [
                        {
                            "lessontypeid": "1",
                            "hours": "30",
                            "realhours": "10"
                        },
                        {
                            "lessontypeid": "2",
                            "hours": "15",
                            "realhours": "15"
                        },
                        {
                            "lessontypeid": "3",
                            "hours": "30",
                            "realhours": "10"
                        }
                        ]
                }
                ]
            
        }
        ]
}

"""

class NetworkService {
    
    static func getData(completion: (Student) -> ()) {
        let data = Data(jsonString.utf8)
        do {
            let result = try JSONDecoder().decode(Student.self, from: data)
            completion(result)
        } catch {
            print(error)
        }
    }
}
