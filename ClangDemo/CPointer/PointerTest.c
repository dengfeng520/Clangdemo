//
//  PointerTest.c
//  ClangDemo
//
//  Created by RP. wang on 2019/5/26.
//  Copyright © 2019 兰州北科维拓科技股份有限公司. All rights reserved.
//

#include "PointerTest.h"

int getMax(int i,int j) {
    return i>j?i:j;
}


int *getMin(int i,int j) {
    int result = i<j?i:j;
    int *pointer = &result;
    return pointer;
}

void pointer(void) {
    //============================== 普通指针
    int a = 111;
    //指针赋值
    int *pa = &a;
    int *pdd = pa;
    printf("取值========%d,%d\n",*pa,*pdd);
    printf("a====%d,&a======%p,pa====%p\n",a,&a,pa);
    char p = 'C';
    char *pb = &p;
    printf("\np======%c,&p======%p,pb====%p\n\n",p,&p,pb);
    
    
    //============================== 指针的指针
    int **ppa = &pa; //ppa --> pa --> a
    printf("\nppa======%p",ppa);
    printf("\n*ppa=======%p",*ppa);
    printf("\n**ppa========%d",**ppa);
    
    
    //============================== 数组指针
    char array[] = "hello";
    char *arrayPointer = array;
    printf("\narrayPointer========%p\n",arrayPointer);
    for (int i = 0;i<sizeof(array);i++) {
        printf("\ni,everyone======%d,%p\n",i,&array[i]);
        printf("\n下标取值everyone======%c\n",array[i]);
        printf("\n指针取值everyone======%c\n",*(array + i));
    }

    //============================== 函数指针
    int (*funcOne)(int,int);
    funcOne = getMax;
    int result = funcOne(10001,10086);
    printf("\nresult=============%d\n",result);
    
    //============================== 返回指针的函数
    int *resultTwo = getMin(10001, 10086);
    printf("resultTwo=========%d",*resultTwo);
}



