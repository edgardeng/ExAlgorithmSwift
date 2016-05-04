//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Bucket Sort
var a = [3,4,5,7,6,9,11,34,54,67,57,38,58,95,28]

//Buble Sort
func bubleSort(array:[Int]) -> [Int]{
    var a = array
    let n = a.count;
    var tmp : Int
    for i in 1..<n {
        for j in 1..<n-i {
            if(a[j]<a[j+1]){
                tmp = a[j];a[j] = a[j+1];a[j+1] = tmp;
            }
            
        }
    }
    
    for i in 1..<n {
        print(a[i])
    }
    return a;
}
//bubleSort(a)

func quickSort(left:Int, right:Int){
    
    if left>right{
        return
    }
    let temp = a[left];  //基数
    var i = left;
    var j = right;
    while i != j {
        // right to left
        while a[j] >= temp && i<j {
            j -= 1
        }
        while a[i] <= temp && i<j{
            i += 1
        }
        //交换
        if(i < j){
            let t = a[i];
            a[i] = a[j]
            a[j] = t
        }
        
    }
    // jishu back
    a[left] = a[i]
    a[i] = temp;
    
    quickSort(left, right: i-1)
    quickSort(i+1,right:right)
    
}

// Insert Sort
func insertionSort(array:[Int])  {
    guard array.count > 1 else { return  }
    
    var a = array
    let n = a.count;
    for x in 1..<n {
        var y = x
        let temp = a[y]
        // 往 前面插
        while y > 0 &&  temp < a[y - 1] {
            a[y] = a[y - 1]
            y -= 1
        }
        a[y] = temp
    }
    print(a)
}




// Heap Sort
func heapSort(index:Int,size:Int)  {
//    guard array.count > 1 else { return  }
    
    var imax = index;
     let ileft = imax*2+1;
     let iright = imax*2+2;
    if(ileft < size && a[ileft] > a[imax]){
        imax = ileft;
    }
    if(iright < size && a[iright] > a[imax]){
        imax = ileft;
    }
    if(imax != index){
        let temp = a[imax];
        a[imax] = a[index];
        a[index] = temp;
        heapSort(imax, size: size)
    }
//    print(a)
}




func buildMaxHeap() {
    var parent =  (a.count-1)/2
    for i in parent.stride(through: 0, by: -1) {
        heapSort( i, size:15)
    }
}

func hSort() {
    buildMaxHeap()
    for i in (a.count - 1).stride(to: 0, by: -1) {
        let temp = a[0];
        a[0] = a[i];
        a[i] = temp;
        heapSort(0, size:i);
    }
}



print(a)
hSort()
print(a)
//quickSort(0, right: 14)
//insertionSort(a)



//print(Array(20.stride(through: 3, by: -1)))
//print(Array(0.stride(to: 3, by: 1)))

