## 题型和范围

考试题型：选择、判断、编程、函数题四种类型。其中==选择判断共40分==，==编程题一道==，20分，==函数题两道==，每题20分。

考试范围：学过的部分，PPT我已经更新，红色的部分一般是考点；

考试一般有少量的英语题目，一般实在客观题中。

## 重点

### Java的基本语法和基本编程

1. main函数

2. 循环

3. 输入输出

4. 字符串基本操作

5. 三种错误类型

   - **Syntax Errors** （语法）  ：Detected by the compiler   
   - **Runtime Errors**（运行）：Causes the program to abort
   - **Logic Errors**（逻辑）       ：Produces incorrect result

6. 基本数据类型

   byte、short、int、long、float、double

7. 字面量

8. 静态函数、静态变量、常量

9. 变量的作用域和初始值（**局部变量没有初始值**）局部变量不可以用public修饰

10. 字符串与数值量的转换

11. 一维数组的定义和使用

12. 基本类型对应的包装类型

13. 函数overload

14. ArrayList的基本使用

    ArrayList集合查询元素的速度很快，但是增加和删除元素时效率较低。

    ArrayList的大小可变，其存储是对象类型（Byte、Short、Long、Integer、Character 、Boolean等）

### 类的定义和使用

1. 类的定义
2. 成员变量
3. 成员函数
4. 构造函数
5. 静态变量、静态函数
6. 常量
7. 成员可见性（私有、缺省、protected、public）
8. getter、setter函数

### 类的继承

1. 继承一个类，如何写子类
2. 函数的 override
3. 显示类型转换和隐式类型转换
4. 多态：父类型的引用变量可以指向子类型的对象，调用同名的函数，表现不一样。变量类型是能力声明；子类型的能力不小于父类型
5. instanceof 操作
6. final 关键字

### 抽象与接口

1. 抽象类的基本概念，如何定义一个抽象类，抽象类不能实例化，但是可以作为变量类型（多态、父类型）；
2. 抽象类的使用

### 非重点

非重点这次基本可以不考虑，基本不会出题，如果出题，分数都很少

1. 异常
2. 文件IO
3. 容器，除了ArrayList可能会用到

## 大题（程序题）60分

所有程序题在Eclipse中编程的时候不得使用包，另外，需要在一个文件中实现和测试。注意一个文件中只能有一个Pulbic类，且这个类和文件名保持一致。如果需要写接口和其他类，注意不要以public对类或者接口进行修饰。函数题都会给出程序主题，需要完成类或者接口的相关代码。函数题不用写Main类。程序题需要写完整的Main类，如果你在Eclipse中的类不是Main，注意在考试界面上把主类改成Main。

### 编程题

需要写main函数和Main类，基本考察点是==循环和输入输出，以及字符串的操作==。可能有数组或者是ArrayList。注意需要提交Main类的完整代码。如果你在Eclipse中的类不是Main，注意在考试界面上把主类改成Main。

### 函数题1

基本考察点是==类==型的定义和使用，包括：

1. 静态变量的使用
2. 私有变量和getter、setter函数
3. 构造函数
4. 字符串的操作等

### 函数题2

基本考察点是==抽象类==或者==接口==

1. 抽象类的继承和实现/或者接口的实现
2. 私有变量和getter、setter函数
3. 构造函数
4. 字符串的操作等
5. instanceof 操作
6. 父类型引用变量指向子对象/或者接口类型的变量指向接口实现的对象
7. 函数覆盖





------------------------------------------------------



# 重点笔记

> 函数名是一样的，但是参数不一样。这种方式是可行的，叫做**函数重载（overload）**

> 在Java中的**字符串**是用双引号来标识，字符串的连接（+运算符）

> main函数必须在一给public类中定义

instance实例、extended继承、

### 输入输出

输出：

```java
System.out.println("hello world");
```

输入：

```java
import java.util.Scanner
Scanner input = new Scanner(System.in);
//Scanner是一个类，使用 new 关键字生成一个对象并把引用地址（指针）赋值给 input 这个变量
input.hasNext
input.next
//hasNext开头的函数是用来判断输入缓冲区中是否有下一个数据；next开头的是读取下一个数据
    while(!s.hasNext("#"))//遇到#就会停止读取
```

> ！**next() 是以空格区分字符串的，nextLine()是以回车进行区分的。**

### 常量声明（**final**）：

```java
final int PI = 3.14;
final String ERROR="ERROR";
```

1. 常量：全部大写；
2. 变量：首字母小写；
3. 类名（接口名）：首字母大写，如果有多个单词，每个单词的首字母大写；
4. 函数名：首字母小写。

### Math类

- 取整函数：ceil、floor、rint、round

- 最大：max

- 最小：min

- 绝对值：abs

### 字符

Java的字符类型char支持Unicode

### 字符串

用双引号来标识

#### 基本操作函数

- `.length()`
- `.charAt(1)`
- `.toUpperCase()`
- `.toLowerCase()`
- `.trim()`
- `.concat()`

```java
//基本操作函数：
String s = "Hello world!";
s.length();//返回字符串长度
s.charAt(1);//返回对应下标的字符，从0开始哦
s.toUpperCase();//转换为大写
s.toLowerCase();//转换为小写
s.trim();//trim函数移除字符串两侧的空白字符或其他预定义字符。
```

