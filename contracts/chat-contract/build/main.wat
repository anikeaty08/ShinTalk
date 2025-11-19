(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (param i32 i32) (result i32)))
 (type $2 (func (param i32 i32)))
 (type $3 (func (param i32)))
 (type $4 (func (param i32 i32 i32) (result i32)))
 (type $5 (func (result i32)))
 (type $6 (func (param i32 i32 i32)))
 (type $7 (func))
 (type $8 (func (param i32 i64)))
 (type $9 (func (param i32 i32 i32 i32) (result i32)))
 (type $10 (func (param i32 i64) (result i32)))
 (type $11 (func (param i32 i32 i32 i32)))
 (type $12 (func (param i32 i32 i64)))
 (type $13 (func (result i64)))
 (type $14 (func (param i32 i32 i32 i32 i32 i32 i64 i64) (result i32)))
 (type $15 (func (param i64 i32) (result i32)))
 (type $16 (func (param i32 i32) (result i64)))
 (type $17 (func (param i32 i32 i32 i64) (result i32)))
 (type $18 (func (param i32 i32 i32 i32 i32 i32 i64) (result i32)))
 (type $19 (func (param i32) (result i64)))
 (type $20 (func (param i64 i32 i32 i32 i32 i32 i32 i32 i64 i64) (result i32)))
 (type $21 (func (param i64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "massa" "assembly_script_caller_has_write_access" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.callerHasWriteAccess (result i32)))
 (import "massa" "assembly_script_get_call_stack" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.callStack (result i32)))
 (import "massa" "assembly_script_set_data" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.set (param i32 i32)))
 (import "massa" "assembly_script_generate_event" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.generateEvent (param i32)))
 (import "massa" "assembly_script_has_data" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.has (param i32) (result i32)))
 (import "massa" "assembly_script_get_data" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.get (param i32) (result i32)))
 (import "massa" "assembly_script_get_time" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.time (result i64)))
 (import "massa" "assembly_script_get_keys" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.getKeys (param i32) (result i32)))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/@massalabs/as-types/assembly/argument/NoArg (mut i32) (i32.const 0))
 (global $assembly/contracts/main/VERSION_KEY (mut i32) (i32.const 0))
 (global $assembly/contracts/main/PROFILE_PREFIX (mut i32) (i32.const 0))
 (global $assembly/contracts/main/CONTACT_PREFIX (mut i32) (i32.const 0))
 (global $assembly/contracts/main/CONVERSATION_PREFIX (mut i32) (i32.const 0))
 (global $assembly/contracts/main/MEMBER_INDEX_PREFIX (mut i32) (i32.const 0))
 (global $assembly/contracts/main/COUNTER_PREFIX (mut i32) (i32.const 0))
 (global $assembly/contracts/main/MESSAGE_PREFIX (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 10528))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 43488))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $2 (i32.const 1132) "<")
 (data $2.1 (i32.const 1144) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $3 (i32.const 1196) ",")
 (data $3.1 (i32.const 1208) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $4 (i32.const 1244) "<")
 (data $4.1 (i32.const 1256) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $7 (i32.const 1372) "<")
 (data $7.1 (i32.const 1384) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $8 (i32.const 1436) ",")
 (data $8.1 (i32.const 1448) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $9 (i32.const 1484) "<")
 (data $9.1 (i32.const 1496) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00s\00t\00a\00t\00i\00c\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $10 (i32.const 1548) "\1c")
 (data $10.1 (i32.const 1560) "\05")
 (data $11 (i32.const 1580) "l")
 (data $11.1 (i32.const 1592) "\02\00\00\00R\00\00\00A\00U\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\002\00m\001\00s\009\00K")
 (data $12 (i32.const 1692) "\1c")
 (data $12.1 (i32.const 1704) "\02\00\00\00\04\00\00\00:\00:")
 (data $13 (i32.const 1724) "<")
 (data $13.1 (i32.const 1736) "\02\00\00\00\1e\00\00\00w\00a\00v\00e\00h\00a\00c\00k\00-\00c\00h\00a\00t\00:\00:")
 (data $14 (i32.const 1788) "\1c")
 (data $14.1 (i32.const 1800) "\02\00\00\00\n\00\00\001\00.\000\00.\000")
 (data $15 (i32.const 1820) ",")
 (data $15.1 (i32.const 1832) "\02\00\00\00\0e\00\00\00v\00e\00r\00s\00i\00o\00n")
 (data $16 (i32.const 1868) "\1c")
 (data $16.1 (i32.const 1880) "\02")
 (data $17 (i32.const 1900) ",")
 (data $17.1 (i32.const 1912) "\02\00\00\00\12\00\00\00p\00r\00o\00f\00i\00l\00e\00:\00:")
 (data $18 (i32.const 1948) ",")
 (data $18.1 (i32.const 1960) "\02\00\00\00\12\00\00\00c\00o\00n\00t\00a\00c\00t\00:\00:")
 (data $19 (i32.const 1996) ",")
 (data $19.1 (i32.const 2008) "\02\00\00\00\1c\00\00\00c\00o\00n\00v\00e\00r\00s\00a\00t\00i\00o\00n\00:\00:")
 (data $20 (i32.const 2044) ",")
 (data $20.1 (i32.const 2056) "\02\00\00\00\10\00\00\00m\00e\00m\00b\00e\00r\00:\00:")
 (data $21 (i32.const 2092) ",")
 (data $21.1 (i32.const 2104) "\02\00\00\00\12\00\00\00c\00o\00u\00n\00t\00e\00r\00:\00:")
 (data $22 (i32.const 2140) ",")
 (data $22.1 (i32.const 2152) "\02\00\00\00\12\00\00\00m\00e\00s\00s\00a\00g\00e\00:\00:")
 (data $23 (i32.const 2188) "\1c")
 (data $23.1 (i32.const 2200) "\02\00\00\00\02\00\00\00,")
 (data $24 (i32.const 2220) ",")
 (data $24.1 (i32.const 2232) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $25 (i32.const 2268) "\1c")
 (data $25.1 (i32.const 2280) "\0c\00\00\00\08\00\00\00\01")
 (data $26 (i32.const 2300) "|")
 (data $26.1 (i32.const 2312) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $27 (i32.const 2428) "<")
 (data $27.1 (i32.const 2440) "\02\00\00\00,\00\00\00c\00o\00n\00s\00t\00r\00u\00c\00t\00o\00r\00:\00 \00f\00o\00r\00b\00i\00d\00d\00e\00n")
 (data $28 (i32.const 2492) "L")
 (data $28.1 (i32.const 2504) "\02\00\00\004\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00c\00o\00n\00t\00r\00a\00c\00t\00s\00/\00m\00a\00i\00n\00.\00t\00s")
 (data $29 (i32.const 2572) "\8c")
 (data $29.1 (i32.const 2584) "\02\00\00\00n\00\00\00c\00a\00n\00\'\00t\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00u\003\002\00 \00f\00r\00o\00m\00 \00g\00i\00v\00e\00n\00 \00a\00r\00g\00u\00m\00e\00n\00t\00:\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $30 (i32.const 2716) "|")
 (data $30.1 (i32.const 2728) "\02\00\00\00^\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00n\00u\00l\00l\00\'\00 \00(\00n\00o\00t\00 \00a\00s\00s\00i\00g\00n\00e\00d\00 \00o\00r\00 \00f\00a\00i\00l\00e\00d\00 \00c\00a\00s\00t\00)")
 (data $31 (i32.const 2844) "l")
 (data $31.1 (i32.const 2856) "\02\00\00\00V\00\00\00~\00l\00i\00b\00/\00@\00m\00a\00s\00s\00a\00l\00a\00b\00s\00/\00a\00s\00-\00t\00y\00p\00e\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00r\00e\00s\00u\00l\00t\00.\00t\00s")
 (data $32 (i32.const 2956) "\8c")
 (data $32.1 (i32.const 2968) "\02\00\00\00t\00\00\00c\00a\00n\00\'\00t\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00s\00t\00r\00i\00n\00g\00 \00f\00r\00o\00m\00 \00g\00i\00v\00e\00n\00 \00a\00r\00g\00u\00m\00e\00n\00t\00:\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $33 (i32.const 3100) ",")
 (data $33.1 (i32.const 3112) "\02\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data $34 (i32.const 3148) ",")
 (data $34.1 (i32.const 3160) "\02\00\00\00\18\00\00\00W\00a\00v\00e\00H\00a\00c\00k\00C\00h\00a\00t")
 (data $35 (i32.const 3196) "\1c")
 (data $35.1 (i32.const 3208) "\02\00\00\00\02\00\00\00@")
 (data $36 (i32.const 3228) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\90\0c")
 (data $37 (i32.const 3260) "\1c")
 (data $37.1 (i32.const 3272) "\05")
 (data $38 (i32.const 3292) "<")
 (data $38.1 (i32.const 3304) "\02\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e")
 (data $39 (i32.const 3356) "<")
 (data $39.1 (i32.const 3368) "\02\00\00\00 \00\00\00c\00o\00n\00t\00r\00a\00c\00t\00:\00:\00b\00o\00o\00t\00:\00:")
 (data $40 (i32.const 3420) "\\")
 (data $40.1 (i32.const 3432) "\02\00\00\00D\00\00\00r\00e\00g\00i\00s\00t\00e\00r\00_\00p\00r\00o\00f\00i\00l\00e\00:\00 \00u\00s\00e\00r\00n\00a\00m\00e\00 \00m\00i\00s\00s\00i\00n\00g")
 (data $41 (i32.const 3516) "\1c")
 (data $41.1 (i32.const 3528) "\02\00\00\00\04\00\00\00:\00 ")
 (data $42 (i32.const 3548) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $43 (i32.const 3580) "\\")
 (data $43.1 (i32.const 3592) "\02\00\00\00F\00\00\00r\00e\00g\00i\00s\00t\00e\00r\00_\00p\00r\00o\00f\00i\00l\00e\00:\00 \00a\00v\00a\00t\00a\00r\00C\00i\00d\00 \00m\00i\00s\00s\00i\00n\00g")
 (data $44 (i32.const 3676) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $45 (i32.const 3708) "L")
 (data $45.1 (i32.const 3720) "\02\00\00\00:\00\00\00r\00e\00g\00i\00s\00t\00e\00r\00_\00p\00r\00o\00f\00i\00l\00e\00:\00 \00b\00i\00o\00 \00m\00i\00s\00s\00i\00n\00g")
 (data $46 (i32.const 3788) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $47 (i32.const 3820) "l")
 (data $47.1 (i32.const 3832) "\02\00\00\00N\00\00\00r\00e\00g\00i\00s\00t\00e\00r\00_\00p\00r\00o\00f\00i\00l\00e\00:\00 \00e\00n\00c\00r\00y\00p\00t\00i\00o\00n\00K\00e\00y\00 \00m\00i\00s\00s\00i\00n\00g")
 (data $48 (i32.const 3932) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $49 (i32.const 3964) "\\")
 (data $49.1 (i32.const 3976) "\02\00\00\00@\00\00\00r\00e\00g\00i\00s\00t\00e\00r\00_\00p\00r\00o\00f\00i\00l\00e\00:\00 \00s\00t\00a\00t\00u\00s\00 \00m\00i\00s\00s\00i\00n\00g")
 (data $50 (i32.const 4060) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $51 (i32.const 4092) "\1c")
 (data $51.1 (i32.const 4104) "\02\00\00\00\n\00\00\00o\00w\00n\00e\00r")
 (data $52 (i32.const 4124) "<")
 (data $52.1 (i32.const 4136) "\02\00\00\00$\00\00\00C\00a\00n\00\'\00t\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 ")
 (data $53 (i32.const 4188) "\1c")
 (data $53.1 (i32.const 4200) "\02\00\00\00\02\00\00\00.")
 (data $54 (i32.const 4220) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\000\10\00\00\00\00\00\00p\10")
 (data $55 (i32.const 4252) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $56 (i32.const 4284) ",")
 (data $56.1 (i32.const 4296) "\02\00\00\00\10\00\00\00u\00s\00e\00r\00n\00a\00m\00e")
 (data $57 (i32.const 4332) ",")
 (data $57.1 (i32.const 4344) "\02\00\00\00\12\00\00\00a\00v\00a\00t\00a\00r\00C\00i\00d")
 (data $58 (i32.const 4380) "\1c")
 (data $58.1 (i32.const 4392) "\02\00\00\00\06\00\00\00b\00i\00o")
 (data $59 (i32.const 4412) ",")
 (data $59.1 (i32.const 4424) "\02\00\00\00\1a\00\00\00e\00n\00c\00r\00y\00p\00t\00i\00o\00n\00K\00e\00y")
 (data $60 (i32.const 4460) "\1c")
 (data $60.1 (i32.const 4472) "\02\00\00\00\0c\00\00\00s\00t\00a\00t\00u\00s")
 (data $61 (i32.const 4492) ",")
 (data $61.1 (i32.const 4504) "\02\00\00\00\12\00\00\00c\00r\00e\00a\00t\00e\00d\00A\00t")
 (data $62 (i32.const 4540) "\8c")
 (data $62.1 (i32.const 4552) "\02\00\00\00n\00\00\00c\00a\00n\00\'\00t\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00u\006\004\00 \00f\00r\00o\00m\00 \00g\00i\00v\00e\00n\00 \00a\00r\00g\00u\00m\00e\00n\00t\00:\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $63 (i32.const 4684) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\000\10\00\00\00\00\00\00p\10")
 (data $64 (i32.const 4716) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $65 (i32.const 4748) ",")
 (data $65.1 (i32.const 4760) "\02\00\00\00\12\00\00\00u\00p\00d\00a\00t\00e\00d\00A\00t")
 (data $66 (i32.const 4796) "\1c")
 (data $66.1 (i32.const 4808) "\02\00\00\00\0c\00\00\00o\00b\00j\00e\00c\00t")
 (data $67 (i32.const 4828) "L")
 (data $67.1 (i32.const 4840) "\02\00\00\002\00\00\00C\00a\00n\00\'\00t\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00o\00b\00j\00e\00c\00t\00 ")
 (data $68 (i32.const 4908) "L")
 (data $68.1 (i32.const 4920) "\02\00\00\00<\00\00\00p\00r\00o\00f\00i\00l\00e\00:\00 \00c\00o\00r\00r\00u\00p\00t\00 \00s\00e\00r\00i\00a\00l\00i\00z\00a\00t\00i\00o\00n")
 (data $69 (i32.const 4988) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $70 (i32.const 5020) "<")
 (data $70.1 (i32.const 5032) "\02\00\00\00$\00\00\00p\00r\00o\00f\00i\00l\00e\00:\00:\00u\00p\00d\00a\00t\00e\00d\00:\00:")
 (data $71 (i32.const 5084) "<")
 (data $71.1 (i32.const 5096) "\02\00\00\00$\00\00\00p\00r\00o\00f\00i\00l\00e\00:\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data $72 (i32.const 5148) "\\")
 (data $72.1 (i32.const 5160) "\02\00\00\00B\00\00\00a\00d\00d\00_\00c\00o\00n\00t\00a\00c\00t\00:\00 \00p\00e\00e\00r\00 \00a\00d\00d\00r\00e\00s\00s\00 \00m\00i\00s\00s\00i\00n\00g")
 (data $73 (i32.const 5244) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $74 (i32.const 5276) "L")
 (data $74.1 (i32.const 5288) "\02\00\00\008\00\00\00a\00d\00d\00_\00c\00o\00n\00t\00a\00c\00t\00:\00 \00c\00a\00n\00n\00o\00t\00 \00a\00d\00d\00 \00s\00e\00l\00f")
 (data $75 (i32.const 5356) "L")
 (data $75.1 (i32.const 5368) "\02\00\00\004\00\00\00a\00d\00d\00_\00c\00o\00n\00t\00a\00c\00t\00:\00 \00a\00l\00r\00e\00a\00d\00y\00 \00a\00d\00d\00e\00d")
 (data $76 (i32.const 5436) "<")
 (data $76.1 (i32.const 5448) "\02\00\00\00\"\00\00\00c\00o\00n\00t\00a\00c\00t\00:\00:\00l\00i\00n\00k\00e\00d\00:\00:")
 (data $77 (i32.const 5500) ",\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\10\00\00\00P\15\00\00\00\00\00\00\b0\06")
 (data $78 (i32.const 5548) "\1c")
 (data $78.1 (i32.const 5560) "\01")
 (data $79 (i32.const 5580) "<")
 (data $79.1 (i32.const 5592) "\02\00\00\00,\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00k\00e\00y\00s\00S\00e\00r\00 \00l\00e\00n\00g\00t\00h")
 (data $80 (i32.const 5644) "\8c")
 (data $80.1 (i32.const 5656) "\02\00\00\00|\00\00\00~\00l\00i\00b\00/\00@\00m\00a\00s\00s\00a\00l\00a\00b\00s\00/\00m\00a\00s\00s\00a\00-\00a\00s\00-\00s\00d\00k\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00s\00t\00d\00/\00o\00p\00-\00d\00a\00t\00a\00s\00t\00o\00r\00e\00/\00u\00t\00i\00l\00.\00t\00s")
 (data $81 (i32.const 5788) "<")
 (data $81.1 (i32.const 5800) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data $82 (i32.const 5852) "<")
 (data $82.1 (i32.const 5864) "\02\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $83 (i32.const 5916) "<")
 (data $83.1 (i32.const 5928) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00d\00a\00t\00a\00v\00i\00e\00w\00.\00t\00s")
 (data $84 (i32.const 5980) "\1c")
 (data $84.1 (i32.const 5992) "\02\00\00\00\08\00\00\00p\00e\00e\00r")
 (data $85 (i32.const 6012) "\1c")
 (data $85.1 (i32.const 6024) "\02\00\00\00\n\00\00\00a\00l\00i\00a\00s")
 (data $86 (i32.const 6044) "L")
 (data $86.1 (i32.const 6056) "\02\00\00\00<\00\00\00l\00i\00s\00t\00_\00c\00o\00n\00t\00a\00c\00t\00s\00:\00 \00c\00o\00r\00r\00u\00p\00t\00 \00c\00o\00n\00t\00a\00c\00t")
 (data $87 (i32.const 6124) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $88 (i32.const 6156) "\1c")
 (data $88.1 (i32.const 6168) "\05")
 (data $89 (i32.const 6188) "\\")
 (data $89.1 (i32.const 6200) "\02\00\00\00>\00\00\00c\00r\00e\00a\00t\00e\00_\00c\00o\00n\00v\00e\00r\00s\00a\00t\00i\00o\00n\00:\00 \00i\00d\00 \00m\00i\00s\00s\00i\00n\00g")
 (data $90 (i32.const 6284) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $91 (i32.const 6316) "\\")
 (data $91.1 (i32.const 6328) "\02\00\00\00D\00\00\00c\00r\00e\00a\00t\00e\00_\00c\00o\00n\00v\00e\00r\00s\00a\00t\00i\00o\00n\00:\00 \00t\00i\00t\00l\00e\00 \00m\00i\00s\00s\00i\00n\00g")
 (data $92 (i32.const 6412) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $93 (i32.const 6444) "\\")
 (data $93.1 (i32.const 6456) "\02\00\00\00L\00\00\00c\00r\00e\00a\00t\00e\00_\00c\00o\00n\00v\00e\00r\00s\00a\00t\00i\00o\00n\00:\00 \00a\00v\00a\00t\00a\00r\00C\00i\00d\00 \00m\00i\00s\00s\00i\00n\00g")
 (data $94 (i32.const 6540) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $95 (i32.const 6572) "\8c")
 (data $95.1 (i32.const 6584) "\02\00\00\00p\00\00\00c\00a\00n\00\'\00t\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00b\00o\00o\00l\00 \00f\00r\00o\00m\00 \00g\00i\00v\00e\00n\00 \00a\00r\00g\00u\00m\00e\00n\00t\00:\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $96 (i32.const 6716) "l")
 (data $96.1 (i32.const 6728) "\02\00\00\00N\00\00\00c\00r\00e\00a\00t\00e\00_\00c\00o\00n\00v\00e\00r\00s\00a\00t\00i\00o\00n\00:\00 \00m\00i\00s\00s\00i\00n\00g\00 \00g\00r\00o\00u\00p\00 \00f\00l\00a\00g")
 (data $97 (i32.const 6828) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $98 (i32.const 6860) "\1c")
 (data $98.1 (i32.const 6872) "\01")
 (data $99 (i32.const 6892) "|")
 (data $99.1 (i32.const 6904) "\02\00\00\00j\00\00\00c\00a\00n\00\'\00t\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00l\00e\00n\00g\00t\00h\00 \00o\00f\00 \00a\00r\00r\00a\00y\00 \00f\00r\00o\00m\00 \00g\00i\00v\00e\00n\00 \00a\00r\00g\00u\00m\00e\00n\00t")
 (data $100 (i32.const 7020) "\1c")
 (data $100.1 (i32.const 7032) "\01")
 (data $101 (i32.const 7052) "\1c")
 (data $101.1 (i32.const 7064) "\01")
 (data $102 (i32.const 7084) "\\")
 (data $102.1 (i32.const 7096) "\02\00\00\00H\00\00\00c\00r\00e\00a\00t\00e\00_\00c\00o\00n\00v\00e\00r\00s\00a\00t\00i\00o\00n\00:\00 \00m\00e\00m\00b\00e\00r\00s\00 \00m\00i\00s\00s\00i\00n\00g")
 (data $103 (i32.const 7180) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $104 (i32.const 7212) "|")
 (data $104.1 (i32.const 7224) "\02\00\00\00d\00\00\00c\00r\00e\00a\00t\00e\00_\00c\00o\00n\00v\00e\00r\00s\00a\00t\00i\00o\00n\00:\00 \00a\00t\00 \00l\00e\00a\00s\00t\00 \00t\00w\00o\00 \00m\00e\00m\00b\00e\00r\00s\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $105 (i32.const 7340) "\\")
 (data $105.1 (i32.const 7352) "\02\00\00\00F\00\00\00c\00r\00e\00a\00t\00e\00_\00c\00o\00n\00v\00e\00r\00s\00a\00t\00i\00o\00n\00:\00 \00a\00l\00r\00e\00a\00d\00y\00 \00e\00x\00i\00s\00t\00s")
 (data $106 (i32.const 7436) "L")
 (data $106.1 (i32.const 7448) "\02\00\00\00.\00\00\00c\00o\00n\00v\00e\00r\00s\00a\00t\00i\00o\00n\00:\00:\00c\00r\00e\00a\00t\00e\00d\00:\00:")
 (data $107 (i32.const 7516) "L")
 (data $107.1 (i32.const 7528) "\02\00\00\008\00\00\00g\00e\00t\00_\00c\00o\00n\00v\00e\00r\00s\00a\00t\00i\00o\00n\00:\00 \00i\00d\00 \00m\00i\00s\00s\00i\00n\00g")
 (data $108 (i32.const 7596) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $109 (i32.const 7628) "L")
 (data $109.1 (i32.const 7640) "\02\00\00\00.\00\00\00c\00o\00n\00v\00e\00r\00s\00a\00t\00i\00o\00n\00:\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data $110 (i32.const 7708) "\1c")
 (data $110.1 (i32.const 7720) "\01")
 (data $111 (i32.const 7740) ",")
 (data $111.1 (i32.const 7752) "\02\00\00\00\1c\00\00\00c\00o\00n\00v\00e\00r\00s\00a\00t\00i\00o\00n\00I\00d")
 (data $112 (i32.const 7788) "\1c")
 (data $112.1 (i32.const 7800) "\02\00\00\00\n\00\00\00t\00i\00t\00l\00e")
 (data $113 (i32.const 7820) ",")
 (data $113.1 (i32.const 7832) "\02\00\00\00\0e\00\00\00c\00r\00e\00a\00t\00o\00r")
 (data $114 (i32.const 7868) ",")
 (data $114.1 (i32.const 7880) "\02\00\00\00\0e\00\00\00i\00s\00G\00r\00o\00u\00p")
 (data $115 (i32.const 7916) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\000\10\00\00\00\00\00\00p\10")
 (data $116 (i32.const 7948) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $117 (i32.const 7980) ",")
 (data $117.1 (i32.const 7992) "\02\00\00\00\0e\00\00\00m\00e\00m\00b\00e\00r\00s")
 (data $118 (i32.const 8028) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\000\10\00\00\00\00\00\00p\10")
 (data $119 (i32.const 8060) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $120 (i32.const 8092) "\\")
 (data $120.1 (i32.const 8104) "\02\00\00\00F\00\00\00c\00o\00n\00v\00e\00r\00s\00a\00t\00i\00o\00n\00:\00 \00c\00o\00r\00r\00u\00p\00t\00 \00s\00e\00r\00i\00a\00l\00i\00z\00a\00t\00i\00o\00n")
 (data $121 (i32.const 8188) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $122 (i32.const 8220) "\1c")
 (data $122.1 (i32.const 8232) "\05")
 (data $123 (i32.const 8252) "L")
 (data $123.1 (i32.const 8264) "\02\00\00\000\00\00\00s\00e\00n\00d\00_\00m\00e\00s\00s\00a\00g\00e\00:\00 \00i\00d\00 \00m\00i\00s\00s\00i\00n\00g")
 (data $124 (i32.const 8332) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $125 (i32.const 8364) "L")
 (data $125.1 (i32.const 8376) "\02\00\00\00:\00\00\00s\00e\00n\00d\00_\00m\00e\00s\00s\00a\00g\00e\00:\00 \00p\00a\00y\00l\00o\00a\00d\00 \00m\00i\00s\00s\00i\00n\00g")
 (data $126 (i32.const 8444) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $127 (i32.const 8476) "\\")
 (data $127.1 (i32.const 8488) "\02\00\00\00B\00\00\00s\00e\00n\00d\00_\00m\00e\00s\00s\00a\00g\00e\00:\00 \00c\00i\00p\00h\00e\00r\00 \00h\00a\00s\00h\00 \00m\00i\00s\00s\00i\00n\00g")
 (data $128 (i32.const 8572) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $129 (i32.const 8604) "L")
 (data $129.1 (i32.const 8616) "\02\00\00\004\00\00\00s\00e\00n\00d\00_\00m\00e\00s\00s\00a\00g\00e\00:\00 \00m\00i\00m\00e\00 \00m\00i\00s\00s\00i\00n\00g")
 (data $130 (i32.const 8684) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $131 (i32.const 8716) "L")
 (data $131.1 (i32.const 8728) "\02\00\00\00:\00\00\00s\00e\00n\00d\00_\00m\00e\00s\00s\00a\00g\00e\00:\00 \00p\00r\00e\00v\00i\00e\00w\00 \00m\00i\00s\00s\00i\00n\00g")
 (data $132 (i32.const 8796) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $133 (i32.const 8828) "L")
 (data $133.1 (i32.const 8840) "\02\00\00\008\00\00\00s\00e\00n\00d\00_\00m\00e\00s\00s\00a\00g\00e\00:\00 \00s\00t\00a\00t\00u\00s\00 \00m\00i\00s\00s\00i\00n\00g")
 (data $134 (i32.const 8908) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $135 (i32.const 8940) "L")
 (data $135.1 (i32.const 8952) "\02\00\00\00:\00\00\00s\00e\00n\00d\00_\00m\00e\00s\00s\00a\00g\00e\00:\00 \00e\00x\00p\00i\00r\00e\00s\00 \00m\00i\00s\00s\00i\00n\00g")
 (data $136 (i32.const 9020) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $137 (i32.const 9052) "l")
 (data $137.1 (i32.const 9064) "\02\00\00\00P\00\00\00s\00e\00n\00d\00_\00m\00e\00s\00s\00a\00g\00e\00:\00 \00s\00e\00n\00d\00e\00r\00 \00n\00o\00t\00 \00i\00n\00 \00c\00o\00n\00v\00e\00r\00s\00a\00t\00i\00o\00n")
 (data $138 (i32.const 9164) "<")
 (data $138.1 (i32.const 9176) "\02\00\00\00 \00\00\00c\00o\00u\00n\00t\00e\00r\00:\00 \00c\00o\00r\00r\00u\00p\00t")
 (data $139 (i32.const 9228) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $140 (i32.const 9260) ",\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\10")
 (data $140.1 (i32.const 9288) "\b0\06")
 (data $141 (i32.const 9308) "|")
 (data $141.1 (i32.const 9320) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $142 (i32.const 9436) "<")
 (data $142.1 (i32.const 9448) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $143 (i32.const 9500) "\1c")
 (data $143.1 (i32.const 9512) "\02\00\00\00\02\00\00\000")
 (data $144 (i32.const 9532) "\\")
 (data $144.1 (i32.const 9544) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $145 (i32.const 9628) ",\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\10\00\00\00p\08\00\00\00\00\00\00\b0\06")
 (data $146 (i32.const 9676) "L")
 (data $146.1 (i32.const 9688) "\02\00\00\004\00\00\00f\00e\00t\00c\00h\00_\00m\00e\00s\00s\00a\00g\00e\00s\00:\00 \00i\00d\00 \00m\00i\00s\00s\00i\00n\00g")
 (data $147 (i32.const 9756) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $148 (i32.const 9788) "\\")
 (data $148.1 (i32.const 9800) "\02\00\00\00J\00\00\00f\00e\00t\00c\00h\00_\00m\00e\00s\00s\00a\00g\00e\00s\00:\00 \00r\00e\00q\00u\00e\00s\00t\00e\00r\00 \00n\00o\00t\00 \00a\00l\00l\00o\00w\00e\00d")
 (data $149 (i32.const 9884) "\1c")
 (data $149.1 (i32.const 9896) "\02\00\00\00\04\00\00\00i\00d")
 (data $150 (i32.const 9916) "\1c")
 (data $150.1 (i32.const 9928) "\02\00\00\00\0c\00\00\00s\00e\00n\00d\00e\00r")
 (data $151 (i32.const 9948) ",")
 (data $151.1 (i32.const 9960) "\02\00\00\00\14\00\00\00p\00a\00y\00l\00o\00a\00d\00C\00i\00d")
 (data $152 (i32.const 9996) ",")
 (data $152.1 (i32.const 10008) "\02\00\00\00\1c\00\00\00c\00i\00p\00h\00e\00r\00t\00e\00x\00t\00H\00a\00s\00h")
 (data $153 (i32.const 10044) ",")
 (data $153.1 (i32.const 10056) "\02\00\00\00\10\00\00\00m\00i\00m\00e\00T\00y\00p\00e")
 (data $154 (i32.const 10092) ",")
 (data $154.1 (i32.const 10104) "\02\00\00\00\0e\00\00\00p\00r\00e\00v\00i\00e\00w")
 (data $155 (i32.const 10140) ",")
 (data $155.1 (i32.const 10152) "\02\00\00\00\12\00\00\00t\00i\00m\00e\00s\00t\00a\00m\00p")
 (data $156 (i32.const 10188) ",")
 (data $156.1 (i32.const 10200) "\02\00\00\00\12\00\00\00e\00x\00p\00i\00r\00e\00s\00A\00t")
 (data $157 (i32.const 10236) "\\")
 (data $157.1 (i32.const 10248) "\02\00\00\00>\00\00\00f\00e\00t\00c\00h\00_\00m\00e\00s\00s\00a\00g\00e\00s\00:\00 \00c\00o\00r\00r\00u\00p\00t\00 \00m\00e\00s\00s\00a\00g\00e")
 (data $158 (i32.const 10332) "\1c\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\d0\r")
 (data $159 (i32.const 10364) "\1c")
 (data $159.1 (i32.const 10376) "\05")
 (data $160 (i32.const 10396) "<")
 (data $160.1 (i32.const 10408) "\02\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data $161 (i32.const 10460) "<")
 (data $161.1 (i32.const 10472) "\02\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data $162 (i32.const 10528) "/\00\00\00 \00\00\00 \00\00\00 ")
 (data $162.1 (i32.const 10552) "d\00\00\00\02\01\00\00\00\00\00\00 \00\00\00\02A\00\00\02A\00\00\02\t")
 (data $162.2 (i32.const 10592) "B\00\00\00\04A")
 (data $162.3 (i32.const 10616) "A\00\00\00\00\00\00\00\02A\00\00\00\00\00\00\02A")
 (data $162.4 (i32.const 10652) " \00\00\00 \00\00\00 \00\00\00B\00\00\00\02\01\00\00\02\02\00\00\02\n\00\00\02\19\00\00\02\1a\00\00\02A\00\00\02A\00\00\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00\02A")
 (table $0 2 2 funcref)
 (elem $0 (i32.const 1) $~lib/@massalabs/massa-as-sdk/assembly/std/utils/address/json2Address~anonymous|0)
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "constructor" (func $export:assembly/contracts/main/constructor))
 (export "register_profile" (func $export:assembly/contracts/main/register_profile))
 (export "get_profile" (func $export:assembly/contracts/main/get_profile))
 (export "add_contact" (func $export:assembly/contracts/main/add_contact))
 (export "list_contacts" (func $export:assembly/contracts/main/list_contacts))
 (export "create_conversation" (func $export:assembly/contracts/main/create_conversation))
 (export "get_conversation" (func $export:assembly/contracts/main/get_conversation))
 (export "list_conversations" (func $export:assembly/contracts/main/list_conversations))
 (export "send_message" (func $export:assembly/contracts/main/send_message))
 (export "fetch_messages" (func $export:assembly/contracts/main/fetch_messages))
 (start $~start)
 (func $~lib/rt/itcms/Object#get:color (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
 )
 (func $~lib/rt/itcms/Object#get:next (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
 )
 (func $~lib/rt/itcms/Object#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $0 i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/itcms/Object#get:next
  local.tee $1
  i32.eqz
  if
   local.get $0
   i32.load offset=8
   i32.eqz
   local.get $0
   i32.const 43488
   i32.lt_u
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1056
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
  local.get $0
  local.get $1
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/initLazy (param $0 i32) (result i32)
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
  local.get $0
 )
 (func $~lib/rt/itcms/Object#linkTo (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  local.set $3
  local.get $0
  local.get $1
  local.get $2
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $3
  call $~lib/rt/itcms/Object#set:prev
  local.get $3
  local.get $0
  call $~lib/rt/itcms/Object#set:next
  local.get $1
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1056
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  local.get $0
  call $~lib/rt/itcms/Object#unlink
  global.get $~lib/rt/itcms/toSpace
  local.set $1
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.const 10528
   i32.load
   i32.gt_u
   if
    i32.const 1152
    i32.const 1216
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 2
   i32.shl
   i32.const 10532
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  local.set $2
  local.get $0
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $2
  select
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   call $~lib/rt/itcms/Object#get:color
   local.tee $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1744
  call $~lib/rt/itcms/__visit
  i32.const 1808
  call $~lib/rt/itcms/__visit
  global.get $assembly/contracts/main/VERSION_KEY
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/contracts/main/PROFILE_PREFIX
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/contracts/main/CONTACT_PREFIX
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/contracts/main/CONVERSATION_PREFIX
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/contracts/main/MEMBER_INDEX_PREFIX
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/contracts/main/COUNTER_PREFIX
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/contracts/main/MESSAGE_PREFIX
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1152
  call $~lib/rt/itcms/__visit
  i32.const 1456
  call $~lib/rt/itcms/__visit
  i32.const 2320
  call $~lib/rt/itcms/__visit
  i32.const 1264
  call $~lib/rt/itcms/__visit
  i32.const 10416
  call $~lib/rt/itcms/__visit
  i32.const 10480
  call $~lib/rt/itcms/__visit
  i32.const 3312
  call $~lib/rt/itcms/__visit
  i32.const 9552
  call $~lib/rt/itcms/__visit
  global.get $~lib/@massalabs/as-types/assembly/argument/NoArg
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1712
  call $~lib/rt/itcms/__visit
  i32.const 1600
  call $~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  call $~lib/rt/itcms/Object#get:next
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1056
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  local.get $1
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/__visit (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/Object#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $3
   local.get $3
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $2
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $4
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $5
  local.get $1
  i32.load offset=4
  local.tee $3
  if
   local.get $3
   local.get $5
   call $~lib/rt/itcms/Object#set:prev
  end
  local.get $5
  if
   local.get $5
   local.get $3
   call $~lib/rt/itcms/Object#set:nextWithColor
  end
  local.get $1
  local.get $0
  local.get $2
  i32.const 4
  i32.shl
  local.get $4
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.tee $1
  i32.load offset=96
  i32.eq
  if
   local.get $1
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $4
    i32.rotl
    i32.and
    local.set $3
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $3
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $2
     i32.rotl
     i32.and
     call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1392
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $1
  local.get $3
  call $~lib/rt/itcms/Object#set:prev
  local.get $3
  if
   local.get $3
   local.get $1
   call $~lib/rt/itcms/Object#set:nextWithColor
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $3
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.tee $5
   local.get $3
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $5
    local.set $1
   end
  else
   local.get $0
   i32.const 1572
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.wrap_i64
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $3
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $3
  i32.const 8
  i32.sub
  local.tee $3
  i32.const 1
  i32.or
  i32.or
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:prev
  local.get $1
  i32.const 4
  i32.add
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  local.get $0
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $0
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $0
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 43488
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  i32.const 45056
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $1
   i32.const 23
   i32.lt_u
   if
    local.get $1
    i32.const 2
    i32.shl
    i32.const 43488
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $0
    loop $for-loop|1
     local.get $0
     i32.const 16
     i32.lt_u
     if
      local.get $1
      i32.const 4
      i32.shl
      local.get $0
      i32.add
      i32.const 2
      i32.shl
      i32.const 43488
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|1
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 43488
  i32.const 45060
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 43488
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $0
      call $~lib/rt/itcms/Object#get:color
      local.get $1
      i32.ne
      if
       local.get $0
       local.get $1
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      call $~lib/rt/itcms/Object#get:next
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 43488
      i32.lt_u
      if
       local.get $0
       i32.load
       call $~lib/rt/itcms/__visit
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $0
       call $~lib/rt/itcms/Object#get:color
       local.get $1
       i32.ne
       if
        local.get $0
        local.get $1
        call $~lib/rt/itcms/Object#set:color
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       call $~lib/rt/itcms/Object#get:next
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    local.get $0
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.ne
    if
     i32.const 0
     i32.const 1056
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 43488
    i32.lt_u
    if
     local.get $0
     i32.const 0
     call $~lib/rt/itcms/Object#set:nextWithColor
     local.get $0
     i32.const 0
     call $~lib/rt/itcms/Object#set:prev
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     call $~lib/rt/itcms/Object#get:size
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $1
     i32.const 43488
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.set $2
      local.get $1
      i32.const 4
      i32.sub
      local.set $0
      local.get $1
      i32.const 15
      i32.and
      i32.const 1
      local.get $1
      select
      if (result i32)
       i32.const 1
      else
       local.get $0
       i32.load
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1392
       i32.const 562
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $0
      local.get $0
      i32.load
      i32.const 1
      i32.or
      call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
      local.get $2
      local.get $0
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/roundSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.const 27
  local.get $0
  i32.clz
  i32.sub
  i32.shl
  i32.add
  i32.const 1
  i32.sub
  local.get $0
  local.get $0
  i32.const 536870910
  i32.lt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $1
   call $~lib/rt/tlsf/roundSize
   local.tee $1
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $2
   local.get $1
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1392
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1264
   i32.const 1392
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 12
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $1
  i32.const 12
  i32.le_u
  select
  local.tee $1
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   local.get $1
   i32.const 256
   i32.ge_u
   if (result i32)
    local.get $1
    call $~lib/rt/tlsf/roundSize
   else
    local.get $1
   end
   local.set $2
   memory.size
   local.tee $3
   local.get $2
   i32.const 4
   local.get $0
   i32.load offset=1568
   local.get $3
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $2
   local.get $3
   i32.lt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $0
   local.get $3
   i32.const 16
   i32.shl
   memory.size
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load
  local.set $3
  local.get $1
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1392
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $1
  i32.sub
  local.tee $4
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $1
   local.get $3
   i32.const 2
   i32.and
   i32.or
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   local.get $2
   i32.const 4
   i32.add
   local.get $1
   i32.add
   local.tee $1
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $3
   i32.const -2
   i32.and
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $0
   local.get $0
   i32.load
   i32.const -3
   i32.and
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  end
  local.get $2
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1264
   i32.const 1056
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt$35
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt$35
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  local.get $1
  call $~lib/rt/itcms/Object#set:rtId
  local.get $2
  local.get $0
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $2
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $2
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill
  local.get $1
 )
 (func $~lib/rt/__newBuffer (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/rt/itcms/__new
  local.set $1
  local.get $2
  if
   local.get $1
   local.get $2
   local.get $0
   memory.copy
  end
  local.get $1
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
 )
 (func $~lib/rt/itcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.const 20
  i32.sub
  local.tee $3
  i32.load
  i32.const -4
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $3
   local.get $1
   call $~lib/rt/itcms/Object#set:rtSize
   local.get $0
   return
  end
  local.get $1
  local.get $3
  i32.load offset=12
  call $~lib/rt/itcms/__new
  local.tee $2
  local.get $0
  local.get $1
  local.get $3
  i32.load offset=16
  local.tee $0
  local.get $0
  local.get $1
  i32.gt_u
  select
  memory.copy
  local.get $2
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $1
  loop $while-continue|0
   local.get $3
   local.tee $0
   i32.const 1
   i32.sub
   local.set $3
   local.get $0
   if
    local.get $1
    i32.load16_u
    local.tee $0
    local.get $2
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $0
     local.get $4
     i32.sub
     return
    end
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/staticarray/StaticArray<u8>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $3
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $2
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     local.get $2
     i32.store8
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $2
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      local.get $2
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $2
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      i32.const 2
      i32.add
     else
      local.get $2
      i32.const 63488
      i32.and
      i32.const 55296
      i32.eq
      if
       local.get $2
       i32.const 56320
       i32.lt_u
       local.get $0
       i32.const 2
       i32.add
       local.get $3
       i32.lt_u
       i32.and
       if
        local.get $0
        i32.load16_u offset=2
        local.tee $4
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         local.get $1
         local.get $2
         i32.const 1023
         i32.and
         i32.const 10
         i32.shl
         i32.const 65536
         i32.add
         local.get $4
         i32.const 1023
         i32.and
         i32.or
         local.tee $2
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         i32.const 24
         i32.shl
         local.get $2
         i32.const 6
         i32.shr_u
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         i32.const 16
         i32.shl
         i32.or
         local.get $2
         i32.const 12
         i32.shr_u
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         i32.const 8
         i32.shl
         i32.or
         local.get $2
         i32.const 18
         i32.shr_u
         i32.const 240
         i32.or
         i32.or
         i32.store
         local.get $1
         i32.const 4
         i32.add
         local.set $1
         local.get $0
         i32.const 4
         i32.add
         local.set $0
         br $while-continue|0
        end
       end
       i32.const 3312
       i32.const 3120
       i32.const 742
       i32.const 49
       call $~lib/builtins/abort
       unreachable
      end
      local.get $1
      local.get $2
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $2
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      local.get $2
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $1
      i32.const 3
      i32.add
     end
    end
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $assembly/contracts/models/Profile#set:avatarCid (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/contracts/models/Profile#set:bio (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/contracts/models/Profile#set:encryptionKey (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/contracts/models/Profile#set:status (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/contracts/models/Profile#set:createdAt (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=24
 )
 (func $assembly/contracts/models/Profile#set:updatedAt (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=32
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<u64>#set:value (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store
 )
 (func $~lib/@massalabs/as-types/assembly/serialization/numbers/u32ToBytes (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  call $~lib/staticarray/StaticArray<u8>#constructor
  local.tee $1
  i32.store
  local.get $1
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $assembly/contracts/models/ContactRecord#set:createdAt (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=16
 )
 (func $assembly/contracts/models/Conversation#set:isGroup (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=16
 )
 (func $assembly/contracts/models/ChatMessage#set:mimeType (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=24
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/contracts/models/ChatMessage#set:preview (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=28
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/contracts/models/ChatMessage#set:status (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=32
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/contracts/models/ChatMessage#set:timestamp (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=40
 )
 (func $assembly/contracts/models/ChatMessage#set:expiresAt (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=48
 )
 (func $~lib/rt/itcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   call $~lib/rt/itcms/Object#get:color
   i32.const 3
   i32.eq
   if
    i32.const 10416
    i32.const 1056
    i32.const 338
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   local.get $1
   global.get $~lib/rt/itcms/pinSpace
   i32.const 3
   call $~lib/rt/itcms/Object#linkTo
  end
  local.get $0
 )
 (func $~lib/rt/itcms/__unpin (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  call $~lib/rt/itcms/Object#get:color
  i32.const 3
  i32.ne
  if
   i32.const 10480
   i32.const 1056
   i32.const 352
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
  else
   local.get $0
   call $~lib/rt/itcms/Object#unlink
   local.get $0
   global.get $~lib/rt/itcms/fromSpace
   global.get $~lib/rt/itcms/white
   call $~lib/rt/itcms/Object#linkTo
  end
 )
 (func $~lib/rt/itcms/__collect
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i64.const 200
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32)
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner8
   block $folding-inner7
    block $folding-inner6
     block $folding-inner5
      block $folding-inner4
       block $folding-inner3
        block $folding-inner2
         block $folding-inner0
          block $invalid
           block $assembly/contracts/models/ChatMessage
            block $~lib/as-bignum/assembly/integer/u256/u256
             block $~lib/as-bignum/assembly/integer/u128/u128
              block $~lib/as-bignum/assembly/integer/i128/i128
               block $assembly/contracts/models/Conversation
                block $assembly/contracts/models/ContactRecord
                 block $~lib/typedarray/Uint8Array
                  block $assembly/contracts/models/Profile
                   block $~lib/staticarray/StaticArray<~lib/string/String>
                    block $~lib/function/Function<%28~lib/string/String%2Ci32%2C~lib/array/Array<~lib/string/String>%29=>~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>
                     block $~lib/@massalabs/as-types/assembly/serializable/Serializable
                      block $~lib/staticarray/StaticArray<u8>
                       block $~lib/string/String
                        block $~lib/arraybuffer/ArrayBuffer
                         block $~lib/object/Object
                          local.get $0
                          i32.const 8
                          i32.sub
                          i32.load
                          br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner0 $folding-inner8 $~lib/staticarray/StaticArray<u8> $folding-inner2 $folding-inner0 $~lib/@massalabs/as-types/assembly/serializable/Serializable $folding-inner3 $folding-inner3 $folding-inner2 $~lib/function/Function<%28~lib/string/String%2Ci32%2C~lib/array/Array<~lib/string/String>%29=>~lib/@massalabs/massa-as-sdk/assembly/std/address/Address> $folding-inner4 $folding-inner8 $folding-inner2 $~lib/staticarray/StaticArray<~lib/string/String> $assembly/contracts/models/Profile $folding-inner4 $folding-inner8 $folding-inner6 $~lib/typedarray/Uint8Array $assembly/contracts/models/ContactRecord $folding-inner3 $folding-inner0 $folding-inner3 $folding-inner4 $folding-inner8 $folding-inner4 $assembly/contracts/models/Conversation $~lib/as-bignum/assembly/integer/i128/i128 $~lib/as-bignum/assembly/integer/u128/u128 $~lib/as-bignum/assembly/integer/u256/u256 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner3 $folding-inner3 $folding-inner3 $folding-inner4 $folding-inner3 $assembly/contracts/models/ChatMessage $folding-inner3 $folding-inner4 $invalid
                         end
                         return
                        end
                        return
                       end
                       return
                      end
                      return
                     end
                     return
                    end
                    global.get $~lib/memory/__stack_pointer
                    i32.const 4
                    i32.sub
                    global.set $~lib/memory/__stack_pointer
                    call $~stack_check
                    global.get $~lib/memory/__stack_pointer
                    i32.const 0
                    i32.store
                    global.get $~lib/memory/__stack_pointer
                    local.get $0
                    i32.store
                    local.get $0
                    i32.load offset=4
                    call $~lib/rt/itcms/__visit
                    global.get $~lib/memory/__stack_pointer
                    i32.const 4
                    i32.add
                    global.set $~lib/memory/__stack_pointer
                    return
                   end
                   local.get $0
                   local.get $0
                   i32.const 20
                   i32.sub
                   i32.load offset=16
                   i32.add
                   local.set $1
                   loop $while-continue|0
                    local.get $0
                    local.get $1
                    i32.lt_u
                    if
                     local.get $0
                     i32.load
                     local.tee $2
                     if
                      local.get $2
                      call $~lib/rt/itcms/__visit
                     end
                     local.get $0
                     i32.const 4
                     i32.add
                     local.set $0
                     br $while-continue|0
                    end
                   end
                   return
                  end
                  local.get $0
                  i32.load
                  local.tee $1
                  if
                   local.get $1
                   call $~lib/rt/itcms/__visit
                  end
                  local.get $0
                  i32.load offset=4
                  local.tee $1
                  if
                   local.get $1
                   call $~lib/rt/itcms/__visit
                  end
                  local.get $0
                  i32.load offset=8
                  local.tee $1
                  if
                   local.get $1
                   call $~lib/rt/itcms/__visit
                  end
                  local.get $0
                  i32.load offset=12
                  local.tee $1
                  if
                   local.get $1
                   call $~lib/rt/itcms/__visit
                  end
                  local.get $0
                  i32.load offset=16
                  local.tee $1
                  if
                   local.get $1
                   call $~lib/rt/itcms/__visit
                  end
                  br $folding-inner5
                 end
                 local.get $0
                 call $~lib/arraybuffer/ArrayBufferView~visit
                 return
                end
                local.get $0
                i32.load
                local.tee $1
                if
                 local.get $1
                 call $~lib/rt/itcms/__visit
                end
                local.get $0
                i32.load offset=4
                local.tee $1
                if
                 local.get $1
                 call $~lib/rt/itcms/__visit
                end
                br $folding-inner6
               end
               local.get $0
               i32.load
               local.tee $1
               if
                local.get $1
                call $~lib/rt/itcms/__visit
               end
               local.get $0
               i32.load offset=4
               local.tee $1
               if
                local.get $1
                call $~lib/rt/itcms/__visit
               end
               local.get $0
               i32.load offset=8
               local.tee $1
               if
                local.get $1
                call $~lib/rt/itcms/__visit
               end
               local.get $0
               i32.load offset=12
               local.tee $1
               if
                local.get $1
                call $~lib/rt/itcms/__visit
               end
               br $folding-inner5
              end
              return
             end
             return
            end
            return
           end
           local.get $0
           i32.load offset=8
           local.tee $1
           if
            local.get $1
            call $~lib/rt/itcms/__visit
           end
           local.get $0
           i32.load offset=12
           local.tee $1
           if
            local.get $1
            call $~lib/rt/itcms/__visit
           end
           local.get $0
           i32.load offset=16
           local.tee $1
           if
            local.get $1
            call $~lib/rt/itcms/__visit
           end
           local.get $0
           i32.load offset=20
           local.tee $1
           if
            local.get $1
            call $~lib/rt/itcms/__visit
           end
           local.get $0
           i32.load offset=24
           local.tee $1
           if
            local.get $1
            call $~lib/rt/itcms/__visit
           end
           local.get $0
           i32.load offset=28
           local.tee $1
           if
            local.get $1
            call $~lib/rt/itcms/__visit
           end
           local.get $0
           i32.load offset=32
           local.tee $0
           if
            local.get $0
            call $~lib/rt/itcms/__visit
           end
           return
          end
          unreachable
         end
         local.get $0
         call $~lib/arraybuffer/ArrayBufferView~visit
         return
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        call $~stack_check
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.store
        br $folding-inner7
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       call $~stack_check
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       i32.load offset=4
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $1
       local.get $0
       i32.load offset=12
       i32.const 2
       i32.shl
       i32.add
       local.set $3
       loop $while-continue|00
        local.get $1
        local.get $3
        i32.lt_u
        if
         local.get $1
         i32.load
         local.tee $2
         if
          local.get $2
          call $~lib/rt/itcms/__visit
         end
         local.get $1
         i32.const 4
         i32.add
         local.set $1
         br $while-continue|00
        end
       end
       br $folding-inner7
      end
      local.get $0
      i32.load
      local.tee $1
      if
       local.get $1
       call $~lib/rt/itcms/__visit
      end
      br $folding-inner8
     end
     local.get $0
     i32.load offset=20
     local.tee $0
     if
      local.get $0
      call $~lib/rt/itcms/__visit
     end
     return
    end
    local.get $0
    i32.load offset=8
    local.tee $0
    if
     local.get $0
     call $~lib/rt/itcms/__visit
    end
    return
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   call $~lib/rt/itcms/__visit
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $0
  i32.load offset=4
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~start
  call $start:assembly/contracts/main
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 10720
  i32.lt_s
  if
   i32.const 43520
   i32.const 43568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  i32.const 0
  call $~lib/staticarray/StaticArray<u8>#constructor
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $2
  local.get $3
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $2of2
   block $0of2
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of2 $2of2 $2of2 $outOfRange
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 5
   i32.const 1568
   call $~lib/rt/__newBuffer
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/string/String#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  block $folding-inner0
   local.get $1
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.tee $4
   local.get $3
   i32.add
   local.tee $2
   i32.eqz
   if
    i32.const 1888
    local.set $2
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store offset=4
   local.get $2
   local.get $0
   local.get $3
   memory.copy
   local.get $2
   local.get $3
   i32.add
   local.get $1
   local.get $4
   memory.copy
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $start:assembly/contracts/main
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 1104
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  memory.size
  i32.const 16
  i32.shl
  i32.const 43488
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1312
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1344
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  global.set $~lib/@massalabs/as-types/assembly/argument/NoArg
  global.get $~lib/memory/__stack_pointer
  i32.const 1744
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1840
  i32.store offset=4
  i32.const 1744
  i32.const 1840
  call $~lib/string/String#concat
  global.set $assembly/contracts/main/VERSION_KEY
  global.get $~lib/memory/__stack_pointer
  i32.const 1744
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=4
  i32.const 1744
  i32.const 1920
  call $~lib/string/String#concat
  global.set $assembly/contracts/main/PROFILE_PREFIX
  global.get $~lib/memory/__stack_pointer
  i32.const 1744
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1968
  i32.store offset=4
  i32.const 1744
  i32.const 1968
  call $~lib/string/String#concat
  global.set $assembly/contracts/main/CONTACT_PREFIX
  global.get $~lib/memory/__stack_pointer
  i32.const 1744
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2016
  i32.store offset=4
  i32.const 1744
  i32.const 2016
  call $~lib/string/String#concat
  global.set $assembly/contracts/main/CONVERSATION_PREFIX
  global.get $~lib/memory/__stack_pointer
  i32.const 1744
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2064
  i32.store offset=4
  i32.const 1744
  i32.const 2064
  call $~lib/string/String#concat
  global.set $assembly/contracts/main/MEMBER_INDEX_PREFIX
  global.get $~lib/memory/__stack_pointer
  i32.const 1744
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2112
  i32.store offset=4
  i32.const 1744
  i32.const 2112
  call $~lib/string/String#concat
  global.set $assembly/contracts/main/COUNTER_PREFIX
  global.get $~lib/memory/__stack_pointer
  i32.const 1744
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2160
  i32.store offset=4
  i32.const 1744
  i32.const 2160
  call $~lib/string/String#concat
  global.set $assembly/contracts/main/MESSAGE_PREFIX
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/string/String#substring (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  i32.const 1
  local.get $0
  call $~lib/string/String#get:length
  local.tee $2
  local.get $2
  i32.const 1
  i32.gt_s
  select
  local.tee $4
  local.get $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $1
  local.get $2
  local.get $1
  local.get $2
  i32.lt_s
  select
  local.tee $1
  local.get $1
  local.get $4
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.set $3
  block $folding-inner0
   local.get $4
   local.get $1
   local.get $1
   local.get $4
   i32.lt_s
   select
   i32.const 1
   i32.shl
   local.tee $1
   local.get $3
   i32.sub
   local.tee $4
   i32.eqz
   if
    i32.const 1888
    local.set $0
    br $folding-inner0
   end
   local.get $3
   i32.eqz
   local.get $1
   local.get $2
   i32.const 1
   i32.shl
   i32.eq
   i32.and
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store offset=4
   local.get $1
   local.get $0
   local.get $3
   i32.add
   local.get $4
   memory.copy
   local.get $1
   local.set $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1456
    i32.const 2240
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   local.tee $2
   i32.const 1073741820
   local.get $3
   i32.const 1
   i32.shl
   local.tee $3
   local.get $3
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $3
   i32.const 8
   local.get $1
   local.get $1
   i32.const 8
   i32.le_u
   select
   i32.const 2
   i32.shl
   local.tee $1
   local.get $1
   local.get $3
   i32.lt_u
   select
   local.tee $1
   call $~lib/rt/itcms/__renew
   local.tee $3
   local.get $2
   i32.ne
   if
    local.get $0
    local.get $3
    i32.store
    local.get $0
    local.get $3
    i32.store offset=4
    local.get $0
    local.get $3
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/string/String>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1152
    i32.const 2240
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   call $~lib/array/ensureCapacity
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $3
   call $~lib/rt/itcms/Object#set:rtId
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/string/String>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  call $~lib/array/ensureCapacity
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $3
  call $~lib/rt/itcms/Object#set:rtId
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/string/String#split (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 40
  memory.fill
  block $folding-inner2
   block $folding-inner1
    block $folding-inner0
     local.get $2
     i32.eqz
     br_if $folding-inner0
     local.get $1
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 1
      i32.const 2
      i32.const 10
      i32.const 0
      call $~lib/rt/__newArray
      local.tee $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.load offset=4
      i32.store offset=4
      local.get $1
      i32.const 0
      local.get $0
      call $~lib/array/Array<~lib/string/String>#__set
      global.get $~lib/memory/__stack_pointer
      i32.const 40
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $1
      return
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     call $~lib/string/String#get:length
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=8
     i32.const 2147483647
     local.get $2
     local.get $2
     i32.const 0
     i32.lt_s
     select
     local.set $7
     local.get $1
     call $~lib/string/String#get:length
     local.tee $8
     if
      local.get $5
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 1
       i32.const 2
       i32.const 10
       i32.const 0
       call $~lib/rt/__newArray
       local.tee $0
       i32.store offset=20
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=8
       local.get $0
       i32.load offset=4
       i32.const 1888
       i32.store
       br $folding-inner1
      end
     else
      local.get $5
      i32.eqz
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.get $5
      local.get $7
      local.get $5
      local.get $7
      i32.lt_s
      select
      local.tee $2
      i32.const 2
      i32.const 10
      i32.const 0
      call $~lib/rt/__newArray
      local.tee $3
      i32.store offset=12
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=8
      local.get $3
      i32.load offset=4
      local.set $4
      i32.const 0
      local.set $1
      loop $for-loop|0
       local.get $1
       local.get $2
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 2
        i32.const 2
        call $~lib/rt/itcms/__new
        local.tee $5
        i32.store offset=16
        local.get $5
        local.get $0
        local.get $1
        i32.const 1
        i32.shl
        i32.add
        i32.load16_u
        i32.store16
        local.get $4
        local.get $1
        i32.const 2
        i32.shl
        i32.add
        local.get $5
        i32.store
        local.get $3
        local.get $5
        i32.const 1
        call $~lib/rt/itcms/__link
        local.get $1
        i32.const 1
        i32.add
        local.set $1
        br $for-loop|0
       end
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 40
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $3
      return
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 2
     i32.const 10
     i32.const 0
     call $~lib/rt/__newArray
     local.tee $6
     i32.store offset=24
     loop $while-continue|1
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=28
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i64.const 0
      i64.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      block $folding-inner10
       local.get $1
       call $~lib/string/String#get:length
       local.tee $9
       i32.eqz
       if
        i32.const 0
        local.set $2
        br $folding-inner10
       end
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       call $~lib/string/String#get:length
       local.tee $10
       if
        local.get $3
        i32.const 0
        local.get $3
        i32.const 0
        i32.gt_s
        select
        local.tee $2
        local.get $10
        local.get $2
        local.get $10
        i32.lt_s
        select
        local.set $2
        local.get $10
        local.get $9
        i32.sub
        local.set $10
        loop $for-loop|01
         local.get $2
         local.get $10
         i32.le_s
         if
          global.get $~lib/memory/__stack_pointer
          local.get $0
          i32.store
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store offset=4
          local.get $0
          local.get $2
          local.get $1
          local.get $9
          call $~lib/util/string/compareImpl
          i32.eqz
          br_if $folding-inner10
          local.get $2
          i32.const 1
          i32.add
          local.set $2
          br $for-loop|01
         end
        end
       end
       i32.const -1
       local.set $2
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $2
      i32.const -1
      i32.xor
      if
       local.get $2
       local.get $3
       i32.sub
       local.tee $9
       i32.const 0
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.const 1
        i32.shl
        local.tee $9
        i32.const 2
        call $~lib/rt/itcms/__new
        local.tee $10
        i32.store offset=32
        local.get $10
        local.get $0
        local.get $3
        i32.const 1
        i32.shl
        i32.add
        local.get $9
        memory.copy
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store offset=8
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=28
        local.get $6
        local.get $10
        call $~lib/array/Array<~lib/string/String>#push
       else
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store offset=8
        global.get $~lib/memory/__stack_pointer
        i32.const 1888
        i32.store offset=28
        local.get $6
        i32.const 1888
        call $~lib/array/Array<~lib/string/String>#push
       end
       local.get $4
       i32.const 1
       i32.add
       local.tee $4
       local.get $7
       i32.eq
       br_if $folding-inner2
       local.get $2
       local.get $8
       i32.add
       local.set $3
       br $while-continue|1
      end
     end
     local.get $3
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=28
      local.get $6
      local.get $0
      call $~lib/array/Array<~lib/string/String>#push
      br $folding-inner2
     end
     local.get $5
     local.get $3
     i32.sub
     local.tee $1
     i32.const 0
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.const 1
      i32.shl
      local.tee $1
      i32.const 2
      call $~lib/rt/itcms/__new
      local.tee $2
      i32.store offset=36
      local.get $2
      local.get $0
      local.get $3
      i32.const 1
      i32.shl
      i32.add
      local.get $1
      memory.copy
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=28
      local.get $6
      local.get $2
      call $~lib/array/Array<~lib/string/String>#push
     else
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      i32.const 1888
      i32.store offset=28
      local.get $6
      i32.const 1888
      call $~lib/array/Array<~lib/string/String>#push
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 40
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $6
     return
    end
    i32.const 0
    i32.const 2
    i32.const 10
    i32.const 0
    call $~lib/rt/__newArray
    local.set $0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/utils/address/json2Address~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.sub
  call $~lib/string/String#substring
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 7
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#map<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 2
  i32.const 9
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.load offset=4
  local.set $4
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $2
   local.get $3
   local.get $0
   i32.load offset=12
   local.tee $5
   local.get $3
   local.get $5
   i32.lt_s
   select
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.const 2
    i32.shl
    local.tee $5
    local.get $0
    i32.load offset=4
    i32.add
    i32.load
    local.tee $6
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    i32.const 3
    global.set $~argumentsLength
    global.get $~lib/memory/__stack_pointer
    local.get $6
    local.get $2
    local.get $0
    i32.const 2288
    i32.load
    call_indirect (type $4)
    local.tee $6
    i32.store offset=16
    local.get $4
    local.get $5
    i32.add
    local.get $6
    i32.store
    local.get $1
    local.get $6
    i32.const 1
    call $~lib/rt/itcms/__link
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/utils/address/json2Address (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.sub
  call $~lib/string/String#substring
  local.tee $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  i32.const 2208
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2208
  i32.store offset=4
  i32.const 1
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $0
   end
   i32.const 2147483647
   local.set $3
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  local.get $3
  call $~lib/string/String#split
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2288
  i32.store offset=4
  local.get $0
  call $~lib/array/Array<~lib/string/String>#map<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/context/addressStack (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.callStack
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/address/json2Address
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1152
   i32.const 2240
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $0
  i32.eqz
  if
   i32.const 2320
   i32.const 2240
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/context/callee (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/addressStack
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $0
  call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
  i32.const 1
  i32.sub
  call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/addressStack
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
  i32.const 2
  i32.lt_s
  if (result i32)
   call $~lib/@massalabs/massa-as-sdk/assembly/std/context/callee
  else
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   local.get $0
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
   i32.const 2
   i32.sub
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $folding-inner0
   local.get $0
   local.get $1
   i32.eq
   if
    i32.const 1
    local.set $2
    br $folding-inner0
   end
   local.get $1
   i32.eqz
   local.get $0
   i32.eqz
   i32.or
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/string/String#get:length
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/string/String#get:length
   local.get $3
   i32.ne
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $0
   i32.const 0
   local.get $1
   local.get $3
   call $~lib/util/string/compareImpl
   i32.eqz
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<u32>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 14
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/staticarray/StaticArray<u8>#slice<~lib/array/Array<u8>> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  i32.const 0
  i32.const 15
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.load offset=4
  local.get $0
  local.get $1
  i32.add
  local.get $2
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#getNextData (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  i32.load
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $4
  local.get $0
  i32.load
  local.get $1
  i32.add
  call $~lib/staticarray/StaticArray<u8>#slice<~lib/array/Array<u8>>
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $3
  local.get $2
  i32.load offset=4
  local.tee $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load
  local.get $1
  i32.add
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#nextU32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  block $folding-inner0 (result i32)
   local.get $0
   i32.load
   i32.const 4
   i32.add
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store
   local.get $2
   call $~lib/staticarray/StaticArray<u8>#get:length
   local.get $1
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 2592
    i32.store
    i32.const 0
    i32.const 2592
    call $~lib/@massalabs/as-types/assembly/result/Result<u32>#constructor
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 4
   call $~lib/@massalabs/as-types/assembly/argument/Args#getNextData
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<u32>#constructor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/string/String.__not (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/string/String#get:length
   i32.eqz
  else
   i32.const 1
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 13
  call $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
 )
 (func $~lib/@massalabs/as-types/assembly/serialization/strings/bytesToString (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  block $folding-inner0
   local.get $0
   call $~lib/staticarray/StaticArray<u8>#get:length
   i32.eqz
   if
    i32.const 1888
    local.set $0
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   call $~stack_check
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $0
   call $~lib/staticarray/StaticArray<u8>#get:length
   call $~lib/string/String.UTF8.decodeUnsafe
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#nextString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const -64
  i32.add
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 64
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU32
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $2
  i32.store
  block $folding-inner2
   block $folding-inner1
    block $folding-inner0
     local.get $2
     call $~lib/string/String.__not
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      i32.load
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=24
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=16
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.load offset=4
      local.tee $3
      i32.store
      local.get $3
      call $~lib/string/String.__not
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.load offset=4
       local.tee $0
       i32.store offset=28
       local.get $0
       i32.eqz
       br_if $folding-inner0
       br $folding-inner2
      end
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=32
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      local.get $2
      local.get $1
      i32.load
      i32.add
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=16
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=4
      local.tee $3
      i32.store
      local.get $3
      call $~lib/staticarray/StaticArray<u8>#get:length
      local.get $2
      i32.lt_s
     else
      i32.const 1
     end
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 1888
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 2976
      i32.store offset=16
      i32.const 1888
      i32.const 2976
      call $~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
      local.set $0
      br $folding-inner1
     end
     global.get $~lib/memory/__stack_pointer
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=36
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=40
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=48
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.load offset=4
     local.tee $3
     i32.store offset=44
     local.get $3
     call $~lib/string/String.__not
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=44
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.load offset=4
      local.tee $0
      i32.store offset=52
      local.get $0
      i32.eqz
      br_if $folding-inner0
      br $folding-inner2
     end
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=56
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=44
     local.get $0
     local.get $1
     i32.load
     call $~lib/@massalabs/as-types/assembly/argument/Args#getNextData
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $2
     local.get $0
     call $~lib/@massalabs/as-types/assembly/serialization/strings/bytesToString
     local.tee $0
     i32.store offset=60
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     i32.const 0
     call $~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
     local.set $0
     br $folding-inner1
    end
    i32.const 2736
    i32.const 2864
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const -64
   i32.sub
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  local.get $0
  i32.const 2864
  i32.const 70
  i32.const 7
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/string/String.__ne (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/string/String#concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/util/string/joinReferenceArray<~lib/string/String> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  block $folding-inner0
   local.get $1
   i32.const 1
   i32.sub
   local.tee $3
   i32.const 0
   i32.lt_s
   if
    i32.const 1888
    local.set $0
    br $folding-inner0
   end
   local.get $3
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $0
    i32.const 0
    call $~lib/string/String.__ne
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
    else
     i32.const 1888
     local.set $0
    end
    br $folding-inner0
   end
   i32.const 1888
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 1888
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 1888
   i32.store offset=4
   i32.const 1888
   call $~lib/string/String#get:length
   local.set $5
   loop $for-loop|0
    local.get $3
    local.get $4
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     local.get $2
     i32.const 0
     call $~lib/string/String.__ne
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=16
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=12
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $2
      call $~lib/string/String.__concat
      local.tee $1
      i32.store offset=8
     end
     local.get $5
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      i32.const 1888
      i32.store offset=12
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.const 1888
      call $~lib/string/String.__concat
      local.tee $1
      i32.store offset=8
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   local.get $3
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   call $~lib/string/String.__ne
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.get $0
    call $~lib/string/String.__concat
    local.tee $1
    i32.store offset=8
   end
   local.get $1
   local.set $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store
  local.get $0
  local.get $1
  call $~lib/util/string/joinReferenceArray<~lib/string/String>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.tee $1
  i32.store
  block $folding-inner0
   local.get $1
   call $~lib/string/String#get:length
   i32.eqz
   if
    i32.const 0
    i32.const 5
    i32.const 3280
    call $~lib/rt/__newBuffer
    local.set $0
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   call $~stack_check
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   local.set $2
   i32.const 0
   local.set $0
   local.get $1
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.add
   local.set $3
   loop $while-continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     local.get $2
     i32.load16_u
     local.tee $4
     i32.const 128
     i32.lt_u
     if (result i32)
      local.get $0
      i32.const 1
      i32.add
     else
      local.get $4
      i32.const 2048
      i32.lt_u
      if (result i32)
       local.get $0
       i32.const 2
       i32.add
      else
       local.get $4
       i32.const 64512
       i32.and
       i32.const 55296
       i32.eq
       local.get $2
       i32.const 2
       i32.add
       local.get $3
       i32.lt_u
       i32.and
       if
        local.get $2
        i32.load16_u offset=2
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         local.get $0
         i32.const 4
         i32.add
         local.set $0
         local.get $2
         i32.const 4
         i32.add
         local.set $2
         br $while-continue|0
        end
       end
       local.get $0
       i32.const 3
       i32.add
      end
     end
     local.set $0
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   local.get $1
   call $~lib/string/String#get:length
   local.get $0
   call $~lib/string/String.UTF8.encodeUnsafe
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/storage/toDatastoreFormat<~lib/string/String> (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/string/String> (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/toDatastoreFormat<~lib/string/String>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/toDatastoreFormat<~lib/string/String>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.set
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.generateEvent
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/constructor (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 56
  memory.fill
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.callerHasWriteAccess
  if (result i32)
   call $~lib/@massalabs/massa-as-sdk/assembly/std/context/callee
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   call $~stack_check
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   call $~stack_check
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $2
   call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $1
   local.get $2
   call $~lib/string/String.__eq
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 2448
   i32.const 2512
   i32.const 27
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/string/String.__not
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.store
   local.get $1
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $0
    i32.store offset=28
    local.get $0
    i32.eqz
    if
     i32.const 2736
     i32.const 2864
     i32.const 70
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2864
    i32.const 70
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
  else
   i32.const 3168
  end
  local.tee $0
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/main/VERSION_KEY
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  i32.const 1808
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  i32.const 3248
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=52
  i32.const 3248
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 3248
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  i32.const 1808
  i32.store offset=52
  i32.const 3248
  i32.const 2
  i32.const 1808
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 3248
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=52
  i32.const 3248
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/string/String>
  global.get $~lib/memory/__stack_pointer
  i32.const 3376
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=48
  i32.const 3376
  local.get $0
  call $~lib/string/String#concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/profileKey (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/main/PROFILE_PREFIX
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/storage/has<~lib/staticarray/StaticArray<u8>> (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.has
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>> (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.get
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/models/Profile#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i64) (param $7 i64) (result i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.const 17
  call $~lib/rt/itcms/__new
  local.tee $8
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $8
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $8
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $8
  local.get $2
  call $assembly/contracts/models/Profile#set:avatarCid
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $8
  local.get $3
  call $assembly/contracts/models/Profile#set:bio
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $8
  local.get $4
  call $assembly/contracts/models/Profile#set:encryptionKey
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $8
  local.get $5
  call $assembly/contracts/models/Profile#set:status
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $6
  call $assembly/contracts/models/Profile#set:createdAt
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $7
  call $assembly/contracts/models/Profile#set:updatedAt
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/string/String,void>" (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 44
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4240
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  i32.const 4240
  i32.const 1
  local.get $1
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 4240
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=12
  local.get $2
  i32.const 4240
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.tee $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store
  local.get $2
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.set $2
   local.get $0
   i32.eqz
   if
    i32.const 2736
    i32.const 2864
    i32.const 52
    i32.const 32
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $0
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   i32.const 4272
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   i32.const 4272
   i32.const 0
   local.get $1
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 4272
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   i32.const 4272
   i32.const 2
   local.get $0
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 4272
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1888
   i32.store offset=12
   i32.const 4272
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2864
   i32.const 52
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<u64>#constructor (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.const 20
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  call $~lib/@massalabs/as-types/assembly/result/Result<u64>#set:value
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $1
  call $assembly/contracts/models/Profile#set:avatarCid
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#nextU64 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  block $folding-inner0 (result i32)
   local.get $0
   i32.load
   i32.const 8
   i32.add
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store
   local.get $2
   call $~lib/staticarray/StaticArray<u8>#get:length
   local.get $1
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4560
    i32.store
    i64.const 0
    i32.const 4560
    call $~lib/@massalabs/as-types/assembly/result/Result<u64>#constructor
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 8
   call $~lib/@massalabs/as-types/assembly/argument/Args#getNextData
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   call $~stack_check
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i64.load
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<u64>#constructor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<u64,void>" (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 44
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4704
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  i32.const 4704
  i32.const 1
  local.get $1
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 4704
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=12
  local.get $3
  i32.const 4704
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.tee $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.store
  local.get $3
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $0
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.set $3
   local.get $0
   i32.eqz
   if
    i32.const 2736
    i32.const 2864
    i32.const 52
    i32.const 32
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $0
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   i32.const 4736
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   i32.const 4736
   i32.const 0
   local.get $1
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 4736
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   i32.const 4736
   i32.const 2
   local.get $0
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 4736
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1888
   i32.store offset=12
   i32.const 4736
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2864
   i32.const 52
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i64.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<i32>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 19
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#get:offset (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/models/Profile#deserialize (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4112
  i32.store offset=16
  local.get $1
  i32.const 4112
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4304
  i32.store offset=16
  local.get $1
  i32.const 4304
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4352
  i32.store offset=16
  local.get $1
  i32.const 4352
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $assembly/contracts/models/Profile#set:avatarCid
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4400
  i32.store offset=16
  local.get $1
  i32.const 4400
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $assembly/contracts/models/Profile#set:bio
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4432
  i32.store offset=16
  local.get $1
  i32.const 4432
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $assembly/contracts/models/Profile#set:encryptionKey
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4480
  i32.store offset=16
  local.get $1
  i32.const 4480
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $assembly/contracts/models/Profile#set:status
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4512
  i32.store offset=12
  local.get $0
  local.get $1
  i32.const 4512
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<u64,void>"
  call $assembly/contracts/models/Profile#set:createdAt
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4768
  i32.store offset=12
  local.get $0
  local.get $1
  i32.const 4768
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<u64,void>"
  call $assembly/contracts/models/Profile#set:updatedAt
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#get:offset
  call $~lib/@massalabs/as-types/assembly/result/Result<i32>#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<assembly/contracts/models/Profile>#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 18
  call $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#nextSerializable<assembly/contracts/models/Profile> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 56
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.const 1888
  i32.const 1888
  i32.const 1888
  i32.const 1888
  i32.const 1888
  i64.const 0
  i64.const 0
  call $assembly/contracts/models/Profile#constructor
  local.tee $1
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  local.get $0
  i32.load
  call $assembly/contracts/models/Profile#deserialize
  local.tee $2
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $3
  i32.store
  block $folding-inner0 (result i32)
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4848
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4816
    i32.store offset=12
    i32.const 4848
    i32.const 4816
    call $~lib/string/String#concat
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    call $~lib/@massalabs/as-types/assembly/result/Result<assembly/contracts/models/Profile>#constructor
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=40
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=4
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=48
    local.get $0
    i32.eqz
    if
     i32.const 2736
     i32.const 2864
     i32.const 70
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2864
    i32.const 70
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=52
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $2
   i32.load
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<assembly/contracts/models/Profile>#constructor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/tryReadProfile (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $assembly/contracts/main/profileKey
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/has<~lib/staticarray/StaticArray<u8>>
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>>
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $1
   local.get $0
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
   local.tee $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextSerializable<assembly/contracts/models/Profile>
   local.tee $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 4928
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.store
   local.get $1
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4928
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $0
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    local.set $1
    local.get $0
    i32.eqz
    if
     i32.const 2736
     i32.const 2864
     i32.const 52
     i32.const 32
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    i32.const 5008
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4928
    i32.store offset=8
    i32.const 5008
    i32.const 0
    i32.const 4928
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5008
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    i32.const 5008
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5008
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1888
    i32.store offset=8
    i32.const 5008
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2864
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
  else
   i32.const 0
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.tee $3
  local.get $2
  i32.add
  local.tee $4
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1456
   i32.const 1504
   i32.const 178
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $4
  i32.store offset=4
  local.get $4
  local.get $0
  local.get $2
  memory.copy
  local.get $2
  local.get $4
  i32.add
  local.get $1
  local.get $3
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>" (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=8
  local.get $1
  call $~lib/@massalabs/as-types/assembly/serialization/numbers/u32ToBytes
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $1
  call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>" (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<u8>#get:length
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  local.get $2
  local.get $1
  call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>" (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  call $~lib/staticarray/StaticArray<u8>#constructor
  local.tee $2
  i32.store
  local.get $2
  local.get $1
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  local.get $3
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $2
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#serialize (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/models/Profile#serialize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const -64
  i32.add
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 64
  memory.fill
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=60
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store offset=56
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=48
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.store offset=40
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.store offset=32
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=16
  local.tee $2
  i32.store offset=24
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=20
  local.tee $2
  i32.store offset=16
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $1
  local.get $0
  i64.load offset=24
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  i64.load offset=32
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const -64
  i32.sub
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/staticarray/StaticArray<u8>> (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.set
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/register_profile (param $0 i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 220
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 220
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.set $3
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $3
  local.get $4
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  local.tee $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $5
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 3440
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.load offset=4
  local.tee $6
  i32.store
  block $folding-inner0
   local.get $6
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 3440
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load offset=4
    local.tee $0
    i32.store offset=36
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    i32.const 3568
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 3440
    i32.store offset=28
    i32.const 3568
    i32.const 0
    i32.const 3440
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 3568
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 3568
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 3568
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1888
    i32.store offset=28
    i32.const 3568
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2864
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $4
   local.get $5
   i32.load
   local.tee $4
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $6
   i32.store offset=52
   global.get $~lib/memory/__stack_pointer
   i32.const 3600
   i32.store offset=56
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.load offset=4
   local.tee $7
   i32.store
   local.get $7
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 3600
    i32.store offset=68
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.load offset=4
    local.tee $0
    i32.store offset=72
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=76
    global.get $~lib/memory/__stack_pointer
    i32.const 3696
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 3600
    i32.store offset=28
    i32.const 3696
    i32.const 0
    i32.const 3600
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 3696
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 3696
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 3696
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1888
    i32.store offset=28
    i32.const 3696
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2864
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=80
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $5
   local.get $6
   i32.load
   local.tee $5
   i32.store offset=84
   global.get $~lib/memory/__stack_pointer
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $7
   i32.store offset=88
   global.get $~lib/memory/__stack_pointer
   i32.const 3728
   i32.store offset=92
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=96
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=100
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.load offset=4
   local.tee $8
   i32.store
   local.get $8
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 3728
    i32.store offset=104
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.load offset=4
    local.tee $0
    i32.store offset=108
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=112
    global.get $~lib/memory/__stack_pointer
    i32.const 3808
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 3728
    i32.store offset=28
    i32.const 3808
    i32.const 0
    i32.const 3728
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 3808
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 3808
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 3808
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1888
    i32.store offset=28
    i32.const 3808
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2864
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=116
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store
   local.get $6
   local.get $7
   i32.load
   local.tee $6
   i32.store offset=120
   global.get $~lib/memory/__stack_pointer
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $8
   i32.store offset=124
   global.get $~lib/memory/__stack_pointer
   i32.const 3840
   i32.store offset=128
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=132
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=136
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.load offset=4
   local.tee $9
   i32.store
   local.get $9
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 3840
    i32.store offset=140
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.load offset=4
    local.tee $0
    i32.store offset=144
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=148
    global.get $~lib/memory/__stack_pointer
    i32.const 3952
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 3840
    i32.store offset=28
    i32.const 3952
    i32.const 0
    i32.const 3840
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 3952
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 3952
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 3952
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1888
    i32.store offset=28
    i32.const 3952
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2864
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=152
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $7
   local.get $8
   i32.load
   local.tee $7
   i32.store offset=156
   global.get $~lib/memory/__stack_pointer
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $0
   i32.store offset=160
   global.get $~lib/memory/__stack_pointer
   i32.const 3984
   i32.store offset=164
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=168
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=172
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $9
   i32.store
   local.get $9
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 3984
    i32.store offset=176
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $0
    i32.store offset=180
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=184
    global.get $~lib/memory/__stack_pointer
    i32.const 4080
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 3984
    i32.store offset=28
    i32.const 4080
    i32.const 0
    i32.const 3984
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 4080
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 4080
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 4080
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1888
    i32.store offset=28
    i32.const 4080
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2864
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=188
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $8
   local.get $0
   i32.load
   local.tee $0
   i32.store offset=192
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   call $assembly/contracts/main/tryReadProfile
   local.tee $8
   i32.store offset=196
   local.get $8
   if (result i64)
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    local.get $8
    i64.load offset=24
   else
    call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.time
   end
   local.set $1
   call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.time
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=200
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=204
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=208
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=212
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.get $4
   local.get $5
   local.get $6
   local.get $7
   local.get $0
   local.get $1
   local.get $2
   call $assembly/contracts/models/Profile#constructor
   local.tee $0
   i32.store offset=216
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=200
   local.get $3
   call $assembly/contracts/main/profileKey
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=200
   local.get $0
   call $assembly/contracts/models/Profile#serialize
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=28
   local.get $4
   local.get $0
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/staticarray/StaticArray<u8>>
   global.get $~lib/memory/__stack_pointer
   i32.const 5040
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=200
   i32.const 5040
   local.get $3
   call $~lib/string/String#concat
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
   global.get $~lib/memory/__stack_pointer
   i32.const 220
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 2736
  i32.const 2864
  i32.const 52
  i32.const 32
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/contracts/main/get_profile (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 44
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/string/String.__not
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.store
   local.get $1
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $0
    i32.store offset=28
    local.get $0
    i32.eqz
    if
     i32.const 2736
     i32.const 2864
     i32.const 70
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2864
    i32.const 70
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
  else
   call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  end
  local.tee $0
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $assembly/contracts/main/tryReadProfile
  local.tee $0
  i32.store offset=4
  local.get $0
  i32.eqz
  if
   i32.const 5104
   i32.const 2512
   i32.const 350
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  i32.eqz
  if
   i32.const 2736
   i32.const 2512
   i32.const 351
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  local.get $0
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/models/Profile#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/contactPrefix (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/main/CONTACT_PREFIX
  local.tee $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $1
  local.get $0
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1712
  i32.store offset=4
  local.get $0
  i32.const 1712
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/models/ContactRecord#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.const 22
  call $~lib/rt/itcms/__new
  local.tee $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $4
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $4
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $4
  local.get $2
  call $assembly/contracts/models/Profile#set:avatarCid
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $3
  call $assembly/contracts/models/ContactRecord#set:createdAt
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $assembly/contracts/models/ContactRecord#serialize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 36
  memory.fill
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store offset=28
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=20
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.store offset=12
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  i64.load offset=16
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/add_contact (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 100
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 100
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.set $1
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $1
  local.get $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $3
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 5168
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.load offset=4
  local.tee $4
  i32.store
  local.get $4
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 5168
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load offset=4
   local.tee $0
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.set $1
   local.get $0
   i32.eqz
   if
    i32.const 2736
    i32.const 2864
    i32.const 52
    i32.const 32
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $0
   i32.store offset=40
   global.get $~lib/memory/__stack_pointer
   i32.const 5264
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 5168
   i32.store offset=28
   i32.const 5264
   i32.const 0
   i32.const 5168
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 5264
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=28
   i32.const 5264
   i32.const 2
   local.get $0
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 5264
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1888
   i32.store offset=28
   i32.const 5264
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2864
   i32.const 52
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $2
  local.get $3
  i32.load
  local.tee $2
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=28
  local.get $2
  local.get $1
  call $~lib/string/String.__ne
  i32.eqz
  if
   i32.const 5296
   i32.const 2512
   i32.const 86
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $0
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=56
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  call $~lib/string/String.__not
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $3
   i32.store
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $0
    i32.store offset=68
    local.get $0
    i32.eqz
    if
     i32.const 2736
     i32.const 2864
     i32.const 70
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2864
    i32.const 70
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=72
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
  else
   i32.const 1888
  end
  local.tee $0
  i32.store offset=76
  global.get $~lib/memory/__stack_pointer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  local.get $1
  call $assembly/contracts/main/contactPrefix
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $4
  local.get $2
  call $~lib/string/String.__concat
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  local.get $4
  i32.store offset=80
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/has<~lib/staticarray/StaticArray<u8>>
  if
   i32.const 5376
   i32.const 2512
   i32.const 91
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=84
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.time
  call $assembly/contracts/models/ContactRecord#constructor
  local.tee $0
  i32.store offset=88
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=84
  local.get $0
  call $assembly/contracts/models/ContactRecord#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=28
  local.get $4
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/staticarray/StaticArray<u8>>
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=92
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=96
  global.get $~lib/memory/__stack_pointer
  i32.const 5520
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=84
  i32.const 5520
  i32.const 1
  local.get $1
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 5520
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=84
  i32.const 5520
  i32.const 3
  local.get $2
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 5520
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=84
  i32.const 5520
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
  global.get $~lib/memory/__stack_pointer
  i32.const 100
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/staticarray/StaticArray<u8>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.get $1
  i32.le_u
  if
   i32.const 1152
   i32.const 1504
   i32.const 78
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.add
  i32.load8_u
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1152
   i32.const 5872
   i32.const 178
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/dataview/DataView#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.const 24
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/rt/itcms/Object#set:nextWithColor
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/rt/itcms/Object#set:prev
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.get $1
  local.get $2
  i32.add
  i32.lt_u
  local.get $2
  i32.const 1073741820
  i32.gt_u
  i32.or
  if
   i32.const 1456
   i32.const 5936
   i32.const 25
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $3
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $0
  local.get $1
  i32.add
  call $~lib/rt/itcms/Object#set:nextWithColor
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $2
  call $~lib/rt/itcms/Object#set:prev
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/op-datastore/util/getNumberOfKeys (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  i32.const 4
  i32.lt_s
  if
   i32.const 5600
   i32.const 5664
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.const 21
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $1
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 3
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:nextWithColor
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:prev
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  local.get $1
  local.get $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  local.get $2
  call $~lib/rt/itcms/Object#set:nextWithColor
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 4
  call $~lib/rt/itcms/Object#set:prev
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  i32.const 0
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<u8>#__get
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  i32.const 1
  local.get $0
  i32.const 1
  call $~lib/staticarray/StaticArray<u8>#__get
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  i32.const 2
  local.get $0
  i32.const 2
  call $~lib/staticarray/StaticArray<u8>#__get
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  i32.const 3
  local.get $0
  i32.const 3
  call $~lib/staticarray/StaticArray<u8>#__get
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/memory/__stack_pointer
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.load offset=4
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $3
  local.get $1
  i32.load
  i32.sub
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $2
  local.get $3
  local.get $1
  i32.load offset=8
  call $~lib/dataview/DataView#constructor
  local.tee $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=8
  i32.const 4
  i32.lt_s
  if
   i32.const 1152
   i32.const 5936
   i32.const 87
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  i32.load
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<~lib/staticarray/StaticArray<u8>>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.const 23
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:nextWithColor
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:prev
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:rtId
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1456
   i32.const 2240
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  local.get $0
  local.get $0
  i32.const 8
  i32.le_u
  select
  i32.const 2
  i32.shl
  local.tee $3
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  local.get $1
  local.get $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  local.get $2
  call $~lib/rt/itcms/Object#set:nextWithColor
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  local.get $3
  call $~lib/rt/itcms/Object#set:prev
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  local.get $0
  call $~lib/rt/itcms/Object#set:rtId
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/staticarray/StaticArray<u8>#slice<~lib/staticarray/StaticArray<u8>> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store offset=4
  local.get $3
  local.get $0
  local.get $1
  i32.add
  local.get $2
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/op-datastore/util/derKeys (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.tee $1
  i32.store
  block $folding-inner0
   local.get $1
   call $~lib/staticarray/StaticArray<u8>#get:length
   i32.const 4
   i32.lt_s
   if
    i32.const 0
    i32.const 2
    i32.const 23
    i32.const 5568
    call $~lib/rt/__newArray
    local.set $2
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/@massalabs/massa-as-sdk/assembly/std/op-datastore/util/getNumberOfKeys
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   call $~lib/array/Array<~lib/staticarray/StaticArray<u8>>#constructor
   local.tee $2
   i32.store offset=4
   i32.const 4
   local.set $0
   loop $for-loop|0
    local.get $3
    local.get $4
    i32.lt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     local.get $0
     call $~lib/staticarray/StaticArray<u8>#__get
     local.get $0
     i32.const 1
     i32.add
     local.tee $5
     i32.add
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=12
     local.get $1
     local.get $5
     local.get $0
     call $~lib/staticarray/StaticArray<u8>#slice<~lib/staticarray/StaticArray<u8>>
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=8
     local.get $2
     local.get $3
     local.get $5
     call $~lib/array/Array<~lib/string/String>#__set
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/storage/getKeys (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.getKeys
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/op-datastore/util/derKeys
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/models/ContactRecord#deserialize (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4112
  i32.store offset=16
  local.get $1
  i32.const 4112
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 6000
  i32.store offset=16
  local.get $1
  i32.const 6000
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 6032
  i32.store offset=16
  local.get $1
  i32.const 6032
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $assembly/contracts/models/Profile#set:avatarCid
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4512
  i32.store offset=12
  local.get $0
  local.get $1
  i32.const 4512
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<u64,void>"
  call $assembly/contracts/models/ContactRecord#set:createdAt
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#get:offset
  call $~lib/@massalabs/as-types/assembly/result/Result<i32>#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<assembly/contracts/models/ContactRecord>#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 26
  call $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#nextSerializable<assembly/contracts/models/ContactRecord> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.const 1888
  i32.const 1888
  i64.const 0
  call $assembly/contracts/models/ContactRecord#constructor
  local.tee $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  local.get $0
  i32.load
  call $assembly/contracts/models/ContactRecord#deserialize
  local.tee $2
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $3
  i32.store
  block $folding-inner0 (result i32)
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4848
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4816
    i32.store offset=28
    i32.const 4848
    i32.const 4816
    call $~lib/string/String#concat
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    call $~lib/@massalabs/as-types/assembly/result/Result<assembly/contracts/models/ContactRecord>#constructor
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=4
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=40
    local.get $0
    i32.eqz
    if
     i32.const 2736
     i32.const 2864
     i32.const 70
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2864
    i32.const 70
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $2
   i32.load
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<assembly/contracts/models/ContactRecord>#constructor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#addSerializableObjectArray<assembly/contracts/models/ContactRecord> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 5
  i32.const 6176
  call $~lib/rt/__newBuffer
  local.tee $2
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    local.get $1
    local.get $3
    call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $6
    local.get $5
    call $assembly/contracts/models/ContactRecord#serialize
    local.tee $5
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    local.get $5
    call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
    local.tee $2
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#get:length
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  local.get $1
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/list_contacts (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 100
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 100
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  call $~lib/string/String.__not
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store
   local.get $2
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $0
    i32.store offset=28
    local.get $0
    i32.eqz
    if
     i32.const 2736
     i32.const 2864
     i32.const 70
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2864
    i32.const 70
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
  else
   call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  end
  local.tee $0
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  local.get $0
  call $assembly/contracts/main/contactPrefix
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  local.get $0
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $2
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/getKeys
  local.tee $3
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.const 25
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/Object#set:nextWithColor
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/Object#set:prev
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/Object#set:rtId
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $4
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $4
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $4
  call $~lib/rt/itcms/Object#set:nextWithColor
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 32
  call $~lib/rt/itcms/Object#set:prev
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/Object#set:rtId
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  local.get $0
  i32.store offset=48
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    local.get $1
    call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get
    local.tee $2
    i32.store offset=52
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $2
    call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>>
    local.tee $2
    i32.store offset=56
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.const 0
    call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
    local.tee $2
    i32.store offset=60
    global.get $~lib/memory/__stack_pointer
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $2
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextSerializable<assembly/contracts/models/ContactRecord>
    local.tee $5
    i32.store offset=64
    global.get $~lib/memory/__stack_pointer
    i32.const 6064
    i32.store offset=68
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=72
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=76
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load offset=4
    local.tee $2
    i32.store
    local.get $2
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 6064
     i32.store offset=80
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.load offset=4
     local.tee $0
     i32.store offset=84
     global.get $~lib/memory/__stack_pointer
     local.set $1
     local.get $0
     i32.eqz
     if
      i32.const 2736
      i32.const 2864
      i32.const 52
      i32.const 32
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     local.get $0
     i32.store offset=88
     global.get $~lib/memory/__stack_pointer
     i32.const 6144
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 6064
     i32.store offset=16
     i32.const 6144
     i32.const 0
     i32.const 6064
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 6144
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=16
     i32.const 6144
     i32.const 2
     local.get $0
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 6144
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 1888
     i32.store offset=16
     i32.const 6144
     call $~lib/staticarray/StaticArray<~lib/string/String>#join
     i32.const 2864
     i32.const 52
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=92
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $4
    local.get $5
    i32.load
    local.tee $2
    i32.store offset=96
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=16
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/string/String>#push
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  local.get $1
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#addSerializableObjectArray<assembly/contracts/models/ContactRecord>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 100
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<bool>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 27
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#nextBool (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  block $folding-inner0 (result i32)
   local.get $0
   i32.load
   i32.const 1
   i32.add
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.store
   local.get $1
   call $~lib/staticarray/StaticArray<u8>#get:length
   local.get $2
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6592
    i32.store
    i32.const 0
    i32.const 6592
    call $~lib/@massalabs/as-types/assembly/result/Result<bool>#constructor
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   local.get $0
   i32.load
   local.tee $0
   i32.const 1
   i32.add
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   local.get $1
   local.get $0
   call $~lib/staticarray/StaticArray<u8>#__get
   i32.eqz
   i32.eqz
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<bool>#constructor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<~lib/array/Array<~lib/string/String>>#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 28
  call $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#nextStringArray (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const -64
  i32.add
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 64
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU32
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $2
  i32.store
  block $folding-inner2
   block $folding-inner1
    block $folding-inner0
     local.get $2
     call $~lib/string/String.__not
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      i32.load
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=24
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=16
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.load offset=4
      local.tee $3
      i32.store
      local.get $3
      call $~lib/string/String.__not
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.load offset=4
       local.tee $0
       i32.store offset=28
       local.get $0
       i32.eqz
       br_if $folding-inner0
       br $folding-inner2
      end
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=32
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      local.get $2
      local.get $1
      i32.load
      i32.add
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=16
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=4
      local.tee $3
      i32.store
      local.get $3
      call $~lib/staticarray/StaticArray<u8>#get:length
      local.get $2
      i32.lt_s
     else
      i32.const 1
     end
     if
      i32.const 0
      i32.const 2
      i32.const 10
      i32.const 6880
      call $~lib/rt/__newArray
      local.set $0
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 6912
      i32.store offset=16
      local.get $0
      i32.const 6912
      call $~lib/@massalabs/as-types/assembly/result/Result<~lib/array/Array<~lib/string/String>>#constructor
      local.set $0
      br $folding-inner1
     end
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=36
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=40
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.load offset=4
     local.tee $2
     i32.store
     local.get $2
     call $~lib/string/String.__not
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.load offset=4
      local.tee $0
      i32.store offset=44
      local.get $0
      i32.eqz
      br_if $folding-inner0
      br $folding-inner2
     end
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=48
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     i32.load
     local.tee $1
     i32.eqz
     if
      i32.const 0
      i32.const 2
      i32.const 10
      i32.const 7040
      call $~lib/rt/__newArray
      local.set $0
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      i32.const 0
      call $~lib/@massalabs/as-types/assembly/result/Result<~lib/array/Array<~lib/string/String>>#constructor
      local.set $0
      br $folding-inner1
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 2
     i32.const 10
     i32.const 7072
     call $~lib/rt/__newArray
     local.tee $2
     i32.store offset=52
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     i32.load
     local.set $3
     loop $while-continue|0
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      i32.load
      local.get $1
      local.get $3
      i32.add
      i32.lt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=16
       local.get $0
       i32.const 4
       call $~lib/@massalabs/as-types/assembly/argument/Args#getNextData
       local.set $4
       global.get $~lib/memory/__stack_pointer
       local.get $4
       i32.store
       local.get $4
       call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
       local.set $4
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=60
       local.get $0
       local.get $4
       call $~lib/@massalabs/as-types/assembly/argument/Args#getNextData
       local.set $4
       global.get $~lib/memory/__stack_pointer
       local.get $4
       i32.store offset=56
       local.get $4
       call $~lib/@massalabs/as-types/assembly/serialization/strings/bytesToString
       local.set $4
       global.get $~lib/memory/__stack_pointer
       local.get $4
       i32.store offset=16
       local.get $2
       local.get $4
       call $~lib/array/Array<~lib/string/String>#push
       br $while-continue|0
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     local.get $2
     i32.const 0
     call $~lib/@massalabs/as-types/assembly/result/Result<~lib/array/Array<~lib/string/String>>#constructor
     local.set $0
     br $folding-inner1
    end
    i32.const 2736
    i32.const 2864
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const -64
   i32.sub
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  local.get $0
  i32.const 2864
  i32.const 70
  i32.const 7
  call $~lib/builtins/abort
  unreachable
 )
 (func $"~lib/@massalabs/as-types/assembly/argument/Args#next<~lib/array/Array<~lib/string/String>,void>" (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextStringArray
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#includes (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  block $folding-inner1
   local.get $0
   i32.load offset=12
   local.tee $3
   i32.eqz
   local.get $3
   i32.const 0
   i32.le_s
   i32.or
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
    local.set $4
    loop $while-continue|0
     local.get $2
     local.get $3
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $4
      local.get $2
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      local.get $0
      local.get $1
      call $~lib/string/String.__eq
      br_if $folding-inner1
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $while-continue|0
     end
    end
   end
   i32.const -1
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  i32.const 0
  i32.ge_s
 )
 (func $assembly/contracts/main/ensureMembersUnique (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.const 10
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/Object#set:nextWithColor
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/Object#set:prev
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/Object#set:rtId
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=12
  local.get $2
  local.get $5
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $5
  call $~lib/rt/itcms/Object#set:nextWithColor
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 32
  call $~lib/rt/itcms/Object#set:prev
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/Object#set:rtId
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  local.get $2
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $3
    call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get
    local.tee $5
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=12
    local.get $2
    local.get $5
    call $~lib/array/Array<~lib/string/String>#includes
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=12
     local.get $2
     local.get $5
     call $~lib/array/Array<~lib/string/String>#push
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=12
    i32.const 1
    local.get $4
    local.get $5
    local.get $1
    call $~lib/string/String.__eq
    select
    local.set $4
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $4
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   local.get $2
   local.get $1
   call $~lib/array/Array<~lib/string/String>#push
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/contracts/main/conversationKey (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/main/CONVERSATION_PREFIX
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/models/Conversation#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i64) (result i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.const 29
  call $~lib/rt/itcms/__new
  local.tee $7
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $7
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $7
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $7
  local.get $2
  call $assembly/contracts/models/Profile#set:avatarCid
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $7
  local.get $3
  call $assembly/contracts/models/Profile#set:bio
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  local.get $4
  call $assembly/contracts/models/Conversation#set:isGroup
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $7
  local.get $5
  call $assembly/contracts/models/Profile#set:status
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  local.get $6
  call $assembly/contracts/models/Profile#set:createdAt
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $"~lib/@massalabs/as-types/assembly/argument/Args#add<bool,void>" (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  call $~lib/staticarray/StaticArray<u8>#constructor
  local.tee $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#get:length
  i32.eqz
  if
   i32.const 1152
   i32.const 1504
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  i32.const 0
  i32.ne
  i32.store8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  local.get $3
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/array/Array<~lib/string/String>,void>" (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/staticarray/StaticArray<u8>#constructor
  local.tee $2
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    local.get $1
    local.get $3
    call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $5
    local.get $6
    call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
    local.tee $6
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=24
    local.get $6
    call $~lib/staticarray/StaticArray<u8>#get:length
    call $~lib/@massalabs/as-types/assembly/serialization/numbers/u32ToBytes
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=20
    local.get $2
    local.get $5
    call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    local.get $7
    local.get $2
    local.get $6
    call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
    local.tee $2
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<u8>#get:length
    i32.const 4
    i32.add
    i32.add
    local.set $4
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $4
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=20
  local.get $1
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/models/Conversation#serialize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 56
  memory.fill
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store offset=48
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=40
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.store offset=32
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.store offset=24
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  local.get $1
  local.get $0
  i32.load8_u offset=16
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<bool,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=20
  local.tee $2
  i32.store offset=12
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/array/Array<~lib/string/String>,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  i64.load offset=24
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/memberIndexPrefix (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/main/MEMBER_INDEX_PREFIX
  local.tee $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $1
  local.get $0
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1712
  i32.store offset=4
  local.get $0
  i32.const 1712
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/indexConversationMembers (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=20
   local.tee $2
   i32.store
   local.get $2
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=20
    local.tee $2
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $2
    local.get $1
    call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get
    local.tee $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $3
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    call $~stack_check
    global.get $~lib/memory/__stack_pointer
    i64.const 0
    i64.store
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    local.get $2
    call $assembly/contracts/main/memberIndexPrefix
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $2
    local.get $3
    call $~lib/string/String.__concat
    local.set $2
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $3
    i32.store offset=4
    local.get $2
    local.get $3
    call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/string/String>
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/create_conversation (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 212
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 212
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.set $1
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $1
  local.get $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $3
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 6208
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.load offset=4
  local.tee $4
  i32.store
  block $folding-inner0
   local.get $4
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6208
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.load offset=4
    local.tee $0
    i32.store offset=36
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    i32.const 6304
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 6208
    i32.store offset=28
    i32.const 6304
    i32.const 0
    i32.const 6208
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 6304
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 6304
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 6304
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1888
    i32.store offset=28
    i32.const 6304
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2864
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $2
   local.get $3
   i32.load
   local.tee $2
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $4
   i32.store offset=52
   global.get $~lib/memory/__stack_pointer
   i32.const 6336
   i32.store offset=56
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load offset=4
   local.tee $5
   i32.store
   local.get $5
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6336
    i32.store offset=68
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load offset=4
    local.tee $0
    i32.store offset=72
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=76
    global.get $~lib/memory/__stack_pointer
    i32.const 6432
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 6336
    i32.store offset=28
    i32.const 6432
    i32.const 0
    i32.const 6336
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 6432
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 6432
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 6432
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1888
    i32.store offset=28
    i32.const 6432
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2864
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=80
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $3
   local.get $4
   i32.load
   local.tee $3
   i32.store offset=84
   global.get $~lib/memory/__stack_pointer
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $5
   i32.store offset=88
   global.get $~lib/memory/__stack_pointer
   i32.const 6464
   i32.store offset=92
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=96
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=100
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.load offset=4
   local.tee $6
   i32.store
   local.get $6
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6464
    i32.store offset=104
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load offset=4
    local.tee $0
    i32.store offset=108
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=112
    global.get $~lib/memory/__stack_pointer
    i32.const 6560
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 6464
    i32.store offset=28
    i32.const 6560
    i32.const 0
    i32.const 6464
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 6560
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 6560
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 6560
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1888
    i32.store offset=28
    i32.const 6560
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2864
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=116
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $4
   local.get $5
   i32.load
   local.tee $4
   i32.store offset=120
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextBool
   local.tee $5
   i32.store offset=124
   global.get $~lib/memory/__stack_pointer
   i32.const 6736
   i32.store offset=128
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=132
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=136
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.load offset=4
   local.tee $6
   i32.store
   local.get $6
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6736
    i32.store offset=140
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load offset=4
    local.tee $0
    i32.store offset=144
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=148
    global.get $~lib/memory/__stack_pointer
    i32.const 6848
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 6736
    i32.store offset=28
    i32.const 6848
    i32.const 0
    i32.const 6736
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 6848
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 6848
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 6848
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1888
    i32.store offset=28
    i32.const 6848
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2864
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=152
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   i32.load8_u
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $"~lib/@massalabs/as-types/assembly/argument/Args#next<~lib/array/Array<~lib/string/String>,void>"
   local.tee $7
   i32.store offset=156
   global.get $~lib/memory/__stack_pointer
   i32.const 7104
   i32.store offset=160
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=164
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=168
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.load offset=4
   local.tee $0
   i32.store
   local.get $0
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 7104
    i32.store offset=172
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.load offset=4
    local.tee $0
    i32.store offset=176
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=180
    global.get $~lib/memory/__stack_pointer
    i32.const 7200
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 7104
    i32.store offset=28
    i32.const 7200
    i32.const 0
    i32.const 7104
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7200
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 7200
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7200
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1888
    i32.store offset=28
    i32.const 7200
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2864
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=184
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store
   local.get $6
   local.get $7
   i32.load
   local.tee $0
   i32.store offset=188
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   call $assembly/contracts/main/ensureMembersUnique
   local.tee $0
   i32.store offset=188
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
   i32.const 2
   i32.lt_s
   if
    i32.const 7232
    i32.const 2512
    i32.const 144
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   call $assembly/contracts/main/conversationKey
   local.tee $6
   i32.store offset=192
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/has<~lib/staticarray/StaticArray<u8>>
   if
    i32.const 7360
    i32.const 2512
    i32.const 150
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=196
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=200
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=204
   global.get $~lib/memory/__stack_pointer
   local.get $2
   local.get $3
   local.get $1
   local.get $4
   local.get $5
   local.get $0
   call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.time
   call $assembly/contracts/models/Conversation#constructor
   local.tee $0
   i32.store offset=208
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=196
   local.get $0
   call $assembly/contracts/models/Conversation#serialize
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   local.get $6
   local.get $1
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/staticarray/StaticArray<u8>>
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $assembly/contracts/main/indexConversationMembers
   global.get $~lib/memory/__stack_pointer
   i32.const 7456
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=196
   i32.const 7456
   local.get $2
   call $~lib/string/String#concat
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $assembly/contracts/models/Conversation#serialize
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 212
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 2736
  i32.const 2864
  i32.const 52
  i32.const 32
  call $~lib/builtins/abort
  unreachable
 )
 (func $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<bool,void>" (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 44
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextBool
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 7888
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 7936
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 7888
  i32.store offset=12
  i32.const 7936
  i32.const 1
  i32.const 7888
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 7936
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=12
  local.get $1
  i32.const 7936
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.tee $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store
  local.get $2
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.set $2
   local.get $0
   i32.eqz
   if
    i32.const 2736
    i32.const 2864
    i32.const 52
    i32.const 32
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $0
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   i32.const 7968
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   i32.const 7968
   i32.const 0
   local.get $1
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 7968
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   i32.const 7968
   i32.const 2
   local.get $0
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 7968
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1888
   i32.store offset=12
   i32.const 7968
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2864
   i32.const 52
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load8_u
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/array/Array<~lib/string/String>,void>" (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 44
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $"~lib/@massalabs/as-types/assembly/argument/Args#next<~lib/array/Array<~lib/string/String>,void>"
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8000
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8048
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8000
  i32.store offset=12
  i32.const 8048
  i32.const 1
  i32.const 8000
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 8048
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=12
  local.get $1
  i32.const 8048
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.tee $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store
  local.get $2
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.set $2
   local.get $0
   i32.eqz
   if
    i32.const 2736
    i32.const 2864
    i32.const 52
    i32.const 32
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $0
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   i32.const 8080
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   i32.const 8080
   i32.const 0
   local.get $1
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 8080
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   i32.const 8080
   i32.const 2
   local.get $0
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 8080
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1888
   i32.store offset=12
   i32.const 8080
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2864
   i32.const 52
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/models/Conversation#deserialize (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 7760
  i32.store offset=16
  local.get $1
  i32.const 7760
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 7808
  i32.store offset=16
  local.get $1
  i32.const 7808
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 7840
  i32.store offset=16
  local.get $1
  i32.const 7840
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $assembly/contracts/models/Profile#set:avatarCid
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4352
  i32.store offset=16
  local.get $1
  i32.const 4352
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $assembly/contracts/models/Profile#set:bio
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 7888
  i32.store offset=12
  local.get $0
  local.get $1
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<bool,void>"
  call $assembly/contracts/models/Conversation#set:isGroup
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 8000
  i32.store offset=16
  local.get $1
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/array/Array<~lib/string/String>,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $assembly/contracts/models/Profile#set:status
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4512
  i32.store offset=12
  local.get $0
  local.get $1
  i32.const 4512
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<u64,void>"
  call $assembly/contracts/models/Profile#set:createdAt
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#get:offset
  call $~lib/@massalabs/as-types/assembly/result/Result<i32>#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<assembly/contracts/models/Conversation>#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 42
  call $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#nextSerializable<assembly/contracts/models/Conversation> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=12
  i32.const 0
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 44
  memory.fill
  block $7of7
   block $5of7
    block $3of7
     block $2of7
      block $1of7
       block $0of7
        block $outOfRange
         global.get $~argumentsLength
         br_table $0of7 $1of7 $2of7 $3of7 $5of7 $5of7 $7of7 $7of7 $outOfRange
        end
        unreachable
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 1888
       i32.store
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 1888
      i32.store offset=4
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 1888
     i32.store offset=8
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 1888
    i32.store offset=12
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 2
   i32.const 10
   i32.const 7728
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=16
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=40
  i32.const 1888
  i32.const 1888
  i32.const 1888
  i32.const 1888
  i32.const 0
  local.get $1
  i64.const 0
  call $assembly/contracts/models/Conversation#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  local.get $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  local.get $0
  i32.load
  call $assembly/contracts/models/Conversation#deserialize
  local.tee $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $3
  i32.store
  block $folding-inner0 (result i32)
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4848
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4816
    i32.store offset=12
    i32.const 4848
    i32.const 4816
    call $~lib/string/String#concat
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    call $~lib/@massalabs/as-types/assembly/result/Result<assembly/contracts/models/Conversation>#constructor
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=4
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=40
    local.get $0
    i32.eqz
    if
     i32.const 2736
     i32.const 2864
     i32.const 70
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2864
    i32.const 70
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $2
   i32.load
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<assembly/contracts/models/Conversation>#constructor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/readConversation (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $assembly/contracts/main/conversationKey
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/has<~lib/staticarray/StaticArray<u8>>
  i32.eqz
  if
   i32.const 7648
   i32.const 2512
   i32.const 356
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextSerializable<assembly/contracts/models/Conversation>
  local.tee $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 8112
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8112
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.set $1
   local.get $0
   i32.eqz
   if
    i32.const 2736
    i32.const 2864
    i32.const 52
    i32.const 32
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $0
   i32.store offset=40
   global.get $~lib/memory/__stack_pointer
   i32.const 8208
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8112
   i32.store offset=8
   i32.const 8208
   i32.const 0
   i32.const 8112
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 8208
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   i32.const 8208
   i32.const 2
   local.get $0
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 8208
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1888
   i32.store offset=8
   i32.const 8208
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2864
   i32.const 52
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/get_conversation (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 52
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 7536
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $0
  i32.store
  local.get $0
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 7536
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $0
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.set $1
   local.get $0
   i32.eqz
   if
    i32.const 2736
    i32.const 2864
    i32.const 52
    i32.const 32
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $0
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   i32.const 7616
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 7536
   i32.store offset=24
   i32.const 7616
   i32.const 0
   i32.const 7536
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 7616
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   i32.const 7616
   i32.const 2
   local.get $0
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 7616
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1888
   i32.store offset=24
   i32.const 7616
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2864
   i32.const 52
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $1
  local.get $2
  i32.load
  local.tee $0
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $assembly/contracts/main/readConversation
  local.tee $0
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/models/Conversation#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#addSerializableObjectArray<assembly/contracts/models/Conversation> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 5
  i32.const 8240
  call $~lib/rt/__newBuffer
  local.tee $2
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    local.get $1
    local.get $3
    call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $6
    local.get $5
    call $assembly/contracts/models/Conversation#serialize
    local.tee $5
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    local.get $5
    call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
    local.tee $2
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#get:length
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  local.get $1
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/list_conversations (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 68
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 68
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  call $~lib/string/String.__not
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store
   local.get $2
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $0
    i32.store offset=28
    local.get $0
    i32.eqz
    if
     i32.const 2736
     i32.const 2864
     i32.const 70
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2864
    i32.const 70
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
  else
   call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  end
  local.tee $0
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $assembly/contracts/main/memberIndexPrefix
  local.tee $0
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  local.get $0
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $2
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/getKeys
  local.tee $3
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.const 43
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/Object#set:nextWithColor
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/Object#set:prev
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/Object#set:rtId
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $4
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $4
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $4
  call $~lib/rt/itcms/Object#set:nextWithColor
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 32
  call $~lib/rt/itcms/Object#set:prev
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/Object#set:rtId
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  local.get $0
  i32.store offset=48
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=16
    local.get $3
    local.get $1
    call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $2
    local.get $4
    call $~lib/@massalabs/as-types/assembly/serialization/strings/bytesToString
    local.tee $4
    i32.store offset=52
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.set $2
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    call $~stack_check
    global.get $~lib/memory/__stack_pointer
    i64.const 0
    i64.store
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $4
    call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/toDatastoreFormat<~lib/string/String>
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $5
    local.get $4
    call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.get
    local.tee $4
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    call $~stack_check
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $4
    call $~lib/@massalabs/as-types/assembly/serialization/strings/bytesToString
    local.set $4
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $2
    local.get $4
    i32.store offset=56
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $4
    call $assembly/contracts/main/readConversation
    local.tee $2
    i32.store offset=60
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=16
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/string/String>#push
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=64
  local.get $1
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#addSerializableObjectArray<assembly/contracts/models/Conversation>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 68
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/counterKey (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/main/COUNTER_PREFIX
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/readCounter (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $assembly/contracts/main/counterKey
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/has<~lib/staticarray/StaticArray<u8>>
  if (result i64)
   global.get $~lib/memory/__stack_pointer
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>>
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $2
   local.get $0
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
   local.tee $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 9184
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.store
   local.get $2
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 9184
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=8
    local.tee $0
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    local.set $2
    local.get $0
    i32.eqz
    if
     i32.const 2736
     i32.const 2864
     i32.const 52
     i32.const 32
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    local.get $0
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    i32.const 9248
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 9184
    i32.store offset=8
    i32.const 9248
    i32.const 0
    i32.const 9184
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 9248
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    i32.const 9248
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 9248
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1888
    i32.store offset=8
    i32.const 9248
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2864
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i64.load
  else
   i64.const 0
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $assembly/contracts/models/ChatMessage#constructor (param $0 i64) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (param $8 i64) (param $9 i64) (result i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.const 44
  call $~lib/rt/itcms/__new
  local.tee $10
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  local.get $0
  call $~lib/@massalabs/as-types/assembly/result/Result<u64>#set:value
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $10
  local.get $1
  call $assembly/contracts/models/Profile#set:avatarCid
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $10
  local.get $2
  call $assembly/contracts/models/Profile#set:bio
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $10
  local.get $3
  call $assembly/contracts/models/Profile#set:encryptionKey
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $10
  local.get $4
  call $assembly/contracts/models/Profile#set:status
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $10
  local.get $5
  call $assembly/contracts/models/ChatMessage#set:mimeType
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $10
  local.get $6
  call $assembly/contracts/models/ChatMessage#set:preview
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $10
  local.get $7
  call $assembly/contracts/models/ChatMessage#set:status
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  local.get $8
  call $assembly/contracts/models/ChatMessage#set:timestamp
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  local.get $9
  call $assembly/contracts/models/ChatMessage#set:expiresAt
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
 )
 (func $assembly/contracts/main/messageKey (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/main/MESSAGE_PREFIX
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/util/number/utoa64
  local.tee $3
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 9280
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=20
  i32.const 9280
  i32.const 0
  local.get $2
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 9280
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  i32.const 9280
  i32.const 1
  local.get $0
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 9280
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=20
  i32.const 9280
  i32.const 3
  local.get $3
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 9280
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=20
  i32.const 9280
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/models/ChatMessage#serialize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 76
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 76
  memory.fill
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=68
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=72
  local.get $1
  local.get $0
  i64.load
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=60
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=68
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.store offset=64
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=60
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.store offset=56
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=16
  local.tee $2
  i32.store offset=48
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=20
  local.tee $2
  i32.store offset=40
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=24
  local.tee $2
  i32.store offset=32
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=28
  local.tee $2
  i32.store offset=24
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=32
  local.tee $2
  i32.store offset=16
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $1
  local.get $0
  i64.load offset=40
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  i64.load offset=48
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 76
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/send_message (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 300
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 300
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.set $3
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $3
  local.get $4
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  local.tee $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $4
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $4
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $5
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 8272
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.load offset=4
  local.tee $6
  i32.store
  block $folding-inner0
   local.get $6
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 8272
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load offset=4
    local.tee $0
    i32.store offset=36
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    i32.const 8352
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8272
    i32.store offset=28
    i32.const 8352
    i32.const 0
    i32.const 8272
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8352
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 8352
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8352
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1888
    i32.store offset=28
    i32.const 8352
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2864
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $0
   local.get $5
   i32.load
   local.tee $5
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $6
   i32.store offset=52
   global.get $~lib/memory/__stack_pointer
   i32.const 8384
   i32.store offset=56
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.load offset=4
   local.tee $7
   i32.store
   local.get $7
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 8384
    i32.store offset=68
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.load offset=4
    local.tee $0
    i32.store offset=72
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=76
    global.get $~lib/memory/__stack_pointer
    i32.const 8464
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8384
    i32.store offset=28
    i32.const 8464
    i32.const 0
    i32.const 8384
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8464
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 8464
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8464
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1888
    i32.store offset=28
    i32.const 8464
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2864
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=80
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $0
   local.get $6
   i32.load
   local.tee $6
   i32.store offset=84
   global.get $~lib/memory/__stack_pointer
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $7
   i32.store offset=88
   global.get $~lib/memory/__stack_pointer
   i32.const 8496
   i32.store offset=92
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=96
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=100
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.load offset=4
   local.tee $8
   i32.store
   local.get $8
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 8496
    i32.store offset=104
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.load offset=4
    local.tee $0
    i32.store offset=108
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=112
    global.get $~lib/memory/__stack_pointer
    i32.const 8592
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8496
    i32.store offset=28
    i32.const 8592
    i32.const 0
    i32.const 8496
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8592
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 8592
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8592
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1888
    i32.store offset=28
    i32.const 8592
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2864
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=116
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store
   local.get $0
   local.get $7
   i32.load
   local.tee $7
   i32.store offset=120
   global.get $~lib/memory/__stack_pointer
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $8
   i32.store offset=124
   global.get $~lib/memory/__stack_pointer
   i32.const 8624
   i32.store offset=128
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=132
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=136
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.load offset=4
   local.tee $9
   i32.store
   local.get $9
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 8624
    i32.store offset=140
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.load offset=4
    local.tee $0
    i32.store offset=144
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=148
    global.get $~lib/memory/__stack_pointer
    i32.const 8704
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8624
    i32.store offset=28
    i32.const 8704
    i32.const 0
    i32.const 8624
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8704
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 8704
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8704
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1888
    i32.store offset=28
    i32.const 8704
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2864
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=152
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $0
   local.get $8
   i32.load
   local.tee $8
   i32.store offset=156
   global.get $~lib/memory/__stack_pointer
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $9
   i32.store offset=160
   global.get $~lib/memory/__stack_pointer
   i32.const 8736
   i32.store offset=164
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store offset=168
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store offset=172
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.load offset=4
   local.tee $10
   i32.store
   local.get $10
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 8736
    i32.store offset=176
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.load offset=4
    local.tee $0
    i32.store offset=180
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=184
    global.get $~lib/memory/__stack_pointer
    i32.const 8816
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8736
    i32.store offset=28
    i32.const 8816
    i32.const 0
    i32.const 8736
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8816
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 8816
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8816
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1888
    i32.store offset=28
    i32.const 8816
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2864
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store offset=188
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store
   local.get $0
   local.get $9
   i32.load
   local.tee $9
   i32.store offset=192
   global.get $~lib/memory/__stack_pointer
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $11
   i32.store offset=196
   global.get $~lib/memory/__stack_pointer
   i32.const 8848
   i32.store offset=200
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=204
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=208
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.load offset=4
   local.tee $0
   i32.store
   local.get $0
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 8848
    i32.store offset=212
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.load offset=4
    local.tee $0
    i32.store offset=216
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=220
    global.get $~lib/memory/__stack_pointer
    i32.const 8928
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8848
    i32.store offset=28
    i32.const 8928
    i32.const 0
    i32.const 8848
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8928
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 8928
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8928
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1888
    i32.store offset=28
    i32.const 8928
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2864
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=224
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store
   local.get $10
   local.get $11
   i32.load
   local.tee $0
   i32.store offset=228
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $4
   i32.store offset=232
   global.get $~lib/memory/__stack_pointer
   i32.const 8960
   i32.store offset=236
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=240
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=244
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load offset=8
   local.tee $10
   i32.store
   local.get $10
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 8960
    i32.store offset=248
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load offset=8
    local.tee $0
    i32.store offset=252
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=256
    global.get $~lib/memory/__stack_pointer
    i32.const 9040
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8960
    i32.store offset=28
    i32.const 9040
    i32.const 0
    i32.const 8960
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 9040
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 9040
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 9040
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1888
    i32.store offset=28
    i32.const 9040
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2864
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=260
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   i64.load
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $5
   call $assembly/contracts/main/readConversation
   local.tee $4
   i32.store offset=264
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=268
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load offset=20
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=28
   local.get $4
   local.get $3
   call $~lib/array/Array<~lib/string/String>#includes
   i32.eqz
   if
    i32.const 9072
    i32.const 2512
    i32.const 232
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   call $~stack_check
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   call $assembly/contracts/main/readCounter
   i64.const 1
   i64.add
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $assembly/contracts/main/counterKey
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   i32.const 0
   global.set $~argumentsLength
   call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=12
   local.get $10
   local.get $1
   call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=8
   local.get $10
   call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=4
   local.get $4
   local.get $10
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/staticarray/StaticArray<u8>>
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=268
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=272
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=276
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store offset=280
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=284
   global.get $~lib/memory/__stack_pointer
   local.get $1
   local.get $5
   local.get $3
   local.get $6
   local.get $7
   local.get $8
   local.get $9
   local.get $0
   call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.time
   local.get $2
   call $assembly/contracts/models/ChatMessage#constructor
   local.tee $0
   i32.store offset=288
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=268
   local.get $5
   local.get $1
   call $assembly/contracts/main/messageKey
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=268
   local.get $0
   call $assembly/contracts/models/ChatMessage#serialize
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=28
   local.get $3
   local.get $4
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/staticarray/StaticArray<u8>>
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=292
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/util/number/utoa64
   local.tee $3
   i32.store offset=296
   global.get $~lib/memory/__stack_pointer
   i32.const 9648
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=268
   i32.const 9648
   i32.const 1
   local.get $5
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 9648
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=268
   i32.const 9648
   i32.const 3
   local.get $3
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 9648
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   i32.const 1888
   i32.store offset=268
   i32.const 9648
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $assembly/contracts/models/ChatMessage#serialize
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 300
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 2736
  i32.const 2864
  i32.const 52
  i32.const 32
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/contracts/models/ChatMessage#deserialize (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 9904
  i32.store offset=12
  local.get $0
  local.get $1
  i32.const 9904
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<u64,void>"
  call $~lib/@massalabs/as-types/assembly/result/Result<u64>#set:value
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 7760
  i32.store offset=16
  local.get $1
  i32.const 7760
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $assembly/contracts/models/Profile#set:avatarCid
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 9936
  i32.store offset=16
  local.get $1
  i32.const 9936
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $assembly/contracts/models/Profile#set:bio
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 9968
  i32.store offset=16
  local.get $1
  i32.const 9968
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $assembly/contracts/models/Profile#set:encryptionKey
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 10016
  i32.store offset=16
  local.get $1
  i32.const 10016
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $assembly/contracts/models/Profile#set:status
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 10064
  i32.store offset=16
  local.get $1
  i32.const 10064
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $assembly/contracts/models/ChatMessage#set:mimeType
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 10112
  i32.store offset=16
  local.get $1
  i32.const 10112
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $assembly/contracts/models/ChatMessage#set:preview
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4480
  i32.store offset=16
  local.get $1
  i32.const 4480
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $assembly/contracts/models/ChatMessage#set:status
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 10160
  i32.store offset=12
  local.get $0
  local.get $1
  i32.const 10160
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<u64,void>"
  call $assembly/contracts/models/ChatMessage#set:timestamp
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 10208
  i32.store offset=12
  local.get $0
  local.get $1
  i32.const 10208
  call $"~lib/@massalabs/as-types/assembly/argument/Args#mustNext<u64,void>"
  call $assembly/contracts/models/ChatMessage#set:expiresAt
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#get:offset
  call $~lib/@massalabs/as-types/assembly/result/Result<i32>#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<assembly/contracts/models/ChatMessage>#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 46
  call $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#nextSerializable<assembly/contracts/models/ChatMessage> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 60
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 60
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 1888
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i32.const 1888
  i32.const 1888
  i32.const 1888
  i32.const 1888
  i32.const 1888
  i32.const 1888
  i32.const 1888
  i64.const 0
  i64.const 0
  call $assembly/contracts/models/ChatMessage#constructor
  local.tee $1
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  local.get $0
  i32.load
  call $assembly/contracts/models/ChatMessage#deserialize
  local.tee $2
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $3
  i32.store
  block $folding-inner0 (result i32)
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4848
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4816
    i32.store offset=12
    i32.const 4848
    i32.const 4816
    call $~lib/string/String#concat
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    call $~lib/@massalabs/as-types/assembly/result/Result<assembly/contracts/models/ChatMessage>#constructor
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=4
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=52
    local.get $0
    i32.eqz
    if
     i32.const 2736
     i32.const 2864
     i32.const 70
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2864
    i32.const 70
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=56
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $2
   i32.load
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<assembly/contracts/models/ChatMessage>#constructor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 60
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#addSerializableObjectArray<assembly/contracts/models/ChatMessage> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 5
  i32.const 10384
  call $~lib/rt/__newBuffer
  local.tee $2
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    local.get $1
    local.get $3
    call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $6
    local.get $5
    call $assembly/contracts/models/ChatMessage#serialize
    local.tee $5
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    local.get $5
    call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
    local.tee $2
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#get:length
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  local.get $1
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/fetch_messages (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 168
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 168
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $7
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 9696
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.load offset=4
  local.tee $8
  i32.store
  block $folding-inner2
   block $folding-inner1
    block $folding-inner0
     local.get $8
     call $~lib/string/String.__not
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 9696
      i32.store offset=28
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.load offset=4
      local.tee $0
      i32.store offset=32
      local.get $0
      i32.eqz
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=36
      global.get $~lib/memory/__stack_pointer
      i32.const 9776
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 9696
      i32.store offset=24
      i32.const 9776
      i32.const 0
      i32.const 9696
      call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
      global.get $~lib/memory/__stack_pointer
      i32.const 9776
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=24
      i32.const 9776
      i32.const 2
      local.get $0
      call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
      global.get $~lib/memory/__stack_pointer
      i32.const 9776
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 1888
      i32.store offset=24
      i32.const 9776
      call $~lib/staticarray/StaticArray<~lib/string/String>#join
      i32.const 2864
      i32.const 52
      i32.const 7
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=40
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store
     local.get $6
     local.get $7
     i32.load
     local.tee $6
     i32.store offset=44
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
     local.tee $7
     i32.store offset=48
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=52
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=24
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.load offset=8
     local.tee $8
     i32.store
     local.get $8
     call $~lib/string/String.__not
     if (result i64)
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=56
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=60
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=24
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.load offset=8
      local.tee $8
      i32.store
      local.get $8
      call $~lib/string/String.__not
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       local.get $7
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $7
       i32.load offset=8
       local.tee $0
       i32.store offset=64
       local.get $0
       i32.eqz
       br_if $folding-inner1
       br $folding-inner2
      end
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=68
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store
      local.get $7
      i64.load
     else
      i64.const 0
     end
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     call $~lib/@massalabs/as-types/assembly/argument/Args#nextU32
     local.tee $0
     i32.store offset=72
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=76
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=24
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $7
     i32.store
     local.get $7
     call $~lib/string/String.__not
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=80
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=84
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=24
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=4
      local.tee $7
      i32.store
      local.get $7
      call $~lib/string/String.__not
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=4
       local.tee $0
       i32.store offset=88
       local.get $0
       i32.eqz
       br_if $folding-inner1
       br $folding-inner2
      end
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=92
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      i32.load
     else
      i32.const 50
     end
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $6
     call $assembly/contracts/main/readConversation
     local.tee $0
     i32.store offset=96
     global.get $~lib/memory/__stack_pointer
     local.set $8
     call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store
     local.get $8
     local.get $9
     call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
     local.tee $8
     i32.store offset=100
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=104
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=20
     local.tee $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=24
     local.get $0
     local.get $8
     call $~lib/array/Array<~lib/string/String>#includes
     i32.eqz
     if
      i32.const 9808
      i32.const 2512
      i32.const 270
      i32.const 3
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     call $assembly/contracts/main/readCounter
     local.set $4
     local.get $2
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.sub
     global.set $~lib/memory/__stack_pointer
     call $~stack_check
     global.get $~lib/memory/__stack_pointer
     i64.const 0
     i64.store
     global.get $~lib/memory/__stack_pointer
     i64.const 0
     i64.store offset=8
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.const 45
     call $~lib/rt/itcms/__new
     local.tee $8
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=4
     local.get $8
     i32.const 0
     call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=4
     local.get $8
     i32.const 0
     call $~lib/rt/itcms/Object#set:nextWithColor
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=4
     local.get $8
     i32.const 0
     call $~lib/rt/itcms/Object#set:prev
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=4
     local.get $8
     i32.const 0
     call $~lib/rt/itcms/Object#set:rtId
     global.get $~lib/memory/__stack_pointer
     i32.const 32
     i32.const 1
     call $~lib/rt/itcms/__new
     local.tee $9
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store offset=12
     local.get $8
     local.get $9
     call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=4
     local.get $8
     local.get $9
     call $~lib/rt/itcms/Object#set:nextWithColor
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=4
     local.get $8
     i32.const 32
     call $~lib/rt/itcms/Object#set:prev
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=4
     local.get $8
     i32.const 0
     call $~lib/rt/itcms/Object#set:rtId
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     local.get $8
     i32.store offset=108
     i64.const 1
     local.get $2
     local.get $2
     i64.eqz
     select
     local.set $3
     loop $for-loop|0
      local.get $5
      local.get $7
      i32.lt_u
      local.get $3
      local.get $4
      i64.le_u
      i32.and
      if
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $6
       local.get $3
       call $assembly/contracts/main/messageKey
       local.tee $0
       i32.store offset=112
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/has<~lib/staticarray/StaticArray<u8>>
       if
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $0
        call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>>
        local.tee $0
        i32.store offset=116
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.const 0
        call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
        local.tee $0
        i32.store offset=120
        global.get $~lib/memory/__stack_pointer
        local.set $9
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $0
        call $~lib/@massalabs/as-types/assembly/argument/Args#nextSerializable<assembly/contracts/models/ChatMessage>
        local.tee $10
        i32.store offset=124
        global.get $~lib/memory/__stack_pointer
        i32.const 10256
        i32.store offset=128
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=132
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=136
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=24
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.load offset=4
        local.tee $0
        i32.store
        local.get $0
        call $~lib/string/String.__not
        i32.eqz
        if
         global.get $~lib/memory/__stack_pointer
         i32.const 10256
         i32.store offset=140
         global.get $~lib/memory/__stack_pointer
         local.get $10
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $10
         i32.load offset=4
         local.tee $0
         i32.store offset=144
         local.get $0
         i32.eqz
         br_if $folding-inner0
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=148
         global.get $~lib/memory/__stack_pointer
         i32.const 10352
         i32.store
         global.get $~lib/memory/__stack_pointer
         i32.const 10256
         i32.store offset=24
         i32.const 10352
         i32.const 0
         i32.const 10256
         call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
         global.get $~lib/memory/__stack_pointer
         i32.const 10352
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=24
         i32.const 10352
         i32.const 2
         local.get $0
         call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
         global.get $~lib/memory/__stack_pointer
         i32.const 10352
         i32.store
         global.get $~lib/memory/__stack_pointer
         i32.const 1888
         i32.store offset=24
         i32.const 10352
         call $~lib/staticarray/StaticArray<~lib/string/String>#join
         i32.const 2864
         i32.const 52
         i32.const 7
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=152
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store
        local.get $9
        local.get $10
        i32.load
        local.tee $0
        i32.store offset=156
        global.get $~lib/memory/__stack_pointer
        local.get $8
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=24
        local.get $8
        local.get $0
        call $~lib/array/Array<~lib/string/String>#push
        local.get $5
        i32.const 1
        i32.add
        local.set $5
        local.get $3
        i64.const 1
        i64.add
        local.set $1
       end
       local.get $3
       i64.const 1
       i64.add
       local.set $3
       br $for-loop|0
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.set $0
     i32.const 0
     global.set $~argumentsLength
     call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=160
     local.get $5
     i64.const 1
     local.get $2
     local.get $2
     i64.eqz
     select
     call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=104
     local.get $5
     local.get $4
     i64.const 1
     i64.add
     local.get $1
     local.get $1
     local.get $4
     i64.gt_u
     select
     call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=24
     local.get $0
     local.get $5
     local.get $8
     call $~lib/@massalabs/as-types/assembly/argument/Args#addSerializableObjectArray<assembly/contracts/models/ChatMessage>
     local.tee $0
     i32.store offset=164
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 168
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     return
    end
    i32.const 2736
    i32.const 2864
    i32.const 52
    i32.const 32
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2736
   i32.const 2864
   i32.const 70
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2864
  i32.const 70
  i32.const 7
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/staticarray/StaticArray<u8>#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1456
   i32.const 1504
   i32.const 51
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  i32.shl
  local.tee $1
  i32.const 1
  local.get $3
  call $~lib/rt/__newBuffer
  local.tee $3
  i32.store
  i32.const 16
  local.get $2
  call $~lib/rt/itcms/__new
  local.tee $2
  local.get $3
  i32.store
  local.get $2
  local.get $3
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $2
  local.get $3
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.add
  local.tee $4
  local.get $0
  i32.lt_u
  if
   i32.const 0
   i32.const 3120
   i32.const 770
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $4
   i32.lt_u
   if
    block $while-break|0
     local.get $0
     i32.load8_u
     local.set $5
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     i32.const 128
     i32.and
     if
      local.get $0
      local.get $4
      i32.eq
      br_if $while-break|0
      local.get $0
      i32.load8_u
      i32.const 63
      i32.and
      local.set $6
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      i32.const 224
      i32.and
      i32.const 192
      i32.eq
      if
       local.get $1
       local.get $5
       i32.const 31
       i32.and
       i32.const 6
       i32.shl
       local.get $6
       i32.or
       i32.store16
      else
       local.get $0
       local.get $4
       i32.eq
       br_if $while-break|0
       local.get $0
       i32.load8_u
       i32.const 63
       i32.and
       local.set $3
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       local.get $5
       i32.const 240
       i32.and
       i32.const 224
       i32.eq
       if
        local.get $5
        i32.const 15
        i32.and
        i32.const 12
        i32.shl
        local.get $6
        i32.const 6
        i32.shl
        i32.or
        local.get $3
        i32.or
        local.set $3
       else
        local.get $0
        local.get $4
        i32.eq
        br_if $while-break|0
        local.get $0
        i32.load8_u
        i32.const 63
        i32.and
        local.get $5
        i32.const 7
        i32.and
        i32.const 18
        i32.shl
        local.get $6
        i32.const 12
        i32.shl
        i32.or
        local.get $3
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $3
        local.get $0
        i32.const 1
        i32.add
        local.set $0
       end
       local.get $3
       i32.const 65536
       i32.lt_u
       if
        local.get $1
        local.get $3
        i32.store16
       else
        local.get $1
        local.get $3
        i32.const 65536
        i32.sub
        local.tee $3
        i32.const 10
        i32.shr_u
        i32.const 55296
        i32.or
        local.get $3
        i32.const 1023
        i32.and
        i32.const 56320
        i32.or
        i32.const 16
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 2
        i32.add
        local.set $1
       end
      end
     else
      local.get $1
      local.get $5
      i32.store16
     end
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|0
    end
   end
  end
  local.get $2
  local.get $1
  local.get $2
  i32.sub
  call $~lib/rt/itcms/__renew
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/util/number/utoa64 (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i64.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 9520
   return
  end
  local.get $0
  i64.const 4294967295
  i64.le_u
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.wrap_i64
   local.tee $1
   i32.const 10
   i32.ge_u
   i32.const 1
   i32.add
   local.get $1
   i32.const 10000
   i32.ge_u
   i32.const 3
   i32.add
   local.get $1
   i32.const 1000
   i32.ge_u
   i32.add
   local.get $1
   i32.const 100
   i32.lt_u
   select
   local.get $1
   i32.const 1000000
   i32.ge_u
   i32.const 6
   i32.add
   local.get $1
   i32.const 1000000000
   i32.ge_u
   i32.const 8
   i32.add
   local.get $1
   i32.const 100000000
   i32.ge_u
   i32.add
   local.get $1
   i32.const 10000000
   i32.lt_u
   select
   local.get $1
   i32.const 100000
   i32.lt_u
   select
   local.tee $3
   i32.const 1
   i32.shl
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   loop $do-loop|0
    local.get $2
    local.get $3
    i32.const 1
    i32.sub
    local.tee $3
    i32.const 1
    i32.shl
    i32.add
    local.get $1
    i32.const 10
    i32.rem_u
    i32.const 48
    i32.add
    i32.store16
    local.get $1
    i32.const 10
    i32.div_u
    local.tee $1
    br_if $do-loop|0
   end
  else
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i64.const 100000000000
   i64.ge_u
   i32.const 10
   i32.add
   local.get $0
   i64.const 10000000000
   i64.ge_u
   i32.add
   local.get $0
   i64.const 100000000000000
   i64.ge_u
   i32.const 13
   i32.add
   local.get $0
   i64.const 10000000000000
   i64.ge_u
   i32.add
   local.get $0
   i64.const 1000000000000
   i64.lt_u
   select
   local.get $0
   i64.const 10000000000000000
   i64.ge_u
   i32.const 16
   i32.add
   local.get $0
   i64.const -8446744073709551616
   i64.ge_u
   i32.const 18
   i32.add
   local.get $0
   i64.const 1000000000000000000
   i64.ge_u
   i32.add
   local.get $0
   i64.const 100000000000000000
   i64.lt_u
   select
   local.get $0
   i64.const 1000000000000000
   i64.lt_u
   select
   local.tee $1
   i32.const 1
   i32.shl
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   loop $do-loop|00
    local.get $2
    local.get $1
    i32.const 1
    i32.sub
    local.tee $1
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i64.const 10
    i64.rem_u
    i32.wrap_i64
    i32.const 48
    i32.add
    i32.store16
    local.get $0
    i64.const 10
    i64.div_u
    local.tee $0
    i64.const 0
    i64.ne
    br_if $do-loop|00
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:assembly/contracts/main/constructor (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/constructor
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/contracts/main/register_profile (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/register_profile
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/contracts/main/get_profile (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/get_profile
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/add_contact (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/add_contact
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/contracts/main/list_contacts (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/list_contacts
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/create_conversation (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/create_conversation
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/get_conversation (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/get_conversation
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/list_conversations (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/list_conversations
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/send_message (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/send_message
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/fetch_messages (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/fetch_messages
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  local.get $2
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#set:_value
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
)
