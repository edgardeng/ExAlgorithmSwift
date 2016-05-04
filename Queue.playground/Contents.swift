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
    var head : Int;//队首
    var tail : Int;//队尾

};
let iArray = [0,6,3,1,7,5,8,9,2,4,0,0,0,0,0,0,0,0,0,0,0];
var q =  Queue(data:iArray ,head: 1,tail: 1)  //初始化队列
let i : Int;

for i in 1...9  {
    //依次向队列插入9个数 
    print(q.data[q.tail])
    q.tail += 1;
}

print("---------")
while(q.head<q.tail) //当队列不为空的时候执行循环 
{
    //打印队首并将队首出队
    print(q.data[q.head])
    q.head += 1;
    //先将新队首的数添加到队尾
    q.data[q.tail]=q.data[q.head];
    q.tail  += 1;
    //再将队首出队
    q.head  += 1;
}
//: ---- 解密回文 栈 ----
//: 后进先出的数据结构,栈。栈限定为只能在一端进行插入和删除操作
let mString = "ahaha"

// 判断 是否是回文字符串
func palindrome(data:String) -> String {
//    for character in data{
//        
//    }
    var len = strlen(data)//求字符串的长度
    var mid = len/2-1; //求字符串的中点
    var top = 0;//栈的初始化 
    /*
    //将mid前的字符依次入栈 
    for(var i=0;i<= mid;i++)
    s[++top]=a[i];
    
    //判断字符串的长度是奇数还是偶数,并找出需要进行字符匹配的起始下标 
    if len%2==0
        next=mid+1;
    else
        next=mid+2;
    //开始匹配 
    for(i=next;i<=len-1;i++)
 
    
    {
        if(a[i]!=s[top])
        break;
        top--;
    }
 */
    //如果top的值为0,则说明栈内所有的字符都被一一匹配了 
    if top == 0 {
        return "YES" ;
    }
    else{
        return "NO" ;
    }
    
    
}

//栈还可以用来进行验证括号的匹配。比如输入一行只包 “()[]{}”的字符串,请判断 形如“([{}()])”或者“{()[]{}}”的是否可以正确匹配

// 两个队列、一个栈来模拟整个 钓鱼 游戏


//:  －－－ 链表 －－－
struct LinkNode
{
    var data :Int;
//    var next : LinkNode;
};
// Recursive value type 'LinkNode' is not allowed
//结构体 不能嵌套结构体



//:  －－－ 模拟链表 －－－









