/* Type Inference with var
Listing 2-9: Dynamic typing with uninitialized var */

void main() {
    var x;                      // No initial value => dynamic
     
    x = 1;
    print(x.runtimeType);       // int
     
    x = 2.5;
    print(x.runtimeType);       // double
     
    x = 'hello';
    print(x.runtimeType);       // String
}

