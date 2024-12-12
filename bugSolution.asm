mov ecx, [some_array_length] ; Get the array length
 cmp ecx, 0 ; Check if the array is empty
je empty_array_handler ; Handle empty array
 cmp ecx, [index] ; Check if the index is within bounds
jge out_of_bounds_handler ; Handle out of bounds
mov eax, [ebx+4*ecx] ; Access array element
jmp done
empty_array_handler:
; Handle empty array case
jmp done
out_of_bounds_handler:
; Handle out-of-bounds case
jmp done
done: