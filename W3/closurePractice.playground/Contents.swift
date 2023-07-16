
// Please declare a closure whose input type is Int, output type is Bool. The functionality of this closure is to verify if the input is odd or not. If it’s odd, please return true, otherwise return false.

let isOdd:(Int)->Bool = {
    if $0 % 2 != 0{
        return true
    }else{
        return false
    }
}

isOdd(3)
isOdd(0)
isOdd(-1)
isOdd(100879)
