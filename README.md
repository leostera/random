# random

Easy to use, cryptographically safe random data generators. Just call `Random.<type>`:

```ocaml
let size = 2112

(* random numbers *)
let random_int8 = Random.int8 ()
let random_int16 = Random.int16 ()
let random_int32 = Random.int32 ()
let random_int64 = Random.int64 ()
let random_int_up_to_2112 = Random.int ~max:2112
let random_float_up_to_69_420 = Random.float ~max:69.420

(* random strings and chars *)
let random_char = Random.char ()
let random_alpha_num = Random.alphanum ()
let random_string = Random.string size
let random_bytes = Random.bytes size

(* sequences *)
let infinite_number_sequence = Random.(seq int)
let infinite_char_sequence = Random.(seq char)

(* lists *)
let list_of_10_ints = Random.(list int 10)
```