字符串连接可以使用算术运算符（+），也可以使用对象函数：`concat(需要连接的字符串)`

#### 字符串比较

- `equals()`：a.equals(b)，若 a 和 b 完全一样，返回true，否则返回false。
- `equalsIgnoreCase()`：对大小写不敏感。
- `compareTo()`：若一样则返回 0 。
- `compareToIgnoreCase()`：对大小写不敏感。
- `startsWith()`：a.equals(b)，若 b 是 a 的前缀，返回true。  
- `endsWith()`：若 b 是 a 的后缀，返回true。  

#### 子串操作

把字符串看作是特殊的数组，使用索引来切取一个字符串的子串，注意，索引时**从0开始**的。

`substring(a)`：截取字符串从 a 到最后。

`substring(a,b)`：截取字符串从 a 到 b 。

`indexOf(a)`：获取索引，从前往后。

`lastIndexOf()`：获取索引，从后往前。

#### 字符串与数字的转换

```java
//parseXXX 方法和 valueOf 方法都可以返回相应字符串对应的数值类型（看你是在哪个类型上调用的）
//区别是 valueOf 返回的是包装类型，parseXXX返回的是基本类型。
int a = Integer.parseInt("1");
int b = Integer.valueOf("2");
float c = Float.parseFloat("2.2");
float d = Float.valueOf("2.2");
```



### 方法（method，function）

静态函数是不依附对象就可以直接运行的函数。

函数的前面使用 **static** 进行标注，表示是静态函数，不需要对象上面进行调用。

函数的参数是不存在指针传递的（存在**引用传递**），对于基本类型（非对象类型）你无法在函数内部通过参数改变外部变量的值。



### 数组

```java
int[] myList;//定义
myList = new int[2];//分配内存空间
int[] myList = new int[2];//定义和分配内存可以在一行中
//在定义的时候初始化数组
int[] myList = {1,3,5,7};
```

Java不用对动态分配的内存进行回收

```java
int[] myList = {1,3,5,7};
myList.length;//返回数组长度

//对数组遍历
for (int i : myList) {//每次取得一个数组的元素保存在变量i中，直到所有的元素被遍历。
	System.out.println(i);
}
```

对数组赋值，会改变引用变量的内存指向，和C的指针原理一样。

### 类与对象

构造函数不能声明为私有的，不能声明为静态的，不用写返回参数。

缺省：

1. 引用变量：缺省是 null；
2. 基本数值类型（小写的 int、float、double）：缺省是0；
3. char：缺省是 '\u000'；
4. boolean：缺省是null；

局部变量（函数中定义的变量）没有缺省值！因此如果不赋值进行操作可能会出现问题（编译错误）。

### 继承多态

继承关键字：`extends`

继承的类叫做Subclass（子类），被继承的类叫做Superclass（超类）。

子类几乎继承了超类的所有成员，**除了构造函数**。

> 构造函数的调用分为explicitly（显式）和implicitly（隐式）调用两种方式，当子类没有显式调用超类的构造函数的时候，会在构造函数的第一句隐式调用超类的不带参数的构造函数。
>
> 如果需要显式的调用超类的构造函数，可以使用**super()**这个语法，可以带参数或者是不带参数。

```java
public CircleFromSimpleGeometricObject() {
	// 在这里隐含调用super();
}
public CircleFromSimpleGeometricObject(double radius) {
    super();//显式的调用
	this.radius = radius;
}
//这一点和this()操作是一样的，只不过this()调用的是自己本类的构造函数。
```

<u>一个子类只能继承一个父类，一个父类能被多个子类继承。</u>

### 抽象类接口

`abstract`

注意抽象方法是非静态的。

`implements`

```java
[修饰符] interface 接口名称 [extends父接口名列表]
{
    [public] [static] [final] 数据类型 变量名 = 常量值;
    [public] [abstract] 返回值类型 方法名(参数列表)
}
```

在许多方面，接口类似于抽象类，但它的目的是指定通用的相关类或不相关类的对象的行为

抽象类的父类子类之间存在继承关系，但是接口就不需要，都可以去继承接口。

**接口不是类**



接口和抽象类的区别

1. 抽象类中既可以包含抽象方法，也可以包含非抽象的普通方法；而接口中的方法必须是抽象方法
2. 抽象类中的抽象方法的访问类型可以是`public、protected、default`，但接口中的抽象方法只能是`public`类型的
3. 抽象类中可以有普通成员变量，而接口中的所有变量均为`public static final`修饰，即均为常量
4. 抽象类里可以有构造方法，而接口中不能有构造方法
5. 抽象类里可以有静态方法，而接口中不能有静态方法
    一个类可以实现多个接口，但只能继承一个抽象类
6. 如果抽象类实现接口，则可以把接口中方法映射到抽象类中作为抽象方法而不必实现，而在抽象类的子类中实现接口中方法

接口和抽象类的相同点

1. 都可以被继承
2. 都可以包含方法声明
3. 都不可以实例化
4. 派生类必须实现未实现的方法

