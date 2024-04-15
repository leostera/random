type bigarray =
  (char, Bigarray.int8_unsigned_elt, Bigarray.c_layout) Bigarray.Array1.t

let () = Mirage_crypto_rng_unix.initialize (module Mirage_crypto_rng.Fortuna)
let cstruct n = Mirage_crypto_rng.generate n
let string n = cstruct n |> Cstruct.to_string
let int8 () = Randomconv.int8 string
let int16 () = Randomconv.int16 string
let int32 () = Randomconv.int32 string
let int64 () = Randomconv.int64 string
let char () = Char.chr (int8 ())
let int ?max () = Randomconv.int ?bound:max string
let float ?max () = Randomconv.float ?bound:max string
let bytes n = cstruct n |> Cstruct.to_bytes
let bigarray n = cstruct n |> Cstruct.to_bigarray
let alphanum () = Char.chr (48 + Randomconv.int ~bound:74 string)
let seq gen = Seq.unfold (fun () -> Some (gen (), ())) ()
let list gen n = seq gen |> Seq.take n |> List.of_seq
