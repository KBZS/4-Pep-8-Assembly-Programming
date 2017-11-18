loop:            STRO req, d          ; reqesting pair of numbers
                 DECI num1, d         ; read and store first number
                 LDA num1, d          ; 
                 BREQ done

                 DECI num2, d         ; read and store seond number
                 LDA num2, d          
                 ADDA num1, d
                 STA num2, d
                 STRO resSum, d
                 DECO num2, d
                 SUBA num1,d
                 STA num2, d

                 LDA num1, d
                 SUBA num2, d
                 STA num1, d
                 STRO resDiff, d
                 DECO num1, d
                 BR loop

done:            STRO bye, d
         
                 STOP

num1:            .BLOCK 2             ; reservation for the first number
num2:            .BLOCK 2             ; reservation for the second number
req:             .ASCII "\nEnter two numbers or 0 to terminate: \x00"   ; input message
resSum:          .ASCII "Their sum is: \x00"                          ; sum result message
resDiff:         .ASCII "\nTheir difference is: \x00"                 ; difference result message
bye:             .ASCII "Goodbye!"

                 .END