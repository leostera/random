(** Create cryptographically secure random data.

*)

type bigarray =
  (char, Bigarray.int8_unsigned_elt, Bigarray.c_layout) Bigarray.Array1.t
(** A bigarray. *)

val cstruct : int -> Cstruct.t
(** [cstruct n] will create a [Cstruct.t] of up to [n] bytes *)

val int8 : unit -> int
(** [int8 ()] creates a random byte. 

    If you need the byte to be encoded as a [char], consider using [char ()] instead.
*)

val int16 : unit -> int
(** [int16 ()] creates a random 16-bit integer (of size 2 bytes). *)

val int32 : unit -> int32
(** [int32 ()] creates a random 32-bit integer (of size 4 bytes). *)

val int64 : unit -> int64
(** [int64 ()] creates a random 64-bit integer (of size 8 bytes). *)

val char : unit -> char
(** [char ()] creates a byte. *)

val int : ?max:int -> unit -> int
(** [int ~max ()] creates a random 31-bit integer between 0 and [max] if [max]
    is specified.
*)

val float : ?max:float -> unit -> float
(** [float ~max ()] creates a random float between 0.0 and [max] if [max]
    is specified.
*)

val bytes : int -> bytes
(** [bytes len] creates [len] random bytes *)

val bigarray : int -> bigarray
(** [bigarray len] creates [len] random bytes in a [bigarray] *)

val string : int -> string
(** [string len] creates [len] random bytes encoded as a string *)

val alphanum : unit -> char
(** [alphanum ()] creates [len] random bytes encoded as a string *)

val seq : (unit -> 'a) -> 'a Seq.t
(** [seq gen] creates an infinite sequence of values created by [gen]. 

    For example, use [seq int] to create an infinite sequence of random
    integers.
*)

val list : (unit -> 'a) -> int -> 'a list
(** [list gen n] creates a list of [n] random elements created with [gen]. *)
