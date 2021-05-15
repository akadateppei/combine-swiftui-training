//
//  Mocks.swift
//  SomeSNS
//
//  Created by AKADA TEPPEI on 2021/05/15.
//

import Foundation

struct Mocks {
    var certificationsData: Data {
        certificationsString.data(using: .utf8)!
    }

    var notesData: Data {
        notesString.data(using: .utf8)!
    }

    let certificationsString = """
        [
         {
           "id": 1,
           "name": "衛生工学衛生管理者試験"
         },
         {
           "id": 2,
           "name": "移動式クレーン運転士"
         },
         {
           "id": 3,
           "name": "園芸装飾技能士"
         },
         {
           "id": 4,
           "name": "アプリケーションエンジニア試験"
         }
        ]
    """

    let notesString = """
        [
            {
              "id": "a",
              "title": "タイトルだよ",
              "description": "ここにはちょっとした説明というか概要を書くよ",
              "content": "これがノートの実際の内容だよ",
              "createuser": "potan2005",
              "comments": [
                    {
                        "id": "xyz",
                        "user": "potan2005",
                        "content": "テストコメント",
                    }
                ]
            },
            {
              "id": "b",
              "title": "2つ目のノート",
              "description": "概要概要概要",
              "content": "ほげげーーー",
              "createuser": "hentai_ojisan",
              "comments": [
                    {
                        "id": "xyz",
                        "user": "potan2005",
                        "content": "テストコメント",
                    }
                ]
            },
            {
              "id": "c",
              "title": "もうええて",
              "description": "もうええねんて",
              "content": "もうええやろ！！！！",
              "createuser": "mouee",
              "comments": [
                    {
                        "id": "xyz",
                        "user": "potan2005",
                        "content": "テストコメント",
                    }
                ]
            }
       ]
    """
}
