//
//  main.swift
//  Homework6
//
//  Created by Trang Huyền on 5/30/21.
//

import Foundation

//MARK: Chèn phần tử có giá trị X vào phía sau phần tử có giá trị lớn nhất trong mảng.

func chenPt1(_ x: Int, _ arr : [Int]) -> [Int] {
    var arr_cp = arr
    var max_arr = arr[0]
    var index_max = 0
    
    for i in 1..<arr.count {
        if max_arr < arr[i] {
            max_arr = arr[i]
            index_max = i
        }
    }
    arr_cp.insert(x, at: index_max + 1)
    return arr_cp
}
print(chenPt1(4, [1, 2, 5, 1]))

// 2. Chèn phần tử có giá trị X vào mảng sao cho mảng vẫn có thứ tự tăng dần.

func chenPt2(_ x: Int, _ arr : [Int]) -> [Int] {
    var arr_cp = arr
//    if x < arr[0] {
//        arr_cp.insert(x, at: 0)
//    }
    for i in 0..<arr.count {
        if x <= arr[0] {
            arr_cp.insert(x, at: 0)
        }
        else if x >= arr[arr.count - 1]{
            arr_cp.insert(x, at: arr_cp.count)
            break
        }
        else {
            if arr[i] <= x && arr[i+1] > x {
                arr_cp.insert(x, at: i+1)
            }
        }
    }
    
    return arr_cp
}
print(chenPt2(4, [3, 3, 3, 4]))

// 3. Cho số nguyên n. Kiểm tra n có phải là số nguyên tố hay không?

func isSNT(_ x: Int) -> Bool {
    if x == 1 || x == 0 {
        return false
    }
    for i in 2..<x {
        if x % i == 0 {
            return false
        }
    }
    return true
}

print("Nhap so can kiem tra tinh nguyen to: ")
let a = Int(readLine()!)!
isSNT(a) ? print("\(a) la so nguyen to") : print("\(a) khong phai so nguyen to")


//4. Đếm số nguyên tố trong đoạn [a, b].

func countSNT(_ start: Int, _ end: Int) -> Int {
    var count = 0
    for i in start...end {
        if isSNT(i) {
            count += 1
        }
    }
    return count
}

print("------ Dem so nguyen to -------")
print("Nhap so bat dau: ")
let start = Int(readLine()!)!
print("Nhap so ket thuc: ")
let end = Int(readLine()!)!
print("So cac so nguyen to trong doan \(start) den \(end) la: \(countSNT(start, end))")


