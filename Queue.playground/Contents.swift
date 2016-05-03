//: Playground - noun: a place where people can play

import Cocoa
// ---- Stack 堆栈 ----

// ---- Queue 队列 ----
// 先进 先出原则
//:队列是一种特 殊的线性结构,只允许在队列的首部(head)进行删除操作,出队
//:而在队列 的尾部(tail)进行插入操作,入队
//:当队列中没有元素时(即 head==tail),称为 空队列

struct Queue
{
    var data : [Int];//队列的主体,用来存储内容
    var tail : Int;//队尾
    var head : Int;//队首
};

let q =  Queue()  //初始化队列
let i : Int;
q.head = 1;
q.tail = 1;

for i in 1...9  {
    //依次向队列插入9个数 
    print(q.data[q.tail])
    q.tail+=1;
}

















