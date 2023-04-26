//
//  Bai1.swift
//  Day5
//
//  Created by Nguyễn Tuấn on 25/04/2023.
//

import Foundation

struct SinhVien{
    let MaSV:String
    var name:String
    var math:Float
    var physical:Float
    var chemical:Float
    
    init(MaSV: String, name: String, math: Float, physical: Float, chemical: Float) {
        self.MaSV = MaSV
        self.name = name
        self.math = math
        self.physical = physical
        self.chemical = chemical
    }
    
    var dssv=[SinhVien]()
    mutating func Nhap()
    {
        var MaSV:String=""
        while(MaSV == "")
        {
            print("Nhập mã sinh viên : ")
            MaSV=readLine() ?? ""
        }
        
        var name:String=""
        while(name == "")
        {
            print("Nhập tên sinh viên : ")
            name=readLine() ?? ""
        }
        
        var math:Float = -1.0
        while(math > 10 || math < 0)
        {
            print("Nhập điểm toán : ")
            math=Float(readLine()!) ?? 0.0
        }
        
        var physical:Float = -1.0
        while(physical > 10 || physical < 0)
        {
            print("Nhập điểm lý : ")
            physical=Float(readLine()!) ?? 0.0
        }
        
        var chemical:Float = -1.0
        while(chemical > 10 || chemical < 0)
        {
            print("Nhập điểm hoá : ")
            chemical=Float(readLine()!) ?? 0.0
        }
        
        let sv = SinhVien(MaSV: MaSV, name: name, math: math, physical: physical, chemical: chemical)
        dssv.append(sv)
    }
    
    func DiemTB()->Float{
        return (math+physical+chemical)/3
    }
    
    mutating func Show()
    {
        for i in 0..<dssv.count
        {
            for j in i..<dssv.count
            {
                if(dssv[i].DiemTB()<dssv[j].DiemTB())
                {
                    dssv.swapAt(i, j)
                }
            }
        }
        
        
        for i in dssv
        {
            print("\(i.MaSV)  \(i.name)     \(i.math)     \(i.physical)     \(i.chemical)     \(i.DiemTB())")
        }
    }
    
    func Update()
    {
        var MaSV:String=""
        while(MaSV == "")
        {
            print("Nhập mã sinh viên : ")
            MaSV=readLine() ?? ""
        }
        
        print("Nhập thông tin cập nhật : ")
        var name:String=""
        while(name == "")
        {
            print("Nhập tên sinh viên : ")
            name=readLine() ?? ""
        }
        
        var math:Float = -1.0
        while(math > 10 || math < 0)
        {
            print("Nhập điểm toán : ")
            math=Float(readLine()!) ?? 0.0
        }
        
        var physical:Float = -1.0
        while(physical > 10 || physical < 0)
        {
            print("Nhập điểm lý : ")
            physical=Float(readLine()!) ?? 0.0
        }
        
        var chemical:Float = -1.0
        while(chemical > 10 || chemical < 0)
        {
            print("Nhập điểm hoá : ")
            chemical=Float(readLine()!) ?? 0.0
        }
        
        for i in dssv
        {
            if(i.MaSV=MaSV)
            {
                i.name=name
                i.math=math
                i.chemical=chemical
                i.physical=physical
                i.DiemTB()=DiemTB()
            }
        }
    }
    
}

func Bai1()
{
    var n:Int=0
    while(n<=0)
    {
        print("Nhập số sinh viên : ",terminator: "")
        n=Int(readLine()!) ?? 0
    }
    
    var Sv :SinhVien? = nil
    
    for i in 0..<n{
        print("Nhập thông tin sinh viên thứ \(i+1) :")
        Sv?.Nhap()
        print()
    }
    
    Sv?.Show()
}
