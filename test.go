package main

import "unsafe"
const (
    a = "abc"
    b = len(a)
    c = unsafe.Sizeof(a)
    d = unsafe.Sizeof(b)
)

func main(){
    println(a, b, c, d)
}
