//
//  StructClass.m
//  ClangDemo
//
//  Created by RP. wang on 2019/5/26.
//  Copyright © 2019 兰州北科维拓科技股份有限公司. All rights reserved.
//

#import "StructClass.h"
//MARK: - =================================== 结构体的申明
// 结构体名 + 结构体变量 + 结构体成员
struct personAbout {
    char name[20];
    int *age;
}person;
// 结构体名 + 结构体成员
struct personFrist {
    char name[20];
    int *age;
};
// 结构体变量 + 成员
struct {
    char name[20];
    int *age;
}personSecond;
//MARK: - =================================== 结构体的继承
// 结构体的继承
struct studentZero: personAbout {
    int number;
    studentZero() {
        number = 10000;
        age = new int(16);
        strcpy(name, "李雷");
    }
}student;
// 结构体的别名
typedef struct studentFrist: personAbout {
    int number;
    studentFrist() {
        number = 10001;
        age = new int(17);
        strcpy(name, "韩梅梅");
    }
}studentFrist;


@implementation StructClass

void useStructFunc(void) {
    
    // 结构体赋值 方法一
    int age = 17;
    struct personAbout person = {"李雷",&age};
    printf("\nperson.name ====%s",person.name);
    printf("\nperson.age ====%d",*(person.age));
    // 结构体赋值 方法二
    student.number = 1000;
    strcpy(student.name,"李雷");
    student.age = new int(17);
    printf("\nstudent.number ====%d",student.number);
    printf("\nstudent.name ====%s",student.name);
    printf("\nstudent.age ====%d",*(student.age));
    // 结构体赋值 方法三
    struct studentZero stu;
    int number = stu.number;
    printf("\n\nstu Number ====%d",number);
    printf("\nstu Name ====%s",stu.name);
    printf("\nstu age ====%d",*(stu.age));
    // 别名访问
    studentFrist stuFrist;
    int stuNumber = stuFrist.number;
    printf("\nstuFrist Number ====%d",stuNumber);
    printf("\nstuFrist Name ====%s",stuFrist.name);
    printf("\nstuFrist age ====%d",*(stuFrist.age));

    // 结构体指针
    studentFrist *stuPoiner = &stuFrist;
    printf("\nstuPoiner Number ====%d",stuPoiner->number);
    printf("\nstuPoiner Name ====%s",stuPoiner->name);
    printf("\nstuPoiner age ====%d",*(stuPoiner->age));

    
}

@end
