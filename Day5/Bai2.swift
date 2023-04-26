import Foundation

class Item
{
    var Masp : String = ""
    var TenSP : String = ""
    var GiaBan : Float = 0.0
    var SoLuong : Int = 0
    
    init(Masp: String, TenSP: String, GiaBan: Float, SoLuong: Int) {
        self.Masp = Masp
        self.TenSP = TenSP
        self.GiaBan = GiaBan
        self.SoLuong = SoLuong
    }
    
    init(){
        
    }
    
    var ListItem = [Item]()
    
    func Nhap()
    {
        var MaSP:String = ""
        while(MaSP == "")
        {
            print("Nhập mã sản phẩm : ",terminator: "")
            MaSP = readLine() ?? ""
        }
        
        var TenSP:String = ""
        while(TenSP == "")
        {
            print("Nhập tên sản phẩm : ",terminator: "")
            TenSP = readLine() ?? ""
        }
        
        var GiaBan:Float = 0.0
        while(GiaBan<=0)
        {
            print("Nhập giá bán : ",terminator: "")
            GiaBan = Float(readLine()!) ?? 0.0
        }
        
        var SoLuong:Int = 0
        while(SoLuong<=0)
        {
            print("Nhập số lượng hàng trong kho : ",terminator: "")
            SoLuong = Int(readLine()!) ?? 0
        }
        
        let Item = Item(Masp: MaSP, TenSP: TenSP, GiaBan: GiaBan, SoLuong: SoLuong)
        ListItem.append(Item)
    }
    
    func Show()
    {
        for i in ListItem
        {
            print("\(i.Masp)     \(i.TenSP)        \(i.GiaBan)       \(i.SoLuong)")
        }
        
    }
    
    func Update()
    {
        
        print("Nhập thông tin mặt hàng cần cập nhật")
        var MaSP:String = ""
        while(MaSP == "")
        {
            print("Nhập mã sản phẩm : ",terminator: "")
            MaSP = readLine() ?? ""
        }
        
        print("Nhập thông tin cập nhật sản phẩm : ")
        
        var GiaBan:Float = 0.0
        while(GiaBan<=0)
        {
            print("Nhập giá bán : ",terminator: "")
            GiaBan = Float(readLine()!) ?? 0.0
        }
        
        var SoLuong:Int = 0
        while(SoLuong<=0)
        {
            print("Nhập số lượng hàng trong kho : ",terminator: "")
            SoLuong = Int(readLine()!) ?? 0
        }
        
        print("Thông tin các mặt hàng tìm kiếm")
        for i in ListItem{
            if(i.Masp == MaSP)
            {
                i.GiaBan=GiaBan
                i.SoLuong=SoLuong
            }
        }
    }
    
    func TimKiemSP()
    {
        print("Nhập tên sản phẩm : ")
        var TenSPP:String = ""
        while(TenSPP == "")
        {
            print("Nhập tên sản phẩm : ",terminator: "")
            TenSPP = readLine() ?? ""
        }
        
        for i in ListItem{
            if(i.TenSP == TenSPP)
            {
                print("\(i.Masp)     \(i.TenSP)        \(i.GiaBan)       \(i.SoLuong)")
            }
        }
    }
}

func Bai2()
{
    var n : Int = 0
    while(n<1)
    {
        print("Nhập số sản phẩm : ",terminator: "")
        n = Int(readLine()!) ?? 0
    }
    let Item = Item()
    for i in 0..<n
    {
        print("Nhập thông tin mặt hàng thứ \(i+1) : ")
        Item.Nhap()
    }
    
    print("Danh sách mặt hàng")
    print("Mã sản phẩn      Tên sản phẩm        Giá bán         Số lượng trong kho")
    Item.Show()

    Item.Update()
    print("Danh sách mặt hàng sau khi cập nhật")
    print("Mã sản phẩn      Tên sản phẩm        Giá bán         Số lượng trong kho")
    Item.Show()
    
    
    Item.TimKiemSP()
    
}
