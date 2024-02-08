#!/bin/sh
# This is a shell archive (produced by GNU sharutils 4.15.2).
# To extract the files from this archive, save it to some FILE, remove
# everything before the '#!/bin/sh' line above, then type 'sh FILE'.
#
lock_dir=_sh03201
# Existing files will *not* be overwritten, unless '-c' is specified.
#
# This shar contains:
# length mode       name
# ------ ---------- ------------------------------------------
#    189 -rwxrwxrwx BF .NET/BF .NET/App.config
#   3093 -rwxrwxrwx BF .NET/BF .NET/BF .NET/BFDN_Lib.cs
#  11527 -rwxrwxrwx BF .NET/BF .NET/BF .NET/Program.cs
#   2362 -rwxrwxrwx BF .NET/BF .NET/BF .NET.csproj
#    231 -rwxrwxrwx BF .NET/BF .NET/BF .NET.csproj.user
#   2606 -rwxrwxrwx BF .NET/BF .NET/BF .NET.zip
#  11793 -rwxrwxrwx BF .NET/BF .NET/BFDN_Lib.cs
#   3093 -rwxrwxrwx BF .NET/BF .NET/BFDN_Lib_Backup.cs
#  19456 -rwxrwxrwx BF .NET/BF .NET/bin/Debug/BF.NET.exe
#    189 -rwxrwxrwx BF .NET/BF .NET/bin/Debug/BF.NET.exe.config
#  28160 -rwxrwxrwx BF .NET/BF .NET/bin/Debug/BF.NET.pdb
#  11970 -rwxrwxrwx BF .NET/BF .NET/bin/Debug/bfdotnet.cs
#   9216 -rwxrwxrwx BF .NET/BF .NET/bin/Debug/bfdotnet.dll
#  22016 -rwxrwxrwx BF .NET/BF .NET/bin/Debug/bfdotnet.pdb
#    587 -rwxrwxrwx BF .NET/BF .NET/bin/Debug/examples/io.txt
#   1055 -rwxrwxrwx BF .NET/BF .NET/bin/Debug/examples/storage and comments.txt
#   2048 -rwxrwxrwx BF .NET/BF .NET/bin/Debug/immediate.exe
#    326 -rwxrwxrwx BF .NET/BF .NET/bin/Debug/link-test.cs
#   3584 -rwxrwxrwx BF .NET/BF .NET/bin/Debug/link-test.dll
#      0 -rwxrwxrwx BF .NET/BF .NET/bin/Debug/output
#     33 -rwxrwxrwx BF .NET/BF .NET/bin/Debug/sound
#    242 -rwxrwxrwx BF .NET/BF .NET/bin/Debug/test-tuple.cs
#   4096 -rwxrwxrwx BF .NET/BF .NET/bin/Debug/test-tuple.exe
#   2560 -rwxrwxrwx BF .NET/BF .NET/bin/Debug/test.exe
#   3214 -rwxrwxrwx BF .NET/BF .NET/bin/Debug/test.il
#     78 -rwxrwxrwx BF .NET/BF .NET/bin/Debug/test.txt
#  19543 -rwxrwxrwx BF .NET/BF .NET/Program.cs
#   1421 -rwxrwxrwx BF .NET/BF .NET/Properties/AssemblyInfo.cs
#   1127 -rwxrwxrwx BF .NET/BF .NET.sln
#    613 -rwxrwxrwx BF .NET/Manual.txt
#
MD5SUM=${MD5SUM-md5sum}
f=`${MD5SUM} --version | egrep '^md5sum .*(core|text)utils'`
test -n "${f}" && md5check=true || md5check=false
${md5check} || \
  echo 'Note: not verifying md5sums.  Consider installing GNU coreutils.'
if test "X$1" = "X-c"
then keep_file=''
else keep_file=true
fi
echo=echo
save_IFS="${IFS}"
IFS="${IFS}:"
gettext_dir=
locale_dir=
set_echo=false

for dir in $PATH
do
  if test -f $dir/gettext \
     && ($dir/gettext --version >/dev/null 2>&1)
  then
    case `$dir/gettext --version 2>&1 | sed 1q` in
      *GNU*) gettext_dir=$dir
      set_echo=true
      break ;;
    esac
  fi
done

if ${set_echo}
then
  set_echo=false
  for dir in $PATH
  do
    if test -f $dir/shar \
       && ($dir/shar --print-text-domain-dir >/dev/null 2>&1)
    then
      locale_dir=`$dir/shar --print-text-domain-dir`
      set_echo=true
      break
    fi
  done

  if ${set_echo}
  then
    TEXTDOMAINDIR=$locale_dir
    export TEXTDOMAINDIR
    TEXTDOMAIN=sharutils
    export TEXTDOMAIN
    echo="$gettext_dir/gettext -s"
  fi
fi
IFS="$save_IFS"
if (echo "testing\c"; echo 1,2,3) | grep c >/dev/null
then if (echo -n test; echo 1,2,3) | grep n >/dev/null
     then shar_n= shar_c='
'
     else shar_n=-n shar_c= ; fi
else shar_n= shar_c='\c' ; fi
f=shar-touch.$$
st1=200112312359.59
st2=123123592001.59
st2tr=123123592001.5 # old SysV 14-char limit
st3=1231235901

if   touch -am -t ${st1} ${f} >/dev/null 2>&1 && \
     test ! -f ${st1} && test -f ${f}; then
  shar_touch='touch -am -t $1$2$3$4$5$6.$7 "$8"'

elif touch -am ${st2} ${f} >/dev/null 2>&1 && \
     test ! -f ${st2} && test ! -f ${st2tr} && test -f ${f}; then
  shar_touch='touch -am $3$4$5$6$1$2.$7 "$8"'

elif touch -am ${st3} ${f} >/dev/null 2>&1 && \
     test ! -f ${st3} && test -f ${f}; then
  shar_touch='touch -am $3$4$5$6$2 "$8"'

else
  shar_touch=:
  echo
  ${echo} 'WARNING: not restoring timestamps.  Consider getting and
installing GNU '\''touch'\'', distributed in GNU coreutils...'
  echo
fi
rm -f ${st1} ${st2} ${st2tr} ${st3} ${f}
#
if test ! -d ${lock_dir} ; then :
else ${echo} "lock directory ${lock_dir} exists"
     exit 1
fi
if mkdir ${lock_dir}
then ${echo} "x - created lock directory ${lock_dir}."
else ${echo} "x - failed to create lock directory ${lock_dir}."
     exit 1
fi
# ============= BF .NET/BF .NET/App.config ==============
if test ! -d 'BF .NET'; then
  mkdir 'BF .NET'
if test $? -eq 0
then ${echo} "x - created directory BF .NET."
else ${echo} "x - failed to create directory BF .NET."
     exit 1
fi
fi
if test ! -d 'BF .NET/BF .NET'; then
  mkdir 'BF .NET/BF .NET'
if test $? -eq 0
then ${echo} "x - created directory BF .NET/BF .NET."
else ${echo} "x - failed to create directory BF .NET/BF .NET."
     exit 1
fi
fi
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/App.config'
then
${echo} "x - SKIPPING BF .NET/BF .NET/App.config (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/App.config (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/App.config
M[[N_/#]X;6P@=F5R<VEO;CTB,2XP(B!E;F-O9&EN9STB=71F+3@B(#\^#0H\
M8V]N9FEG=7)A=&EO;CX-"B`@("`\<W1A<G1U<#X@#0H@("`@("`@(#QS=7!P
M;W)T9612=6YT:6UE('9E<G-I;VX](G8T+C`B('-K=3TB+DY%5$9R86UE=V]R
M:RQ697)S:6]N/78T+C<N,B(@+SX-"B`@("`\+W-T87)T=7`^#0H\+V-O;F9I
)9W5R871I;VX^
`
end
SHAR_EOF
  (set 20 22 08 17 17 44 59 'BF .NET/BF .NET/App.config'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/App.config'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/App.config failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/App.config': 'MD5 check failed'
       ) << \SHAR_EOF
9dbad5517b46f41dbb0d8780b20ab87e  BF .NET/BF .NET/App.config
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/App.config'` -ne 189 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/App.config' is not 189"
  fi
fi
# ============= BF .NET/BF .NET/BF .NET/BFDN_Lib.cs ==============
if test ! -d 'BF .NET/BF .NET'; then
  mkdir 'BF .NET/BF .NET'
if test $? -eq 0
then ${echo} "x - created directory BF .NET/BF .NET."
else ${echo} "x - failed to create directory BF .NET/BF .NET."
     exit 1
fi
fi
if test ! -d 'BF .NET/BF .NET/BF .NET'; then
  mkdir 'BF .NET/BF .NET/BF .NET'
if test $? -eq 0
then ${echo} "x - created directory BF .NET/BF .NET/BF .NET."
else ${echo} "x - failed to create directory BF .NET/BF .NET/BF .NET."
     exit 1
fi
fi
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/BF .NET/BFDN_Lib.cs'
then
${echo} "x - SKIPPING BF .NET/BF .NET/BF .NET/BFDN_Lib.cs (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/BF .NET/BFDN_Lib.cs (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/BF .NET/BFDN_Lib.cs
M=7-I;F<@4WES=&5M.PT*=7-I;F<@4WES=&5M+D-O;&QE8W1I;VYS+D=E;F5R
M:6,[#0H-"B\J#0I!;&P@0D8@1&]T($YE="!M971H;V1S(&%C8V5P="!A;F0@
M<F5T=7)N(&$@5'5P;&4\3&ES=#Q);G0S,CXL(&EN="P@4W1R:6YG/BX-"B`@
M("!,:7-T/$EN=#,R/CH@=&AE('1A<&4-"B`@("!I;G0Z('1H92!P;VEN=&5R
M('!O<VET:6]N#0H@("`@4W1R:6YG.B!A('%U975E(&]F(&-H87)A8W1E<G,@
M9F]R(&5A<VEE<B!D871A('1R86YS;6ET=&EN9PT**B\-"FYA;65S<&%C92!"
M1D1.#0I[#0H-"B`@("!P=6)L:6,@8VQA<W,@17-S96YT:6%L<PT*("`@('L-
M"@T*("`@("`@("!P=6)L:6,@<W1A=&EC(%1U<&QE/$QI<W0\:6YT/BP@:6YT
M+"!3=')I;F<^(%)I9VAT*%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^
M('0I#0H@("`@("`@('L-"B`@("`@("`@("`@(&EF("@H="Y)=&5M,2Y,96YG
M=&@@+2`Q*2`]/2!T+DET96TR*0T*("`@("`@("`@("`@>PT*("`@("`@("`@
M("`@("`@('0N271E;3$N061D*#`I.PT*("`@("`@("`@("`@?0T*("`@("`@
M("`@("`@<F5T=7)N(&YE=R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG
M/BAT+DET96TQ+"!T+DET96TR("L@,2P@="Y)=&5M,RD[#0H@("`@("`@('T-
M"@T*("`@("`@("!P=6)L:6,@<W1A=&EC(%1U<&QE/$QI<W0\:6YT/BP@:6YT
M+"!3=')I;F<^($QE9G0H5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@
M="D-"B`@("`@("`@>PT*("`@("`@("`@("`@:68@*'0N271E;3(@/B`P*0T*
M("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@(')E='5R;B!N97<@5'5P
M;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SXH="Y)=&5M,2P@="Y)=&5M,B`M
M(#$L('0N271E;3,I.PT*("`@("`@("`@("`@?0T*("`@("`@("`@("`@<F5T
M=7)N(&YE=R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/BAT+DET96TQ
M+"!T+DET96TR+"!T+DET96TS*3L-"B`@("`@("`@?0T*#0H@("`@("`@('!U
M8FQI8R!S=&%T:6,@5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@26YC
M*%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^('0I#0H@("`@("`@('L-
M"B`@("`@("`@("`@('0N271E;3%;="Y)=&5M,ETK*SL-"B`@("`@("`@("`@
M(&EF("AT+DET96TQ6W0N271E;3)=(#X@,C4U*2!T+DET96TQ6W0N271E;3)=
M(#T@,#L-"B`@("`@("`@("`@(')E='5R;B!T.PT*("`@("`@("!]#0H-"B`@
M("`@("`@<'5B;&EC('-T871I8R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R
M:6YG/B!);F,H5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@="D-"B`@
M("`@("`@>PT*("`@("`@("`@("`@="Y)=&5M,5MT+DET96TR72TM.PT*("`@
M("`@("`@("`@:68@*'0N271E;3%;="Y)=&5M,ET@/"`P*2!T+DET96TQ6W0N
M271E;3)=(#T@,C4U.PT*("`@("`@("`@("`@<F5T=7)N('0[#0H@("`@("`@
M('T-"@T*("`@("`@("!P=6)L:6,@<W1A=&EC(%1U<&QE/$QI<W0\:6YT/BP@
M:6YT+"!3=')I;F<^($]U="A4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG
M/B!T*0T*("`@("`@("![#0H@("`@("`@("`@("!#;VYS;VQE+E=R:71E*"AC
M:&%R*70N271E;3%;="Y)=&5M,ETI.PT*("`@("`@("`@("`@<F5T=7)N('0[
M#0H@("`@("`@('T-"@T*("`@("`@("!P=6)L:6,@<W1A=&EC(%1U<&QE/$QI
M<W0\:6YT/BP@:6YT+"!3=')I;F<^($EN*%1U<&QE/$QI<W0\:6YT/BP@:6YT
M+"!3=')I;F<^('0I#0H@("`@("`@('L-"B`@("`@("`@("`@('0N271E;3%;
M="Y)=&5M,ET@/2`H:6YT*4-O;G-O;&4N4F5A9"@I.PT*("`@("`@("`@("`@
M<F5T=7)N('0[#0H@("`@("`@('T-"@T*("`@("`@("!P=6)L:6,@<W1A=&EC
M(%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^(%%U975E3W5T*%1U<&QE
M/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^('0I#0H@("`@("`@('L-"B`@("`@
M("`@("`@(')E='5R;B!N97<@5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN
M9SXH="Y)=&5M,2P@="Y)=&5M,BP@="Y)=&5M,R`K("AC:&%R*70N271E;3%;
M="Y)=&5M,ETI.PT*("`@("`@("!]#0H-"B`@("`@("`@<'5B;&EC('-T871I
M8R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!1=65U94EN*%1U<&QE
M/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^('0I#0H@("`@("`@('L-"B`@("`@
M("`@("`@(%9A;'5E5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@=#(@
M/2!N97<@5F%L=654=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/BAT+DET
M96TQ+"!T+DET96TR+"!T+DET96TS*3L-"B`@("`@("`@("`@(&EF("AT,BY)
M=&5M,RY,96YG=&@@/3T@,"D-"B`@("`@("`@("`@('L-"B`@("`@("`@("`@
M("`@("!T,BY)=&5M,5MT,BY)=&5M,ET@/2`P.PT*("`@("`@("`@("`@?0T*
M("`@("`@("`@("`@96QS92!I9B`H=#(N271E;3,N3&5N9W1H(#T](#$I#0H@
M("`@("`@("`@("![#0H@("`@("`@("`@("`@("`@=#(N271E;3%;=#(N271E
M;3)=(#T@=#(N271E;3-;,%T[#0H@("`@("`@("`@("`@("`@=#(N271E;3,@
M/2`B(CL-"B`@("`@("`@("`@('T-"B`@("`@("`@("`@(&5L<V4-"B`@("`@
M("`@("`@('L-"B`@("`@("`@("`@("`@("!T,BY)=&5M,5MT,BY)=&5M,ET@
M/2`H:6YT*70R+DET96TS6S!=.PT*("`@("`@("`@("`@("`@('0R+DET96TS
M(#T@=#(N271E;3,N4W5B<W1R:6YG*#$I.PT*("`@("`@("`@("`@?0T*("`@
M("`@("`@("`@<F5T=7)N(&YE=R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R
M:6YG/BAT,BY)=&5M,2P@=#(N271E;3(L('0R+DET96TS*3L-"B`@("`@("`@
M?0T*#0H@("`@("`@('!U8FQI8R!S=&%T:6,@5'5P;&4\3&ES=#QI;G0^+"!I
M;G0L(%-T<FEN9SX@0V]N<W1R=6-T07)G*"D-"B`@("`@("`@>PT*("`@("`@
M("`@("`@3&ES=#QI;G0^(&P@/2!N97<@3&ES="@I.PT*("`@("`@("`@("`@
M;"YA9&0H,"D[#0H@("`@("`@("`@("!R971U<FX@;F5W(%1U<&QE/$QI<W0\
M:6YT/BP@:6YT+"!3=')I;F<^*&PL(#`L("(B*3L-"B`@("`@("`@?0T*#0H@
M("`@?0T*#0H@("`@;F%M97-P86-E(%-T86YD87)D3&EB+D%U>$-L87-S26UP
A;&5M96YT871I;VYS#0H@("`@>PT*#0H@("`@?0T*#0I]
`
end
SHAR_EOF
  (set 20 23 12 16 23 15 50 'BF .NET/BF .NET/BF .NET/BFDN_Lib.cs'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/BF .NET/BFDN_Lib.cs'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/BF .NET/BFDN_Lib.cs failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/BF .NET/BFDN_Lib.cs': 'MD5 check failed'
       ) << \SHAR_EOF
4d79c0ca4600aec95d00c2b3be406a23  BF .NET/BF .NET/BF .NET/BFDN_Lib.cs
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/BF .NET/BFDN_Lib.cs'` -ne 3093 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/BF .NET/BFDN_Lib.cs' is not 3093"
  fi
fi
# ============= BF .NET/BF .NET/BF .NET/Program.cs ==============
if test ! -d 'BF .NET/BF .NET/BF .NET'; then
  mkdir 'BF .NET/BF .NET/BF .NET'
if test $? -eq 0
then ${echo} "x - created directory BF .NET/BF .NET/BF .NET."
else ${echo} "x - failed to create directory BF .NET/BF .NET/BF .NET."
     exit 1
fi
fi
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/BF .NET/Program.cs'
then
${echo} "x - SKIPPING BF .NET/BF .NET/BF .NET/Program.cs (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/BF .NET/Program.cs (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/BF .NET/Program.cs
M[[N_+RH@#0I4:&ES(&1O97,@;F]T(&-O;7!I;&4@9&ER96-T;'D@:6YT;R!#
M24PL(`T*<F%T:&5R+"!I="!C;VUP:6QE<R!I;G1O('1H92!)3&%S;2!F;W)M
M870L#0IW:&EC:"!C86X@8F4@8V]M<&EL960@:6YT;R`N97AE(&]R("YD;&P@
M9FEL97,-"G=I=&@@26QA<VTN97AE#0H@("`@#0I!8V-E<'1S(&-O;6UA;F1L
M:6YE(&%R9W,@:6X@9F]R;6%T.@T*("`M($9I;&5P871H(&]F($)&("Y.150@
M8V]D90T*("`M($9I;&5P871H(&]F(&-O;7!I;&5D('1X="!F:6QE#0H@("T@
M36]D=6QE(&YA;64-"B`@+2!!<W-E;6)L>2!N86UE#0H-"BHO#0IU<VEN9R!3
M>7-T96T[#0IU<VEN9R!3>7-T96TN0V]L;&5C=&EO;G,N1V5N97)I8SL-"G5S
M:6YG(%-Y<W1E;2Y)3SL-"G5S:6YG(%-Y<W1E;2Y,:6YQ.PT*=7-I;F<@4WES
M=&5M+E1E>'0N4F5G=6QA<D5X<')E<W-I;VYS.PT*#0IC;&%S<R!"1D1.7T-O
M;7!I;&5R#0I[#0H-"B`@("!S=&%T:6,@4W1R:6YG(&)F9&Y0871H.PT*("`@
M('-T871I8R!3=')I;F<@8V]M<%!A=&@[#0H@("`@<W1A=&EC(%-T<FEN9R!M
M;V1U;&5.86UE.PT*("`@('-T871I8R!3=')I;F<@87-S96UB;'E.86UE.PT*
M("`@('-T871I8R!3=')E86U7<FET97(@8V]M<%=R:71E<CL-"B`@("!S=&%T
M:6,@4W1R:6YG6UT@;&EN97,[#0H@("`@<W1A=&EC(&EN="!B<F%C:V5T0V]U
M;G0@/2`Q.PT*("`@('-T871I8R!,:7-T/$-H87(^(&]O<$1E<'1H(#T@;F5W
M($QI<W0\0VAA<CX@>R=8)R!].PT*("`@(&-O;G-T(%-T<FEN9R!!4D=?5%E0
M12`](")C;&%S<R!;;7-C;W)L:6)=4WES=&5M+E1U<&QE8#,\8VQA<W,@6VUS
M8V]R;&EB75-Y<W1E;2Y#;VQL96-T:6]N<RY'96YE<FEC+DQI<W1@,3QI;G0S
M,CXL:6YT,S(L<W1R:6YG/B([#0H-"@T*("`@('!U8FQI8R!S=&%T:6,@=F]I
M9"!-86EN*%-T<FEN9UM=(&%R9W,I#0H@("`@>PT*("`@("`@("!I9B`H87)G
M<RY,96YG=&@@(3T@,RD-"B`@("`@("`@>PT*("`@("`@("`@("`@=&AR;W<@
M;F5W($5X8V5P=&EO;B@B,R!C;VUM86YD;&EN92!A<F=U;65N=',@97AP96-T
M960[("(@*R!A<F=S+DQE;F=T:"`K("(@9VEV96XN(BD[#0H@("`@("`@('T-
M"B`@("`@("`@8F9D;E!A=&@@/2!A<F=S6S!=.PT*("`@("`@("!C;VUP4&%T
M:"`](&%R9W-;,5T[#0H@("`@("`@(&%S<V5M8FQY3F%M92`](&%R9W-;,ET[
M#0H@("`@("`@(&QI;F5S(#T@1FEL92Y296%D06QL5&5X="AB9F1N4&%T:"DN
M4W!L:70H;F5W(%-T<FEN9UM=#0H@("`@("`@("`@("![#0H@("`@("`@("`@
M("`@("`@(EQR7&XB+`T*("`@("`@("`@("`@("`@(")<;B(L#0H@("`@("`@
M("`@("`@("`@(EQR(BP-"B`@("`@("`@("`@("`@("`B7&8B+`T*("`@("`@
M("`@("`@("`@(")<=B(-"B`@("`@("`@("`@('TL(%-T<FEN9U-P;&ET3W!T
M:6]N<RY.;VYE*3L-"B`@("`@("`@=7-I;F<@*&-O;7!7<FET97(@/2!&:6QE
M+D%P<&5N9%1E>'0H8V]M<%!A=&@I*0T*("`@("`@("![#0H@("`@("`@("`@
M("!C;VUP5W)I=&5R+E=R:71E3&EN92@B+F%S<V5M8FQY(&5X=&5R;B!M<V-O
M<FQI8B![('TB*3L-"B`@("`@("`@("`@(&-O;7!7<FET97(N5W)I=&5,:6YE
M*"(N87-S96UB;'D@97AT97)N(&)F9&]T;F5T('L@?2(I.PT*("`@("`@("`@
M("`@:68@*&QI;F5S6S!=+E1R:6TH*2`A/2`B(BD-"B`@("`@("`@("`@('L-
M"B`@("`@("`@("`@("`@("!F;W(@*&EN="!I(#T@,#L@:2`\(&QI;F5S6S!=
M+E-P;&ET*&YE=R!3=')I;F=;72![("(@(B!]+"!3=')I;F=3<&QI=$]P=&EO
M;G,N3F]N92DN3&5N9W1H.R!I*RLI#0H@("`@("`@("`@("`@("`@>PT*("`@
M("`@("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN92@B+F%S<V5M
M8FQY(&5X=&5R;B`B("L-"B`@("`@("`@("`@("`@("`@("`@("`@(&QI;F5S
M6S!=+E-P;&ET*&YE=R!3=')I;F=;72![("(@(B!]+"!3=')I;F=3<&QI=$]P
M=&EO;G,N3F]N92E;:5T@*R`B('L@?2(I.PT*("`@("`@("`@("`@("`@('T-
M"B`@("`@("`@("`@('T-"B`@("`@("`@("`@(&-O;7!7<FET97(N5W)I=&5,
M:6YE*"(N87-S96UB;'D@(B`K(&%S<V5M8FQY3F%M92`K("(@>R!](BD[#0H@
M("`@("`@("`@("!F;W(@*&EN="!L:6YE4&]S(#T@,3L@;&EN95!O<R`\(&QI
M;F5S+DQE;F=T:#L@;&EN95!O<RLK*0T*("`@("`@("`@("`@>PT*("`@("`@
M("`@("`@("`@(&EF("A296=E>"Y)<TUA=&-H*&QI;F5S6VQI;F50;W-=+"`B
M7%QS*E]#3TT@+BHB*2D-"B`@("`@("`@("`@("`@("![#0H@("`@("`@("`@
M("`@("`@?0T*("`@("`@("`@("`@("`@(&5L<V4@:68@*%)E9V5X+DES36%T
M8V@H;&EN97-;;&EN95!O<UTL(")<7',J7TU!24Y254XH("XJ*3\B*2D-"B`@
M("`@("`@("`@("`@("![#0H@("`@("`@("`@("`@("`@("`@(&-O;7!7<FET
M97(N5W)I=&5,:6YE*"(N8VQA<W,@86)S=')A8W0@<V5A;&5D(%)53D-,05-3
M('LB*3L-"B`@("`@("`@("`@("`@("`@("`@8V]M<%=R:71E<BY7<FET94QI
M;F4H(BYM971H;V0@<'5B;&EC('-T871I8R!V;VED(%)53DU%5$A/1"`H*7LB
M*3L-"B`@("`@("`@("`@("`@("`@("`@8V]M<%=R:71E<BY7<FET94QI;F4H
M(BYL;V-A;',@*"!C;&%S<R!;;7-C;W)L:6)=4WES=&5M+E1U<&QE8#,\8VQA
M<W,@6VUS8V]R;&EB75-Y<W1E;2Y#;VQL96-T:6]N<RY'96YE<FEC+DQI<W1@
M,3QI;G0S,CXL:6YT,S(L<W1R:6YG/BDB*3L-"B`@("`@("`@("`@("`@("`@
M("`@8V]M<%=R:71E<BY7<FET94QI;F4H(BYE;G1R>7!O:6YT(BD[#0H@("`@
M("`@("`@("`@("`@("`@(&-O;7!7<FET97(N5W)I=&5,:6YE*")C86QL("(@
M*R!!4D=?5%E012`K("(@6V)F9&]T;F5T74)&1$XN17-S96YT:6%L<SHZ0V]N
M<W1R=6-T07)G("@@*2(I.PT*("`@("`@("`@("`@("`@('T-"B`@("`@("`@
M("`@("`@("!E;'-E(&EF("A296=E>"Y)<TUA=&-H*&QI;F5S6VQI;F50;W-=
M+"`B7%QS*E]%3D1-04E.4E5.*"`N*BD_(BDI#0H@("`@("`@("`@("`@("`@
M>PT*("`@("`@("`@("`@("`@("`@("!#;VYS;VQE+E=R:71E3&EN92@B4W1A
M<G1I;F<@96YD(&UA:6X@<G5N+B(I.PT*("`@("`@("`@("`@("`@("`@("!C
M;VUP5W)I=&5R+E=R:71E3&EN92@B<&]P(BD[#0H@("`@("`@("`@("`@("`@
M("`@(&-O;7!7<FET97(N5W)I=&5,:6YE*")R970B*3L-"B`@("`@("`@("`@
M("`@("`@("`@8V]M<%=R:71E<BY7<FET94QI;F4H(GTB*3L-"B`@("`@("`@
M("`@("`@("`@("`@8V]M<%=R:71E<BY7<FET94QI;F4H(GTB*3L-"B`@("`@
M("`@("`@("`@("!]#0H@("`@("`@("`@("`@("`@96QS92!I9B`H4F5G97@N
M27--871C:"AL:6YE<UML:6YE4&]S72P@(EQ<<RI?14Y$*"`N*BD_(BDI#0H@
M("`@("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@("`@("!C;VUP5W)I
M=&5R+E=R:71E3&EN92@B?2(I.PT*("`@("`@("`@("`@("`@("`@("!O;W!$
M97!T:"Y296UO=F5!="AO;W!$97!T:"Y#;W5N="`M(#$I.PT*("`@("`@("`@
M("`@("`@('T-"B`@("`@("`@("`@("`@("!E;'-E(&EF("A296=E>"Y)<TUA
M=&-H*&QI;F5S6VQI;F50;W-=+"`B7%QS*E]%3D1-151(3T0H("XJ*3\B*2D-
M"B`@("`@("`@("`@("`@("![#0H@("`@("`@("`@("`@("`@("`@(&-O;7!7
M<FET97(N5W)I=&5,:6YE*")R970B*3L-"B`@("`@("`@("`@("`@("`@("`@
M8V]M<%=R:71E<BY7<FET94QI;F4H(GTB*3L-"B`@("`@("`@("`@("`@("`@
M("`@;V]P1&5P=&@N4F5M;W9E070H;V]P1&5P=&@N0V]U;G0@+2`Q*3L-"B`@
M("`@("`@("`@("`@("!]#0H@("`@("`@("`@("`@("`@96QS92!I9B`H4F5G
M97@N27--871C:"AL:6YE<UML:6YE4&]S72P@(EQ<<RI?3D%-15-004-%("XJ
M(BDI#0H@("`@("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@("`@("!I
M9B`H;V]P1&5P=&A;;V]P1&5P=&@N0V]U;G0@+2`Q72`]/2`G0R<I#0H@("`@
M("`@("`@("`@("`@("`@('L-"B`@("`@("`@("`@("`@("`@("`@("`@(&-O
M;7!7<FET97(N5W)I=&5,:6YE*"(N8VQA<W,@;F5S=&5D('!U8FQI8R!A8G-T
M<F%C="!S96%L960@(B`K(&QI;F5S6VQI;F50;W-=+E-U8G-T<FEN9R@Q,2D@
M*R`B('L@(BD[#0H@("`@("`@("`@("`@("`@("`@('T-"B`@("`@("`@("`@
M("`@("`@("`@96QS90T*("`@("`@("`@("`@("`@("`@("![#0H@("`@("`@
M("`@("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN92@B+F-L87-S
M('!U8FQI8R!A8G-T<F%C="!S96%L960@(B`K(&QI;F5S6VQI;F50;W-=+E-U
M8G-T<FEN9R@Q,2D@*R`B('L@(BD[#0H@("`@("`@("`@("`@("`@("`@('T-
M"B`@("`@("`@("`@("`@("`@("`@;V]P1&5P=&@N061D*"=#)RD[#0H@("`@
M("`@("`@("`@("`@?0T*("`@("`@("`@("`@("`@(&5L<V4@:68@*%)E9V5X
M+DES36%T8V@H;&EN97-;;&EN95!O<UTL(")<7',J7TU%5$A/1"`N*B(I*0T*
M("`@("`@("`@("`@("`@('L-"B`@("`@("`@("`@("`@("`@("`@8V]M<%=R
M:71E<BY7<FET94QI;F4H(BYM971H;V0@<'5B;&EC('-T871I8R`B("L@05)'
M7U194$4@*R`B("(@*R!L:6YE<UML:6YE4&]S72Y3=6)S=')I;F<H."D@*PT*
M("`@("`@("`@("`@("`@("`@("`@("`@(B`H("(@*R!!4D=?5%E012`K("(@
M*2![(BD[#0H@("`@("`@("`@("`@("`@("`@(&-O;7!7<FET97(N5W)I=&5,
M:6YE*"(N;&]C86QS("@@8VQA<W,@6VUS8V]R;&EB75-Y<W1E;2Y4=7!L96`S
M/&-L87-S(%MM<V-O<FQI8EU3>7-T96TN0V]L;&5C=&EO;G,N1V5N97)I8RY,
M:7-T8#$\:6YT,S(^+&EN=#,R+'-T<FEN9SXL(&-L87-S(%MM<V-O<FQI8EU3
M>7-T96TN0V]L;&5C=&EO;G,N1V5N97)I8RY,:7-T8#$\:6YT,S(^+"!I;G0S
M,BP@:6YT,S(L(&-L87-S(%MM<V-O<FQI8EU3>7-T96TN4W1R:6YG*2(I.PT*
M("`@("`@("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN92@B;&1A
M<F<N,"(I.PT*("`@("`@("`@("`@("`@("`@("!O;W!$97!T:"Y!9&0H)TTG
M*3L-"B`@("`@("`@("`@("`@("!]#0H@("`@("`@("`@("`@("`@96QS92!I
M9B`H4F5G97@N27--871C:"AL:6YE<UML:6YE4&]S72P@(EQ<<RI?0T%,3"`N
M*B(I*0T*("`@("`@("`@("`@("`@('L-"B`@("`@("`@("`@("`@("`@("`@
M8V]M<%=R:71E<BY7<FET94QI;F4H(F-A;&P@(B`K($%21U]465!%("L@(B`B
M("L@;&EN97-;;&EN95!O<UTN4W5B<W1R:6YG*#8I("L@(B`H("(@*R!!4D=?
M5%E012`K("(@*2(I.PT*("`@("`@("`@("`@("`@('T-"B`@("`@("`@("`@
M("`@("!E;'-E(&EF("A296=E>"Y)<TUA=&-H*&QI;F5S6VQI;F50;W-=+"`B
M7%QS*EM<7"M<7"T^/%Q<+EQ<+%Q<6UQ<73H[72M<7',J(BDI#0H@("`@("`@
M("`@("`@("`@>PT*("`@("`@("`@("`@("`@("`@("!F;W(@*&EN="!I(#T@
M,#L@:2`\(&QI;F5S6VQI;F50;W-=+DQE;F=T:#L@:2LK*0T*("`@("`@("`@
M("`@("`@("`@("![#0H@("`@("`@("`@("`@("`@("`@("`@("!S=VET8V@@
M*&QI;F5S6VQI;F50;W-=6VE=*0T*("`@("`@("`@("`@("`@("`@("`@("`@
M>PT*("`@("`@("`@("`@("`@("`@("`@("`@("`@(&-A<V4@)RLG.@T*("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E
M3&EN92@B8V%L;"`B("L@05)'7U194$4@*R`B("(@*PT*("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@(F-L87-S(%MB9F1O=&YE=%U"1D1.
M+D5S<V5N=&EA;',Z.DEN8R(@*PT*("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@(B`H("(@*R!!4D=?5%E012`K("(@*2(I.PT*("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("!B<F5A:SL-"B`@("`@("`@("`@
M("`@("`@("`@("`@("`@("!C87-E("<M)SH-"B`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@8V]M<%=R:71E<BY7<FET94QI;F4H(F-A;&P@(B`K
M($%21U]465!%("L@(B`B("L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@(")C;&%S<R!;8F9D;W1N971=0D9$3BY%<W-E;G1I86QS.CI$
M96,B("L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("(@
M*"`B("L@05)'7U194$4@*R`B("DB*3L-"B`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@8G)E86L[#0H@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@8V%S92`G/B<Z#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M(&-O;7!7<FET97(N5W)I=&5,:6YE*")C86QL("(@*R!!4D=?5%E012`K("(@
M(B`K#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`B8VQA
M<W,@6V)F9&]T;F5T74)&1$XN17-S96YT:6%L<SHZ4FEG:'0B("L-"B`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("(@*"`B("L@05)'7U19
M4$4@*R`B("DB*3L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M8G)E86L[#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@8V%S92`G/"<Z
M#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@(&-O;7!7<FET97(N
M5W)I=&5,:6YE*")C86QL("(@*R!!4D=?5%E012`K("(@(B`K#0H@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`B8VQA<W,@6V)F9&]T;F5T
M74)&1$XN17-S96YT:6%L<SHZ3&5F="(@*PT*("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@(B`H("(@*R!!4D=?5%E012`K("(@*2(I.PT*
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("!B<F5A:SL-"B`@("`@
M("`@("`@("`@("`@("`@("`@("`@("!C87-E("<N)SH-"B`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@8V]M<%=R:71E<BY7<FET94QI;F4H(F-A
M;&P@(B`K($%21U]465!%("L@(B`B("L-"B`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@(")C;&%S<R!;8F9D;W1N971=0D9$3BY%<W-E;G1I
M86QS.CI/=70B("L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("(@*"`B("L@05)'7U194$4@*R`B("DB*3L-"B`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@8G)E86L[#0H@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@8V%S92`G+"<Z#0H@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@(&-O;7!7<FET97(N5W)I=&5,:6YE*")C86QL("(@*R!!4D=?5%E0
M12`K("(@(B`K#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`B8VQA<W,@6V)F9&]T;F5T74)&1$XN17-S96YT:6%L<SHZ26XB("L-"B`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("(@*"`B("L@05)'
M7U194$4@*R`B("DB*3L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@8G)E86L[#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@8V%S92`G
M.B<Z#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@(&-O;7!7<FET
M97(N5W)I=&5,:6YE*")C86QL("(@*R!!4D=?5%E012`K("(@(B`K#0H@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`B8VQA<W,@6V)F9&]T
M;F5T74)&1$XN17-S96YT:6%L<SHZ475E=65/=70B("L-"B`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("(@*"`B("L@05)'7U194$4@*R`B
M("DB*3L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@8G)E86L[
M#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@8V%S92`G.R<Z#0H@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@(&-O;7!7<FET97(N5W)I=&5,
M:6YE*")C86QL("(@*R!!4D=?5%E012`K("(@(B`K#0H@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`B8VQA<W,@6V)F9&]T;F5T74)&1$XN
M17-S96YT:6%L<SHZ475E=65);B(@*PT*("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@(B`H("(@*R!!4D=?5%E012`K("(@*2(I.PT*("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("!B<F5A:SL-"B`@("`@("`@
M("`@("`@("`@("`@("`@("`@("!C87-E("=;)SH-"B`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@8G)A8VME=$-O=6YT*RL[#0H@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("!I;G0@875X0G)A8VME=$-O=6YT(#T@8G)A
M8VME=$-O=6YT.PT*("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@:6YT(&E?(#T@:3L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@(&EN="!D97!T:"`](#$[#0H@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("!W:&EL92`H9&5P=&@@(3T@,"D-"B`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@('L-"B`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("!I7RLK.PT*("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@(&EF("AL:6YE<UML:6YE4&]S75MI
M7UT@/3T@)ULG*0T*("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@('L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@9&5P=&@K*SL-"B`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@875X0G)A8VME=$-O=6YT*RL[#0H@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@?0T*("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@(&EF("AL:6YE<UML:6YE
M4&]S75MI7UT@/3T@)UTG*0T*("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@('L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@9&5P=&@M+3L-"B`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@875X0G)A8VME=$-O=6YT*RL[#0H@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@?0T*("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@?0T*("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@8V]M<%=R:71E<BY7<FET94QI
M;F4H(DQO;W!3=&%R=$QA8F5L(B`K(&)R86-K971#;W5N="`K("(Z('-T;&]C
M(#`B*3L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@(&-O
M;7!7<FET97(N5W)I=&5,:6YE*")L9&QO8RXP(BD[#0H@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN92@B
M8V%L;'9I<G0@:6YS=&%N8V4@(3$@(B`K($%21U]465!%("L@(CHZ9V5T7TET
M96TR*"DB*3L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M(&-O;7!7<FET97(N5W)I=&5,:6YE*")L9&QO8RXP(BD[#0H@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN
M92@B8V%L;'9I<G0@:6YS=&%N8V4@(3`@(B`K($%21U]465!%("L@(CHZ9V5T
M7TET96TQ*"DB*3L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@(&-O;7!7<FET97(N5W)I=&5,:6YE*")C86QL=FER="!I;G-T86YC92`A
M,"!C;&%S<R!;;7-C;W)L:6)=4WES=&5M+D-O;&QE8W1I;VYS+D=E;F5R:6,N
M3&ES=&`Q/&EN=#,R/CHZ9V5T7TET96TH:6YT,S(I(BD[#0H@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN
M92@B;&1C+FDT+C`B*3L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@(&-O;7!7<FET97(N5W)I=&5,:6YE*")B;F4N=6X@3&]O<$5N9$QA
M8F5L(B`K(&%U>$)R86-K971#;W5N="D[#0H@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN92@B;&1L;V,N
M,"(I.PT*("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("!]#0H@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@(&)R96%K.PT*("`@("`@("`@
M("`@("`@("`@("`@("`@("`@(&-A<V4@)UTG.@T*("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("![#0H@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("!B<F%C:V5T0V]U;G0K*SL-"B`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@(&EN="!A=7A"<F%C:V5T0V]U;G0@/2!B<F%C
M:V5T0V]U;G0[#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("!I;G0@:5\@/2!I.PT*("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@:6YT(&1E<'1H(#T@,3L-"B`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@('=H:6QE("AD97!T:"`A/2`P*0T*("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@(&E?+2T[#0H@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@:68@*&QI;F5S6VQI;F50;W-=6VE?
M72`]/2`G6R<I#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@>PT*("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("!D97!T:"TM.PT*("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("!A=7A"<F%C:V5T0V]U;G0M+3L-"B`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("!]#0H@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@:68@*&QI;F5S6VQI;F50
M;W-=6VE?72`]/2`G72<I#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("!D97!T:"LK.PT*("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("!A=7A"<F%C:V5T0V]U;G0M+3L-"B`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("!]#0H@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("!]#0H@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN
M92@B<W1L;V,N,"(I.PT*("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@8V]M<%=R:71E<BY7<FET94QI;F4H(F)R($QO;W!3=&%R=$QA8F5L
M(B`K(&%U>$)R86-K971#;W5N="D[#0H@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN92@B3&]O<$5N9$QA
M8F5L(B`K(&)R86-K971#;W5N="`K("(Z(&YO<"(I.PT*("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@8V]M<%=R:71E<BY7<FET94QI;F4H
M(FQD;&]C+C`B*3L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M?0T*("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("!B<F5A:SL-"B`@
M("`@("`@("`@("`@("`@("`@("`@('T-"B`@("`@("`@("`@("`@("`@("`@
M?0T*("`@("`@("`@("`@("`@("`@("!#;VYS;VQE+E=R:71E3&EN92@B1FEN
M:7-H960@8F8@8V]D92!L:6YE("(@*R!L:6YE4&]S("L@(BXB*3L-"B`@("`@
M("`@("`@("`@("!]#0H@("`@("`@("`@("!]#0H@("`@("`@('T-"B`@("!]
'#0I]#0H-"B`@
`
end
SHAR_EOF
  (set 20 23 12 17 00 49 30 'BF .NET/BF .NET/BF .NET/Program.cs'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/BF .NET/Program.cs'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/BF .NET/Program.cs failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/BF .NET/Program.cs': 'MD5 check failed'
       ) << \SHAR_EOF
85636fc3a64377f674ee3da6d20c5729  BF .NET/BF .NET/BF .NET/Program.cs
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/BF .NET/Program.cs'` -ne 11527 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/BF .NET/Program.cs' is not 11527"
  fi
fi
# ============= BF .NET/BF .NET/BF .NET.csproj ==============
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/BF .NET.csproj'
then
${echo} "x - SKIPPING BF .NET/BF .NET/BF .NET.csproj (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/BF .NET.csproj (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/BF .NET.csproj
M[[N_/#]X;6P@=F5R<VEO;CTB,2XP(B!E;F-O9&EN9STB=71F+3@B/SX-"CQ0
M<F]J96-T(%1O;VQS5F5R<VEO;CTB,34N,"(@>&UL;G,](FAT='`Z+R]S8VAE
M;6%S+FUI8W)O<V]F="YC;VTO9&5V96QO<&5R+VUS8G5I;&0O,C`P,R(^#0H@
M(#Q);7!O<G0@4')O:F5C=#TB)"A-4T)U:6QD17AT96YS:6]N<U!A=&@I7"0H
M35-"=6EL9%1O;VQS5F5R<VEO;BE<36EC<F]S;V9T+D-O;6UO;BYP<F]P<R(@
M0V]N9&ET:6]N/2)%>&ES=',H)R0H35-"=6EL9$5X=&5N<VEO;G-0871H*5PD
M*$U30G5I;&14;V]L<U9E<G-I;VXI7$UI8W)O<V]F="Y#;VUM;VXN<')O<',G
M*2(@+SX-"B`@/%!R;W!E<G1Y1W)O=7`^#0H@("`@/$-O;F9I9W5R871I;VX@
M0V]N9&ET:6]N/2(@)R0H0V]N9FEG=7)A=&EO;BDG(#T]("<G("(^1&5B=6<\
M+T-O;F9I9W5R871I;VX^#0H@("`@/%!L871F;W)M($-O;F1I=&EO;CTB("<D
M*%!L871F;W)M*2<@/3T@)R<@(CY!;GE#4%4\+U!L871F;W)M/@T*("`@(#Q0
M<F]J96-T1W5I9#Y[,35#,S8U1#<M1$1&1"TT,S@S+3A"044M,T8T-T,V-CE$
M-SA%?3PO4')O:F5C=$=U:60^#0H@("`@/$]U='!U=%1Y<&4^17AE/"]/=71P
M=714>7!E/@T*("`@(#Q2;V]T3F%M97-P86-E/D)&+DY%5#PO4F]O=$YA;65S
M<&%C93X-"B`@("`\07-S96UB;'E.86UE/D)&+DY%5#PO07-S96UB;'E.86UE
M/@T*("`@(#Q487)G971&<F%M97=O<FM697)S:6]N/G8T+C<N,CPO5&%R9V5T
M1G)A;65W;W)K5F5R<VEO;CX-"B`@("`\1FEL94%L:6=N;65N=#XU,3(\+T9I
M;&5!;&EG;FUE;G0^#0H@("`@/$%U=&]'96YE<F%T94)I;F1I;F=2961I<F5C
M=',^=')U93PO075T;T=E;F5R871E0FEN9&EN9U)E9&ER96-T<SX-"B`@("`\
M1&5T97)M:6YI<W1I8SYT<G5E/"]$971E<FUI;FES=&EC/@T*("`\+U!R;W!E
M<G1Y1W)O=7`^#0H@(#Q0<F]P97)T>4=R;W5P($-O;F1I=&EO;CTB("<D*$-O
M;F9I9W5R871I;VXI?"0H4&QA=&9O<FTI)R`]/2`G1&5B=6=\06YY0U!5)R`B
M/@T*("`@(#Q0;&%T9F]R;51A<F=E=#Y!;GE#4%4\+U!L871F;W)M5&%R9V5T
M/@T*("`@(#Q$96)U9U-Y;6)O;',^=')U93PO1&5B=6=3>6UB;VQS/@T*("`@
M(#Q$96)U9U1Y<&4^9G5L;#PO1&5B=6=4>7!E/@T*("`@(#Q/<'1I;6EZ93YF
M86QS93PO3W!T:6UI>F4^#0H@("`@/$]U='!U=%!A=&@^8FEN7$1E8G5G7#PO
M3W5T<'5T4&%T:#X-"B`@("`\1&5F:6YE0V]N<W1A;G1S/D1%0E5'.U1204-%
M/"]$969I;F5#;VYS=&%N=',^#0H@("`@/$5R<F]R4F5P;W)T/G!R;VUP=#PO
M17)R;W)297!O<G0^#0H@("`@/%=A<FYI;F=,979E;#XT/"]787)N:6YG3&5V
M96P^#0H@(#PO4')O<&5R='E'<F]U<#X-"B`@/%!R;W!E<G1Y1W)O=7`@0V]N
M9&ET:6]N/2(@)R0H0V]N9FEG=7)A=&EO;BE\)"A0;&%T9F]R;2DG(#T]("=2
M96QE87-E?$%N>4-052<@(CX-"B`@("`\4&QA=&9O<FU487)G970^06YY0U!5
M/"]0;&%T9F]R;51A<F=E=#X-"B`@("`\1&5B=6=4>7!E/G!D8F]N;'D\+T1E
M8G5G5'EP93X-"B`@("`\3W!T:6UI>F4^=')U93PO3W!T:6UI>F4^#0H@("`@
M/$]U='!U=%!A=&@^8FEN7%)E;&5A<V5</"]/=71P=710871H/@T*("`@(#Q$
M969I;F5#;VYS=&%N=',^5%)!0T4\+T1E9FEN94-O;G-T86YT<SX-"B`@("`\
M17)R;W)297!O<G0^<')O;7!T/"]%<G)O<E)E<&]R=#X-"B`@("`\5V%R;FEN
M9TQE=F5L/C0\+U=A<FYI;F=,979E;#X-"B`@/"]0<F]P97)T>4=R;W5P/@T*
M("`\271E;4=R;W5P/@T*("`@(#Q2969E<F5N8V4@26YC;'5D93TB4WES=&5M
M(B`O/@T*("`@(#Q2969E<F5N8V4@26YC;'5D93TB4WES=&5M+D-O<F4B("\^
M#0H@("`@/%)E9F5R96YC92!);F-L=61E/2)3>7-T96TN6&UL+DQI;G$B("\^
M#0H@("`@/%)E9F5R96YC92!);F-L=61E/2)3>7-T96TN1&%T82Y$871A4V5T
M17AT96YS:6]N<R(@+SX-"B`@("`\4F5F97)E;F-E($EN8VQU9&4](DUI8W)O
M<V]F="Y#4VAA<G`B("\^#0H@("`@/%)E9F5R96YC92!);F-L=61E/2)3>7-T
M96TN1&%T82(@+SX-"B`@("`\4F5F97)E;F-E($EN8VQU9&4](E-Y<W1E;2Y.
M970N2'1T<"(@+SX-"B`@("`\4F5F97)E;F-E($EN8VQU9&4](E-Y<W1E;2Y8
M;6PB("\^#0H@(#PO271E;4=R;W5P/@T*("`\271E;4=R;W5P/@T*("`@(#Q#
M;VUP:6QE($EN8VQU9&4](E!R;V=R86TN8W,B("\^#0H@("`@/$-O;7!I;&4@
M26YC;'5D93TB4')O<&5R=&EE<UQ!<W-E;6)L>4EN9F\N8W,B("\^#0H@(#PO
M271E;4=R;W5P/@T*("`\271E;4=R;W5P/@T*("`@(#Q.;VYE($EN8VQU9&4]
M(D%P<"YC;VYF:6<B("\^#0H@(#PO271E;4=R;W5P/@T*("`\26UP;W)T(%!R
M;VIE8W0](B0H35-"=6EL9%1O;VQS4&%T:"E<36EC<F]S;V9T+D-3:&%R<"YT
687)G971S(B`O/@T*/"]0<F]J96-T/F%T
`
end
SHAR_EOF
  (set 20 22 08 17 17 44 59 'BF .NET/BF .NET/BF .NET.csproj'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/BF .NET.csproj'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/BF .NET.csproj failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/BF .NET.csproj': 'MD5 check failed'
       ) << \SHAR_EOF
39571fea60cd39eb056215bd30654f32  BF .NET/BF .NET/BF .NET.csproj
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/BF .NET.csproj'` -ne 2362 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/BF .NET.csproj' is not 2362"
  fi
fi
# ============= BF .NET/BF .NET/BF .NET.csproj.user ==============
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/BF .NET.csproj.user'
then
${echo} "x - SKIPPING BF .NET/BF .NET/BF .NET.csproj.user (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/BF .NET.csproj.user (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/BF .NET.csproj.user
M[[N_/#]X;6P@=F5R<VEO;CTB,2XP(B!E;F-O9&EN9STB=71F+3@B/SX-"CQ0
M<F]J96-T(%1O;VQS5F5R<VEO;CTB0W5R<F5N="(@>&UL;G,](FAT='`Z+R]S
M8VAE;6%S+FUI8W)O<V]F="YC;VTO9&5V96QO<&5R+VUS8G5I;&0O,C`P,R(^
M#0H@(#Q0<F]P97)T>4=R;W5P/@T*("`@(#Q0<F]J96-T5FEE=SY3:&]W06QL
M1FEL97,\+U!R;VIE8W16:65W/@T*("`\+U!R;W!E<G1Y1W)O=7`^#0H\+U!R
&;VIE8W0^
`
end
SHAR_EOF
  (set 20 22 08 17 18 22 00 'BF .NET/BF .NET/BF .NET.csproj.user'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/BF .NET.csproj.user'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/BF .NET.csproj.user failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/BF .NET.csproj.user': 'MD5 check failed'
       ) << \SHAR_EOF
b203b0aef23e644064c76f27c03fbd92  BF .NET/BF .NET/BF .NET.csproj.user
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/BF .NET.csproj.user'` -ne 231 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/BF .NET.csproj.user' is not 231"
  fi
fi
# ============= BF .NET/BF .NET/BF .NET.zip ==============
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/BF .NET.zip'
then
${echo} "x - SKIPPING BF .NET/BF .NET/BF .NET.zip (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/BF .NET.zip (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/BF .NET.zip
M4$L#!!0````(`/FYD%?PG".;?P(``!4,```+````0D9$3E],:6(N8W/-5M]O
MVC`0?H^4_^'4IZ1`"D%]*06)T6U"0IU6INVAZH-)#K!D'!9?M$U5__=>"`D_
M"@4%*LTOB>V[\_=]9Y^=&*DG,/QG"&<MVTK6NEXO4@H#DI$VWE?4&,N`36SK
MZM*VNDK!IR]P%Q'<(\$,:1J%!D00X)Q`Z!!BI"36(.!',E=X.Y"&;ON:FGZG
M"E)3%884\V(=S[:`V]K\#=`4@<0<LRFVSH;F$?]BS%\C4UC9=!;GAE?ZG6""
M$(TAF(I8!&QJ8!S%@,)(=@L%":!8:#.31.QC6Y=7MJ7%#,U<!,B$[NYMZSGE
MF`:>)R,E`PB4,`8^&X.:I%`FFRRLUBP-">+/&F'&NT47'N1D2L[[-N2N8C^O
M?A=BC,%QR.MS@AK>`/6$IE"#A@OM-F3#OKOIL14@;;E_-PR=NMO:-'C9["[S
MJ/'/^\1R4-4<!E2@Z#37%WDI*]T`QR<JET/K0/VP2N69U_8P3]NYY#VOM'T=
ME%=V">UQB>RI4MGBO))^9<0Y\*^OW3?.T(9Z:Z=&]-\1K=6.(7K+FVT73:;_
M@42_)2><E1[7_$BA]RN6A(Z3UE-WF\'VQCXG^+XNCWV'T@[[NCFG!Q2A\Y'@
MOZ?7T$GRGUX4N/@>SMII#$_)T4^A$CS@[7/B4@4.VQY7&].V.)]^-I??GGQQ
M'G$9++U82']_H=JJ[:@,[ENR47+)/-1C_:FUUZ7)AA<7A\&5@[`X34?C*+@/
MDY%9Y,MIG.U.](O$^T7F_;>I+[W1TYI!<1)0-YXX^[=SX0YJN6G3D3=%1GEB
MUX/K:+JJ"O4J)W8GM>)G]9X=$C_$11P.Y,CK)G][Z4.V/^,59OR4%8N'?>;R
MO!'DY1502P,$%`````@`+P:15ZZF;)/7!@``!RT```H```!0<F]G<F%M+F-S
M[5I?3^-&$']'XCOLY06;!!\YJJI*@"H7PC52$BBA:JLDXAQ[(:NSUZZ]AIP0
MGZP/_4C]"IWQG_QQUL$^()>'#@\FN[.S,[^9G1G_^??O?][OD]V=ZPGSB>E0
MGW!'$,.Q76918C*/&L+Z2A@7#FFV.Q5@]70QH5Z%L!F?'\W#,&EW=-\FMXYG
MZZ*RN_,P8<:$&#HG8YIPFQ&W1J>4.![13,LBMR@%V)F8D+8%(G!V=X<`[>XT
M#(.ZPL?UMLY-BW%*=.\.=XUWJB'K`3D'*2YH1YQ;\O&<:+W6-2PRZ>KL3!4Q
M%>'F$4O7,0,PF^MV/-#P?6J/`8!H:'=G__WN3N`S?D?Z7WU![?KR3ZWI6!9`
MQASN:Y\HIQXSTBSMB_1(A_&_TF/7="JT*WH76+K7FKH>]7T46D<E#$#(!PO/
M>C?-R!!O=^<19Q`P7^B"&:0O/!0WOC7Y)5A=ETTB#)F3=@A&#PR73NLQ-%(&
MJMN_>TQ0+]PB^E<F93`BZ$Y_>0[B@XP]W?A"1=,)X,<)J2YS=)@OCIL3W3LE
MCN.>07A,@(G3A\69Q[T_]LA3O-``\$2B>^/JT\WUGY<M6%.*P!S8ON%X%AN/
M$OP#UZ*?CXXSIB5^UG#KS]5CT/[HPVDEO%3\<,/34NBW2!,W&%M@0FS)O<-,
MTM495V:(8&RK$>]C=$%BMT3!&:U#^1V8^^Z$'*GSZ05.)#'QG(<0D-843P\H
MJI2.TD<HL"F'@T6G+MA"S3HID3)9W*0,(W?LGG*MI-;G.SS-_TWB"Z#$A8/#
MT0)?$E_)9'5Q<C&`$H8/BPQA9,`,'EPX"KK9L"P\%DJRIZKU78L)!<U,T%N&
M(84*4FGH#7FI(IO(&/;DP[?RX?O2\NA3)=8MU/7"C6*FYW"ZB&AT]I7Y:4GL
M;K@NY69H=H*FFNWV^7HMO$!FH4I)2Z`&3\,4)TDTDT?RM.38`C+`"8[@5$AE
M8+"&[H-XT*X]9BLJ!FRII"[S2?P#&9THF`$80'!8A\LQF8E:]3=L7X*_-2C'
ML0R2RF5U=3^)"D@Y48`#(U^/]"*U!VP4'C\9O$A/RT.IG\^I'Q[TQ0.8M=7,
M'6C,I>.'N7CV(W;-#.)X?`5H"<@8(E#?Z%1K^UU=&),X8&(1HPJ<I:&_?].\
MZ!)MOZ3F<]W3ZA"U?)I[MVZCW;OZK:?`ENK/>3=%R@`\*A_Z&.J`;@CB4QV[
M#MBAV6GT^^11ZMHU\FPJ)HXIJR$@L]NZ_N7BC"AJ8;&68^B63Q2RD6JH%E4/
MJI3WU75`2,&58)45QOJLXF.<#Y+<-<(>2FO!.>""`0"U6A/;!"\P1,.#=$SD
MFKXTR%J]LV^.,U30@;JP8&1?Z)[`\@&%@MC02A`O2!7L19(CY3INP14>+>H-
M>2(KRO\*Z!>'O8B"2$E7"GV+[=S3AE!F(U%+>T"J;V1<E`5>R\37]/+W`J77
MZ+;ZEXUFJT`A04+YB8:#555'Y.2$[#7W)`*1,H0BK2T68`'TXDF*3Y<.3&;+
M5FK]8!PE5J5:5>-"GND#"99(B.?KFK%9_6?>:9BF@CYY@S"*RVNQ&"I2QU<*
MU5JP?E+7]9XEJ%XK\M3B#<=F.X-*UC;/RR&1H.22(2?JMHLV()8)=Z?:X?.)
M+8R^[IM$7[/1Z;Q*[,E[HK6A]F-T+&41]18E>C`<EH?#@]/CX5`;#BO#(0R,
M:O51&2>+`)!]+SDS<OW-(=*:!.@_,#""I*R`.[<,44AKQ"$9.N"T5]ZKK6<+
M68NY]WF!2,GSL.P6N<V-_-+RQTR:QA[5OSS#%X%UL,5@G=$M`^MTB\&Z8G<3
MD5_>)N`ZWF*X.O1VR]#2MABMBV#+P*IL,5AMGE_8)K"J;3%6OP8TH%L77?5M
M1VS;0FR0![#'YUF0%E]>ELLYU$3"/E4/IA^77WPNBBH@B-W`6E9@@1F_0ZWF
M7/,PP0\$E&C9.^BNU[2\BY03021VDQL[I/D[IWDC?A,]HQED/:.140$-D4($
M"BF*E')TH?49CT!DM`:3T5MC<G!0P":D#6"2DTV>%SMPFQ\^:^_H8VIA0EKZ
M2`&24HWXPG(,DOVD($U9SQM`RIKG#6G*SN/WS(-DP'VA<X.2=]65/%JKW5%Q
MTQ;4_J#D2ZE(&U;[<(W:U1>K+=WP6Y]#S153PH&7*F>9AL9^>#&H8TZU@!,,
MX18W9P&<.G(OVZ.(^W,<Q/RE>_1_Z=ZZTETH^W_/TEU(4:24HPNMSQ'V"7W/
MTIT[\!/:`"8YV>2I*2S+.5,34D82]<AJ#_"J*32=GU<;#+[F/7V:MB)-9XC(
M&)9\WG#../,GU"1C_&[7I.$3_+`AB`\&`B/_W"'[&ZGX7[@\X7>9_P%02P$"
M%``4````"`#YN9!7\)PCFW\"```5#```"P`````````!`"``````````0D9$
M3E],:6(N8W-02P$"%``4````"``O!I%7KJ9LD]<&```'+0``"@`````````!
I`"````"H`@``4')O9W)A;2YC<U!+!08``````@`"`'$```"G"0``````
`
end
SHAR_EOF
  (set 20 23 12 17 23 38 38 'BF .NET/BF .NET/BF .NET.zip'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/BF .NET.zip'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/BF .NET.zip failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/BF .NET.zip': 'MD5 check failed'
       ) << \SHAR_EOF
8fc659ca05fbadcdb43ce5b9ac6738a7  BF .NET/BF .NET/BF .NET.zip
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/BF .NET.zip'` -ne 2606 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/BF .NET.zip' is not 2606"
  fi
fi
# ============= BF .NET/BF .NET/BFDN_Lib.cs ==============
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/BFDN_Lib.cs'
then
${echo} "x - SKIPPING BF .NET/BF .NET/BFDN_Lib.cs (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/BFDN_Lib.cs (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/BFDN_Lib.cs
M=7-I;F<@4WES=&5M.PT*=7-I;F<@4WES=&5M+D-O;&QE8W1I;VYS+D=E;F5R
M:6,[#0IU<VEN9R!3>7-T96TN4F5F;&5C=&EO;CL-"@T*+RH-"D%L;"!"1B!$
M;W0@3F5T(&UE=&AO9',@86-C97!T(&%N9"!R971U<FX@82!4=7!L93Q,:7-T
M/$EN=#,R/BP@:6YT+"!3=')I;F<^+@T*("`@($QI<W0\26YT,S(^.B!T:&4@
M=&%P90T*("`@(&EN=#H@=&AE('!O:6YT97(@<&]S:71I;VX-"B`@("!3=')I
M;F<Z(&$@<75E=64@;V8@8VAA<F%C=&5R<R!F;W(@96%S:65R(&1A=&$@=')A
M;G-M:71T:6YG#0HJ+PT*;F%M97-P86-E($)&1$X-"GL-"@T*("`@('!U8FQI
M8R!C;&%S<R!%<W-E;G1I86QS#0H@("`@>PT*#0H@("`@("`@('!U8FQI8R!S
M=&%T:6,@5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@4FEG:'0H5'5P
M;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@="D-"B`@("`@("`@>PT*("`@
M("`@("`@("`@:68@*"AT+DET96TQ+DQE;F=T:"`M(#$I(#T]('0N271E;3(I
M#0H@("`@("`@("`@("![#0H@("`@("`@("`@("`@("`@="Y)=&5M,2Y!9&0H
M,"D[#0H@("`@("`@("`@("!]#0H@("`@("`@("`@("!R971U<FX@;F5W(%1U
M<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^*'0N271E;3$L('0N271E;3(@
M*R`Q+"!T+DET96TS*3L-"B`@("`@("`@?0T*#0H@("`@("`@('!U8FQI8R!S
M=&%T:6,@5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@3&5F="A4=7!L
M93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!T*0T*("`@("`@("![#0H@("`@
M("`@("`@("!I9B`H="Y)=&5M,B`^(#`I#0H@("`@("`@("`@("![#0H@("`@
M("`@("`@("`@("`@<F5T=7)N(&YE=R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@
M4W1R:6YG/BAT+DET96TQ+"!T+DET96TR("T@,2P@="Y)=&5M,RD[#0H@("`@
M("`@("`@("!]#0H@("`@("`@("`@("!R971U<FX@;F5W(%1U<&QE/$QI<W0\
M:6YT/BP@:6YT+"!3=')I;F<^*'0N271E;3$L('0N271E;3(L('0N271E;3,I
M.PT*("`@("`@("!]#0H-"B`@("`@("`@<'5B;&EC('-T871I8R!4=7!L93Q,
M:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!);F,H5'5P;&4\3&ES=#QI;G0^+"!I
M;G0L(%-T<FEN9SX@="D-"B`@("`@("`@>PT*("`@("`@("`@("`@="Y)=&5M
M,5MT+DET96TR72LK.PT*("`@("`@("`@("`@:68@*'0N271E;3%;="Y)=&5M
M,ET@/B`R-34I('0N271E;3%;="Y)=&5M,ET@/2`P.PT*("`@("`@("`@("`@
M<F5T=7)N('0[#0H@("`@("`@('T-"@T*("`@("`@("!P=6)L:6,@<W1A=&EC
M(%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^($EN8RA4=7!L93Q,:7-T
M/&EN=#XL(&EN="P@4W1R:6YG/B!T*0T*("`@("`@("![#0H@("`@("`@("`@
M("!T+DET96TQ6W0N271E;3)=+2T[#0H@("`@("`@("`@("!I9B`H="Y)=&5M
M,5MT+DET96TR72`\(#`I('0N271E;3%;="Y)=&5M,ET@/2`R-34[#0H@("`@
M("`@("`@("!R971U<FX@=#L-"B`@("`@("`@?0T*#0H@("`@("`@('!U8FQI
M8R!S=&%T:6,@5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@3W5T*%1U
M<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^('0I#0H@("`@("`@('L-"B`@
M("`@("`@("`@($-O;G-O;&4N5W)I=&4H*&-H87(I="Y)=&5M,5MT+DET96TR
M72D[#0H@("`@("`@("`@("!R971U<FX@=#L-"B`@("`@("`@?0T*#0H@("`@
M("`@('!U8FQI8R!S=&%T:6,@5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN
M9SX@26XH5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@="D-"B`@("`@
M("`@>PT*("`@("`@("`@("`@="Y)=&5M,5MT+DET96TR72`]("AI;G0I0V]N
M<V]L92Y296%D*"D[#0H@("`@("`@("`@("!R971U<FX@=#L-"B`@("`@("`@
M?0T*#0H@("`@("`@('!U8FQI8R!S=&%T:6,@5'5P;&4\3&ES=#QI;G0^+"!I
M;G0L(%-T<FEN9SX@475E=65/=70H5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T
M<FEN9SX@="D-"B`@("`@("`@>PT*("`@("`@("`@("`@<F5T=7)N(&YE=R!4
M=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/BAT+DET96TQ+"!T+DET96TR
M+"!T+DET96TS("L@*&-H87(I="Y)=&5M,5MT+DET96TR72D[#0H@("`@("`@
M('T-"@T*("`@("`@("!P=6)L:6,@<W1A=&EC(%1U<&QE/$QI<W0\:6YT/BP@
M:6YT+"!3=')I;F<^(%%U975E26XH5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T
M<FEN9SX@="D-"B`@("`@("`@>PT*("`@("`@("`@("`@5F%L=654=7!L93Q,
M:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!T,B`](&YE=R!686QU951U<&QE/$QI
M<W0\:6YT/BP@:6YT+"!3=')I;F<^*'0N271E;3$L('0N271E;3(L('0N271E
M;3,I.PT*("`@("`@("`@("`@:68@*'0R+DET96TS+DQE;F=T:"`]/2`P*0T*
M("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@('0R+DET96TQ6W0R+DET
M96TR72`](#`[#0H@("`@("`@("`@("!]#0H@("`@("`@("`@("!E;'-E(&EF
M("AT,BY)=&5M,RY,96YG=&@@/3T@,2D-"B`@("`@("`@("`@('L-"B`@("`@
M("`@("`@("`@("!T,BY)=&5M,5MT,BY)=&5M,ET@/2!T,BY)=&5M,ULP73L-
M"B`@("`@("`@("`@("`@("!T,BY)=&5M,R`]("(B.PT*("`@("`@("`@("`@
M?0T*("`@("`@("`@("`@96QS90T*("`@("`@("`@("`@>PT*("`@("`@("`@
M("`@("`@('0R+DET96TQ6W0R+DET96TR72`]("AI;G0I=#(N271E;3-;,%T[
M#0H@("`@("`@("`@("`@("`@=#(N271E;3,@/2!T,BY)=&5M,RY3=6)S=')I
M;F<H,2D[#0H@("`@("`@("`@("!]#0H@("`@("`@("`@("!R971U<FX@;F5W
M(%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^*'0R+DET96TQ+"!T,BY)
M=&5M,BP@=#(N271E;3,I.PT*("`@("`@("!]#0H-"B`@("`@("`@<'5B;&EC
M('-T871I8R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!#;VYS=')U
M8W1!<F<H*0T*("`@("`@("![#0H@("`@("`@("`@("!,:7-T/&EN=#X@;"`]
M(&YE=R!,:7-T*"D[#0H@("`@("`@("`@("!L+F%D9"@P*3L-"B`@("`@("`@
M("`@(')E='5R;B!N97<@5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SXH
M;"P@,"P@(B(I.PT*("`@("`@("!]#0H-"B`@("!]#0H-"B`@("!P=6)L:6,@
M8VQA<W,@24\@>PT*("`@("`@("!P=6)L:6,@<W1A=&EC(%1U<&QE/$QI<W0\
M:6YT/BP@:6YT+"!3=')I;F<^($-H87)%<G(H5'5P;&4\3&ES=#QI;G0^+"!I
M;G0L(%-T<FEN9SX@="D-"B`@("`@("`@>PT*("`@("`@("`@("`@0V]N<V]L
M92Y%<G(N5W)I=&4H*&-H87(I="Y)=&5M,5MT+DET96TR72D[#0H@("`@("`@
M("`@("!R971U<FX@=#L-"B`@("`@("`@?0T*#0H@("`@("`@('!U8FQI8R!S
M=&%T:6,@5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@3G5M3W5T*%1U
M<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^('0I#0H@("`@("`@('L-"B`@
M("`@("`@("`@($-O;G-O;&4N5W)I=&4H="Y)=&5M,5MT+DET96TR72`K("(@
M(BD[#0H@("`@("`@("`@("!R971U<FX@=#L-"B`@("`@("`@?0T*#0H@("`@
M("`@('!U8FQI8R!S=&%T:6,@5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN
M9SX@3G5M3W5T3&EN92A4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!T
M*0T*("`@("`@("![#0H@("`@("`@("`@("!#;VYS;VQE+E=R:71E3&EN92AT
M+DET96TQ6W0N271E;3)=*3L-"B`@("`@("`@("`@(')E='5R;B!T.PT*("`@
M("`@("!]#0H-"B`@("`@("`@<'5B;&EC('-T871I8R!4=7!L93Q,:7-T/&EN
M=#XL(&EN="P@4W1R:6YG/B!.=6U%<G(H5'5P;&4\3&ES=#QI;G0^+"!I;G0L
M(%-T<FEN9SX@="D-"B`@("`@("`@>PT*("`@("`@("`@("`@0V]N<V]L92Y%
M<G)O<BY7<FET92AT+DET96TQ6W0N271E;3)=("L@(B`B*3L-"B`@("`@("`@
M("`@(')E='5R;B!T.PT*("`@("`@("!]#0H-"B`@("`@("`@<'5B;&EC('-T
M871I8R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!.=6U%<G),:6YE
M*%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^('0I#0H@("`@("`@('L-
M"B`@("`@("`@("`@($-O;G-O;&4N17)R;W(N5W)I=&5,:6YE*'0N271E;3%;
M="Y)=&5M,ETI.PT*("`@("`@("`@("`@<F5T=7)N('0[#0H@("`@("`@('T-
M"@T*("`@("`@("!P=6)L:6,@<W1A=&EC(%1U<&QE/$QI<W0\:6YT/BP@:6YT
M+"!3=')I;F<^($QI;F4H5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@
M="D-"B`@("`@("`@>PT*("`@("`@("`@("`@0V]N<V]L92Y7<FET92@B7&XB
M*3L-"B`@("`@("`@("`@(')E='5R;B!T.PT*("`@("`@("!]#0H-"B`@("`@
M("`@<'5B;&EC('-T871I8R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG
M/B!,:6YE17)R*%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^('0I#0H@
M("`@("`@('L-"B`@("`@("`@("`@($-O;G-O;&4N17)R;W(N5W)I=&4H(EQN
M(BD[#0H@("`@("`@("`@("!R971U<FX@=#L-"B`@("`@("`@?0T*#0H@("`@
M("`@('!U8FQI8R!S=&%T:6,@5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN
M9SX@3G5M26XH5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@="D-"B`@
M("`@("`@>PT*("`@("`@("`@("`@=')Y#0H@("`@("`@("`@("![#0H@("`@
M("`@("`@("`@("`@<W1R:6YG('-N=6T@/2!#;VYS;VQE+E)E861,:6YE*"D[
M#0H@("`@("`@("`@("`@("`@="Y)=&5M,5MT+DET96TR72`](&)Y=&4N4&%R
M<V4H<VYU;2D[#0H@("`@("`@("`@("!]#0H@("`@("`@("`@("!C871C:"![
M('T-"B`@("`@("`@("`@(')E='5R;B!T.PT*("`@("`@("!]#0H-"B`@("`@
M("`@<'5B;&EC('-T871I8R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG
M/B!.=6U);E!R;V)L96U(86YD;&5D*%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3
M=')I;F<^('0I#0H@("`@("`@('L-"B`@("`@("`@("`@('1R>0T*("`@("`@
M("`@("`@>PT*("`@("`@("`@("`@("`@('-T<FEN9R!S;G5M(#T@0V]N<V]L
M92Y296%D3&EN92@I.PT*("`@("`@("`@("`@("`@('0N271E;3%;="Y)=&5M
M,ET@/2!B>71E+E!A<G-E*'-N=6TI.PT*("`@("`@("`@("`@("`@(&EF("AT
M+DET96TQ+D-O=6YT(#X@="Y)=&5M,B`K(#$I(`T*("`@("`@("`@("`@("`@
M('L-"B`@("`@("`@("`@("`@("`@("`@="Y)=&5M,5MT+DET96TR("L@,5T@
M/2`Q.PT*("`@("`@("`@("`@("`@('T-"B`@("`@("`@("`@("`@("!E;'-E
M#0H@("`@("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@("`@("!T+DET
M96TQ+D%D9"@Q*3L-"B`@("`@("`@("`@("`@("!]#0H@("`@("`@("`@("!]
M#0H@("`@("`@("`@("!C871C:`T*("`@("`@("`@("`@>PT*("`@("`@("`@
M("`@("`@(&EF("AT+DET96TQ+D-O=6YT(#X@="Y)=&5M,B`K(#$I(`T*("`@
M("`@("`@("`@("`@('L-"B`@("`@("`@("`@("`@("`@("`@="Y)=&5M,5MT
M+DET96TR("L@,5T@/2`P.PT*("`@("`@("`@("`@("`@('T-"B`@("`@("`@
M("`@("`@("!E;'-E#0H@("`@("`@("`@("`@("`@>PT*("`@("`@("`@("`@
M("`@("`@("!T+DET96TQ+D%D9"@P*3L-"B`@("`@("`@("`@("`@("!]#0H@
M("`@("`@("`@("!]#0H@("`@("`@("`@("!R971U<FX@=#L-"B`@("`@("`@
M?0T*#0H@("`@("`@('!U8FQI8R!S=&%T:6,@5'5P;&4\3&ES=#QI;G0^+"!I
M;G0L(%-T<FEN9SX@0VAA<DEN4')O8FQE;4AA;F1L960H5'5P;&4\3&ES=#QI
M;G0^+"!I;G0L(%-T<FEN9SX@="D-"B`@("`@("`@>PT*("`@("`@("`@("`@
M=')Y#0H@("`@("`@("`@("![#0H@("`@("`@("`@("`@("`@:6YT(&,@/2!#
M;VYS;VQE+E)E860H*3L-"B`@("`@("`@("`@("`@("!I9B`H(2AC(#X@,"`F
M)B!C(#P@,C4V*2D@=&AR;W<@;F5W($5X8V5P=&EO;B@I.PT*("`@("`@("`@
M("`@("`@(&EF("AT+DET96TQ+D-O=6YT(#X@="Y)=&5M,B`K(#$I(`T*("`@
M("`@("`@("`@("`@('L-"B`@("`@("`@("`@("`@("`@("`@="Y)=&5M,5MT
M+DET96TR("L@,5T@/2`Q.PT*("`@("`@("`@("`@("`@('T-"B`@("`@("`@
M("`@("`@("!E;'-E#0H@("`@("`@("`@("`@("`@>PT*("`@("`@("`@("`@
M("`@("`@("!T+DET96TQ+D%D9"@Q*3L-"B`@("`@("`@("`@("`@("!]#0H@
M("`@("`@("`@("!]#0H@("`@("`@("`@("!C871C:`T*("`@("`@("`@("`@
M>PT*("`@("`@("`@("`@("`@(&EF("AT+DET96TQ+D-O=6YT(#X@="Y)=&5M
M,B`K(#$I(`T*("`@("`@("`@("`@("`@('L-"B`@("`@("`@("`@("`@("`@
M("`@="Y)=&5M,5MT+DET96TR("L@,5T@/2`P.PT*("`@("`@("`@("`@("`@
M('T-"B`@("`@("`@("`@("`@("!E;'-E#0H@("`@("`@("`@("`@("`@>PT*
M("`@("`@("`@("`@("`@("`@("!T+DET96TQ+D%D9"@P*3L-"B`@("`@("`@
M("`@("`@("!]#0H@("`@("`@("`@("!]#0H@("`@("`@("`@("!R971U<FX@
M=#L-"B`@("`@("`@?0T*#0H-"B`@("`@("`@<'5B;&EC('-T871I8R!4=7!L
M93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!+97DH5'5P;&4\3&ES=#QI;G0^
M+"!I;G0L(%-T<FEN9SX@="D-"B`@("`@("`@>PT*("`@("`@("`@("`@0V]N
M<V]L94ME>4EN9F\@:V5Y(#T@0V]N<V]L92Y296%D2V5Y*"D[#0H@("`@("`@
M("`@("!W:&EL92`H(2AT+DET96TQ+D-O=6YT(#P@="Y)=&5M,B`K(#(I*2![
M#0H@("`@("`@("`@("`@("`@="Y)=&5M,2Y!9&0H,"D[#0H@("`@("`@("`@
M("!]#0H@("`@("`@("`@("!T+DET96TQ6W0N271E;3)=(#T@*&)Y=&4I:V5Y
M+DME>3L-"B`@("`@("`@("`@('0N271E;3%;="Y)=&5M,B`K(#%=(#T@*&)Y
M=&4I:V5Y+DME>4-H87([#0H@("`@("`@("`@("!T+DET96TQ6W0N271E;3(@
M*R`R72`]("AB>71E*6ME>2Y-;V1I9FEE<G,[#0H@("`@("`@("`@("!R971U
M<FX@=#L-"B`@("`@("`@?0T*("`@('T-"@T*("`@('!U8FQI8R!C;&%S<R!3
M=&]R86=E('L-"B`@("`@("`@<'5B;&EC($1I8W1I;VYA<GD\8GET92P@5'5P
M;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX^(&%L=',@/2!N97<@1&EC=&EO
M;F%R>3QB>71E+"!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/CXH*3L-
M"B`@("`@("`@<'5B;&EC($1I8W1I;VYA<GD\8GET92P@4W1A8VL\5'5P;&4\
M3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX^/B!A;'1S4W1A8VMS(#T@;F5W($1I
M8W1I;VYA<GD\8GET92P@4W1A8VL\5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T
M<FEN9SX^/B@I.PT*("`@("`@("!P=6)L:6,@8F]O;"!A<F53=&%C:W-);FET
M:6%L:7IE9"`](&9A;'-E.PT*#0H@("`@("`@('!R:79A=&4@<W1A=&EC('9O
M:60@26YI=%-T86-K<R@I#0H@("`@("`@('L-"B`@("`@("`@("`@(&9O<B`H
M8GET92!B(#T@,#L@8B`\(#(U-CL@8BLK*0T*("`@("`@("`@("`@>PT*("`@
M("`@("`@("`@("`@(&%L='-3=&%C:W-;8ET@/2!N97<@4W1A8VL\5'5P;&4\
M3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX^*"D[#0H@("`@("`@("`@("!]#0H@
M("`@("`@("`@("!A<F53=&%C:W-);FET:6%L:7IE9"`]('1R=64[#0H@("`@
M("`@('T-"@T*("`@("`@("!P=6)L:6,@<W1A=&EC(%1U<&QE/$QI<W0\:6YT
M/BP@:6YT+"!3=')I;F<^($-L;VYE*%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3
M=')I;F<^('0I#0H@("`@("`@('L-"B`@("`@("`@("`@(')E='5R;B!N97<@
M5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SXH;F5W($QI<W0\:6YT/BAT
M+DET96TQ*2P@="Y)=&5M,BP@="Y)=&5M,RD[#0H@("`@("`@('T-"@T*("`@
M("`@("!P=6)L:6,@<W1A=&EC(%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I
M;F<^(%-T;W)E*%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^('0I#0H@
M("`@("`@('L-"B`@("`@("`@("`@(&%L='-;="Y)=&5M,5MT+DET96TR75T@
M/2!#;&]N92AT*3L-"B`@("`@("`@("`@(')E='5R;B!T.PT*("`@("`@("!]
M#0H-"B`@("`@("`@<'5B;&EC('-T871I8R!4=7!L93Q,:7-T/&EN=#XL(&EN
M="P@4W1R:6YG/B!2971R:65V92A4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R
M:6YG/B!T*0T*("`@("`@("![#0H@("`@("`@("`@("!R971U<FX@86QT<UMT
M+DET96TQ6W0N271E;3)=73L-"B`@("`@("`@?0T*#0H@("`@("`@('!U8FQI
M8R!S=&%T:6,@5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@4W=A<"A4
M=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!T*0T*("`@("`@("![#0H@
M("`@("`@("`@("!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!H;VQD
M97(@/2!A;'1S6W0N271E;3%;="Y)=&5M,EU=.PT*("`@("`@("`@("`@86QT
M<UMT+DET96TQ6W0N271E;3)=72`]($-L;VYE*'0I.PT*("`@("`@("`@("`@
M<F5T=7)N(&AO;&1E<CL-"B`@("`@("`@?0T*#0H@("`@("`@('!U8FQI8R!S
M=&%T:6,@5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@4$Q%05-%7U-4
M05-(*%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^('0I#0H@("`@("`@
M('L-"B`@("`@("`@("`@(&EF("@A87)E4W1A8VMS26YI=&EA;&EZ960I($EN
M:713=&%C:W,H*3L-"B`@("`@("`@("`@(&%L='-3=&%C:W-;*&)Y=&4I*'0N
M271E;3%;="Y)=&5M,ETI72Y0=7-H*$-L;VYE*&%L='-;*&)Y=&4I*'0N271E
M;3%;="Y)=&5M,ETI72DI.PT*("`@("`@("`@("`@<F5T=7)N('0[#0H@("`@
M("`@('T-"@T*("`@("`@("!P=6)L:6,@<W1A=&EC(%1U<&QE/$QI<W0\:6YT
M/BP@:6YT+"!3=')I;F<^(%!,14%315]21512245612A4=7!L93Q,:7-T/&EN
M=#XL(&EN="P@4W1R:6YG/B!T*0T*("`@("`@("![#0H@("`@("`@("`@("!I
M9B`H(6%R95-T86-K<TEN:71I86QI>F5D*2!);FET4W1A8VMS*"D[#0H@("`@
M("`@("`@("!W:&EL92`H="Y)=&5M,2Y#;W5N="`\/2!T+DET96TR("L@,2D-
M"B`@("`@("`@("`@('L-"B`@("`@("`@("`@("`@("!T+DET96TQ+D%D9"@P
M*3L-"B`@("`@("`@("`@('T-"B`@("`@("`@("`@('1R>2`-"B`@("`@("`@
M("`@('L-"B`@("`@("`@("`@("`@("!A;'1S6RAB>71E*2AT+DET96TQ6W0N
M271E;3)=*5T@/2!A;'1S4W1A8VMS6RAB>71E*2AT+DET96TQ6W0N271E;3)=
M*5TN4&]P*"D[#0H@("`@("`@("`@("`@("`@="Y)=&5M,5MT+DET96TR("L@
M,5T@/2`Q.PT*("`@("`@("`@("`@?0T*("`@("`@("`@("`@8V%T8V@-"B`@
M("`@("`@("`@('L-"B`@("`@("`@("`@("`@("!T+DET96TQ6W0N271E;3(@
M*R`Q72`](#`[#0H@("`@("`@("`@("!]#0H@("`@("`@("`@("!R971U<FX@
M=#L-"B`@("`@("`@?0T*("`@('T-"@T*("`@('!U8FQI8R!C;&%S<R!%>&-E
M<'1I;VY(86YD;&EN9R![#0H@("`@("`@('!U8FQI8R!S=&%T:6,@5'5P;&4\
M3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@1'EN86UI8TEN=F]K92A4=7!L93Q,
M:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!T*0T*("`@("`@("![#0H@("`@("`@
M("`@("!S=')I;F<@='EP94YA;64@/2!T+DET96TS+E-U8G-T<FEN9R@P+"!T
M+DET96TS+DEN9&5X3V8H(EQU,#`P,"(I*3L-"B`@("`@("`@("`@('-T<FEN
M9R!M971H;V1.86UE(#T@="Y)=&5M,RY3=6)S=')I;F<H,"P@="Y)=&5M,RY)
M;F1E>$]F*")<=3`P,#`B*2D[#0H@("`@("`@("`@("!4>7!E('1U<"`]('1Y
M<&5O9BA4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/BD[#0H@("`@("`@
M("`@("!-971H;V1);F9O(&UE=&AO9"`](%1Y<&4N1V5T5'EP92AT>7!E3F%M
M92DN1V5T365T:&]D*&UE=&AO9$YA;64L(&YE=R!4>7!E6UU[='5P?2D[#0H@
M("`@("`@("`@("!T(#T@;65T:&]D+DEN=F]K92AN=6QL+"!N97<@;V)J96-T
M6UU[='TI.PT*("`@("`@("`@("`@<F5T=7)N('0[#0H@("`@("`@('T-"@T*
M("`@("`@("!P=6)L:6,@<W1A=&EC(%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3
M=')I;F<^($AA;F1L945X8V5P=&EO;BA4=7!L93Q,:7-T/&EN=#XL(&EN="P@
M4W1R:6YG/B!T*0T*("`@("`@("![#0H@("`@("`@("`@("!S=')I;F<@97@@
M/2`B(CL-"B`@("`@("`@("`@('-T<FEN9R!R96UO=F5D5#,@/2!T+DET96TS
M.PT*("`@("`@("`@("`@=')Y#0H@("`@("`@("`@("![#0H@("`@("`@("`@
M("`@("`@="`]($1Y;F%M:6-);G9O:V4H="D[#0H@("`@("`@("`@("!]#0H@
M("`@("`@("`@("!C871C:"`H5&%R9V5T26YV;V-A=&EO;D5X8V5P=&EO;B!T
M:65X*0T*("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@(')E;6]V9614
M,R`](')E;6]V9614,RY3=6)S=')I;F<H,"P@="Y)=&5M,RY);F1E>$]F*")<
M=3`P,#`B*2D[#0H@("`@("`@("`@("`@("`@<F5M;W9E9%0S(#T@<F5M;W9E
M9%0S+E-U8G-T<FEN9R@P+"!T+DET96TS+DEN9&5X3V8H(EQU,#`P,"(I*3L-
M"B`@("`@("`@("`@("`@("!E>"`]('1I97@N26YN97)%>&-E<'1I;VXN5&]3
M=')I;F<H*3L-"B`@("`@("`@("`@('T-"B`@("`@("`@("`@(')E='5R;B!N
M97<@5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SXH="Y)=&5M,2P@="Y)
M=&5M,BP@<F5M;W9E9%0S("L@97@@*R`B7'4P,#`P(BD[#0H@("`@("`@('T-
M"@T*("`@("`@("!P=6)L:6,@<W1A=&EC(%1U<&QE/$QI<W0\:6YT/BP@:6YT
M+"!3=')I;F<^(%1R>4-A=&-H*%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I
M;F<^('0I#0H@("`@("`@('L-"B`@("`@("`@("`@('1R>0T*("`@("`@("`@
M("`@>PT*("`@("`@("`@("`@("`@('0@/2!$>6YA;6EC26YV;VME*'0I.PT*
M("`@("`@("`@("`@("`@('-T<FEN9R!R96UO=F5D5#,@/2!T+DET96TS.PT*
M("`@("`@("`@("`@("`@(')E;6]V9614,R`](')E;6]V9614,RY3=6)S=')I
M;F<H,"P@="Y)=&5M,RY);F1E>$]F*")<=3`P,#`B*2D[#0H@("`@("`@("`@
M("`@("`@<F5M;W9E9%0S(#T@<F5M;W9E9%0S+E-U8G-T<FEN9R@P+"!T+DET
M96TS+DEN9&5X3V8H(EQU,#`P,"(I*3L-"B`@("`@("`@("`@("`@("!R96UO
M=F5D5#,@/2!R96UO=F5D5#,N4W5B<W1R:6YG*#`L('0N271E;3,N26YD97A/
M9B@B7'4P,#`P(BDI.PT*("`@("`@("`@("`@("`@(')E;6]V9614,R`](')E
M;6]V9614,RY3=6)S=')I;F<H,"P@="Y)=&5M,RY);F1E>$]F*")<=3`P,#`B
M*2D[#0H@("`@("`@("`@("`@("`@="`](&YE=R!4=7!L93Q,:7-T/&EN=#XL
M(&EN="P@4W1R:6YG/BAT+DET96TQ+"!T+DET96TR+"!R96UO=F5D5#,@*R!E
M+DEN;F5R17AC97!T:6]N+E1O4W1R:6YG*"D@*R`B7#`B*3L-"B`@("`@("`@
M("`@('T-"B`@("`@("`@("`@(&-A=&-H("A%>&-E<'1I;VX@92D-"B`@("`@
M("`@("`@('L-"B`@("`@("`@("`@("`@("!S=')I;F<@<F5M;W9E9%0S(#T@
M="Y)=&5M,SL-"B`@("`@("`@("`@("`@("!R96UO=F5D5#,@/2!R96UO=F5D
M5#,N4W5B<W1R:6YG*#`L('0N271E;3,N26YD97A/9B@B7'4P,#`P(BDI.PT*
M("`@("`@("`@("`@("`@(')E;6]V9614,R`](')E;6]V9614,RY3=6)S=')I
M;F<H,"P@="Y)=&5M,RY);F1E>$]F*")<=3`P,#`B*2D[#0H@("`@("`@("`@
M("`@("`@="`](&YE=R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/BAT
M+DET96TQ+"!T+DET96TR+"!R96UO=F5D5#,@*R!E+DEN;F5R17AC97!T:6]N
M+E1O4W1R:6YG*"D@*R`B7#`B*3L-"B`@("`@("`@("`@("`@("!T(#T@1'EN
M86UI8TEN=F]K92AT*3L-"B`@("`@("`@("`@("`@("!R96UO=F5D5#,@/2!R
M96UO=F5D5#,N4W5B<W1R:6YG*#`L('0N271E;3,N26YD97A/9B@B7'4P,#`P
M(BDI.PT*("`@("`@("`@("`@("`@(')E;6]V9614,R`](')E;6]V9614,RY3
M=6)S=')I;F<H,"P@="Y)=&5M,RY);F1E>$]F*")<=3`P,#`B*2D[#0H@("`@
M("`@("`@("`@("`@="`](&YE=R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R
M:6YG/BAT+DET96TQ+"!T+DET96TR+"!R96UO=F5D5#,I.PT*("`@("`@("`@
M("`@?0T*("`@("`@("`@("`@<F5T=7)N('0[#0H@("`@("`@('T-"B`@("!]
##0I]
`
end
SHAR_EOF
  (set 20 23 12 22 15 49 21 'BF .NET/BF .NET/BFDN_Lib.cs'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/BFDN_Lib.cs'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/BFDN_Lib.cs failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/BFDN_Lib.cs': 'MD5 check failed'
       ) << \SHAR_EOF
2377d4c8e6fc45edf21fdd93a421954b  BF .NET/BF .NET/BFDN_Lib.cs
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/BFDN_Lib.cs'` -ne 11793 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/BFDN_Lib.cs' is not 11793"
  fi
fi
# ============= BF .NET/BF .NET/BFDN_Lib_Backup.cs ==============
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/BFDN_Lib_Backup.cs'
then
${echo} "x - SKIPPING BF .NET/BF .NET/BFDN_Lib_Backup.cs (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/BFDN_Lib_Backup.cs (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/BFDN_Lib_Backup.cs
M=7-I;F<@4WES=&5M.PT*=7-I;F<@4WES=&5M+D-O;&QE8W1I;VYS+D=E;F5R
M:6,[#0H-"B\J#0I!;&P@0D8@1&]T($YE="!M971H;V1S(&%C8V5P="!A;F0@
M<F5T=7)N(&$@5'5P;&4\3&ES=#Q);G0S,CXL(&EN="P@4W1R:6YG/BX-"B`@
M("!,:7-T/$EN=#,R/CH@=&AE('1A<&4-"B`@("!I;G0Z('1H92!P;VEN=&5R
M('!O<VET:6]N#0H@("`@4W1R:6YG.B!A('%U975E(&]F(&-H87)A8W1E<G,@
M9F]R(&5A<VEE<B!D871A('1R86YS;6ET=&EN9PT**B\-"FYA;65S<&%C92!"
M1D1.#0I[#0H-"B`@("!P=6)L:6,@8VQA<W,@17-S96YT:6%L<PT*("`@('L-
M"@T*("`@("`@("!P=6)L:6,@<W1A=&EC(%1U<&QE/$QI<W0\:6YT/BP@:6YT
M+"!3=')I;F<^(%)I9VAT*%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^
M('0I#0H@("`@("`@('L-"B`@("`@("`@("`@(&EF("@H="Y)=&5M,2Y,96YG
M=&@@+2`Q*2`]/2!T+DET96TR*0T*("`@("`@("`@("`@>PT*("`@("`@("`@
M("`@("`@('0N271E;3$N061D*#`I.PT*("`@("`@("`@("`@?0T*("`@("`@
M("`@("`@<F5T=7)N(&YE=R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG
M/BAT+DET96TQ+"!T+DET96TR("L@,2P@="Y)=&5M,RD[#0H@("`@("`@('T-
M"@T*("`@("`@("!P=6)L:6,@<W1A=&EC(%1U<&QE/$QI<W0\:6YT/BP@:6YT
M+"!3=')I;F<^($QE9G0H5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@
M="D-"B`@("`@("`@>PT*("`@("`@("`@("`@:68@*'0N271E;3(@/B`P*0T*
M("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@(')E='5R;B!N97<@5'5P
M;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SXH="Y)=&5M,2P@="Y)=&5M,B`M
M(#$L('0N271E;3,I.PT*("`@("`@("`@("`@?0T*("`@("`@("`@("`@<F5T
M=7)N(&YE=R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/BAT+DET96TQ
M+"!T+DET96TR+"!T+DET96TS*3L-"B`@("`@("`@?0T*#0H@("`@("`@('!U
M8FQI8R!S=&%T:6,@5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@26YC
M*%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^('0I#0H@("`@("`@('L-
M"B`@("`@("`@("`@('0N271E;3%;="Y)=&5M,ETK*SL-"B`@("`@("`@("`@
M(&EF("AT+DET96TQ6W0N271E;3)=(#X@,C4U*2!T+DET96TQ6W0N271E;3)=
M(#T@,#L-"B`@("`@("`@("`@(')E='5R;B!T.PT*("`@("`@("!]#0H-"B`@
M("`@("`@<'5B;&EC('-T871I8R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R
M:6YG/B!);F,H5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@="D-"B`@
M("`@("`@>PT*("`@("`@("`@("`@="Y)=&5M,5MT+DET96TR72TM.PT*("`@
M("`@("`@("`@:68@*'0N271E;3%;="Y)=&5M,ET@/"`P*2!T+DET96TQ6W0N
M271E;3)=(#T@,C4U.PT*("`@("`@("`@("`@<F5T=7)N('0[#0H@("`@("`@
M('T-"@T*("`@("`@("!P=6)L:6,@<W1A=&EC(%1U<&QE/$QI<W0\:6YT/BP@
M:6YT+"!3=')I;F<^($]U="A4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG
M/B!T*0T*("`@("`@("![#0H@("`@("`@("`@("!#;VYS;VQE+E=R:71E*"AC
M:&%R*70N271E;3%;="Y)=&5M,ETI.PT*("`@("`@("`@("`@<F5T=7)N('0[
M#0H@("`@("`@('T-"@T*("`@("`@("!P=6)L:6,@<W1A=&EC(%1U<&QE/$QI
M<W0\:6YT/BP@:6YT+"!3=')I;F<^($EN*%1U<&QE/$QI<W0\:6YT/BP@:6YT
M+"!3=')I;F<^('0I#0H@("`@("`@('L-"B`@("`@("`@("`@('0N271E;3%;
M="Y)=&5M,ET@/2`H:6YT*4-O;G-O;&4N4F5A9"@I.PT*("`@("`@("`@("`@
M<F5T=7)N('0[#0H@("`@("`@('T-"@T*("`@("`@("!P=6)L:6,@<W1A=&EC
M(%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^(%%U975E3W5T*%1U<&QE
M/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^('0I#0H@("`@("`@('L-"B`@("`@
M("`@("`@(')E='5R;B!N97<@5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN
M9SXH="Y)=&5M,2P@="Y)=&5M,BP@="Y)=&5M,R`K("AC:&%R*70N271E;3%;
M="Y)=&5M,ETI.PT*("`@("`@("!]#0H-"B`@("`@("`@<'5B;&EC('-T871I
M8R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!1=65U94EN*%1U<&QE
M/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^('0I#0H@("`@("`@('L-"B`@("`@
M("`@("`@(%9A;'5E5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@=#(@
M/2!N97<@5F%L=654=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/BAT+DET
M96TQ+"!T+DET96TR+"!T+DET96TS*3L-"B`@("`@("`@("`@(&EF("AT,BY)
M=&5M,RY,96YG=&@@/3T@,"D-"B`@("`@("`@("`@('L-"B`@("`@("`@("`@
M("`@("!T,BY)=&5M,5MT,BY)=&5M,ET@/2`P.PT*("`@("`@("`@("`@?0T*
M("`@("`@("`@("`@96QS92!I9B`H=#(N271E;3,N3&5N9W1H(#T](#$I#0H@
M("`@("`@("`@("![#0H@("`@("`@("`@("`@("`@=#(N271E;3%;=#(N271E
M;3)=(#T@=#(N271E;3-;,%T[#0H@("`@("`@("`@("`@("`@=#(N271E;3,@
M/2`B(CL-"B`@("`@("`@("`@('T-"B`@("`@("`@("`@(&5L<V4-"B`@("`@
M("`@("`@('L-"B`@("`@("`@("`@("`@("!T,BY)=&5M,5MT,BY)=&5M,ET@
M/2`H:6YT*70R+DET96TS6S!=.PT*("`@("`@("`@("`@("`@('0R+DET96TS
M(#T@=#(N271E;3,N4W5B<W1R:6YG*#$I.PT*("`@("`@("`@("`@?0T*("`@
M("`@("`@("`@<F5T=7)N(&YE=R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R
M:6YG/BAT,BY)=&5M,2P@=#(N271E;3(L('0R+DET96TS*3L-"B`@("`@("`@
M?0T*#0H@("`@("`@('!U8FQI8R!S=&%T:6,@5'5P;&4\3&ES=#QI;G0^+"!I
M;G0L(%-T<FEN9SX@0V]N<W1R=6-T07)G*"D-"B`@("`@("`@>PT*("`@("`@
M("`@("`@3&ES=#QI;G0^(&P@/2!N97<@3&ES="@I.PT*("`@("`@("`@("`@
M;"YA9&0H,"D[#0H@("`@("`@("`@("!R971U<FX@;F5W(%1U<&QE/$QI<W0\
M:6YT/BP@:6YT+"!3=')I;F<^*&PL(#`L("(B*3L-"B`@("`@("`@?0T*#0H@
M("`@?0T*#0H@("`@;F%M97-P86-E(%-T86YD87)D3&EB+D%U>$-L87-S26UP
A;&5M96YT871I;VYS#0H@("`@>PT*#0H@("`@?0T*#0I]
`
end
SHAR_EOF
  (set 20 23 12 16 23 15 49 'BF .NET/BF .NET/BFDN_Lib_Backup.cs'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/BFDN_Lib_Backup.cs'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/BFDN_Lib_Backup.cs failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/BFDN_Lib_Backup.cs': 'MD5 check failed'
       ) << \SHAR_EOF
4d79c0ca4600aec95d00c2b3be406a23  BF .NET/BF .NET/BFDN_Lib_Backup.cs
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/BFDN_Lib_Backup.cs'` -ne 3093 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/BFDN_Lib_Backup.cs' is not 3093"
  fi
fi
# ============= BF .NET/BF .NET/bin/Debug/BF.NET.exe ==============
if test ! -d 'BF .NET/BF .NET/bin'; then
  mkdir 'BF .NET/BF .NET/bin'
if test $? -eq 0
then ${echo} "x - created directory BF .NET/BF .NET/bin."
else ${echo} "x - failed to create directory BF .NET/BF .NET/bin."
     exit 1
fi
fi
if test ! -d 'BF .NET/BF .NET/bin/Debug'; then
  mkdir 'BF .NET/BF .NET/bin/Debug'
if test $? -eq 0
then ${echo} "x - created directory BF .NET/BF .NET/bin/Debug."
else ${echo} "x - failed to create directory BF .NET/BF .NET/bin/Debug."
     exit 1
fi
fi
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/bin/Debug/BF.NET.exe'
then
${echo} "x - SKIPPING BF .NET/BF .NET/bin/Debug/BF.NET.exe (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/bin/Debug/BF.NET.exe (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/bin/Debug/BF.NET.exe
M35J0``,````$````__\``+@`````````0```````````````````````````
M````````````````````@`````X?N@X`M`G-(;@!3,TA5&AI<R!P<F]G<F%M
M(&-A;FYO="!B92!R=6X@:6X@1$]3(&UO9&4N#0T*)`````````!010``3`$#
M`$U'4($``````````.``(@`+`3```$(````(````````NF$````@````@```
M``!````@`````@``!``````````&``````````#``````@````````,`8(4`
M`!```!``````$```$````````!```````````````&5A``!/`````(```)P%
M`````````````````````````*````P```#48```.```````````````````
M````````````````````````````````````````(```"```````````````
M""```$@``````````````"YT97AT````P$$````@````0@````(`````````
M`````````"```&`N<G-R8P```)P%````@`````8```!$````````````````
M``!```!`+G)E;&]C```,`````*`````"````2@``````````````````0```
M0@````````````````````"980```````$@````"``4`*#```*PP```#``(`
M`0``!@``````````````````````````````````````````````````````
M`````````!LP!@`F#P```0``$0`"CFD9+Q("%IIR`0``<&\/```*%OX!*P$6
M"P<L+@`H$```"G('``!P`HYI#!("*!$```IR:0``<"@2```*;Q,```H`&"@4
M```*```"%IIR`0``<&\/```*#0DYK``````"%IH8;Q4```H7C18```$E%G(!
M``!PHA9O%@``"A,$$02.:8T6```!$P46$P<K+``1!1$'$001!YH?/8P<```!
M'R",'````1\BC!P```$H%P``"J(`$0<76!,'$0<1!(YI_@03"!$(+<81!2@!
M```K$P87$PDK$A$&`A$)FF\9```*`!$)%U@3"1$)`HYI_@03"A$*+>$1!F\:
M```**`$```8`%B@4```*```"%IJ``0``!`(7FH`"```$`AB:@`0```09"GX"
M```$<GD``'!O&P``"A,+$0LY;@$```!^`@``!!9^`@``!&\<```*&%EO'0``
M"H`"```$.#4!`````@::%F\>```*'RW^`1;^`1,,$0PL1P`H$```"AN-%@``
M`246<G\``'"B)1<"!IJB)1AR]0``<*(E&1(`*!$```JB)1IR"P$`<*(H'P``
M"F\3```*`!@H%```"@```@::%V\>```*$PX1#A,-$0T?82XP*P`1#1]C+ATK
M`!$-'W!910,````L````E0```!X````XF````!>`"@``!#B-````!A=8"@(&
MFH`,```$*W\&%U@*`@::@`T```0K<0(&FAAO'@``"A]B_@$3#Q$/+!``!A=8
M"@(&FH`!```$`"M$`@::&&\>```*'V/^`1,0$1`L$``&%U@*`@::@`(```0`
M*R$"!IH8;QX```H?8?X!$Q$1$2P.``876`H"!IJ`!```!``K"!>`"P``!"L`
M!A=8"@`"!IIR#P$`<"@@```*$Q(1$CJU_O__`'X!```$<A4!`'`H(0``"A,3
M$1,L-@!S(@``"A,4*Q$`$10"!IIO&0``"@`&%U@*``8"CFG^!!,5$14MXQ$4
M;QH```J`!@``!``K10!^`0``!"@C```*&XT6```!)19R&0$`<*(E%W(?`0!P
MHB48<B,!`'"B)1ER)P$`<*(E&G(K`0!PHA9O%@``"H`&```$`'X"```$<R0`
M``HE@`4```03%@!^"@``!!;^`1,8$1@L$'X%```$<B\!`'!O$P``"@!^!0``
M!')K`0!P;Q,```H`%A,7`"LJ`'X%```$<J<!`'!^!@``!!$7FG++`0!P*!(`
M``IO$P``"@`1%Q=8$Q<`?@8```01%YIO)0``"G(+`0!P*"````H3&1$9+;D`
MWBL3&@!^"P``!!;^`1,;$1LL$"@0```*<M4!`'!O$P``"@`7*!0```H``-X`
M?@4```1RB`(`<'X$```$<LL!`'`H$@``"F\3```*`!$7%U@3'#BU"0```'X&
M```$$1R:<IX"`'`H)@``"A,=$1TL!P``.(X)``!^!@``!!$<FG*T`@!P*"8`
M``H3'A$>+%<`?@4```1RV`(`<&\3```*`'X%```$<AP#`'!O$P``"@!^!0``
M!')N`P!P;Q,```H`?@4```1R6P0`<&\3```*`'X%```$<G,$`'!O$P``"@``
M.!\)``!^!@``!!$<FG*B!0!P*"8```H3'Q$?+&``?@L```06_@$3(!$@+`MR
MQ@4`<"@G```*`'X%```$<O0%`'!O$P``"@!^!0``!'+\!0!P;Q,```H`?@4`
M``1R!`8`<&\3```*`'X%```$<@0&`'!O$P``"@``.*<(``!^!@``!!$<FG((
M!@!P*"8```H3(1$A.=,``````'X%```$<@0&`'!O$P``"@!^"```!'X(```$
M;R@```H766\I```*'T/^`1;^`1,B$2(L10!^"P``!!;^`1,C$2,L+@`H$```
M"G(H!@!P$1R,&0```2@J```*;Q,```H`*!````IRLP8`<&\3```*```8*!0`
M``H``'X(```$?@@```1O*```"A=9;RL```H``-XY$R0`?@L```06_@$3)1$E
M+!X`*!````IRS08`<!$<C!D```$H*@``"F\3```*```8*!0```H``-X``#BY
M!P``?@8```01')IR&0<`<"@F```*$R81)CGA``````!^!0``!'+\!0!P;Q,`
M``H`?@4```1R!`8`<&\3```*`'X(```$?@@```1O*```"A=9;RD```H?3?X!
M%OX!$R<1)RQ%`'X+```$%OX!$R@1*"PN`"@0```*<B@&`'`1'(P9```!*"H`
M``IO$P``"@`H$```"G(]!P!P;Q,```H``!@H%```"@``?@@```1^"```!&\H
M```*%UEO*P``"@``WC<3*0!^"P``!!;^`1,J$2HL'"@0```*<E<'`'`1'(P9
M```!*"H```IO$P``"@`8*!0```H``-X``#B]!@``?@8```01')IRKP<`<"@F
M```*$RL1*SF@`````'X(```$?@@```1O*```"A=9;RD```H?0_X!$RP1+"PW
M`'X%```$<O<'`'!^!@``!!$<FF\E```*'PMO%0``"F\E```*<D,(`'`H$@``
M"F\3```*```K-0!^!0``!')+"`!P?@8```01')IO)0``"A\+;Q4```IO)0``
M"G)#"`!P*!(```IO$P``"@``?@@```0?0V\L```*```X`@8``'X&```$$1R:
M<HD(`'`H)@``"A,M$2TL9@!^!0``!'+1"`!P?@8```01')IO)0``"AYO%0``
M"F\E```*<LP)`'`H$@``"F\3```*`'X%```$<J<*`'!O$P``"@!^!0``!')B
M#`!P;Q,```H`?@@```0?36\L```*```XA`4``'X&```$$1R:<G(,`'`H)@``
M"A,N$2XL.0!^!0``!'*,#`!P?@8```01')IO)0``"AQO%0``"F\E```*<F4-
M`'`H$@``"F\3```*```X,P4``'X&```$$1R:<CP.`'`H)@``"A,O$2\YU@``
M``!^!0``!'*`#@!P;Q,```H`?@4```1RD`X`<'X&```$$1R:;R4```H<;Q4`
M``IO)0``"G*X#@!P*!(```IO$P``"@!^!0``!'+,#@!P;Q,```H`?@4```1R
MW0\`<&\3```*`'X%```$<NT/`'!O$P``"@!^!0``!'+^$`!P;Q,```H`?@4`
M``1RO1$`<&\3```*`'X%```$<L\1`'!^!@``!!$<FF\E```*'&\5```*;R4`
M``HH+0``"F\3```*`'X%```$<MT/`'!O$P``"@``.$($``!^!@``!!$<FG+[
M$0!P*"8```H3,!$P.88`````?@4```1R@`X`<&\3```*`'X%```$<C\2`'!^
M!@``!!$<FF\E```*'&\5```*;R4```HH+0``"F\3```*`'X%```$<FT2`'!^
M!@``!!$<FF\E```*'&\5```*;R4```IRD1(`<"@2```*;Q,```H`?@4```1R
MW0\`<&\3```*```XH0,``'X&```$$1R:<IT2`'`H)@``"A,Q$3$YA@,````6
M$S(X.`,```!^!@``!!$<FA$R;QX```H3-!$T$S,1,Q\^-3\1,Q\K644$````
M/@```*<```!3````D@```"L`$3,?.EE%!0```)P```"Q````70```-L"``!(
M````.-8"```1,Q];.[@````K`!$S'UT[X0$``#B]`@``?@4```1RT1(`<&\3
M```*`#BH`@``?@4```1RQA0`<&\3```*`#B3`@``?@4```1RNQ8`<&\3```*
M`#A^`@``?@4```1RM!@`<&\3```*`#AI`@``?@4```1RJQH`<&\3```*`#A4
M`@``?@4```1RH!P`<&\3```*`#@_`@``?@4```1RDQX`<&\3```*`#@J`@``
M?@4```1RDB``<&\3```*`#@5`@```'X'```$%UB`!P``!'X'```$$S41,A,V
M%Q,W*U8`$3876!,V?@8```01')H1-F\>```*'UO^`1,X$3@L#@`1-Q=8$S<1
M-1=8$S4`?@8```01')H1-F\>```*'UW^`1,Y$3DL#@`1-Q=9$S<1-1=8$S4`
M`!$W%OX#$SH1.BV??@4```1R@`X`<&\3```*`'X%```$<H\B`'!_!P``!"@1
M```*<K@.`'`H$@``"F\3```*`'X%```$<LP.`'!O$P``"@!^!0``!'+=#P!P
M;Q,```H`?@4```1R[0\`<&\3```*`'X%```$<OX0`'!O$P``"@!^!0``!'*]
M$0!P;Q,```H`?@4```1RK2(`<!(U*!$```HH+0``"F\3```*`'X%```$<MT/
M`'!O$P``"@``..$`````?@<```076(`'```$?@<```03.Q$R$SP7$STK5@`1
M/!=9$SQ^!@``!!$<FA$\;QX```H?6_X!$SX1/BP.`!$]%UD3/1$[%UD3.P!^
M!@``!!$<FA$\;QX```H?7?X!$S\1/RP.`!$]%U@3/1$[%UD3.P``$3T6_@,3
M0!%`+9]^!0``!'*`#@!P;Q,```H`?@4```1RSR(`<!([*!$```HH+0``"F\3
M```*`'X%```$<O,B`'!_!P``!"@1```*<I$2`'`H$@``"F\3```*`'X%```$
M<MT/`'!O$P``"@``*P``$3(76!,R$3)^!@``!!$<FF\<```*_@0301%!.J[\
M__]^"P``!!;^`1-"$4(L''(-(P!P$APH$0``"G(+`0!P*!(```HH)P``"@``
M`!$<%U@3'!$<?@8```2.:?X$$T,10SHW]O__`-X-$18L"!$6;RX```H`W'X,
M```$%/X#$T011"Q\`'X,```$?@T```0M!W([(P!P*Q1R/2,`<'X.```$<D\C
M`'`H$@``"GX"```$*"T```IS+P``"A-%$446;S````H`?@L```031A%&+!0`
M$447;S$```H`$447;S(```H``!%%%V\S```*`!%%%F\T```*`!%%*#4```HF
M`'X-```$%/X#$T<11SF/`````'X.```$<S8```H32!%(%F\P```*`!%(%V\S
M```*`!%(%V\W```*`!%(%V\R```*`!%(%V\Q```*`!%(*#4```H321%);S@`
M``I^#0``!&\3```*`!%);SD```H`$4EO.@``"F\[```*$TH126\\```*;SL`
M``H32Q%**#T```H`*!````H12V\^```*```J``!!9````````(`#``!-````
MS0,``"L````3```!`````$4%``"3````V`4``#D````3```!`````#,&``"C
M````U@8``#<````3```!`@```$X#``"@"@``[@T```T`````````(@(H/P``
M"@`JSA>`!P``!'-````*@`@```06@`H```06@`L```04@`P```04@`T```1R
M4R,`<(`.```$*@```$)32D(!``$```````P```!V-"XP+C,P,S$Y``````4`
M;`````P$```C?@``>`0``+`%```C4W1R:6YG<P`````H"@``<",``"-54P"8
M+0``$````"-'54E$````J"T```0#```C0FQO8@`````````"```!5QT""`D(
M````^@$S`!8```$````D`````@````X````#`````0```$`````!````#@``
M``$````"`````0````,````!``````!R`@$```````8`TP$I!`8`0`(I!`8`
M!P'W`P\`200```8`+P$6`P8`M@$6`P8`EP$6`P8`)P(6`P8`\P$6`P8`#`(6
M`P8`1@$6`P8`&P$*!`8`^0`*!`8`>@$6`P8`80%]`@8`O@3]`@8`D0,N``8`
M#P!(``8`*`/]`@H`20/W`PH`GP3W`P8`F0+]`@8`C0#]`@8`J0,N``8`%@#]
M`@8`W03]`@8`@@3]`@8`9@/]`@X`<0!:`P8``0!(``8`B``N``H`A@5C!`8`
M?`#]`@H`I0#W`P8`:P,N``8`>`,N```````<```````!``$````0`(,#``!!
M``$``0`1`+H"`0(1`,,"`0(1`+@``0(1`,,``0(1`)X#!`(1`%@$"`(1`/,$
M#`(1`.L"#P)1@"4``0(1`.8`%@(1`,4$%@(1``D#`0(1`$$#`0(1`+("`0)0
M(`````"6`!$#&0(!`.@O`````(88Z@,&``(`\2\`````D1CP`Q\"`@````$`
M7@0)`.H#`0`1`.H#!@`9`.H#"@`I`.H#$``Q`.H#$``Y`.H#$`!!`.H#$`!)
M`.H#$`!1`.H#$`!9`.H#$`!A`.H#%0!I`.H#$`!Q`.H#$`!Y`.H#$`"Q`.`"
M>@"Y`+0#?P#)`)<"A`"Q`+`$B`#!`-``$`#1`-@$CP"Q`*`"E`"Q`,L$F0"Q
M`+<$H@#I``8%J@`,`&,`Q``,`(P%R@"Q`-<">@"Q`,P"T`"Q`*`"U`"Q`)4$
MV@"Q`+`$WP"Q`*`%Y0"Q`)0%Y0`,`.H#!@#Y`&<%ZP")`.H#$`"Q``0#A``!
M`:H"Y0"Y`-``\``4`.D$T``4`/0"^P"Q`+<$`0$4`*<$`0`4`&,`Q`"Q`+`$
M!P$)`>L`!@"A`.H##0&A`%X"%0"A`-`#%0"A`$P%%0"A`',%%0"A`)4`$P&I
M```%&@&A`.H#$`"A`!\%%0"I``T%(0&I`-$$!@"I`#D%)@$A`6<`A`"I`+X#
M)@&Y`/,`\`#!`/,`$`"!`.H#!@`4`.H#!@`.`"0`-0$N``L`(P(N`!,`+`(N
M`!L`2P(N`",`5`(N`"L`80(N`#,`80(N`#L`80(N`$,`5`(N`$L`9P(N`%,`
M80(N`%L`80(N`&,`?P(N`&L`J0(N`',`M@(:`+X`]0`$@````0``````````
M```````X````!```````````````+`$_```````$```````````````L`?T"
M``````0``````````````"P!V@``````,0"Z````````245N=6UE<F%B;&5@
M,0!,:7-T8#$`26YT,S(`/$UO9'5L93X`05)'7U194$4`4WES=&5M+DE/`$)&
M+DY%5`!M<V-O<FQI8@!3>7-T96TN0V]L;&5C=&EO;G,N1V5N97)I8P!!9&0`
M4F5A9%1O16YD`$5N=6UE<F%B;&4`241I<W!O<V%B;&4`1FEL90!#;VYS;VQE
M`'-E=%]7:6YD;W=3='EL90!0<F]C97-S5VEN9&]W4W1Y;&4`;6]D=6QE3F%M
M90!A<W-E;6)L>4YA;64`5W)I=&5,:6YE`%-Y<W1E;2Y#;W)E`&-O<F4`1&ES
M<&]S90!7<FET90!'=6ED071T<FEB=71E`$1E8G5G9V%B;&5!='1R:6)U=&4`
M0V]M5FES:6)L94%T=')I8G5T90!!<W-E;6)L>51I=&QE071T<FEB=71E`$%S
M<V5M8FQY5')A9&5M87)K071T<FEB=71E`%1A<F=E=$9R86UE=V]R:T%T=')I
M8G5T90!!<W-E;6)L>49I;&5697)S:6]N071T<FEB=71E`$%S<V5M8FQY0V]N
M9FEG=7)A=&EO;D%T=')I8G5T90!!<W-E;6)L>41E<V-R:7!T:6]N071T<FEB
M=71E`$-O;7!I;&%T:6]N4F5L87AA=&EO;G-!='1R:6)U=&4`07-S96UB;'E0
M<F]D=6-T071T<FEB=71E`$%S<V5M8FQY0V]P>7)I9VAT071T<FEB=71E`$%S
M<V5M8FQY0V]M<&%N>4%T=')I8G5T90!2=6YT:6UE0V]M<&%T:6)I;&ET>4%T
M=')I8G5T90!S971?57-E4VAE;&Q%>&5C=71E`$)&+DY%5"YE>&4`4WES=&5M
M+E)U;G1I;64N5F5R<VEO;FEN9P!4;U-T<FEN9P!3=6)S=')I;F<`27--871C
M:`!E>&50871H`&)F9&Y0871H`&-O;7!0871H`&=E=%],96YG=&@`16YD<U=I
M=&@`4W1A<G1S5VET:`!O;W!$97!T:`!G971?271E;0!3>7-T96T`5')I;0!A
M=71O07-M`$UA:6X`4WES=&5M+E)E9FQE8W1I;VX`26YD97A/=71/9E)A;F=E
M17AC97!T:6]N`&%U=&]2=6X`4')O8V5S<U-T87)T26YF;P!3>7-T96TN3&EN
M<0!#:&%R`%-T<F5A;5)E861E<@!497AT4F5A9&5R`$)&1$Y?0V]M<&EL97(`
M4W1R96%M5W)I=&5R`&-O;7!7<FET97(`5&5X=%=R:71E<@!G971?17)R;W(`
M9V5T7U-T86YD87)D17)R;W(`<V5T7U)E9&ER96-T4W1A;F1A<F1%<G)O<@`N
M8W1O<@`N8V-T;W(`4WES=&5M+D1I86=N;W-T:6-S`%-Y<W1E;2Y2=6YT:6UE
M+DEN=&5R;W!397)V:6-E<P!3>7-T96TN4G5N=&EM92Y#;VUP:6QE<E-E<G9I
M8V5S`$1E8G5G9VEN9TUO9&5S`&QI;F5S`&%R9W,`4WES=&5M+E1E>'0N4F5G
M=6QA<D5X<')E<W-I;VYS`%-T<FEN9U-P;&ET3W!T:6]N<P!G971?0VAA<G,`
M4')O8V5S<P!296UO=F5!=`!#;VYC870`1F]R;6%T`$]B:F5C=`!Q=6EE=`!3
M<&QI=`!786ET1F]R17AI=`!%;G9I<F]N;65N=`!G971?0V]U;G0`8G)A8VME
M=$-O=6YT`%-T87)T`%1O3&ES=`!G971?4W1A;F1A<F1);G!U=`!S971?4F5D
M:7)E8W13=&%N9&%R9$EN<'5T`&=E=%]3=&%N9&%R9$]U='!U=`!S971?4F5D
M:7)E8W13=&%N9&%R9$]U='!U=`!296%D06QL5&5X=`!S971?0W)E871E3F]7
M:6YD;W<`4F5G97@`5&]!<G)A>0!O<%]%<75A;&ET>0!O<%]);F5Q=6%L:71Y
M``````4]`#T``&%"`$8`+@!.`$4`5``@`$4`<@!R`&\`<@`Z`"``,P`@`&,`
M;P!M`&T`80!N`&0`;`!I`&X`90`@`&$`<@!G`'4`;0!E`&X`=`!S`"``90!X
M`'``90!C`'0`90!D`#L`(```#R``9P!I`'8`90!N`"X```4O`%P``'5"`$8`
M+@!.`$4`5``@`$4`<@!R`&\`<@`Z`"``00!R`&<`=0!M`&4`;@!T`',`(`!M
M`'4`<P!T`"``<P!T`&$`<@!T`"``=P!I`'0`:``@`"<`+0`G`"P`(`!B`&$`
M9``@`&$`<@!G`'4`;0!E`&X`=``@``$5(`!A`'0`(`!I`&X`9`!E`'@`(```
M`RX```4M`"T``0,Z```%#0`*```#"@```PT```,,```#"P``.RX`80!S`',`
M90!M`&(`;`!Y`"``90!X`'0`90!R`&X`(`!M`',`8P!O`'(`;`!I`&(`(`![
M`"``?0``.RX`80!S`',`90!M`&(`;`!Y`"``90!X`'0`90!R`&X`(`!B`&8`
M9`!O`'0`;@!E`'0`(`![`"``?0``(RX`80!S`',`90!M`&(`;`!Y`"``90!X
M`'0`90!R`&X`(```"2``>P`@`'T``("Q0@!&`"X`3@!%`%0`(`!%`'(`<@!O
M`'(`.@`@`%``<@!O`&<`<@!A`&T`(`!D`&D`9``@`&X`;P!T`"``:`!A`'8`
M90`@`&$`(`!L`&D`;@!E`"``=P!I`'0`:``@`&\`;@!L`'D`(`!A`"``<`!E
M`'(`:0!O`&0`(`!T`&\`(`!E`&X`9``@`&$`<P!S`&4`;0!B`&P`>0`@`'(`
M90!F`&4`<@!E`&X`8P!E`',`+@``%2X`80!S`',`90!M`&(`;`!Y`"```!5<
M`',`*@!?`$,`3P!-`"``+@`J```C7`!S`"H`/`!-`$$`20!.`%(`50!.`"@`
M(``N`"H`*0`_``!#+@!C`&P`80!S`',`(`!A`&(`<P!T`'(`80!C`'0`(`!S
M`&4`80!L`&4`9``@`%(`50!.`$,`3`!!`%,`4P`@`'L``%$N`&T`90!T`&@`
M;P!D`"``<`!U`&(`;`!I`&,`(`!S`'0`80!T`&D`8P`@`'8`;P!I`&0`(`!2
M`%4`3@!-`$4`5`!(`$\`1``@`"@`*0![``"`ZRX`;`!O`&,`80!L`',`(`!I
M`&X`:0!T`"``*``@`&,`;`!A`',`<P`@`%L`;0!S`&,`;P!R`&P`:0!B`%T`
M4P!Y`',`=`!E`&T`+@!4`'4`<`!L`&4`8``S`#P`8P!L`&$`<P!S`"``6P!M
M`',`8P!O`'(`;`!I`&(`70!3`'D`<P!T`&4`;0`N`$,`;P!L`&P`90!C`'0`
M:0!O`&X`<P`N`$<`90!N`&4`<@!I`&,`+@!,`&D`<P!T`&``,0`\`&D`;@!T
M`#,`,@`^`"P`:0!N`'0`,P`R`"P`<P!T`'(`:0!N`&<`/@`I```7+@!E`&X`
M=`!R`'D`<`!O`&D`;@!T``"!+6,`80!L`&P`(`!C`&P`80!S`',`(`!;`&T`
M<P!C`&\`<@!L`&D`8@!=`%,`>0!S`'0`90!M`"X`5`!U`'``;`!E`&``,P`\
M`&,`;`!A`',`<P`@`%L`;0!S`&,`;P!R`&P`:0!B`%T`4P!Y`',`=`!E`&T`
M+@!#`&\`;`!L`&4`8P!T`&D`;P!N`',`+@!'`&4`;@!E`'(`:0!C`"X`3`!I
M`',`=`!@`#$`/`!I`&X`=``S`#(`/@`L`&D`;@!T`#,`,@`L`',`=`!R`&D`
M;@!G`#X`(`!;`&(`9@!D`&\`=`!N`&4`=`!=`$(`1@!$`$X`+@!%`',`<P!E
M`&X`=`!I`&$`;`!S`#H`.@!#`&\`;@!S`'0`<@!U`&,`=`!!`'(`9P`@`"@`
M(``I```C7`!S`"H`/@!-`$$`20!.`%(`50!.`"@`(``N`"H`*0`_```M4P!T
M`&$`<@!T`&D`;@!G`"``90!N`&0`(`!M`&$`:0!N`"``<@!U`&X`+@``!W``
M;P!P```'<@!E`'0```-]```?7`!S`"H`/@!-`$\`1`!5`$P`10!<`',`*P`N
M`"H``(")0@!&`"X`3@!%`%0`(`!%`'(`<@!O`'(`.@`@`#X`30!%`%0`2`!/
M`$0`(`!I`',`(`!N`&\`=``@`'0`:`!E`"``8P!O`'(`<@!E`&,`=``@`&,`
M;`!O`',`:0!N`&<`(`!B`'(`80!C`&L`90!T`"``80!T`"``;`!I`&X`90`@
M`'L`,`!]```950!S`&4`(``^`$T`10!4`$@`3P!$`"X``$M"`$8`+@!.`$4`
M5``@`$4`<@!R`&\`<@`Z`"``50!N`&T`80!T`&,`:`!E`&0`(``^`"``80!T
M`"``;`!I`&X`90`@`'L`,`!]```C7`!S`"H`/@!-`$4`5`!(`$\`1``H`%P`
M<P`N`"H`*0`_```950!S`&4`(``^`$T`3P!$`%4`3`!%`"X``%="`$8`+@!.
M`$4`5``@`$4`<@!R`&\`<@`Z`"``50!N`&T`80!T`&,`:`!E`&0`(``^`$T`
M10!4`$@`3P!$`"``80!T`"``;`!I`&X`90`@`'L`,`!]``!'7`!S`"H`/`!-
M`$\`1`!5`$P`10!<`',`*P!;`$$`+0!:`&$`+0!Z`%\`,``M`#D`7``_`$``
M8`!<`"0`70`K`%P`<P`J``%++@!C`&P`80!S`',`(`!N`&4`<P!T`&4`9``@
M`'``=0!B`&P`:0!C`"``80!B`',`=`!R`&$`8P!T`"``<P!E`&$`;`!E`&0`
M(```!R``>P`@```]+@!C`&P`80!S`',`(`!P`'4`8@!L`&D`8P`@`&$`8@!S
M`'0`<@!A`&,`=``@`',`90!A`&P`90!D`"```$=<`',`*@`\`$T`10!4`$@`
M3P!$`%P`<P`K`%L`00`M`%H`80`M`'H`7P`P`"T`.0!<`#\`0`!@`%P`)`!=
M`"L`7`!S`"H``8#Y+@!M`&4`=`!H`&\`9``@`'``=0!B`&P`:0!C`"``<P!T
M`&$`=`!I`&,`(`!C`&P`80!S`',`(`!;`&T`<P!C`&\`<@!L`&D`8@!=`%,`
M>0!S`'0`90!M`"X`5`!U`'``;`!E`&``,P`\`&,`;`!A`',`<P`@`%L`;0!S
M`&,`;P!R`&P`:0!B`%T`4P!Y`',`=`!E`&T`+@!#`&\`;`!L`&4`8P!T`&D`
M;P!N`',`+@!'`&4`;@!E`'(`:0!C`"X`3`!I`',`=`!@`#$`/`!I`&X`=``S
M`#(`/@`L`&D`;@!T`#,`,@`L`',`=`!R`&D`;@!G`#X`(```@-D@`"@`(`!C
M`&P`80!S`',`(`!;`&T`<P!C`&\`<@!L`&D`8@!=`%,`>0!S`'0`90!M`"X`
M5`!U`'``;`!E`&``,P`\`&,`;`!A`',`<P`@`%L`;0!S`&,`;P!R`&P`:0!B
M`%T`4P!Y`',`=`!E`&T`+@!#`&\`;`!L`&4`8P!T`&D`;P!N`',`+@!'`&4`
M;@!E`'(`:0!C`"X`3`!I`',`=`!@`#$`/`!I`&X`=``S`#(`/@`L`&D`;@!T
M`#,`,@`L`',`=`!R`&D`;@!G`#X`(``I`"``>P``@;DN`&P`;P!C`&$`;`!S
M`"``:0!N`&D`=``@`"@`(`!C`&P`80!S`',`(`!;`&T`<P!C`&\`<@!L`&D`
M8@!=`%,`>0!S`'0`90!M`"X`5`!U`'``;`!E`&``,P`\`&,`;`!A`',`<P`@
M`%L`;0!S`&,`;P!R`&P`:0!B`%T`4P!Y`',`=`!E`&T`+@!#`&\`;`!L`&4`
M8P!T`&D`;P!N`',`+@!'`&4`;@!E`'(`:0!C`"X`3`!I`',`=`!@`#$`/`!I
M`&X`=``S`#(`/@`L`&D`;@!T`#,`,@`L`',`=`!R`&D`;@!G`#X`+``@`&,`
M;`!A`',`<P`@`%L`;0!S`&,`;P!R`&P`:0!B`%T`4P!Y`',`=`!E`&T`+@!#
M`&\`;`!L`&4`8P!T`&D`;P!N`',`+@!'`&4`;@!E`'(`:0!C`"X`3`!I`',`
M=`!@`#$`/`!I`&X`=``S`#(`/@`L`"``:0!N`'0`,P`R`"P`(`!I`&X`=``S
M`#(`+``@`&,`;`!A`',`<P`@`%L`;0!S`&,`;P!R`&P`:0!B`%T`4P!Y`',`
M=`!E`&T`+@!3`'0`<@!I`&X`9P`I```/;`!D`&$`<@!G`"X`,```&5P`<P`J
M`%\`0P!!`$P`3`!<`',`+@`J``"`UV,`80!L`&P`(`!C`&P`80!S`',`(`!;
M`&T`<P!C`&\`<@!L`&D`8@!=`%,`>0!S`'0`90!M`"X`5`!U`'``;`!E`&``
M,P`\`&,`;`!A`',`<P`@`%L`;0!S`&,`;P!R`&P`:0!B`%T`4P!Y`',`=`!E
M`&T`+@!#`&\`;`!L`&4`8P!T`&D`;P!N`',`+@!'`&4`;@!E`'(`:0!C`"X`
M3`!I`',`=`!@`#$`/`!I`&X`=``S`#(`/@`L`&D`;@!T`#,`,@`L`',`=`!R
M`&D`;@!G`#X`(```@-4@`"@`(`!C`&P`80!S`',`(`!;`&T`<P!C`&\`<@!L
M`&D`8@!=`%,`>0!S`'0`90!M`"X`5`!U`'``;`!E`&``,P`\`&,`;`!A`',`
M<P`@`%L`;0!S`&,`;P!R`&P`:0!B`%T`4P!Y`',`=`!E`&T`+@!#`&\`;`!L
M`&4`8P!T`&D`;P!N`',`+@!'`&4`;@!E`'(`:0!C`"X`3`!I`',`=`!@`#$`
M/`!I`&X`=``S`#(`/@`L`&D`;@!T`#,`,@`L`',`=`!R`&D`;@!G`#X`(``I
M``!#7`!S`"H`/`!,`$\`3P!0`%P`<P`K`%L`00`M`%H`80`M`'H`7P`P`"T`
M.0!<`#\`0`!@`%P`)`!=`"L`7`!S`"H``0]S`'0`;`!O`&,`+@`P```G00!L
M`&\`;@!E`$P`;P!O`'``4P!T`&$`<@!T`$P`80!B`&4`;```$SH`(`!L`&0`
M;`!O`&,`+@`P``"!#V,`80!L`&P`=@!I`'(`=``@`&D`;@!S`'0`80!N`&,`
M90`@`"$`,``@`&,`;`!A`',`<P`@`%L`;0!S`&,`;P!R`&P`:0!B`%T`4P!Y
M`',`=`!E`&T`+@!4`'4`<`!L`&4`8``S`#P`8P!L`&$`<P!S`"``6P!M`',`
M8P!O`'(`;`!I`&(`70!3`'D`<P!T`&4`;0`N`$,`;P!L`&P`90!C`'0`:0!O
M`&X`<P`N`$<`90!N`&4`<@!I`&,`+@!,`&D`<P!T`&``,0`\`&D`;@!T`#,`
M,@`^`"P`:0!N`'0`,P`R`"P`<P!T`'(`:0!N`&<`/@`Z`#H`9P!E`'0`7P!)
M`'0`90!M`#$`*``I```/;`!D`&P`;P!C`"X`,```@0]C`&$`;`!L`'8`:0!R
M`'0`(`!I`&X`<P!T`&$`;@!C`&4`(``A`#$`(`!C`&P`80!S`',`(`!;`&T`
M<P!C`&\`<@!L`&D`8@!=`%,`>0!S`'0`90!M`"X`5`!U`'``;`!E`&``,P`\
M`&,`;`!A`',`<P`@`%L`;0!S`&,`;P!R`&P`:0!B`%T`4P!Y`',`=`!E`&T`
M+@!#`&\`;`!L`&4`8P!T`&D`;P!N`',`+@!'`&4`;@!E`'(`:0!C`"X`3`!I
M`',`=`!@`#$`/`!I`&X`=``S`#(`/@`L`&D`;@!T`#,`,@`L`',`=`!R`&D`
M;@!G`#X`.@`Z`&<`90!T`%\`20!T`&4`;0`R`"@`*0``@+UC`&$`;`!L`'8`
M:0!R`'0`(`!I`&X`<P!T`&$`;@!C`&4`(``A`#``(`!C`&P`80!S`',`(`!;
M`&T`<P!C`&\`<@!L`&D`8@!=`%,`>0!S`'0`90!M`"X`0P!O`&P`;`!E`&,`
M=`!I`&\`;@!S`"X`1P!E`&X`90!R`&D`8P`N`$P`:0!S`'0`8``Q`#P`:0!N
M`'0`,P`R`#X`.@`Z`&<`90!T`%\`20!T`&4`;0`H`&D`;@!T`#,`,@`I```1
M;`!D`&,`+@!I`#0`+@`P```K8@!E`'$`(`!!`&P`;P!N`&4`3`!O`&\`<`!%
M`&X`9`!,`&$`8@!E`&P``$-<`',`*@`^`$P`3P!/`%``7`!S`"L`6P!!`"T`
M6@!A`"T`>@!?`#``+0`Y`%P`/P!``&``7``D`%T`*P!<`',`*@`!+6(`<@`@
M`$$`;`!O`&X`90!,`&\`;P!P`%,`=`!A`'(`=`!,`&$`8@!E`&P``"-!`&P`
M;P!N`&4`3`!O`&\`<`!%`&X`9`!,`&$`8@!E`&P```LZ`"``;@!O`'```#-<
M`',`*@!;`%P`*P!<`"T`/@`\`%P`+@!<`"P`7`!;`%P`70`Z`#L`70`K`%P`
M<P`J``&!\V,`80!L`&P`(`!C`&P`80!S`',`(`!;`&T`<P!C`&\`<@!L`&D`
M8@!=`%,`>0!S`'0`90!M`"X`5`!U`'``;`!E`&``,P`\`&,`;`!A`',`<P`@
M`%L`;0!S`&,`;P!R`&P`:0!B`%T`4P!Y`',`=`!E`&T`+@!#`&\`;`!L`&4`
M8P!T`&D`;P!N`',`+@!'`&4`;@!E`'(`:0!C`"X`3`!I`',`=`!@`#$`/`!I
M`&X`=``S`#(`/@`L`&D`;@!T`#,`,@`L`',`=`!R`&D`;@!G`#X`(`!C`&P`
M80!S`',`(`!;`&(`9@!D`&\`=`!N`&4`=`!=`$(`1@!$`$X`+@!%`',`<P!E
M`&X`=`!I`&$`;`!S`#H`.@!)`&X`8P`@`"@`(`!C`&P`80!S`',`(`!;`&T`
M<P!C`&\`<@!L`&D`8@!=`%,`>0!S`'0`90!M`"X`5`!U`'``;`!E`&``,P`\
M`&,`;`!A`',`<P`@`%L`;0!S`&,`;P!R`&P`:0!B`%T`4P!Y`',`=`!E`&T`
M+@!#`&\`;`!L`&4`8P!T`&D`;P!N`',`+@!'`&4`;@!E`'(`:0!C`"X`3`!I
M`',`=`!@`#$`/`!I`&X`=``S`#(`/@`L`&D`;@!T`#,`,@`L`',`=`!R`&D`
M;@!G`#X`(``I``"!\V,`80!L`&P`(`!C`&P`80!S`',`(`!;`&T`<P!C`&\`
M<@!L`&D`8@!=`%,`>0!S`'0`90!M`"X`5`!U`'``;`!E`&``,P`\`&,`;`!A
M`',`<P`@`%L`;0!S`&,`;P!R`&P`:0!B`%T`4P!Y`',`=`!E`&T`+@!#`&\`
M;`!L`&4`8P!T`&D`;P!N`',`+@!'`&4`;@!E`'(`:0!C`"X`3`!I`',`=`!@
M`#$`/`!I`&X`=``S`#(`/@`L`&D`;@!T`#,`,@`L`',`=`!R`&D`;@!G`#X`
M(`!C`&P`80!S`',`(`!;`&(`9@!D`&\`=`!N`&4`=`!=`$(`1@!$`$X`+@!%
M`',`<P!E`&X`=`!I`&$`;`!S`#H`.@!$`&4`8P`@`"@`(`!C`&P`80!S`',`
M(`!;`&T`<P!C`&\`<@!L`&D`8@!=`%,`>0!S`'0`90!M`"X`5`!U`'``;`!E
M`&``,P`\`&,`;`!A`',`<P`@`%L`;0!S`&,`;P!R`&P`:0!B`%T`4P!Y`',`
M=`!E`&T`+@!#`&\`;`!L`&4`8P!T`&D`;P!N`',`+@!'`&4`;@!E`'(`:0!C
M`"X`3`!I`',`=`!@`#$`/`!I`&X`=``S`#(`/@`L`&D`;@!T`#,`,@`L`',`
M=`!R`&D`;@!G`#X`(``I``"!]V,`80!L`&P`(`!C`&P`80!S`',`(`!;`&T`
M<P!C`&\`<@!L`&D`8@!=`%,`>0!S`'0`90!M`"X`5`!U`'``;`!E`&``,P`\
M`&,`;`!A`',`<P`@`%L`;0!S`&,`;P!R`&P`:0!B`%T`4P!Y`',`=`!E`&T`
M+@!#`&\`;`!L`&4`8P!T`&D`;P!N`',`+@!'`&4`;@!E`'(`:0!C`"X`3`!I
M`',`=`!@`#$`/`!I`&X`=``S`#(`/@`L`&D`;@!T`#,`,@`L`',`=`!R`&D`
M;@!G`#X`(`!C`&P`80!S`',`(`!;`&(`9@!D`&\`=`!N`&4`=`!=`$(`1@!$
M`$X`+@!%`',`<P!E`&X`=`!I`&$`;`!S`#H`.@!2`&D`9P!H`'0`(``H`"``
M8P!L`&$`<P!S`"``6P!M`',`8P!O`'(`;`!I`&(`70!3`'D`<P!T`&4`;0`N
M`%0`=0!P`&P`90!@`#,`/`!C`&P`80!S`',`(`!;`&T`<P!C`&\`<@!L`&D`
M8@!=`%,`>0!S`'0`90!M`"X`0P!O`&P`;`!E`&,`=`!I`&\`;@!S`"X`1P!E
M`&X`90!R`&D`8P`N`$P`:0!S`'0`8``Q`#P`:0!N`'0`,P`R`#X`+`!I`&X`
M=``S`#(`+`!S`'0`<@!I`&X`9P`^`"``*0``@?5C`&$`;`!L`"``8P!L`&$`
M<P!S`"``6P!M`',`8P!O`'(`;`!I`&(`70!3`'D`<P!T`&4`;0`N`%0`=0!P
M`&P`90!@`#,`/`!C`&P`80!S`',`(`!;`&T`<P!C`&\`<@!L`&D`8@!=`%,`
M>0!S`'0`90!M`"X`0P!O`&P`;`!E`&,`=`!I`&\`;@!S`"X`1P!E`&X`90!R
M`&D`8P`N`$P`:0!S`'0`8``Q`#P`:0!N`'0`,P`R`#X`+`!I`&X`=``S`#(`
M+`!S`'0`<@!I`&X`9P`^`"``8P!L`&$`<P!S`"``6P!B`&8`9`!O`'0`;@!E
M`'0`70!"`$8`1`!.`"X`10!S`',`90!N`'0`:0!A`&P`<P`Z`#H`3`!E`&8`
M=``@`"@`(`!C`&P`80!S`',`(`!;`&T`<P!C`&\`<@!L`&D`8@!=`%,`>0!S
M`'0`90!M`"X`5`!U`'``;`!E`&``,P`\`&,`;`!A`',`<P`@`%L`;0!S`&,`
M;P!R`&P`:0!B`%T`4P!Y`',`=`!E`&T`+@!#`&\`;`!L`&4`8P!T`&D`;P!N
M`',`+@!'`&4`;@!E`'(`:0!C`"X`3`!I`',`=`!@`#$`/`!I`&X`=``S`#(`
M/@`L`&D`;@!T`#,`,@`L`',`=`!R`&D`;@!G`#X`(``I``"!\V,`80!L`&P`
M(`!C`&P`80!S`',`(`!;`&T`<P!C`&\`<@!L`&D`8@!=`%,`>0!S`'0`90!M
M`"X`5`!U`'``;`!E`&``,P`\`&,`;`!A`',`<P`@`%L`;0!S`&,`;P!R`&P`
M:0!B`%T`4P!Y`',`=`!E`&T`+@!#`&\`;`!L`&4`8P!T`&D`;P!N`',`+@!'
M`&4`;@!E`'(`:0!C`"X`3`!I`',`=`!@`#$`/`!I`&X`=``S`#(`/@`L`&D`
M;@!T`#,`,@`L`',`=`!R`&D`;@!G`#X`(`!C`&P`80!S`',`(`!;`&(`9@!D
M`&\`=`!N`&4`=`!=`$(`1@!$`$X`+@!%`',`<P!E`&X`=`!I`&$`;`!S`#H`
M.@!/`'4`=``@`"@`(`!C`&P`80!S`',`(`!;`&T`<P!C`&\`<@!L`&D`8@!=
M`%,`>0!S`'0`90!M`"X`5`!U`'``;`!E`&``,P`\`&,`;`!A`',`<P`@`%L`
M;0!S`&,`;P!R`&P`:0!B`%T`4P!Y`',`=`!E`&T`+@!#`&\`;`!L`&4`8P!T
M`&D`;P!N`',`+@!'`&4`;@!E`'(`:0!C`"X`3`!I`',`=`!@`#$`/`!I`&X`
M=``S`#(`/@`L`&D`;@!T`#,`,@`L`',`=`!R`&D`;@!G`#X`(``I``"!\6,`
M80!L`&P`(`!C`&P`80!S`',`(`!;`&T`<P!C`&\`<@!L`&D`8@!=`%,`>0!S
M`'0`90!M`"X`5`!U`'``;`!E`&``,P`\`&,`;`!A`',`<P`@`%L`;0!S`&,`
M;P!R`&P`:0!B`%T`4P!Y`',`=`!E`&T`+@!#`&\`;`!L`&4`8P!T`&D`;P!N
M`',`+@!'`&4`;@!E`'(`:0!C`"X`3`!I`',`=`!@`#$`/`!I`&X`=``S`#(`
M/@`L`&D`;@!T`#,`,@`L`',`=`!R`&D`;@!G`#X`(`!C`&P`80!S`',`(`!;
M`&(`9@!D`&\`=`!N`&4`=`!=`$(`1@!$`$X`+@!%`',`<P!E`&X`=`!I`&$`
M;`!S`#H`.@!)`&X`(``H`"``8P!L`&$`<P!S`"``6P!M`',`8P!O`'(`;`!I
M`&(`70!3`'D`<P!T`&4`;0`N`%0`=0!P`&P`90!@`#,`/`!C`&P`80!S`',`
M(`!;`&T`<P!C`&\`<@!L`&D`8@!=`%,`>0!S`'0`90!M`"X`0P!O`&P`;`!E
M`&,`=`!I`&\`;@!S`"X`1P!E`&X`90!R`&D`8P`N`$P`:0!S`'0`8``Q`#P`
M:0!N`'0`,P`R`#X`+`!I`&X`=``S`#(`+`!S`'0`<@!I`&X`9P`^`"``*0``
M@?UC`&$`;`!L`"``8P!L`&$`<P!S`"``6P!M`',`8P!O`'(`;`!I`&(`70!3
M`'D`<P!T`&4`;0`N`%0`=0!P`&P`90!@`#,`/`!C`&P`80!S`',`(`!;`&T`
M<P!C`&\`<@!L`&D`8@!=`%,`>0!S`'0`90!M`"X`0P!O`&P`;`!E`&,`=`!I
M`&\`;@!S`"X`1P!E`&X`90!R`&D`8P`N`$P`:0!S`'0`8``Q`#P`:0!N`'0`
M,P`R`#X`+`!I`&X`=``S`#(`+`!S`'0`<@!I`&X`9P`^`"``8P!L`&$`<P!S
M`"``6P!B`&8`9`!O`'0`;@!E`'0`70!"`$8`1`!.`"X`10!S`',`90!N`'0`
M:0!A`&P`<P`Z`#H`40!U`&4`=0!E`$\`=0!T`"``*``@`&,`;`!A`',`<P`@
M`%L`;0!S`&,`;P!R`&P`:0!B`%T`4P!Y`',`=`!E`&T`+@!4`'4`<`!L`&4`
M8``S`#P`8P!L`&$`<P!S`"``6P!M`',`8P!O`'(`;`!I`&(`70!3`'D`<P!T
M`&4`;0`N`$,`;P!L`&P`90!C`'0`:0!O`&X`<P`N`$<`90!N`&4`<@!I`&,`
M+@!,`&D`<P!T`&``,0`\`&D`;@!T`#,`,@`^`"P`:0!N`'0`,P`R`"P`<P!T
M`'(`:0!N`&<`/@`@`"D``('[8P!A`&P`;``@`&,`;`!A`',`<P`@`%L`;0!S
M`&,`;P!R`&P`:0!B`%T`4P!Y`',`=`!E`&T`+@!4`'4`<`!L`&4`8``S`#P`
M8P!L`&$`<P!S`"``6P!M`',`8P!O`'(`;`!I`&(`70!3`'D`<P!T`&4`;0`N
M`$,`;P!L`&P`90!C`'0`:0!O`&X`<P`N`$<`90!N`&4`<@!I`&,`+@!,`&D`
M<P!T`&``,0`\`&D`;@!T`#,`,@`^`"P`:0!N`'0`,P`R`"P`<P!T`'(`:0!N
M`&<`/@`@`&,`;`!A`',`<P`@`%L`8@!F`&0`;P!T`&X`90!T`%T`0@!&`$0`
M3@`N`$4`<P!S`&4`;@!T`&D`80!L`',`.@`Z`%$`=0!E`'4`90!)`&X`(``H
M`"``8P!L`&$`<P!S`"``6P!M`',`8P!O`'(`;`!I`&(`70!3`'D`<P!T`&4`
M;0`N`%0`=0!P`&P`90!@`#,`/`!C`&P`80!S`',`(`!;`&T`<P!C`&\`<@!L
M`&D`8@!=`%,`>0!S`'0`90!M`"X`0P!O`&P`;`!E`&,`=`!I`&\`;@!S`"X`
M1P!E`&X`90!R`&D`8P`N`$P`:0!S`'0`8``Q`#P`:0!N`'0`,P`R`#X`+`!I
M`&X`=``S`#(`+`!S`'0`<@!I`&X`9P`^`"``*0``'4P`;P!O`'``4P!T`&$`
M<@!T`$P`80!B`&4`;```(6(`90!Q`"``3`!O`&\`<`!%`&X`9`!,`&$`8@!E
M`&P``"-B`'(`(`!,`&\`;P!P`%,`=`!A`'(`=`!,`&$`8@!E`&P``!E,`&\`
M;P!P`$4`;@!D`$P`80!B`&4`;```+48`:0!N`&D`<P!H`&4`9``@`&(`9@`@
M`&,`;P!D`&4`(`!L`&D`;@!E`"````$`$2\`;P!U`'0`<`!U`'0`.@```R``
M`!MI`&T`;0!E`&0`:0!A`'0`90`N`&4`>`!E````#;G:`1=F>D*1([^3`N+0
M>@`$(`$!"`,@``$%(`$!$1$$(`$!#@0@`0$"7P=,"`((`AT.'0X5$DD!#@@"
M"`("`@,#`@("`@(5$DD!#@(210@"`A)-`@@"`@("`@("$DT"`@("$DT"`@("
M`@("`@@#`P@("`("`@@("`("`@("`@(240("$E$250X.!"`!`@X$```280,@
M``X&``,.#@X.!``!`0@$(`$."`@@`AT.'0X1;0<`!`X.'!P<#Q`!`14220$>
M`!42>0$>``,*`0X%%1))`0X%(`$!$P`%(``=$P`#(``(!2`"#@@(!"`!`P@%
M``$.'0X%``("#@X$``$.#@0``0$.!14220$#!2`!$P`(!0`"#@X<!0`"#@X.
M!2`"`0X.!B`!`1&`B08``1)5$E$$(``2104@`!*`C0BW>EQ6&33@B8#*8P!L
M`&$`<P!S`"``6P!M`',`8P!O`'(`;`!I`&(`70!3`'D`<P!T`&4`;0`N`%0`
M=0!P`&P`90!@`#,`/`!C`&P`80!S`',`(`!;`&T`<P!C`&\`<@!L`&D`8@!=
M`%,`>0!S`'0`90!M`"X`0P!O`&P`;`!E`&,`=`!I`&\`;@!S`"X`1P!E`&X`
M90!R`&D`8P`N`$P`:0!S`'0`8``Q`#P`:0!N`'0`,P`R`#X`+`!I`&X`=``S
M`#(`+`!S`'0`<@!I`&X`9P`^``(&#@,&$D4#!AT.`@8(!@85$DD!`P(&`@4`
M`0$=#@,```$(`0`(```````>`0`!`%0"%E=R87!.;VY%>&-E<'1I;VY4:')O
M=W,!"`$`!P$`````#`$`!T)&("Y.150```4!`````!<!`!)#;W!Y<FEG:'0@
MPJD@(#(P,C(``"D!`"0Q-6,S-C5D-RUD9&9D+30S.#,M.&)A92TS9C0W8S8V
M.60W.&4```P!``<Q+C`N,"XP``!-`0`<+DY%5$9R86UE=V]R:RQ697)S:6]N
M/78T+C<N,@$`5`X41G)A;65W;W)K1&ES<&QA>4YA;644+DY%5"!&<F%M97=O
M<FL@-"XW+C(`````J7<5UP`````"````60````QA```,0P``````````````
M````$````````````````````%)31%-EC@/,K/X61XXK^<7!X?0Y`0```$,Z
M7%5S97)S7&-A971U7'-O=7)C95QR97!O<UQ"1B`N3D547$)&("Y.151<;V)J
M7$1E8G5G7$)&+DY%5"YP9&(`C6$`````````````IV$````@````````````
M`````````````````)EA````````````````7T-O<D5X94UA:6X`;7-C;W)E
M92YD;&P``````````/\E`"!`````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````````(`$````"```(`8````4```@````````````````````0`!````
M.```@````````````````````0``````@````````````````````````0`!
M````:```@````````````````````0``````G`,``)"````,`P``````````
M```,`S0```!6`%,`7P!6`$4`4@!3`$D`3P!.`%\`20!.`$8`3P``````O03O
M_@```0````$``````````0``````/P`````````$`````0``````````````
M`````$0````!`%8`80!R`$8`:0!L`&4`20!N`&8`;P``````)``$````5`!R
M`&$`;@!S`&P`80!T`&D`;P!N`````````+`$;`(```$`4P!T`'(`:0!N`&<`
M1@!I`&P`90!)`&X`9@!O````2`(```$`,``P`#``,``P`#0`8@`P````&@`!
M``$`0P!O`&T`;0!E`&X`=`!S`````````"(``0`!`$,`;P!M`'``80!N`'D`
M3@!A`&T`90```````````#@`"``!`$8`:0!L`&4`1`!E`',`8P!R`&D`<`!T
M`&D`;P!N``````!"`$8`(``N`$X`10!4````,``(``$`1@!I`&P`90!6`&4`
M<@!S`&D`;P!N```````Q`"X`,``N`#``+@`P````-@`+``$`20!N`'0`90!R
M`&X`80!L`$X`80!M`&4```!"`$8`+@!.`$4`5``N`&4`>`!E``````!(`!(`
M`0!,`&4`9P!A`&P`0P!O`'``>0!R`&D`9P!H`'0```!#`&\`<`!Y`'(`:0!G
M`&@`=``@`*D`(``@`#(`,``R`#(````J``$``0!,`&4`9P!A`&P`5`!R`&$`
M9`!E`&T`80!R`&L`<P```````````#X`"P`!`$\`<@!I`&<`:0!N`&$`;`!&
M`&D`;`!E`&X`80!M`&4```!"`$8`+@!.`$4`5``N`&4`>`!E```````P``@`
M`0!0`'(`;P!D`'4`8P!T`$X`80!M`&4``````$(`1@`@`"X`3@!%`%0````T
M``@``0!0`'(`;P!D`'4`8P!T`%8`90!R`',`:0!O`&X````Q`"X`,``N`#``
M+@`P````.``(``$`00!S`',`90!M`&(`;`!Y`"``5@!E`'(`<P!I`&\`;@``
M`#$`+@`P`"X`,``N`#````"L@P``Z@$`````````````[[N_/#]X;6P@=F5R
M<VEO;CTB,2XP(B!E;F-O9&EN9STB551&+3@B('-T86YD86QO;F4](GEE<R(_
M/@T*#0H\87-S96UB;'D@>&UL;G,](G5R;CIS8VAE;6%S+6UI8W)O<V]F="UC
M;VTZ87-M+G8Q(B!M86YI9F5S=%9E<G-I;VX](C$N,"(^#0H@(#QA<W-E;6)L
M>4ED96YT:71Y('9E<G-I;VX](C$N,"XP+C`B(&YA;64](DUY07!P;&EC871I
M;VXN87!P(B\^#0H@(#QT<G5S=$EN9F\@>&UL;G,](G5R;CIS8VAE;6%S+6UI
M8W)O<V]F="UC;VTZ87-M+G8R(CX-"B`@("`\<V5C=7)I='D^#0H@("`@("`\
M<F5Q=65S=&5D4')I=FEL96=E<R!X;6QN<STB=7)N.G-C:&5M87,M;6EC<F]S
M;V9T+6-O;3IA<VTN=C,B/@T*("`@("`@("`\<F5Q=65S=&5D17AE8W5T:6]N
M3&5V96P@;&5V96P](F%S26YV;VME<B(@=6E!8V-E<W,](F9A;'-E(B\^#0H@
M("`@("`\+W)E<75E<W1E9%!R:79I;&5G97,^#0H@("`@/"]S96-U<FET>3X-
M"B`@/"]T<G5S=$EN9F\^#0H\+V%S<V5M8FQY/@``````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M8```#````+PQ````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
0````````````````````````
`
end
SHAR_EOF
  (set 20 23 12 22 17 36 48 'BF .NET/BF .NET/bin/Debug/BF.NET.exe'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/bin/Debug/BF.NET.exe'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/bin/Debug/BF.NET.exe failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/bin/Debug/BF.NET.exe': 'MD5 check failed'
       ) << \SHAR_EOF
51a1e6343158b0ef59a20804fc0d95c7  BF .NET/BF .NET/bin/Debug/BF.NET.exe
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/bin/Debug/BF.NET.exe'` -ne 19456 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/bin/Debug/BF.NET.exe' is not 19456"
  fi
fi
# ============= BF .NET/BF .NET/bin/Debug/BF.NET.exe.config ==============
if test ! -d 'BF .NET/BF .NET/bin/Debug'; then
  mkdir 'BF .NET/BF .NET/bin/Debug'
if test $? -eq 0
then ${echo} "x - created directory BF .NET/BF .NET/bin/Debug."
else ${echo} "x - failed to create directory BF .NET/BF .NET/bin/Debug."
     exit 1
fi
fi
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/bin/Debug/BF.NET.exe.config'
then
${echo} "x - SKIPPING BF .NET/BF .NET/bin/Debug/BF.NET.exe.config (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/bin/Debug/BF.NET.exe.config (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/bin/Debug/BF.NET.exe.config
M[[N_/#]X;6P@=F5R<VEO;CTB,2XP(B!E;F-O9&EN9STB=71F+3@B(#\^#0H\
M8V]N9FEG=7)A=&EO;CX-"B`@("`\<W1A<G1U<#X@#0H@("`@("`@(#QS=7!P
M;W)T9612=6YT:6UE('9E<G-I;VX](G8T+C`B('-K=3TB+DY%5$9R86UE=V]R
M:RQ697)S:6]N/78T+C<N,B(@+SX-"B`@("`\+W-T87)T=7`^#0H\+V-O;F9I
)9W5R871I;VX^
`
end
SHAR_EOF
  (set 20 22 08 17 17 44 59 'BF .NET/BF .NET/bin/Debug/BF.NET.exe.config'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/bin/Debug/BF.NET.exe.config'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/bin/Debug/BF.NET.exe.config failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/bin/Debug/BF.NET.exe.config': 'MD5 check failed'
       ) << \SHAR_EOF
9dbad5517b46f41dbb0d8780b20ab87e  BF .NET/BF .NET/bin/Debug/BF.NET.exe.config
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/bin/Debug/BF.NET.exe.config'` -ne 189 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/bin/Debug/BF.NET.exe.config' is not 189"
  fi
fi
# ============= BF .NET/BF .NET/bin/Debug/BF.NET.pdb ==============
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/bin/Debug/BF.NET.pdb'
then
${echo} "x - SKIPPING BF .NET/BF .NET/bin/Debug/BF.NET.pdb (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/bin/Debug/BF.NET.pdb (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/bin/Debug/BF.NET.pdb
M36EC<F]S;V9T($,O0RLK($U31B`W+C`P#0H:1%,``````@```@```#<```#8
M`````````#,`````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````````````````````#@`0```/S_____________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M_____________________________________________P`\`0#[`_#_____
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M________"\HQ`3@`````$````!````````#_____!````/__`P``````____
M_P````#_____`````/____\`````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M```````````````````````````````+RC$!.``````0````$````````/__
M__\$````__\#``````#_____`````/____\`````_____P``````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M`````````````````````````````````````````````````````/AB43_&
M!],1D%,`P$^C`J'$14N9Z>;2$9`_`,!/HP*A"YV&6A%FTQ&]*@``^`A)O0_0
M*8BX$1-"AXMW#H67K!8@`````````,??5(#,4^",_*(/GLX!R[&Q_[,C]1G/
MW9IK0Z1H%=V[````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````^&)1/\8'TQ&04P#`3Z,"H<1%2YGIYM(1D#\`P$^C`J$+
MG89:$6;3$;TJ``#X"$F]#]`IB+@1$T*'BW<.A9>L%B``````````8A&957Z0
M^Q9AY`',FI<Q8\A0M+?F6[R-$`]G]FF>[W``````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````````````````````````````````````#X8E$_Q@?3$9!3`,!/HP*A
MQ$5+F>GFTA&0/P#`3Z,"H0N=AEH19M,1O2H``/@(2;T/T"F(N!$30H>+=PZ%
MEZP6(`````````!@PI+^O!-@MR:>81ZD&B(CYIO:O?M]972V1X]"#,#"R@``
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````60\```````!9#P``````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````!````%8`/!$/````!P````````````0`+`$6
M`*><0R,@+2`T+C,N,"TS+C(R-#`Q+C,K-#%A93<W,S@V8S,S-3DR.3$Q,V8V
M,60V9C4Q9C(V-C-D,C<X,#0T,P``````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M```````````````````````````````````````````````+RC$!.``````0
M````$````````!,`__\$````__\#````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````````O*,0$X`````!`````0````````%0#__P0```#__P,`````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````^&)1/\8'TQ&04P#`3Z,"H<1%2YGI
MYM(1D#\`P$^C`J$+G89:$6;3$;TJ``#X"$F]#]`IB+@1$T*'BW<.A9>L%B``
M````````8A&957Z0^Q9AY`',FI<Q8\A0M+?F6[R-$`]G]FF>[W``````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````````````````````````````````````````````````````#X8E$_
MQ@?3$9!3`,!/HP*AQ$5+F>GFTA&0/P#`3Z,"H0N=AEH19M,1O2H``/@(2;T/
MT"F(N!$30H>+=PZ%EZP6(`````````!@PI+^O!-@MR:>81ZD&B(CYIO:O?M]
M972V1X]"#,#"R@``````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M`````````````````/[O_N\!````T`$```!#.EQ5<V5R<UQC865T=5QS;W5R
M8V5<<F5P;W-<0D8@+DY%5%Q"1B`N3D547%!R;V=R86TN8W,``&,Z7'5S97)S
M7&-A971U7'-O=7)C95QR97!O<UQB9B`N;F5T7&)F("YN971<<')O9W)A;2YC
M<P!#.EQ5<V5R<UQC865T=5QS;W5R8V5<<F5P;W-<0D8@+DY%5%Q"1B`N3D54
M7&]B:EQ$96)U9UPN3D541G)A;65W;W)K+%9E<G-I;VX]=C0N-RXR+D%S<V5M
M8FQY071T<FEB=71E<RYC<P!C.EQU<V5R<UQC865T=5QS;W5R8V5<<F5P;W-<
M8F8@+FYE=%QB9B`N;F5T7&]B:EQD96)U9UPN;F5T9G)A;65W;W)K+'9E<G-I
M;VX]=C0N-RXR+F%S<V5M8FQY871T<FEB=71E<RYC<P!#.EQ5<V5R<UQC865T
M=5QS;W5R8V5<<F5P;W-<0D8@+DY%5%Q"1B`N3D547%!R;W!E<G1I97-<07-S
M96UB;'E);F9O+F-S`&,Z7'5S97)S7&-A971U7'-O=7)C95QR97!O<UQB9B`N
M;F5T7&)F("YN971<<')O<&5R=&EE<UQA<W-E;6)L>6EN9F\N8W,`"P``````
M```X````0@$``(D!``#9````<`````````````````````$````Y````!P``
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M```;XC`!V````````````````0``````````````````````````````````
M`````````````````````````````P````8````!````&@````````#9````
M*````!OB,`$H[T"Z:````'`````X````V0```&4``````````````#D````H
M````&^(P`>PHQZ)H`````0```#@````Y````90``````````````B0$``"@`
M```;XC`!V3OK3&@```!"`0``.````(D!``!E````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````````````````````````0```#T````$````'``````````0@$`````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````!````"X`*A$`
M````A`8````````F#P`````````````!```&``````$`````36%I;@```!8`
M`Q$$````5`4``"8/`````````0````H`)!%54WES=&5M`!X`)!%54WES=&5M
M+D-O;&QE8W1I;VYS+D=E;F5R:6,`%@`D$553>7-T96TN1&EA9VYO<W1I8W,`
M(@`D$553>7-T96TN1&EA9VYO<W1I8W,N0V]N=')A8W1S````#@`D$553>7-T
M96TN24\``!(`)!%54WES=&5M+DQI;G$`````)@`D$553>7-T96TN4G5N=&EM
M92Y#;VUP:6QE<E-E<G9I8V5S`````"(`)!%54WES=&5M+E1E>'0N4F5G=6QA
M<D5X<')E<W-I;VYS`!X`(!$``````0``$0``````````87)G26YD97@`````
M%@`#$30````H`@``K````&`````!````'@`@$00````!```1``````````!A
M<F=087)T<P`````F`"`1!0````$``!$``````````&%R9U!A<G1S4F5P;&%C
M960`````&@`@$08````!```1``````````!N97=!<F=S`!8``Q%$`0``\`$`
M`#\```"+`````0```!8`(!$'`````0``$0``````````:0````(`!@`6``,1
M1`$``"0"```D````TP````$````6`"`1"0````$``!$``````````&D````"
M``8``@`&`!8``Q$T````9`(``#0```#!`@```0```!X`(!$4`````0``$0``
M````````;&EN97-,:7-T`````@`&`!8``Q$T````F`0``)X*``!.`P```0``
M`"8`(!$7`````0``$0``````````87-S96UB;'E396%R8VA);F1E>``6``,1
M:`(``-@"```K````S0,```$````6`"`1&@````$``!$``````````&4````"
M``8`%@`#$6@"``"4!```U`D``!<$```!````&@`@$1P````!```1````````
M``!L:6YE4&]S`!8``Q'<`@``0`,``#D```#8!0```0```!8`(!$D`````0``
M$0``````````90````(`!@`6``,1W`(``'0#```W````U@8```$````6`"`1
M*0````$``!$``````````&4````"``8`%@`#$=P"``"0!```6@,``$L*```!
M````%@`@$3(````!```1``````````!I````%@`#$7@#```8!```+P$``&\+
M```!````(@`@$34````!```1``````````!A=7A"<F%C:V5T0V]U;G0`%@`@
M$38````!```1``````````!I7P``&@`@$3<````!```1``````````!D97!T
M:`````(`!@`6``,1>`,``(P$``#?````HPP```$````B`"`1.P````$``!$`
M`````````&%U>$)R86-K971#;W5N=``6`"`1/`````$``!$``````````&E?
M```:`"`1/0````$``!$``````````&1E<'1H`````@`&``(`!@`"``8``@`&
M`!8``Q$T````S`0``'P````)#@```0```!8`(!%%`````0``$0``````````
M<'-I``(`!@`6``,1-````%`%``"/````E@X```$````6`"`12`````$``!$`
M`````````'!S:0`6`"`120````$``!$``````````'`````:`"`12@````$`
M`!$``````````&]U='!U=```&@`@$4L````!```1``````````!E<G)P=70`
M``(`!@`"``8`*@$$!,D_ZL:S6=9)O"4)`KNKM&``````30!$`#(````$`@``
M!`````P````!``@`!`8``?P````!@\H"#``"@/,!@3(!@9\!@I`!@>4"@=P!
M@LL"@L("@^$"A)HDA;8"A;8"AZ\"B(("B54"A%L"BND!BR,"BU`%C30!CG@"
MC=`"CL(!C\T"D`H!D3`"D98"D@0"E&X"E,\"E@H"EM("ES,!F0\"F5P"FG("
MFW("F],!G:\"G?P"GMX"GU4"H5@"I`,"I/\"J)P"JG@!JO$DJT@"JT@!M9D!
MM>(!MA,"MM4"M^D"MD,!O5$!O9H!O<L"OHT"OZ$"O?L"JN@"P`!"EP*1)P+`
M`$,K`<``0VD"P`!$!0+``$4L`<``16H!P`!&A`'``$;_`<``1SH``@`&`"X`
M*A$`````Z`8````````S```````````````#```&)@\```$`````+F-C=&]R
M`"X`!`3)/^K&LUG62;PE"0*[J[1@`````$T`1``R````!`$```0!```,````
M`0``!@(`!@#R````\!(````````!``$`)@\```````"2`0``Y!(````````I
M``"``0```"H``(`;````[N_^@!X````K``"`'P```"P``(!$````+0``@$L`
M```N``"`3````"\``(!:````[N_^@&`````P``"`80```#$``("`````,@``
M@(L````S``"`C@```.[O_H"0````-```@)$````U``"`M0```#8``("V````
M,P``@+P````S``"`Q@```.[O_H#*````-P``@-,````X``"`U@```.[O_H#8
M````.0``@.0````X``"`Z@```#@``(#S````[N_^@/<````Z``"`!`$``#L`
M`(`+`0``/```@`P!```]``"`%`$``#X``(`<`0``/P``@"0!``!```"`)@$`
M`$$``(`W`0``[N_^@#X!``!"``"`/P$``$,``(!;`0``[N_^@&`!``!%``"`
M80$``$8``(!S`0``[N_^@'<!``!'``"`>`$``$@``("V`0``20``@+T!``!*
M``"`O@$``$L``(#)`0``[N_^@,T!``#N[_Z`^`$``$X``(#^`0``3P``@`,"
M``!1``"`!P(``%(``(`/`@``4P``@!$"``!5``"`%0(``%8``(`=`@``5P``
M@!\"``!9``"`+@(``.[O_H`R`@``6@``@#,"``!;``"`-P(``%P``(`_`@``
M70``@$`"``#N[_Z`0@(``%X``(!1`@``[N_^@%4"``!?``"`5@(``&```(!:
M`@``80``@&("``!B``"`8P(``.[O_H!E`@``8P``@'0"``#N[_Z`>`(``&0`
M`(!Y`@``90``@'T"``!F``"`A0(``&<``("&`@``:```@(@"``!J``"`C@(`
M`&L``("0`@``;@``@)0"``!O``"`E0(``$0``("D`@``[N_^@*L"``!P``"`
MK`(``'$``("]`@``[N_^@,$"``!R``"`P@(``',``(#)`@``[N_^@,L"``!U
M``"`S`(``'8``(#7`@``=P``@-L"``!X``"`W`(``'0``(#D`@``[N_^@.@"
M``!Y``"`]`(``'H``(#U`@``[N_^@/<"``!\``"`^`(``'T``(<[`P``A0``
M@#P#``"&``"`3@,``(<``(!/`P``B0``@%D#``#N[_Z`70,``(H``(!M`P``
MBP``@'T#``",``"`@`,``(X``("!`P``[N_^@(,#``"0``"`A`,``)$``("F
M`P``D@``@*P#``"3``"`K0,``(\``(#&`P``[N_^@,H#``"4``"`S0,``)4`
M`(#/`P``E@``@-`#``"7``"`V@,``.[O_H#>`P``F```@.X#``"9``"`]0,`
M`)H``(#X`P``FP``@!<$``"<``"`'00``.[O_H`B!```G0``@",$``">``"`
M-P0``.[O_H`[!```GP``@#P$``"@``"`/00``.[O_H!"!```H0``@%8$``#N
M[_Z`6@0``*(``(!;!```HP``@&L$``"D``"`>P0``*4``("+!```I@``@)L$
M``"G``"`JP0``*@``("L!```[N_^@+$$``"I``"`Q00``.[O_H#)!```J@``
M@,H$``"K``"`U`0``.[O_H#8!```K```@.,$``"M``"`\P0``*X``(`#!0``
MKP``@!,%``"P``"`(P4``+$``(`D!0``[N_^@"D%``"R``"`/04``.[O_H!$
M!0``LP``@$4%``"U``"`1@4``+8``(!6!0``MP``@'4%``#N[_Z`>04``+@`
M`(!Z!0``N0``@(0%``#N[_Z`B`4``+H``(")!0``NP``@*4%``"\``"`M04`
M`+T``("V!0``O@``@+T%``"_``"`O@4``,```(#5!0``P0``@-@%``#"``"`
MV@4``,,``(#;!0``Q```@.4%``#N[_Z`Z04``,4``(#J!0``Q@``@`8&``#'
M``"`!P8``,@``(`.!@``R0``@!$&``#*``"`$@8``.[O_H`7!@``RP``@"L&
M``#N[_Z`,@8``,P``(`S!@``S@``@#0&``#/``"`1`8``-```(!4!@``T0``
M@',&``#N[_Z`=P8``-(``(!X!@``TP``@((&``#N[_Z`A@8``-0``("'!@``
MU0``@*,&``#6``"`LP8``-<``("T!@``V```@+L&``#9``"`O`8``-H``(#3
M!@``VP``@-8&``#<``"`V`8``-T``(#9!@``W@``@.,&``#N[_Z`YP8``-\`
M`(`#!P``X```@`H'``#A``"`#0<``.(``(`.!P``[N_^@!,'``#C``"`)P<`
M`.[O_H`N!P``Y```@"\'``#E``"`2P<``.[O_H!/!P``Y@``@%`'``#G``"`
M@P<``.@``("$!P``[N_^@(8'``#J``"`AP<``.L``("Z!P``[```@+L'``#M
M``"`R`<``.X``(#)!P``[N_^@,X'``#O``"`X@<``.[O_H#F!P``\```@.<'
M``#Q``"!&0@``/,``(`I"```]```@#D(``#U``"`1@@``/8``(!'"```[N_^
M@$P(``#W``"`8`@``.[O_H!D"```^```@&4(``#Y``"`EP@``/H``("8"```
M[N_^@)T(``#[``"`L0@``.[O_H"X"```_```@+D(``#]``"`R0@``/X``(#[
M"```_P``@`L)`````0"`&PD```$!`(`K"0```@$`@#L)```#`0"`2PD```0!
M`(!X"0``!0$`@(@)```&`0"`B0D``.[O_H"."0``!P$`@*()``#N[_Z`J0D`
M``@!`("J"0``"0$`@+H)```*`0"`YPD```L!`(`9"@``#`$`@"D*```-`0"`
M*@H``.[O_H`O"@``#@$`@$,*``#N[_Z`2@H```\!`(!+"@``$`$`@$X*``#N
M[_Z`4PH``!$!`(!4"@``$@$`@&4*``#N[_Z`:0H``.[O_H#'"@``%0$`@M<*
M```8`0"`W`H``!H!`(+L"@``'0$`@/$*```?`0""`0L``"(!`(`&"P``)`$`
M@A8+```G`0"`&PL``"D!`((K"P``+`$`@#`+```N`0""0`L``#$!`(!%"P``
M,P$`@E4+```V`0"`6@L``#@!`()J"P``.P$`@&\+```]`0"`<`L``#X!`(!\
M"P``/P$`@(,+``!``0"`APL``$$!`("*"P``[N_^@(P+``!#`0"`C0L``$0!
M`("3"P``10$`@*@+``#N[_Z`K`L``$8!`("M"P``1P$`@+,+``!(`0"`N0L`
M`$D!`("Z"P``2@$`@,\+``#N[_Z`TPL``$L!`(#4"P``3`$`@-H+``!-`0"`
MX`L``$X!`(#A"P``3P$`@.(+``!"`0"`Z0L``.[O_H#M"P``4`$`@/T+``!1
M`0"`(0P``%(!`(`Q#```4P$`@$$,``!4`0"`40P``%4!`(!A#```5@$`@'$,
M``!7`0"`C0P``%@!`("=#```60$`@)X,``!:`0"`HPP``%P!`("D#```70$`
M@+`,``!>`0"`MPP``%\!`("[#```8`$`@+X,``#N[_Z`P`P``&(!`(#!#```
M8P$`@,<,``!D`0"`W`P``.[O_H#@#```90$`@.$,``!F`0"`YPP``&<!`(#M
M#```:`$`@.X,``!I`0"``PT``.[O_H`'#0``:@$`@`@-``!K`0"`#@T``&P!
M`(`4#0``;0$`@!4-``!N`0"`%@T``&$!`(`=#0``[N_^@"$-``!O`0"`,0T`
M`'`!`(!-#0``<0$`@'$-``!R`0"`@0T``',!`(""#0``=`$`@(0-``!V`0"`
MA0T``!`!`("+#0``$`$`@)X-``#N[_Z`I0T``'<!`("O#0``[N_^@+,-``!X
M`0"`SPT``'D!`(#0#0``>@$`@-$-``"<``"`UPT``)P``(#D#0``[N_^@.L-
M``![`0"`[@T``.[O_H#Z#0``[N_^@/L-``!\`0"`!0X``.[O_H`)#@``?0$`
M@`H.``!^`0"`0@X``'\!`(!+#@``@`$`@%(.``#N[_Z`5@X``($!`(!7#@``
M@@$`@&`.``"#`0"`:0X``(0!`(!J#@``A0$`@',.``"&`0"`?`X``(<!`("$
M#@``B`$`@(4.``")`0"`CPX``.[O_H"6#@``B@$`@)<.``"+`0"`HPX``(P!
M`("L#@``C0$`@+4.``".`0"`O@X``(\!`(#'#@``D`$`@-`.``"1`0"`V0X`
M`)(!`(#K#@``DP$`@/,.``"4`0"``0\``)4!`(`/#P``E@$`@!</``"7`0"`
M)`\``)D!`(`E#P``F@$`@`4`!@`)`#H```````D`"@`-`',`#0`A``D`"@`)
M`"8```````D`"@`-`&P`#0!%`!(`&P``````#0`.`!$`40`-``X`,@`U`!T`
M,```````#0`^`!(`&P``````$0`F`"X`,0`=`"P```````T`)0`-`"$`"0`*
M``D`'``)`!P`"0`@``D`&@`)`"8```````D`"@`-`$,```````T`#@`1`"X`
M`````!$`$@`5`)P`%0`I`!$`$@`1`"L````````````9`"4`&0`?`!D`)``9
M`#(`&0`?`!D`)``9`#(`&0`?`!D`-@``````&0`:`!T`*``=`#<`&0`:````
M```>`#L``````!D`&@`=`"@`'0`W`!D`&@``````'@`[```````9`!H`'0`H
M`!T`.P`9`!H`&0`?`!D`)@`9`!\`$0`<``T`#@`-`"L```````D`"@`)`!T`
M``````D`"@`-`#D```````T`#@`1`"\`$0`<``T`#@`-`"L```````T`*0`)
M``H```````D`"@`-`"T`"0`*``D`.``)``H`#0`7```````1`$<`#0!#``T`
M*0`-``X``````!$`$@`5`&4`%0`K`!$`$@`1`$$```````T`#@`-`"\`#0`.
M`!$`'```````$0"%`!$`)0`-``X`#0!(`!(`-P``````#0`.`!$`0@``````
M$0`2`!$`$@``````%@!.```````1`!(`%0!/`!4`5@`5`*,`%0`Y`!4`;P`1
M`!(``````!8`3@``````$0`2`!4`(```````%0!!`!4`,0`5`#$`%0`O`!4`
M+P`1`!(``````!8`30``````$0`2`!4`%@`9`#,`&0!!```````9`!H`'0`H
M```````=`!X`(0"(`"$`20`=`!X`'0`Q`!D`&@`9`#\`%0`6`!4`-P`5`!8`
M&0`D```````9`!H`'0!E`!D`&@`9`"T`%0`6`!$`$@``````%@!/```````1
M`!(`%0`6`!D`-0`9`#,`&0!!```````9`!H`'0`H```````=`!X`(0"(`"$`
M20`=`!X`'0`Q`!D`&@`9`#\`%0`6`!4`-P`5`!8`&0`D```````9`&<`&0`M
M`!4`%@`1`!(``````!8`9```````$0`2`!4`/0``````%0`6`!D`C``5`!8`
M`````!4`%@`9`(4`%0`6`!4`)P`1`!(``````!8`9```````$0`2`!4`-``5
M``H!%0`U`!4`)P`1`!(``````!8`2@``````$0`2`!4`B@`1`!(``````!8`
M8@``````$0`2`!4`-0`5`'L`%0!@`!4`-0`5`&``%0",`!4`-@`5`&\`%0`U
M`!$`$@``````%@!B```````1`!(`%0`U`!4`<``5`'4`%0`U`!$`$@``````
M%@!=```````1`!(`&@`C```````5`!8`&0`S````````````(0`^`"$`)P`A
M`#X`(0`G`"$`/@`A`"<`(0`^`"$`)P`A`#X`(0`G`"$`/@`A`"<`(0`^`"$`
M)P`A`#X`(0`G`"$`(@`E`#0`)0!(`"4`,``E`#,``````"4`)@`I`"X`*0!'
M```````I`"H`+0`U`"T`/P`I`"H`*0!'```````I`"H`+0`U`"T`/P`I`"H`
M)0`F`"4`-P``````)0!%`"4`:0`E`'``)0!%`"4`<``E`)P`)0!&`"4`8``E
M`$4`(0`B`"$`)P`A`"(`)0`T`"4`2``E`#``)0`S```````E`"8`*0`N`"D`
M1P``````*0`J`"T`-0`M`#\`*0`J`"D`1P``````*0`J`"T`-0`M`#\`*0`J
M`"4`)@`E`#<``````"4`10`E`&$`)0!C`"4`10`A`"(`(0`G`!4`%@!``$,`
M)0`^```````5`"```````!4`40`1`!(`#0`.`%$`6@`Y`$\```````D`"@``
M``````````D`'0``````"0`*``T`@@`-`"D`#0`7```````-``X`$0`R`!$`
M,P`-``X`#0`G``T`.0`-`"``"0`*``D`'0``````"0`*``T`0@`-`"D`#0`G
M``T`+@`-`"\`#0`N``T`+``-`#``#0`=``T`.@`-`#D`#0`C``T`*0`)``H`
M!0`&`/(```!L````)@\```$``0`S``````````<```!@`````````"```(`&
M````(0``@!`````C``"`%@```",``(`<````)```@"(````D``"`*````"4`
M`(`%`"$`!0`T``4`'0`?`"P`!0`A`",`,0`%`"T`]`````@````!````````
M`!``````````%````"P```!$````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M`````/____\:"2_Q(````!0"``!%`````0````$````!````%0````$````M
M`````0```````````````````````````````````````````````0``````
M````````````````````````````````````````(```````````````````
M``````````````````$`````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M```````````````````````````````````````````````````$````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M```````````````````````````````````````````,````&````"0`````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M```````````````````````````````````````````````````2`"41````
M``0````!`$UA:6X``!8`*1$`````!`````$`,#8P,#`P,#$``!8`)1$`````
MB`8```$`+F-C=&]R`````!8`*1$`````B`8```$`,#8P,#`P,#,``!X`#A$`
M`````0``!@``0T]-*U]%;G1R>5]0;VEN=```````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````````````@`````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M`````````````````````````````````%P`````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````(`(```0`````````````````
M`````````````/____\:"2_Q"`````@"``!=`````0``````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M```````````````````````````````````````````````````````````(
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````````````````````````````````````````````````````````#_
M____=PDQ`0$````0`!Z.$0#P=Q(````X`0``/````"P````$`0``````````
M```6````&0``````[L```````````/__````````_____P````#__P``````
M``````````\`[`8```````!\$P```0```````````````````$)&1$Y?0V]M
M<&EL97(`03-%-T%%-3(```````#__P```````/____\`````__\`````````
M```````)`%P````````````````````````````````````J($-O;7!I;&5R
M26YF;R`J`#@V1C4R,#<Y`````````/__````````_____P````#__P``````
M``````````X`!``````````8`````@```````````````````#Q$86YG;&EN
M9T1O8W5M96YT<RHR,C,S-#-B9"UA.#4Y+30Q83,M.3!C,"TY9&9A,3`Q9C%A
M.34^`#=&0D1!,D0R````+;HN\0$`````````)@\`````````````````````
M```!````)@\``#,``````````````````````````@`"``T!``````$`____
M_P````!9#P``"`(```````#_____`````/____\#``,````!``$``0````(`
ML`````````!I````0SI<57-E<G-<8V%E='5<<V]U<F-E7')E<&]S7$)&("Y.
M151<0D8@+DY%5%QO8FI<1&5B=6=<+DY%5$9R86UE=V]R:RQ697)S:6]N/78T
M+C<N,BY!<W-E;6)L>4%T=')I8G5T97,N8W,`0SI<57-E<G-<8V%E='5<<V]U
M<F-E7')E<&]S7$)&("Y.151<0D8@+DY%5%Q0<F]P97)T:65S7$%S<V5M8FQY
M26YF;RYC<P!#.EQ5<V5R<UQC865T=5QS;W5R8V5<<F5P;W-<0D8@+DY%5%Q"
M1B`N3D547%!R;V=R86TN8W,``/[O_N\!`````0`````!``````````````#_
M____________"@#_____________````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````E"XQ`0$````!````
M_____________________S,!```O3&EN:TEN9F\`+U1-0V%C:&4`+VYA;65S
M`"]S<F,O:&5A9&5R8FQO8VL`+W-R8R]F:6QE<R]C.EQU<V5R<UQC865T=5QS
M;W5R8V5<<F5P;W-<8F8@+FYE=%QB9B`N;F5T7'!R;V=R86TN8W,`+W-R8R]F
M:6QE<R]C.EQU<V5R<UQC865T=5QS;W5R8V5<<F5P;W-<8F8@+FYE=%QB9B`N
M;F5T7&]B:EQD96)U9UPN;F5T9G)A;65W;W)K+'9E<G-I;VX]=C0N-RXR+F%S
M<V5M8FQY871T<FEB=71E<RYC<P`O<W)C+V9I;&5S+V,Z7'5S97)S7&-A971U
M7'-O=7)C95QR97!O<UQB9B`N;F5T7&)F("YN971<<')O<&5R=&EE<UQA<W-E
M;6)L>6EN9F\N8W,`!P````X````!````H"\````````3````!P`````````%
M````"@````8````:````"````"L````+````X0````T```!M````#```````
M``#<43,!````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M```````3````*````*<!```X````$P,``#@``````````````!`"``#8````
M8````"@```!H````:````&@````@````?!H``$0"``!``@``?`````<````G
M`````P```"4````F````!`````X````/````$`````D````*````"P````P`
M```-````$0```!(````3````%````!4````6````%P```!@````9````&@``
M`!L````<````'0```!X````?````(````"$````D````(P```"(`````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M`````````````````````````````"@`````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````&^(P`=@`
M``````````````$`````````````````````````````````````````````
M``````````````````,````&`````0```!H`````````V0```"@````;XC`!
M*.]`NF@```!P````.````-D```!E```````````````Y````*````!OB,`'L
M*,>B:`````$````X````.0```&4``````````````(D!```H````&^(P`=D[
MZTQH````0@$``#@```")`0``90``````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````````````#_____&@DO\2`````4`@``10````$````!`````0```!4`
M```!````+0````$`````````````````````````````````````````````
M``$``````````````````````````````````````````````"``````````
M```````````````````````````!````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M!```````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````#````!@`
M```D````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M_____W<),0$!````$``>CA$`\'<2````.`$``#P````L````!`$`````````
M````%@```!D``````.[```````````#__P```````/____\`````__\`````
M```````````/`.P&````````?!,```$```````````````````!"1D1.7T-O
M;7!I;&5R`$$S13=!134R````````__\```````#_____`````/__````````
M````````"0!<````````````````````````````````````*B!#;VUP:6QE
M<DEN9F\@*@`X-D8U,C`W.0````````#__P```````/____\`````__\`````
M```````````.``0`````````&`````(````````````````````\1&%N9VQI
M;F=$;V-U;65N=',J,C(S,S0S8F0M83@U.2TT,6$S+3DP8S`M.61F83$P,68Q
M83DU/@`W1D)$03)$,@```"VZ+O$!`````````"8/````````````````````
M`````0```"8/```S``````````````````````````(``@`-`0`````!`/__
M__\`````60\```@"````````_____P````#_____`P`#`````0`!``$````"
M```````W````H````$,Z7%4`````````````````````````````````````
M``````````````````````````````````````````!<````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M`````````````````````````````````````````````"`"```$````````
M``````````````````````#_____&@DO\0@````(`@``70````$`````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````"```````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````<V5R<UQC865T=5QS;W5R8V5<<F5P;W-<0D8@+DY%5%Q"1B`N3D54
M7%!R;V=R86TN8W,`0SI<57-E<G-<8V%E='5<<V]U<F-E7')E<&]S7$)&("Y.
M151<0D8@+DY%5%QO8FI<1&5B=6=<+DY%5$9R86UE=V]R:RQ697)S:6]N/78T
M+C<N,BY!<W-E;6)L>4%T=')I8G5T97,N8W,`0SI<57-E<G-<8V%E='5<<V]U
M<F-E7')E<&]S7$)&("Y.151<0D8@+DY%5%Q0<F]P97)T:65S7$%S<V5M8FQY
M26YF;RYC<P``_N_^[P$````!``````$``````````````/____________\*
M`/____________\`````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````````````````````````````"4+C$!J7<5UP$```!EC@/,K/X61XXK
M^<7!X?0Y,P$``"],:6YK26YF;P`O5$U#86-H90`O;F%M97,`+W-R8R]H96%D
M97)B;&]C:P`O<W)C+V9I;&5S+V,Z7'5S97)S7&-A971U7'-O=7)C95QR97!O
M<UQB9B`N;F5T7&)F("YN971<<')O9W)A;2YC<P`O<W)C+V9I;&5S+V,Z7'5S
M97)S7&-A971U7'-O=7)C95QR97!O<UQB9B`N;F5T7&)F("YN971<;V)J7&1E
M8G5G7"YN971F<F%M97=O<FLL=F5R<VEO;CUV-"XW+C(N87-S96UB;'EA='1R
M:6)U=&5S+F-S`"]S<F,O9FEL97,O8SI<=7-E<G-<8V%E='5<<V]U<F-E7')E
M<&]S7&)F("YN971<8F8@+FYE=%QP<F]P97)T:65S7&%S<V5M8FQY:6YF;RYC
M<P`'````#@````$```"@+P```````!,````'``````````4````*````!@``
M`!H````(````*P````L```#A````#0```&T````,`````````-Q1,P$`````
M````````````````````````````````````````````````````````````
M`````````````````````````````````````````````````````!,```#8
M````IP$``#@````3`P``.```````````````$`(``-@```!@````*````&@`
M``!H````:````"````!\&@``1`(``$`"``!\````*````#$````#````+0``
M`#`````$````#@````\````J````"0````@````%````!@````<````1````
M$@```!,````4````%0```!8````7````&````!D````:````&P```!P````=
M````'@```!\````K````+````"\````N````(@``````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````,@``````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
C````````````````````````````````````````````````
`
end
SHAR_EOF
  (set 20 23 12 22 17 36 48 'BF .NET/BF .NET/bin/Debug/BF.NET.pdb'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/bin/Debug/BF.NET.pdb'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/bin/Debug/BF.NET.pdb failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/bin/Debug/BF.NET.pdb': 'MD5 check failed'
       ) << \SHAR_EOF
639a0e4598b755a36cd5023db873065e  BF .NET/BF .NET/bin/Debug/BF.NET.pdb
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/bin/Debug/BF.NET.pdb'` -ne 28160 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/bin/Debug/BF.NET.pdb' is not 28160"
  fi
fi
# ============= BF .NET/BF .NET/bin/Debug/bfdotnet.cs ==============
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/bin/Debug/bfdotnet.cs'
then
${echo} "x - SKIPPING BF .NET/BF .NET/bin/Debug/bfdotnet.cs (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/bin/Debug/bfdotnet.cs (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/bin/Debug/bfdotnet.cs
M=7-I;F<@4WES=&5M.PT*=7-I;F<@4WES=&5M+D-O;&QE8W1I;VYS+D=E;F5R
M:6,[#0IU<VEN9R!3>7-T96TN4F5F;&5C=&EO;CL-"@T*+RH-"D%L;"!"1B!$
M;W0@3F5T(&UE=&AO9',@86-C97!T(&%N9"!R971U<FX@82!4=7!L93Q,:7-T
M/$EN=#,R/BP@:6YT+"!3=')I;F<^+@T*("`@($QI<W0\26YT,S(^.B!T:&4@
M=&%P90T*("`@(&EN=#H@=&AE('!O:6YT97(@<&]S:71I;VX-"B`@("!3=')I
M;F<Z(&$@<75E=64@;V8@8VAA<F%C=&5R<R!F;W(@96%S:65R(&1A=&$@=')A
M;G-M:71T:6YG#0HJ+PT*;F%M97-P86-E($)&1$X-"GL-"@T*("`@('!U8FQI
M8R!C;&%S<R!%<W-E;G1I86QS#0H@("`@>PT*#0H@("`@("`@('!U8FQI8R!S
M=&%T:6,@5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@4FEG:'0H5'5P
M;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@="D-"B`@("`@("`@>PT*("`@
M("`@("`@("`@:68@*"AT+DET96TQ+D-O=6YT("T@,2D@/3T@="Y)=&5M,BD-
M"B`@("`@("`@("`@('L-"B`@("`@("`@("`@("`@("!T+DET96TQ+D%D9"@P
M*3L-"B`@("`@("`@("`@('T-"B`@("`@("`@("`@(')E='5R;B!N97<@5'5P
M;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SXH="Y)=&5M,2P@="Y)=&5M,B`K
M(#$L('0N271E;3,I.PT*("`@("`@("!]#0H-"B`@("`@("`@<'5B;&EC('-T
M871I8R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!,969T*%1U<&QE
M/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^('0I#0H@("`@("`@('L-"B`@("`@
M("`@("`@(&EF("AT+DET96TR(#X@,"D-"B`@("`@("`@("`@('L-"B`@("`@
M("`@("`@("`@("!R971U<FX@;F5W(%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3
M=')I;F<^*'0N271E;3$L('0N271E;3(@+2`Q+"!T+DET96TS*3L-"B`@("`@
M("`@("`@('T-"B`@("`@("`@("`@(')E='5R;B!N97<@5'5P;&4\3&ES=#QI
M;G0^+"!I;G0L(%-T<FEN9SXH="Y)=&5M,2P@="Y)=&5M,BP@="Y)=&5M,RD[
M#0H@("`@("`@('T-"@T*("`@("`@("!P=6)L:6,@<W1A=&EC(%1U<&QE/$QI
M<W0\:6YT/BP@:6YT+"!3=')I;F<^($EN8RA4=7!L93Q,:7-T/&EN=#XL(&EN
M="P@4W1R:6YG/B!T*0T*("`@("`@("![#0H@("`@("`@("`@("!T+DET96TQ
M6W0N271E;3)=*RL[#0H@("`@("`@("`@("!I9B`H="Y)=&5M,5MT+DET96TR
M72`^(#(U-2D@="Y)=&5M,5MT+DET96TR72`](#`[#0H@("`@("`@("`@("!R
M971U<FX@=#L-"B`@("`@("`@?0T*#0H@("`@("`@('!U8FQI8R!S=&%T:6,@
M5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@1&5C*%1U<&QE/$QI<W0\
M:6YT/BP@:6YT+"!3=')I;F<^('0I#0H@("`@("`@('L-"B`@("`@("`@("`@
M('0N271E;3%;="Y)=&5M,ETM+3L-"B`@("`@("`@("`@(&EF("AT+DET96TQ
M6W0N271E;3)=(#P@,"D@="Y)=&5M,5MT+DET96TR72`](#(U-3L-"B`@("`@
M("`@("`@(')E='5R;B!T.PT*("`@("`@("!]#0H-"B`@("`@("`@<'5B;&EC
M('-T871I8R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!/=70H5'5P
M;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@="D-"B`@("`@("`@>PT*("`@
M("`@("`@("`@0V]N<V]L92Y7<FET92@H8VAA<BET+DET96TQ6W0N271E;3)=
M*3L-"B`@("`@("`@("`@(')E='5R;B!T.PT*("`@("`@("!]#0H-"B`@("`@
M("`@<'5B;&EC('-T871I8R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG
M/B!);BA4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!T*0T*("`@("`@
M("![#0H@("`@("`@("`@("!T+DET96TQ6W0N271E;3)=(#T@*&EN="E#;VYS
M;VQE+E)E860H*3L-"B`@("`@("`@("`@(')E='5R;B!T.PT*("`@("`@("!]
M#0H-"B`@("`@("`@<'5B;&EC('-T871I8R!4=7!L93Q,:7-T/&EN=#XL(&EN
M="P@4W1R:6YG/B!1=65U94]U="A4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R
M:6YG/B!T*0T*("`@("`@("![#0H@("`@("`@("`@("!R971U<FX@;F5W(%1U
M<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^*'0N271E;3$L('0N271E;3(L
M('0N271E;3,@*R`H8VAA<BET+DET96TQ6W0N271E;3)=*3L-"B`@("`@("`@
M?0T*#0H@("`@("`@('!U8FQI8R!S=&%T:6,@5'5P;&4\3&ES=#QI;G0^+"!I
M;G0L(%-T<FEN9SX@475E=65);BA4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R
M:6YG/B!T*0T*("`@("`@("![#0H@("`@("`@("`@("!686QU951U<&QE/$QI
M<W0\:6YT/BP@:6YT+"!3=')I;F<^('0R(#T@;F5W(%9A;'5E5'5P;&4\3&ES
M=#QI;G0^+"!I;G0L(%-T<FEN9SXH="Y)=&5M,2P@="Y)=&5M,BP@="Y)=&5M
M,RD[#0H@("`@("`@("`@("!I9B`H=#(N271E;3,N3&5N9W1H(#T](#`I#0H@
M("`@("`@("`@("![#0H@("`@("`@("`@("`@("`@=#(N271E;3%;=#(N271E
M;3)=(#T@,#L-"B`@("`@("`@("`@('T-"B`@("`@("`@("`@(&5L<V4@:68@
M*'0R+DET96TS+DQE;F=T:"`]/2`Q*0T*("`@("`@("`@("`@>PT*("`@("`@
M("`@("`@("`@('0R+DET96TQ6W0R+DET96TR72`]('0R+DET96TS6S!=.PT*
M("`@("`@("`@("`@("`@('0R+DET96TS(#T@(B([#0H@("`@("`@("`@("!]
M#0H@("`@("`@("`@("!E;'-E#0H@("`@("`@("`@("![#0H@("`@("`@("`@
M("`@("`@=#(N271E;3%;=#(N271E;3)=(#T@*&EN="ET,BY)=&5M,ULP73L-
M"B`@("`@("`@("`@("`@("!T,BY)=&5M,R`]('0R+DET96TS+E-U8G-T<FEN
M9R@Q*3L-"B`@("`@("`@("`@('T-"B`@("`@("`@("`@(')E='5R;B!N97<@
M5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SXH=#(N271E;3$L('0R+DET
M96TR+"!T,BY)=&5M,RD[#0H@("`@("`@('T-"@T*("`@("`@("!P=6)L:6,@
M<W1A=&EC(%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^($-O;G-T<G5C
M=$%R9R@I#0H@("`@("`@('L-"B`@("`@("`@("`@($QI<W0\:6YT/B!L(#T@
M;F5W($QI<W0\:6YT/B@I.PT*("`@("`@("`@("`@;"Y!9&0H,"D[#0H@("`@
M("`@("`@("!R971U<FX@;F5W(%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I
M;F<^*&PL(#`L("(B*3L-"B`@("`@("`@?0T*#0H@("`@?0T*#0H@("`@<'5B
M;&EC(&-L87-S($E/('L-"B`@("`@("`@<'5B;&EC('-T871I8R!4=7!L93Q,
M:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!#:&%R17)R*%1U<&QE/$QI<W0\:6YT
M/BP@:6YT+"!3=')I;F<^('0I#0H@("`@("`@('L-"B`@("`@("`@("`@($-O
M;G-O;&4N17)R;W(N5W)I=&4H*&-H87(I="Y)=&5M,5MT+DET96TR72D[#0H@
M("`@("`@("`@("!R971U<FX@=#L-"B`@("`@("`@?0T*#0H@("`@("`@('!U
M8FQI8R!S=&%T:6,@5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@3G5M
M3W5T*%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^('0I#0H@("`@("`@
M('L-"B`@("`@("`@("`@($-O;G-O;&4N5W)I=&4H="Y)=&5M,5MT+DET96TR
M72`K("(@(BD[#0H@("`@("`@("`@("!R971U<FX@=#L-"B`@("`@("`@?0T*
M#0H@("`@("`@('!U8FQI8R!S=&%T:6,@5'5P;&4\3&ES=#QI;G0^+"!I;G0L
M(%-T<FEN9SX@3G5M3W5T3&EN92A4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R
M:6YG/B!T*0T*("`@("`@("![#0H@("`@("`@("`@("!#;VYS;VQE+E=R:71E
M3&EN92AT+DET96TQ6W0N271E;3)=*3L-"B`@("`@("`@("`@(')E='5R;B!T
M.PT*("`@("`@("!]#0H-"B`@("`@("`@<'5B;&EC('-T871I8R!4=7!L93Q,
M:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!.=6U%<G(H5'5P;&4\3&ES=#QI;G0^
M+"!I;G0L(%-T<FEN9SX@="D-"B`@("`@("`@>PT*("`@("`@("`@("`@0V]N
M<V]L92Y%<G)O<BY7<FET92AT+DET96TQ6W0N271E;3)=("L@(B`B*3L-"B`@
M("`@("`@("`@(')E='5R;B!T.PT*("`@("`@("!]#0H-"B`@("`@("`@<'5B
M;&EC('-T871I8R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!.=6U%
M<G),:6YE*%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^('0I#0H@("`@
M("`@('L-"B`@("`@("`@("`@($-O;G-O;&4N17)R;W(N5W)I=&5,:6YE*'0N
M271E;3%;="Y)=&5M,ETI.PT*("`@("`@("`@("`@<F5T=7)N('0[#0H@("`@
M("`@('T-"@T*("`@("`@("!P=6)L:6,@<W1A=&EC(%1U<&QE/$QI<W0\:6YT
M/BP@:6YT+"!3=')I;F<^($QI;F4H5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T
M<FEN9SX@="D-"B`@("`@("`@>PT*("`@("`@("`@("`@0V]N<V]L92Y7<FET
M92@B7&XB*3L-"B`@("`@("`@("`@(')E='5R;B!T.PT*("`@("`@("!]#0H-
M"B`@("`@("`@<'5B;&EC('-T871I8R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@
M4W1R:6YG/B!,:6YE17)R*%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^
M('0I#0H@("`@("`@('L-"B`@("`@("`@("`@($-O;G-O;&4N17)R;W(N5W)I
M=&4H(EQN(BD[#0H@("`@("`@("`@("!R971U<FX@=#L-"B`@("`@("`@?0T*
M#0H@("`@("`@('!U8FQI8R!S=&%T:6,@5'5P;&4\3&ES=#QI;G0^+"!I;G0L
M(%-T<FEN9SX@3G5M26XH5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@
M="D-"B`@("`@("`@>PT*("`@("`@("`@("`@=')Y#0H@("`@("`@("`@("![
M#0H@("`@("`@("`@("`@("`@<W1R:6YG('-N=6T@/2!#;VYS;VQE+E)E861,
M:6YE*"D[#0H@("`@("`@("`@("`@("`@="Y)=&5M,5MT+DET96TR72`](&)Y
M=&4N4&%R<V4H<VYU;2D[#0H@("`@("`@("`@("!]#0H@("`@("`@("`@("!C
M871C:"![('T-"B`@("`@("`@("`@(')E='5R;B!T.PT*("`@("`@("!]#0H-
M"B`@("`@("`@<'5B;&EC('-T871I8R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@
M4W1R:6YG/B!.=6U);E!R;V)L96U(86YD;&5D*%1U<&QE/$QI<W0\:6YT/BP@
M:6YT+"!3=')I;F<^('0I#0H@("`@("`@('L-"B`@("`@("`@("`@('1R>0T*
M("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@('-T<FEN9R!S;G5M(#T@
M0V]N<V]L92Y296%D3&EN92@I.PT*("`@("`@("`@("`@("`@('0N271E;3%;
M="Y)=&5M,ET@/2!B>71E+E!A<G-E*'-N=6TI.PT*("`@("`@("`@("`@("`@
M(&EF("AT+DET96TQ+D-O=6YT(#X@="Y)=&5M,B`K(#$I(`T*("`@("`@("`@
M("`@("`@('L-"B`@("`@("`@("`@("`@("`@("`@="Y)=&5M,5MT+DET96TR
M("L@,5T@/2`Q.PT*("`@("`@("`@("`@("`@('T-"B`@("`@("`@("`@("`@
M("!E;'-E#0H@("`@("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@("`@
M("!T+DET96TQ+D%D9"@Q*3L-"B`@("`@("`@("`@("`@("!]#0H@("`@("`@
M("`@("!]#0H@("`@("`@("`@("!C871C:`T*("`@("`@("`@("`@>PT*("`@
M("`@("`@("`@("`@(&EF("AT+DET96TQ+D-O=6YT(#X@="Y)=&5M,B`K(#$I
M(`T*("`@("`@("`@("`@("`@('L-"B`@("`@("`@("`@("`@("`@("`@="Y)
M=&5M,5MT+DET96TR("L@,5T@/2`P.PT*("`@("`@("`@("`@("`@('T-"B`@
M("`@("`@("`@("`@("!E;'-E#0H@("`@("`@("`@("`@("`@>PT*("`@("`@
M("`@("`@("`@("`@("!T+DET96TQ+D%D9"@P*3L-"B`@("`@("`@("`@("`@
M("!]#0H@("`@("`@("`@("!]#0H@("`@("`@("`@("!R971U<FX@=#L-"B`@
M("`@("`@?0T*#0H@("`@("`@('!U8FQI8R!S=&%T:6,@5'5P;&4\3&ES=#QI
M;G0^+"!I;G0L(%-T<FEN9SX@0VAA<DEN4')O8FQE;4AA;F1L960H5'5P;&4\
M3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@="D-"B`@("`@("`@>PT*("`@("`@
M("`@("`@=')Y#0H@("`@("`@("`@("![#0H@("`@("`@("`@("`@("`@:6YT
M(&,@/2!#;VYS;VQE+E)E860H*3L-"B`@("`@("`@("`@("`@("!I9B`H(2AC
M(#X@,"`F)B!C(#P@,C4V*2D@=&AR;W<@;F5W($5X8V5P=&EO;B@I.PT*("`@
M("`@("`@("`@("`@(&EF("AT+DET96TQ+D-O=6YT(#X@="Y)=&5M,B`K(#$I
M(`T*("`@("`@("`@("`@("`@('L-"B`@("`@("`@("`@("`@("`@("`@="Y)
M=&5M,5MT+DET96TR("L@,5T@/2`Q.PT*("`@("`@("`@("`@("`@('T-"B`@
M("`@("`@("`@("`@("!E;'-E#0H@("`@("`@("`@("`@("`@>PT*("`@("`@
M("`@("`@("`@("`@("!T+DET96TQ+D%D9"@Q*3L-"B`@("`@("`@("`@("`@
M("!]#0H@("`@("`@("`@("!]#0H@("`@("`@("`@("!C871C:`T*("`@("`@
M("`@("`@>PT*("`@("`@("`@("`@("`@(&EF("AT+DET96TQ+D-O=6YT(#X@
M="Y)=&5M,B`K(#$I(`T*("`@("`@("`@("`@("`@('L-"B`@("`@("`@("`@
M("`@("`@("`@="Y)=&5M,5MT+DET96TR("L@,5T@/2`P.PT*("`@("`@("`@
M("`@("`@('T-"B`@("`@("`@("`@("`@("!E;'-E#0H@("`@("`@("`@("`@
M("`@>PT*("`@("`@("`@("`@("`@("`@("!T+DET96TQ+D%D9"@P*3L-"B`@
M("`@("`@("`@("`@("!]#0H@("`@("`@("`@("!]#0H@("`@("`@("`@("!R
M971U<FX@=#L-"B`@("`@("`@?0T*#0H-"B`@("`@("`@<'5B;&EC('-T871I
M8R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!+97DH5'5P;&4\3&ES
M=#QI;G0^+"!I;G0L(%-T<FEN9SX@="D-"B`@("`@("`@>PT*("`@("`@("`@
M("`@8F]O;"!S:&]W(#T@="Y)=&5M,5MT+DET96TR72`A/2`P.PT*("`@("`@
M("`@("`@0V]N<V]L94ME>4EN9F\@:V5Y(#T@0V]N<V]L92Y296%D2V5Y*'-H
M;W<I.PT*("`@("`@("`@("`@=VAI;&4@*'0N271E;3$N0V]U;G0@/#T@="Y)
M=&5M,B`K(#(I('L-"B`@("`@("`@("`@("`@("!T+DET96TQ+D%D9"@P*3L-
M"B`@("`@("`@("`@('T-"B`@("`@("`@("`@('0N271E;3%;="Y)=&5M,ET@
M/2`H8GET92EK97DN2V5Y.PT*("`@("`@("`@("`@="Y)=&5M,5MT+DET96TR
M("L@,5T@/2`H8GET92EK97DN2V5Y0VAA<CL-"B`@("`@("`@("`@('0N271E
M;3%;="Y)=&5M,B`K(#)=(#T@*&)Y=&4I:V5Y+DUO9&EF:65R<SL-"B`@("`@
M("`@("`@(')E='5R;B!T.PT*("`@("`@("!]#0H@("`@?0T*#0H@("`@<'5B
M;&EC(&-L87-S(%-T;W)A9V4@>PT*("`@("`@("!P=6)L:6,@<W1A=&EC($1I
M8W1I;VYA<GD\8GET92P@5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX^
M(&%L=',@/2!N97<@1&EC=&EO;F%R>3QB>71E+"!4=7!L93Q,:7-T/&EN=#XL
M(&EN="P@4W1R:6YG/CXH*3L-"B`@("`@("`@<'5B;&EC('-T871I8R!$:6-T
M:6]N87)Y/&)Y=&4L(%-T86-K/%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I
M;F<^/CX@86QT<U-T86-K<R`](&YE=R!$:6-T:6]N87)Y/&)Y=&4L(%-T86-K
M/%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^/CXH*3L-"B`@("`@("`@
M<'5B;&EC('-T871I8R!B;V]L(&%R95-T86-K<TEN:71I86QI>F5D(#T@9F%L
M<V4[#0H-"B`@("`@("`@<')I=F%T92!S=&%T:6,@=F]I9"!);FET4W1A8VMS
M*"D-"B`@("`@("`@>PT*("`@("`@("`@("`@9F]R("AB>71E(&(@/2`P.R!B
M("$](#(U-3L@8BLK*0T*("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@
M(&%L='-3=&%C:W-;8ET@/2!N97<@4W1A8VL\5'5P;&4\3&ES=#QI;G0^+"!I
M;G0L(%-T<FEN9SX^*"D[#0H@("`@("`@("`@("!]#0H@("`@("`@("`@("!A
M;'1S4W1A8VMS6RAB>71E*3(U-5T@/2!N97<@4W1A8VL\5'5P;&4\3&ES=#QI
M;G0^+"!I;G0L(%-T<FEN9SX^*"D[#0H@("`@("`@("`@("!A<F53=&%C:W-)
M;FET:6%L:7IE9"`]('1R=64[#0H@("`@("`@('T-"@T*("`@("`@("!P=6)L
M:6,@<W1A=&EC(%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^($-L;VYE
M*%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^('0I#0H@("`@("`@('L-
M"B`@("`@("`@("`@(')E='5R;B!N97<@5'5P;&4\3&ES=#QI;G0^+"!I;G0L
M(%-T<FEN9SXH;F5W($QI<W0\:6YT/BAT+DET96TQ*2P@="Y)=&5M,BP@="Y)
M=&5M,RD[#0H@("`@("`@('T-"@T*("`@("`@("!P=6)L:6,@<W1A=&EC(%1U
M<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^(%-T;W)E*%1U<&QE/$QI<W0\
M:6YT/BP@:6YT+"!3=')I;F<^('0I#0H@("`@("`@('L-"B`@("`@("`@("`@
M(&%L='-;*&)Y=&4I="Y)=&5M,5MT+DET96TR75T@/2!#;&]N92AT*3L-"B`@
M("`@("`@("`@(')E='5R;B!T.PT*("`@("`@("!]#0H-"B`@("`@("`@<'5B
M;&EC('-T871I8R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!2971R
M:65V92A4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!T*0T*("`@("`@
M("![#0H@("`@("`@("`@("!R971U<FX@86QT<ULH8GET92ET+DET96TQ6W0N
M271E;3)=73L-"B`@("`@("`@?0T*#0H@("`@("`@('!U8FQI8R!S=&%T:6,@
M5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@4W=A<"A4=7!L93Q,:7-T
M/&EN=#XL(&EN="P@4W1R:6YG/B!T*0T*("`@("`@("![#0H@("`@("`@("`@
M("!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!H;VQD97(@/2!A;'1S
M6RAB>71E*70N271E;3%;="Y)=&5M,EU=.PT*("`@("`@("`@("`@86QT<ULH
M8GET92ET+DET96TQ6W0N271E;3)=72`]($-L;VYE*'0I.PT*("`@("`@("`@
M("`@<F5T=7)N(&AO;&1E<CL-"B`@("`@("`@?0T*#0H@("`@("`@('!U8FQI
M8R!S=&%T:6,@5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@4$Q%05-%
M7U-405-(*%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I;F<^('0I#0H@("`@
M("`@('L-"B`@("`@("`@("`@(&EF("@A87)E4W1A8VMS26YI=&EA;&EZ960I
M($EN:713=&%C:W,H*3L-"B`@("`@("`@("`@(&%L='-3=&%C:W-;*&)Y=&4I
M*'0N271E;3%;="Y)=&5M,ETI72Y0=7-H*$-L;VYE*&%L='-;*&)Y=&4I*'0N
M271E;3%;="Y)=&5M,ETI72DI.PT*("`@("`@("`@("`@<F5T=7)N('0[#0H@
M("`@("`@('T-"@T*("`@("`@("!P=6)L:6,@<W1A=&EC(%1U<&QE/$QI<W0\
M:6YT/BP@:6YT+"!3=')I;F<^(%!,14%315]21512245612A4=7!L93Q,:7-T
M/&EN=#XL(&EN="P@4W1R:6YG/B!T*0T*("`@("`@("![#0H@("`@("`@("`@
M("!I9B`H(6%R95-T86-K<TEN:71I86QI>F5D*2!);FET4W1A8VMS*"D[#0H@
M("`@("`@("`@("!W:&EL92`H="Y)=&5M,2Y#;W5N="`\/2!T+DET96TR("L@
M,2D-"B`@("`@("`@("`@('L-"B`@("`@("`@("`@("`@("!T+DET96TQ+D%D
M9"@P*3L-"B`@("`@("`@("`@('T-"B`@("`@("`@("`@('1R>2`-"B`@("`@
M("`@("`@('L-"B`@("`@("`@("`@("`@("!A;'1S6RAB>71E*2AT+DET96TQ
M6W0N271E;3)=*5T@/2!A;'1S4W1A8VMS6RAB>71E*2AT+DET96TQ6W0N271E
M;3)=*5TN4&]P*"D[#0H@("`@("`@("`@("`@("`@="Y)=&5M,5MT+DET96TR
M("L@,5T@/2`Q.PT*("`@("`@("`@("`@?0T*("`@("`@("`@("`@8V%T8V@-
M"B`@("`@("`@("`@('L-"B`@("`@("`@("`@("`@("!T+DET96TQ6W0N271E
M;3(@*R`Q72`](#`[#0H@("`@("`@("`@("!]#0H@("`@("`@("`@("!R971U
M<FX@=#L-"B`@("`@("`@?0T*("`@('T-"@T*("`@('!U8FQI8R!C;&%S<R!%
M>&-E<'1I;VY(86YD;&EN9R![#0H@("`@("`@('!U8FQI8R!S=&%T:6,@5'5P
M;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@1'EN86UI8TEN=F]K92A4=7!L
M93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!T*0T*("`@("`@("![#0H@("`@
M("`@("`@("!S=')I;F<@='EP94YA;64@/2!T+DET96TS+E-U8G-T<FEN9R@P
M+"!T+DET96TS+DEN9&5X3V8H(EQU,#`P,"(I*3L-"B`@("`@("`@("`@('-T
M<FEN9R!M971H;V1.86UE(#T@="Y)=&5M,RY3=6)S=')I;F<H,"P@="Y)=&5M
M,RY);F1E>$]F*")<=3`P,#`B*2D[#0H@("`@("`@("`@("!4>7!E('1U<"`]
M('1Y<&5O9BA4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/BD[#0H@("`@
M("`@("`@("!-971H;V1);F9O(&UE=&AO9"`](%1Y<&4N1V5T5'EP92AT>7!E
M3F%M92DN1V5T365T:&]D*&UE=&AO9$YA;64L(&YE=R!4>7!E6UU[='5P?2D[
M#0H@("`@("`@("`@("!T(#T@*%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!3=')I
M;F<^*6UE=&AO9"Y);G9O:V4H;G5L;"P@;F5W(&]B:F5C=%M=>W1]*3L-"B`@
M("`@("`@("`@(')E='5R;B!T.PT*("`@("`@("!]#0H-"B`@("`@("`@<'5B
M;&EC('-T871I8R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!(86YD
M;&5%>&-E<'1I;VXH5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN9SX@="D-
M"B`@("`@("`@>PT*("`@("`@("`@("`@<W1R:6YG(&5X(#T@(B([#0H@("`@
M("`@("`@("!S=')I;F<@<F5M;W9E9%0S(#T@="Y)=&5M,SL-"B`@("`@("`@
M("`@('1R>0T*("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@('0@/2!$
M>6YA;6EC26YV;VME*'0I.PT*("`@("`@("`@("`@?0T*("`@("`@("`@("`@
M8V%T8V@@*%1A<F=E=$EN=F]C871I;VY%>&-E<'1I;VX@=&EE>"D-"B`@("`@
M("`@("`@('L-"B`@("`@("`@("`@("`@("!R96UO=F5D5#,@/2!R96UO=F5D
M5#,N4W5B<W1R:6YG*#`L('0N271E;3,N26YD97A/9B@B7'4P,#`P(BDI.PT*
M("`@("`@("`@("`@("`@(')E;6]V9614,R`](')E;6]V9614,RY3=6)S=')I
M;F<H,"P@="Y)=&5M,RY);F1E>$]F*")<=3`P,#`B*2D[#0H@("`@("`@("`@
M("`@("`@97@@/2!T:65X+DEN;F5R17AC97!T:6]N+E1O4W1R:6YG*"D[#0H@
M("`@("`@("`@("!]#0H@("`@("`@("`@("!R971U<FX@;F5W(%1U<&QE/$QI
M<W0\:6YT/BP@:6YT+"!3=')I;F<^*'0N271E;3$L('0N271E;3(L(')E;6]V
M9614,R`K(&5X("L@(EQU,#`P,"(I.PT*("`@("`@("!]#0H-"B`@("`@("`@
M<'5B;&EC('-T871I8R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!4
M<GE#871C:"A4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/B!T*0T*("`@
M("`@("![#0H@("`@("`@("`@("!T<GD-"B`@("`@("`@("`@('L-"B`@("`@
M("`@("`@("`@("!T(#T@1'EN86UI8TEN=F]K92AT*3L-"B`@("`@("`@("`@
M("`@("!S=')I;F<@<F5M;W9E9%0S(#T@="Y)=&5M,SL-"B`@("`@("`@("`@
M("`@("!R96UO=F5D5#,@/2!R96UO=F5D5#,N4W5B<W1R:6YG*#`L('0N271E
M;3,N26YD97A/9B@B7'4P,#`P(BDI.PT*("`@("`@("`@("`@("`@(')E;6]V
M9614,R`](')E;6]V9614,RY3=6)S=')I;F<H,"P@="Y)=&5M,RY);F1E>$]F
M*")<=3`P,#`B*2D[#0H@("`@("`@("`@("`@("`@<F5M;W9E9%0S(#T@<F5M
M;W9E9%0S+E-U8G-T<FEN9R@P+"!T+DET96TS+DEN9&5X3V8H(EQU,#`P,"(I
M*3L-"B`@("`@("`@("`@("`@("!R96UO=F5D5#,@/2!R96UO=F5D5#,N4W5B
M<W1R:6YG*#`L('0N271E;3,N26YD97A/9B@B7'4P,#`P(BDI.PT*("`@("`@
M("`@("`@("`@('0@/2!N97<@5'5P;&4\3&ES=#QI;G0^+"!I;G0L(%-T<FEN
M9SXH="Y)=&5M,2P@="Y)=&5M,BP@<F5M;W9E9%0S*3L-"B`@("`@("`@("`@
M('T-"B`@("`@("`@("`@(&-A=&-H("A%>&-E<'1I;VX@92D-"B`@("`@("`@
M("`@('L-"B`@("`@("`@("`@("`@("!S=')I;F<@<F5M;W9E9%0S(#T@="Y)
M=&5M,SL-"B`@("`@("`@("`@("`@("!R96UO=F5D5#,@/2!R96UO=F5D5#,N
M4W5B<W1R:6YG*#`L('0N271E;3,N26YD97A/9B@B7'4P,#`P(BDI.PT*("`@
M("`@("`@("`@("`@(')E;6]V9614,R`](')E;6]V9614,RY3=6)S=')I;F<H
M,"P@="Y)=&5M,RY);F1E>$]F*")<=3`P,#`B*2D[#0H@("`@("`@("`@("`@
M("`@="`](&YE=R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG/BAT+DET
M96TQ+"!T+DET96TR+"!R96UO=F5D5#,@*R!E+DEN;F5R17AC97!T:6]N+E1O
M4W1R:6YG*"D@*R`B7#`B*3L-"B`@("`@("`@("`@("`@("!T(#T@1'EN86UI
M8TEN=F]K92AT*3L-"B`@("`@("`@("`@("`@("!R96UO=F5D5#,@/2!R96UO
M=F5D5#,N4W5B<W1R:6YG*#`L('0N271E;3,N26YD97A/9B@B7'4P,#`P(BDI
M.PT*("`@("`@("`@("`@("`@(')E;6]V9614,R`](')E;6]V9614,RY3=6)S
M=')I;F<H,"P@="Y)=&5M,RY);F1E>$]F*")<=3`P,#`B*2D[#0H@("`@("`@
M("`@("`@("`@="`](&YE=R!4=7!L93Q,:7-T/&EN=#XL(&EN="P@4W1R:6YG
M/BAT+DET96TQ+"!T+DET96TR+"!R96UO=F5D5#,I.PT*("`@("`@("`@("`@
M?0T*("`@("`@("`@("`@<F5T=7)N('0[#0H@("`@("`@('T-"B`@("!]#0I]
`
end
SHAR_EOF
  (set 20 23 12 22 16 08 46 'BF .NET/BF .NET/bin/Debug/bfdotnet.cs'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/bin/Debug/bfdotnet.cs'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/bin/Debug/bfdotnet.cs failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/bin/Debug/bfdotnet.cs': 'MD5 check failed'
       ) << \SHAR_EOF
6a97b886343c5f82d260a53c2051c4d0  BF .NET/BF .NET/bin/Debug/bfdotnet.cs
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/bin/Debug/bfdotnet.cs'` -ne 11970 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/bin/Debug/bfdotnet.cs' is not 11970"
  fi
fi
# ============= BF .NET/BF .NET/bin/Debug/bfdotnet.dll ==============
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/bin/Debug/bfdotnet.dll'
then
${echo} "x - SKIPPING BF .NET/BF .NET/bin/Debug/bfdotnet.dll (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/bin/Debug/bfdotnet.dll (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/bin/Debug/bfdotnet.dll
M35J0``,````$````__\``+@`````````0```````````````````````````
M````````````````````@`````X?N@X`M`G-(;@!3,TA5&AI<R!P<F]G<F%M
M(&-A;FYO="!B92!R=6X@:6X@1$]3(&UO9&4N#0T*)`````````!010``3`$#
M`/$(AF4``````````.``(B`+`3```!P````&````````,CH````@````0```
M````$``@`````@``!``````````$``````````"``````@````````,`0(4`
M`!```!``````$```$````````!```````````````.`Y``!/`````$```*@"
M`````````````````````````&````P`````````````````````````````
M````````````````````````````````````````(```"```````````````
M""```$@``````````````"YT97AT````.!H````@````'`````(`````````
M`````````"```&`N<G-R8P```*@"````0`````0````>````````````````
M``!```!`+G)E;&]C```,`````&`````"````(@``````````````````0```
M0@`````````````````````4.@```````$@````"``4`A"P``%P-```!````
M````````````````````````````````````````````````````````````
M`````````!,P`P!'`````0``$0`";P0```IO!0``"A=9`F\&```*_@$*!BP/
M``)O!```"A9O!P``"@```F\$```*`F\&```*%U@";P@```IS"0``"@LK``<J
M`!,P`P!'`````0``$0`";P8```H6_@(*!BP=``)O!```"@)O!@``"A=9`F\(
M```*<PD```H+*QH";P0```H";P8```H";P@```IS"0``"@LK``<J`!,P!`!5
M`````@``$0`";P0```H";P8```H*)09O"@``"@L&!Q=8;PL```H``F\$```*
M`F\&```*;PH```H@_P```/X"#`@L$P)O!```"@)O!@``"A9O"P``"@`"#2L`
M"2H````3,`0`50````(``!$``F\$```*`F\&```*"B4&;PH```H+!@<766\+
M```*``)O!```"@)O!@``"F\*```*%OX$#`@L%P)O!```"@)O!@``"B#_````
M;PL```H``@TK``DJ````$S`"`!\````#```1``)O!```"@)O!@``"F\*```*
MT2@,```*``(**P`&*@`3,`,`'@````,``!$``F\$```*`F\&```**`T```IO
M"P``"@`""BL`!BH``!,P!0`\````!```$0`";P0```H";P8```H";P@```H"
M;P0```H";P8```IO"@``"M$*$@`H#@``"B@/```*<PD```H+*P`'*A,P!`#2
M````!0``$0`2``)O!```"@)O!@``"@)O"```"B@0```*!GL1```*;Q(```H6
M_@$+!RP7``9[$P``"@9[%```"A9O"P``"@``*W,&>Q$```IO$@``"A?^`0P(
M+"X`!GL3```*!GL4```*!GL1```*%F\5```*;PL```H`$@!R`0``<'T1```*
M`"LS``9[$P``"@9[%```"@9[$0``"A9O%0``"F\+```*`!(`!GL1```*%V\6
M```*?1$```H`!GL3```*!GL4```*!GL1```*<PD```H-*P`)*@``$S`#`"``
M```&```1`',7```*"@86;P<```H`!A9R`0``<',)```*"RL`!RHB`B@8```*
M`"H````3,`,`)`````,``!$`*!D```H";P0```H";P8```IO"@``"M%O&@``
M"@`""BL`!BH3,`(`,`````<``!$``F\$```*`F\&```*;PH```H*$@`H&P``
M"G(#``!P*`\```HH'```"@`""RL`!RH3,`(`'@````,``!$``F\$```*`F\&
M```*;PH```HH'0``"@`""BL`!BH``!,P`P`U````!P``$0`H&0``"@)O!```
M"@)O!@``"F\*```*"A(`*!L```IR`P``<"@/```*;QX```H``@LK``<J````
M$S`#`",````#```1`"@9```*`F\$```*`F\&```*;PH```IO'P``"@`""BL`
M!BH`$S`!`!(````#```1`'('``!P*!P```H``@HK``8J```3,`(`%P````,`
M`!$`*!D```IR!P``<&\>```*``(**P`&*@`;,`,`+@````@``!$``"@@```*
M"@)O!```"@)O!@``"@8H(0``"F\+```*``#>!28``-X``@LK``<J```!$```
M```!`"(C``4%```!&S`#`+`````)```1```H(```"@H";P0```H";P8```H&
M*"$```IO"P``"@`";P0```IO!0``"@)O!@``"A=8_@(+!RP9``)O!```"@)O
M!@``"A=8%V\+```*```K#P`";P0```H7;P<```H```#>1B8``F\$```*;P4`
M``H";P8```H76/X"#`@L&0`";P0```H";P8```H76!9O"P``"@``*P\``F\$
M```*%F\'```*````W@`"#2L`"2H!$``````!`&-D`$8%```!&S`#`+8````*
M```1```H#0``"@H&%C$-!B```0``_@06_@$K`1<+!RP&<R(```IZ`F\$```*
M;P4```H";P8```H76/X"#`@L&0`";P0```H";P8```H76!=O"P``"@``*P\`
M`F\$```*%V\'```*````WD8F``)O!```"F\%```*`F\&```*%UC^`@T)+!D`
M`F\$```*`F\&```*%U@6;PL```H``"L/``)O!```"A9O!P``"@```-X``A,$
M*P`1!"H```$0``````$`9V@`1@4```$3,`,`H@````L``!$``F\$```*`F\&
M```*;PH```H6_@,*!B@C```*"RL/``)O!```"A9O!P``"@```F\$```*;P4`
M``H";P8```H86/X"%OX!#`@MU0)O!```"@)O!@``"A(!*"0```K2;PL```H`
M`F\$```*`F\&```*%U@2`2@E```*TF\+```*``)O!```"@)O!@``"AA8$@$H
M)@``"M)O"P``"@`"#2L`"2H``!,P`P!(````#```$0`6"BL8`'X"```$!G,G
M```*;R@```H```876-(*!B#_````_@$6_@$+!RW9?@(```0@_P```',G```*
M;R@```H`%X`#```$*A,P`P`B`````P``$0`";P0```IS*0``"@)O!@``"@)O
M"```"G,)```*"BL`!BH``!,P`P`J`````P``$0!^`0``!`)O!```"@)O!@``
M"F\*```*T@(H&```!F\J```*``(**P`&*@``$S`#`"(````#```1`'X!```$
M`F\$```*`F\&```*;PH```K2;RL```H**P`&*@``$S`#`$<````-```1`'X!
M```$`F\$```*`F\&```*;PH```K2;RL```H*?@$```0";P0```H";P8```IO
M"@``"M("*!@```9O*@``"@`&"RL`!RH`$S`$`%P````!```1`'X#```$%OX!
M"@8L!B@7```&`'X"```$`F\$```*`F\&```*;PH```K2;RP```I^`0``!`)O
M!```"@)O!@``"F\*```*TF\K```**!@```9O+0``"@`""RL`!RH;,`4`N```
M``X``!$`?@,```06_@$*!BP&*!<```8`*P\``F\$```*%F\'```*```";P0`
M``IO!0``"@)O!@``"A=8_@(6_@$+!RW5``!^`0``!`)O!```"@)O!@``"F\*
M```*TGX"```$`F\$```*`F\&```*;PH```K2;RP```IO+@``"F\J```*``)O
M!```"@)O!@``"A=8%V\+```*``#>&B8``F\$```*`F\&```*%U@6;PL```H`
M`-X``@PK``@J`1``````00!7F``:!0```6YS+P``"H`!```$<S````J``@``
M!!:``P``!"H3,`8`?0````\``!$``F\(```*%@)O"```"G(+``!P;S$```IO
M,@``"@H";P@```H6`F\(```*<@L``'!O,0``"F\R```*"]`!```;*#,```H,
M!B@T```*!Q>-#````246"*)O-0``"@T)%!>-!0```246`J)O-@``"G0!```;
M$``"$P0K`!$$*@```!LP!0!]````$```$0!R`0``<`H";P@```H+``(H(```
M!A```-Y!#``'%@)O"```"G(+``!P;S$```IO,@``"@L'%@)O"```"G(+``!P
M;S$```IO,@``"@L(;S<```IO.```"@H`W@`";P0```H";P8```H'!G(+``!P
M*#D```IS"0``"@TK``DJ`````1``````#@`,&@!!#@```1LP!0!"`0``$0``
M$0```B@@```&$``";P@```H*!A8";P@```IR"P``<&\Q```*;S(```H*!A8"
M;P@```IR"P``<&\Q```*;S(```H*!A8";P@```IR"P``<&\Q```*;S(```H*
M!A8";P@```IR"P``<&\Q```*;S(```H*`F\$```*`F\&```*!G,)```*$```
MW;$````+``)O"```"@P(%@)O"```"G(+``!P;S$```IO,@``"@P(%@)O"```
M"G(+``!P;S$```IO,@``"@P";P0```H";P8```H(!V\W```*;S@```IR"P``
M<"@Y```*<PD```H0``(H(```!A``"!8";P@```IR"P``<&\Q```*;S(```H,
M"!8";P@```IR"P``<&\Q```*;S(```H,`F\$```*`F\&```*"',)```*$```
MW@`"#2L`"2H```$0``````$`BHL`L0\```%"4TI"`0`!```````,````=C0N
M,"XS,#,Q.0`````%`&P```"P!0``(WX``!P&```L!```(U-T<FEN9W,`````
M2`H``!`````C55,`6`H``!`````C1U5)1````&@*``#T`@``(T)L;V(`````
M`````@```5<5`@@)`````/H!,P`6```!````&@````4````#````(P```!P`
M```Y`````P```!$````&`````0````(``````%<"`0``````!@"X`54#!@#8
M`54#!@"D`4(##P!U`P``!@#:`W8"!@!*`'8"!@`7`)X`!@!%`'8"!@#E`G8"
M!@`N`)X`"@`/`)X`!@""`78"!@#:`HL"!@"M`HL"!@#0`G8"!@!(`78"!@`$
M`W8"!@`@`G8"!@`)`X<`!@`H`'8"!@#V`78"!@`?!'8"!@"]`W8"!@`!`)X`
M!@`D`78"!@"-`8L"`````%P```````$``0`!`!``F@."`!4``0`!``$`$`".
M`((`%0`!``L``0`0``X!@@`5``$`%P`!`!``#`*"`!4`!``@`!8`S@-M`A8`
MA`-_`A8`[P"5`E`@`````)8`[P.8`@$`I"``````E@#J`Y@"`@#X(`````"6
M`+D`F`(#`%PA`````)8`F@"8`@0`P"$`````E@`+!)@"!0#L(0````"6`(@"
MF`(&`!@B`````)8`_P.8`@<`8"(`````E@!]`I@""`!`(P````"6`#$"L0()
M`&PC`````(88'@,&``D`>",`````E@`Z`Y@""0"H(P````"6``@$F`(*`.0C
M`````)8`;@&8`@L`$"0`````E@`S`Y@"#`!4)`````"6`&,!F`(-`(0D````
M`)8`=`&8`@X`I"0`````E@`K`Y@"#P#()`````"6`(4"F`(0`!0E`````)8`
MQ@"8`A$`X"4`````E@#:`)@"$@"T)@````"6`"8$F`(3`&PC`````(88'@,&
M`!0`9"<`````D0"/`[\"%`"X)P````"6`'D!F`(4`.@G`````)8`AP&8`A4`
M("@`````E@#[`9@"%@!0*`````"6`/0"F`(7`*0H`````)8`=0"8`A@`#"D`
M````E@!E`)@"&0!L(P````"&&!X#!@`:`.`I`````)$8)`._`AH`_"D`````
ME@`6`9@"&@"(*@````"6`)T"F`(;`"0K`````)8`/@*8`AP`;",`````AA@>
M`P8`'0````$`#00```$`#00```$`#00```$`#00```$`#00```$`#00```$`
M#00```$`#00```$`#00```$`#00```$`#00```$`#00```$`#00```$`#00`
M``$`#00```$`#00```$`#00```$`#00```$`#00```$`#00```$`#00```$`
M#00```$`#00```$`#00```$`#00```$`#00```$`#00```$`#00)`!X#`0`1
M`!X#!@`9`!X#"@`,`!X`*P`4`/4#-@`,`#L`.@`4`,(`/P`,`%(`10`,`!X#
M2@`4`&0"90`4`&T":P"!`)X!@`"!`+T`A0")`!X"F`"1`-,#G``<`!X#2@`<
M`%8`R0"1`$P"-@`<`"(`S0`<`#\`T0"1`*4#U0"1`"<"V@`4`!X#!@`I`!X#
M!@"!`!0#\@"9`)X!]P"A`!X"F`"!`)X!"P&!`%D!$`&9`)X!%0&9`%D!`0"!
M`%`!*0&I`)@!+0%Y`!X#!@"!`!<$9P%)``\$;0%)`/T"<@%)`*\#=@$D`!X#
M!@`L`&T"I0$4`!X#K0$T`&T"I0$T`&0"R`$L`&0"R`$D`$<"/P`D`/D"*P`T
M`!X#!@`L`!X#!@"1``0"#`*1`"<"$0)A`#8!%P)A`'\!'@)A``0!)`+1`!T!
M+0)Y`,<"1@(I`!X"F`"1`-,#2P(N``L`PP(N`!,`S`(N`!L`ZP(0`%0`<@")
M`*(`WP#\`!H!,@%#`54!>P'/`>@!^`$T`E("'P`P`+T`@`&0`;<!!(``````
M````````````````X0,```0``````````````&0"D0``````!```````````
M````9`)V`@```````````$E%;G5M97)A8FQE8#$`4W1A8VM@,0!,:7-T8#$`
M9V5T7TET96TQ`$EN=#,R`$1I8W1I;VYA<GE@,@!G971?271E;3(`5F%L=654
M=7!L96`S`&=E=%])=&5M,P`\36]D=6QE/@!03$5!4T5?4D544DE%5D4`4$Q%
M05-%7U-405-(`$)&1$X`4WES=&5M+DE/`&US8V]R;&EB`$1E8P!3>7-T96TN
M0V]L;&5C=&EO;G,N1V5N97)I8P!);F,`4F5A9`!!9&0`3G5M26Y0<F]B;&5M
M2&%N9&QE9`!#:&%R26Y0<F]B;&5M2&%N9&QE9`!A<F53=&%C:W-);FET:6%L
M:7IE9`!'971-971H;V0`4W1O<F%G90!$>6YA;6EC26YV;VME`%)U;G1I;654
M>7!E2&%N9&QE`$=E=%1Y<&5&<F]M2&%N9&QE`$-O;G-O;&4`4F5A9$QI;F4`
M5W)I=&5,:6YE`$YU;45R<DQI;F4`3G5M3W5T3&EN90!#;&]N90!'9714>7!E
M`%-T;W)E`$UE=&AO9$)A<V4`4&%R<V4`5W)I=&4`1&5B=6=G86)L94%T=')I
M8G5T90!#;VUP:6QA=&EO;E)E;&%X871I;VYS071T<FEB=71E`%)U;G1I;65#
M;VUP871I8FEL:71Y071T<FEB=71E`$)Y=&4`4F5T<FEE=F4`26YD97A/9@!%
M>&-E<'1I;VY(86YD;&EN9P!4;U-T<FEN9P!3=6)S=')I;F<`0V]N<W1R=6-T
M07)G`%1R>4-A=&-H`%!U<V@`9V5T7TQE;F=T:`!B9F1O=&YE="YD;&P`9V5T
M7TET96T`<V5T7TET96T`4WES=&5M`%%U975E26X`3G5M26X`4WES=&5M+E)E
M9FQE8W1I;VX`2&%N9&QE17AC97!T:6]N`%1A<F=E=$EN=F]C871I;VY%>&-E
M<'1I;VX`9V5T7TEN;F5R17AC97!T:6]N`$UE=&AO9$EN9F\`0V]N<V]L94ME
M>4EN9F\`4W=A<`!0;W``9V5T7TME>4-H87(`5&5X=%=R:71E<@!G971?17)R
M;W(`+F-T;W(`+F-C=&]R`$QI;F5%<G(`3G5M17)R`$-H87)%<G(`4WES=&5M
M+D1I86=N;W-T:6-S`%-Y<W1E;2Y2=6YT:6UE+D-O;7!I;&5R4V5R=FEC97,`
M1&5B=6=G:6YG36]D97,`86QT<U-T86-K<P!);FET4W1A8VMS`$5S<V5N=&EA
M;',`9V5T7T-H87)S`&=E=%]-;V1I9FEE<G,`0V]N<V]L94UO9&EF:65R<P!A
M;'1S`$-O;F-A=`!/8FIE8W0`8F9D;W1N970`3&5F=`!2:6=H=`!G971?0V]U
M;G0`475E=65/=70`3G5M3W5T`&=E=%]+97D`4F5A9$ME>0!#;VYS;VQE2V5Y
M``````$``R````,*```#`````,]5=@GK^M9,@(_%\$RX?$H`!"`!`0@#(``!
M!2`!`1$1#@<"`A42&0,5$AT!"`@."Q42&0,5$AT!"`@.!"``$P`%%1(=`0@#
M(``(!"``$P$%(`$!$P`$(``3`@D@`P$3`!,!$P(0!P0("`(5$AD#%1(=`0@(
M#@4@`1,`"`8@`@$($P`-!P$5$AD#%1(=`0@(#@0``0$#`P``"`X'`@,5$AD#
M%1(=`0@(#@,@``X%``(.#@X:!P05$2$#%1(=`0@(#@("%1(9`Q42'0$("`X+
M%1$A`Q42'0$("`X#!A,"`P83``,&$P$$(`$#"`0@`0X($@<"%1(=`0@5$AD#
M%1(=`0@(#@0``!)-!"`!`0,.!P((%1(9`Q42'0$("`X$``$!#@0``0$(!"`!
M`0X.!P(.%1(9`Q42'0$("`X#```.!``!!0X0!P0.`@(5$AD#%1(=`0@(#A$'
M!0@"`@(5$AD#%1(=`0@(#A$'!`(1)0(5$AD#%1(=`0@(#@4``1$E`@0@`!%9
M`R```P0@`!%=!`<"!0(/%1(M`142&0,5$AT!"`@.%!42*0(%%1(M`142&0,5
M$AT!"`@.!R`"`1,`$P$)(`$!%1)A`1,`$!42*0(%%1(9`Q42'0$("`X&(`$3
M`1,`&`<"%1(9`Q42'0$("`X5$AD#%1(=`0@(#@\'`P("%1(9`Q42'0$("`X3
M!P4.#A(Q$C45$AD#%1(=`0@(#@0@`0@.!2`"#@@(!@`!$C$1904``1(Q#@@@
M`A(U#AT2,08@`AP<'1P1!P0.#A(Y%1(9`Q42'0$("`X$(``2/08``PX.#@X1
M!P0.$CT.%1(9`Q42'0$("`X(MWI<5ADTX(D1!A42*0(%%1(9`Q42'0$("`X5
M!A42*0(%%1(M`142&0,5$AT!"`@.`@8"&``!%1(9`Q42'0$("`X5$AD#%1(=
M`0@(#@T``!42&0,5$AT!"`@.`P```0@!``@``````!X!``$`5`(65W)A<$YO
M;D5X8V5P=&EO;E1H<F]W<P$(`0`'`0`````(.@`````````````B.@```"``
M````````````````````````````%#H```````````````!?0V]R1&QL36%I
M;@!M<V-O<F5E+F1L;```````_R4`(``0````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M```````````````````````````````````````````````````````````!
M`!`````8``"````````````````````!``$````P``"`````````````````
M```!``````!(````6$```$P"`````````````$P"-````%8`4P!?`%8`10!2
M`%,`20!/`$X`7P!)`$X`1@!/``````"]!._^```!````````````````````
M```_``````````0````"````````````````````1`````$`5@!A`'(`1@!I
M`&P`90!)`&X`9@!O```````D``0```!4`'(`80!N`',`;`!A`'0`:0!O`&X`
M````````L`2L`0```0!3`'0`<@!I`&X`9P!&`&D`;`!E`$D`;@!F`&\```"(
M`0```0`P`#``,``P`#``-`!B`#`````L``(``0!&`&D`;`!E`$0`90!S`&,`
M<@!I`'``=`!I`&\`;@``````(````#``"``!`$8`:0!L`&4`5@!E`'(`<P!I
M`&\`;@``````,``N`#``+@`P`"X`,````#H`#0`!`$D`;@!T`&4`<@!N`&$`
M;`!.`&$`;0!E````8@!F`&0`;P!T`&X`90!T`"X`9`!L`&P``````"@``@`!
M`$P`90!G`&$`;`!#`&\`<`!Y`'(`:0!G`&@`=````"````!"``T``0!/`'(`
M:0!G`&D`;@!A`&P`1@!I`&P`90!N`&$`;0!E````8@!F`&0`;P!T`&X`90!T
M`"X`9`!L`&P``````#0`"``!`%``<@!O`&0`=0!C`'0`5@!E`'(`<P!I`&\`
M;@```#``+@`P`"X`,``N`#`````X``@``0!!`',`<P!E`&T`8@!L`'D`(`!6
M`&4`<@!S`&D`;P!N````,``N`#``+@`P`"X`,```````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M```````````````````````````P```,````-#H`````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
D````````````````````````````````````````````````
`
end
SHAR_EOF
  (set 20 23 12 22 16 08 49 'BF .NET/BF .NET/bin/Debug/bfdotnet.dll'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/bin/Debug/bfdotnet.dll'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/bin/Debug/bfdotnet.dll failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/bin/Debug/bfdotnet.dll': 'MD5 check failed'
       ) << \SHAR_EOF
3175122ae384c4c4da3e32ce6b5db7b8  BF .NET/BF .NET/bin/Debug/bfdotnet.dll
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/bin/Debug/bfdotnet.dll'` -ne 9216 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/bin/Debug/bfdotnet.dll' is not 9216"
  fi
fi
# ============= BF .NET/BF .NET/bin/Debug/bfdotnet.pdb ==============
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/bin/Debug/bfdotnet.pdb'
then
${echo} "x - SKIPPING BF .NET/BF .NET/bin/Debug/bfdotnet.pdb (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/bin/Debug/bfdotnet.pdb (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/bin/Debug/bfdotnet.pdb
M36EC<F]S;V9T($,O0RLK($U31B`W+C`P#0H:1%,``````@```@```"L```"T
M`````````"H`````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````````````````````#@`0``_O______________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M_____________________________________________P`\@?T!^/______
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M____________________________________________________________
M________"\HQ`3@`````$````!````````#_____!````/__`P``````____
M_P````#_____`````/____\`````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M```````````````````````````````+RC$!.``````0````$````````/__
M__\$````__\#``````#_____`````/____\`````_____P``````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M`````````````````````````````````````````````````````/AB43_&
M!],1D%,`P$^C`J'$14N9Z>;2$9`_`,!/HP*A"YV&6A%FTQ&]*@``^`A)O0_0
M*8BX$1-"AXMW#H67K!8@`````````!?+1H%8/!:4N:-JKI/]D062:NU)=37(
M3J#@&/ZNXO2=````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````^&)1/\8'TQ&04P#`3Z,"H<1%2YGIYM(1D#\`P$^C`J$+
MG89:$6;3$;TJ``#X"$F]#]`IB+@1$T*'BW<.A9>L%B``````````8A&957Z0
M^Q9AY`',FI<Q8\A0M+?F6[R-$`]G]FF>[W``````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````````````````````````````````````#X8E$_Q@?3$9!3`,!/HP*A
MQ$5+F>GFTA&0/P#`3Z,"H0N=AEH19M,1O2H``/@(2;T/T"F(N!$30H>+=PZ%
MEZP6(`````````!!AYDL0`SEUOB8YXI_:8$SM>5(0E0'(('YRFQJ!/36]0``
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````HP(```````"C`@``````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````!````%8`/!$/````!P````````````0`+`$6
M`*><0R,@+2`T+C,N,"TS+C(R-#`Q+C,K-#%A93<W,S@V8S,S-3DR.3$Q,V8V
M,60V9C4Q9C(V-C-D,C<X,#0T,P``````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M```````````````````````````````````````````````+RC$!.``````0
M````$````````!,`__\$````__\#````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````````O*,0$X`````!`````0````````%0#__P0```#__P,`````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````^&)1/\8'TQ&04P#`3Z,"H<1%2YGI
MYM(1D#\`P$^C`J$+G89:$6;3$;TJ``#X"$F]#]`IB+@1$T*'BW<.A9>L%B``
M````````8A&957Z0^Q9AY`',FI<Q8\A0M+?F6[R-$`]G]FF>[W``````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````````````````````````````````````````````````````#X8E$_
MQ@?3$9!3`,!/HP*AQ$5+F>GFTA&0/P#`3Z,"H0N=AEH19M,1O2H``/@(2;T/
MT"F(N!$30H>+=PZ%EZP6(`````````!!AYDL0`SEUOB8YXI_:8$SM>5(0E0'
M(('YRFQJ!/36]0``````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M`````````````````/[O_N\!````+@(```!#.EQ5<V5R<UQC865T=5QS;W5R
M8V5<<F5P;W-<0D8@+DY%5"!,:6)R87)Y7$)&("Y.150@3&EB<F%R>5Q#;&%S
M<S$N8W,``&,Z7'5S97)S7&-A971U7'-O=7)C95QR97!O<UQB9B`N;F5T(&QI
M8G)A<GE<8F8@+FYE="!L:6)R87)Y7&-L87-S,2YC<P!#.EQ5<V5R<UQC865T
M=5QS;W5R8V5<<F5P;W-<0D8@+DY%5"!,:6)R87)Y7$)&("Y.150@3&EB<F%R
M>5QO8FI<1&5B=6=<+DY%5$9R86UE=V]R:RQ697)S:6]N/78T+C<N,BY!<W-E
M;6)L>4%T=')I8G5T97,N8W,`8SI<=7-E<G-<8V%E='5<<V]U<F-E7')E<&]S
M7&)F("YN970@;&EB<F%R>5QB9B`N;F5T(&QI8G)A<GE<;V)J7&1E8G5G7"YN
M971F<F%M97=O<FLL=F5R<VEO;CUV-"XW+C(N87-S96UB;'EA='1R:6)U=&5S
M+F-S`$,Z7%5S97)S7&-A971U7'-O=7)C95QR97!O<UQ"1B`N3D54($QI8G)A
M<GE<0D8@+DY%5"!,:6)R87)Y7%!R;W!E<G1I97-<07-S96UB;'E);F9O+F-S
M`&,Z7'5S97)S7&-A971U7'-O=7)C95QR97!O<UQB9B`N;F5T(&QI8G)A<GE<
M8F8@+FYE="!L:6)R87)Y7'!R;W!E<G1I97-<87-S96UB;'EI;F9O+F-S``L`
M````````1P```(`!``#7`0``!P$``(X```!(`````0``````````````````
M``<`````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M```;XC`!V````````````````0``````````````````````````````````
M`````````````````````````````P````8````!````*0````````!(````
M*````!OB,`$E!ZKE:`````$```!'````2````&4``````````````-<!```H
M````&^(P`>1@IN=H````@`$``$<```#7`0``90``````````````!P$``"@`
M```;XC`!*.]`NF@```".````1P````<!``!E````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````````````````````````0```#T````$````(X`````````@`$`````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````!````"X`*A$`
M````O`````````!'```````````````!```&``````$`````4FEG:'0``!8`
M`Q$$````>````$<``````````0````H`)!%54WES=&5M`!X`)!%54WES=&5M
M+D-O;&QE8W1I;VYS+D=E;F5R:6,``@`&`#X`!`3)/^K&LUG62;PE"0*[J[1@
M`````$T`1``R````!`(```0````0`````@````(````$!@``#`````(0%@$"
M``8`+@`J$0`````L`0```````$<```````````````(```9'`````0````!,
M969T````.@`$!,D_ZL:S6=9)O"4)`KNKM&``````30!$`#(````$`@``!`$`
M``P````!```&!`8```P````"$!8!`@`&`"X`*A$`````H`$```````!5````
M```````````#```&C@````$`````26YC`````#X`!`3)/^K&LUG62;PE"0*[
MJ[1@`````$T`1``R````!`(```0!```,`````0``!@0&``(0```````",18!
M```"``8`+@`J$0`````4`@```````%4```````````````0```;C`````0``
M``!$96,`````/@`$!,D_ZL:S6=9)O"4)`KNKM&``````30!$`#(````$`@``
M!`$```P````!```&!`8``A````````(Q%@$```(`!@`N`"H1`````(0"````
M````'P``````````````!0``!C@!```!`````$]U=``````Z``0$R3_JQK-9
MUDF\)0D"NZNT8`````!-`$0`,@````0"```$`0``#`````$```8$!@`"#```
M`!8!```"``8`*@`J$0````#P`@```````!X```````````````8```97`0``
M`0````!);@`Z``0$R3_JQK-9UDF\)0D"NZNT8`````!-`$0`,@````0"```$
M`0``#`````$```8$!@`"#````!8!```"``8`,@`J$0````!D`P```````#P`
M``````````````<```9U`0```0````!1=65U94]U=````#H`!`3)/^K&LUG6
M2;PE"0*[J[1@`````$T`1``R````!`(```0!```,`````0``!@0&``$,````
M`!8!``(`!@`R`"H1`````!0$````````T@``````````````"```!K$!```!
M`````%%U975E26X`````%@`#$6@#``#,`P``T@```+$!```!````%@`@$0``
M```%```1``````````!T,@```@`&`$(`!`3)/^K&LUG62;PE"0*[J[1@````
M`$T`1``R````!`(```0!```,`````0``!@0&``(4`````3,"@(@"@/L6`0``
M`@`&`#8`*A$`````P`0````````@```````````````)```&@P(```$`````
M0V]N<W1R=6-T07)G````%@`#$1@$``"`!```(````(,"```!````%@`@$0``
M```&```1``````````!L`````@`&`#H`!`3)/^K&LUG62;PE"0*[J[1@````
M`$T`1``R````!`(```0!```,`````0``!@0&```,`````1H6`0(`!@#R````
M>``````````!``$`1P`````````(````;``````````1``"``0```!(``(`7
M````[N_^@!H````3``"`&P```!0``(`H````%0``@"D````6``"`10```!<`
M`(`)``H`#0`P```````-``X`$0`@``T`#@`-`%4`"0`*`/(```!L````1P``
M``$``0!'``````````<```!@`````````!H``(`!````&P``@`L```#N[_Z`
M#@```!P``(`/````'0``@"L````?``"`10```"```(`)``H`#0`=```````-
M``X`$0!9``T`40`)``H`\@```&P```".`````0`!`%4`````````!P```&``
M````````(P``@`$````D``"`(````"4``(`Y````[N_^@#P````E``"`3P``
M`"8``(!3````)P``@`D`"@`-`"``#0`H```````I`#X`#0`6``D`"@#R````
M;````.,````!``$`50`````````'````8``````````J``"``0```"L``(`@
M````+```@#4```#N[_Z`.````"P``(!/````+0``@%,````N``"`"0`*``T`
M(``-`"8``````"<`/@`-`!8`"0`*`/(```!(````.`$```$``0`?````````
M``0````\`````````#$``(`!````,@``@!D````S``"`'0```#0``(`)``H`
M#0`S``T`%@`)``H`\@```$@```!7`0```0`!`!X`````````!````#P`````
M````-P``@`$````X``"`&````#D``(`<````.@``@`D`"@`-`#0`#0`6``D`
M"@#R````/````'4!```!``$`/``````````#````,``````````]``"``0``
M`#X``(`Z````/P``@`D`"@`-`&H`"0`*`/(````4`0``L0$```$``0#2````
M`````!4````(`0```````$(``(`!````0P``@!H```!$``"`*0```.[O_H`L
M````10``@"T```!&``"`0````$<``(!!````[N_^@$,```!(``"`4@```.[O
M_H!5````20``@%8```!*``"`=````$L``("`````3```@($```#N[_Z`@P``
M`$X``("$````3P``@*(```!0``"`M0```%$``("V````4@``@-````!3``"`
M"0`*``T`=P`-`"8```````T`#@`1`"@`#0`.```````2`"L```````T`#@`1
M`#(`$0`?``T`#@``````#0`.`!$`-P`1`#(`#0`.``T`5``)``H`\@```%0`
M``"#`@```0`!`"``````````!0```$@`````````5@``@`$```!7``"`!P``
M`%@``(`/````60``@!X```!:``"`"0`*``T`*P`-`!8`#0!```D`"@#T````
M"`````$`````````2``````````4````+````$````!8````;````(0```"8
M````L````,0```#<````\`````@!```@`0``.`$``%`!``!H`0``A`$`````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M`````````````````````````````````````````/____\:"2_QD````$P"
M``!!`````0```&T````!````A0````$```"Q`````0```!4````!````\0``
M``$````A`0```0```#D!```!````F0````$```!I`0```0```,4````!````
M40$```$```!9`````0```-T````!````A0$```$````)`0```0````$````!
M````+0````$````!``````````````````````````````````````````&`
M`@``````````````````````````````````````````````````````````
M```````````````````````!````````````````````````````````````
M``````$``````````````````````````````````````````0``````````
M`````````````````$`````````````!``````@`````````````````````
M``````````````$`````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````````````````````H``````````0``````````````````````````
M`````@``````````````````````````````````````````````````````
M`````````````````````````````(```````````````````````````@``
M```!````````````````````````````````````````````````````````
M````````````````````````````````````````````````#````!@````D
M````,````#P```!(````5````&````!L````>````(0```"0````G````*@`
M``"T````P````,P`````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M```````````````````````````2`"41``````0````!`%)I9VAT`!8`*1$`
M````!`````$`,#8P,#`P,#$``!(`)1$`````P`````$`3&5F=```%@`I$0``
M``#``````0`P-C`P,#`P,@``$@`E$0`````P`0```0!);F,````6`"D1````
M`#`!```!`#`V,#`P,#`S```2`"41`````*0!```!`$1E8P```!8`*1$`````
MI`$```$`,#8P,#`P,#0``!(`)1$`````&`(```$`3W5T````%@`I$0`````8
M`@```0`P-C`P,#`P-0``$@`E$0````"(`@```0!);@`````6`"D1`````(@"
M```!`#`V,#`P,#`V```6`"41`````/0"```!`%%U975E3W5T```6`"D1````
M`/0"```!`#`V,#`P,#`W```6`"41`````&@#```!`%%U975E26X````6`"D1
M`````&@#```!`#`V,#`P,#`X```:`"41`````!@$```!`$-O;G-T<G5C=$%R
M9P``%@`I$0`````8!````0`P-C`P,#`P.0``````````````````````````
M````````````````````````````````````````````````````````````
M`````````````````````````````````````````````````!``````````
M``````````````````````````#_____&@DO\0``````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````_____W<),0$!````$``>CA$`\'<2````/`$````!```L````
M-`$`````````````%@```!D``````.[```````````#__P```````/____\`
M````__\````````````````/`,0$````````2`0```$`````````````````
M``!"1D1.+D5S<V5N=&EA;',`-C4R1D(R,D(``````````/__````````____
M_P````#__P````````````````D`7```````````````````````````````
M`````"H@0V]M<&EL97));F9O("H`.#9&-3(P-SD`````````__\```````#_
M____`````/__````````````````#@`$`````````!@````"````````````
M````````/$1A;F=L:6YG1&]C=6UE;G1S*C(R,S,T,V)D+6$X-3DM-#%A,RTY
M,&,P+3ED9F$Q,#%F,6$Y-3X`-T9"1$$R1#(````MNB[Q`0````````!'````
M``````````````````````$```!'````1P`````````````````````````!
M````C@```%4``````````````````````````0```.,```!5````````````
M``````````````$````X`0``'P`````````````````````````!````5P$`
M`!X``````````````````````````0```'4!```\````````````````````
M``````$```"Q`0``T@`````````````````````````!````@P(``"``````
M`````````````````````@`"``T!``````$`_____P````"C`@``"`(`````
M``#_____`````/____\#``,````!``$``0````(`T`````````!Y````0SI<
M57-E<G-<8V%E='5<<V]U<F-E7')E<&]S7$)&("Y.150@3&EB<F%R>5Q"1B`N
M3D54($QI8G)A<GE<;V)J7$1E8G5G7"Y.151&<F%M97=O<FLL5F5R<VEO;CUV
M-"XW+C(N07-S96UB;'E!='1R:6)U=&5S+F-S`$,Z7%5S97)S7&-A971U7'-O
M=7)C95QR97!O<UQ"1B`N3D54($QI8G)A<GE<0D8@+DY%5"!,:6)R87)Y7%!R
M;W!E<G1I97-<07-S96UB;'E);F9O+F-S`$,Z7%5S97)S7&-A971U7'-O=7)C
M95QR97!O<UQ"1B`N3D54($QI8G)A<GE<0D8@+DY%5"!,:6)R87)Y7$-L87-S
M,2YC<P```/[O_N\!`````0`````!``````````````#_____________"@#_
M____________````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````E"XQ`0$````!````_____________________V(!
M```O3&EN:TEN9F\`+U1-0V%C:&4`+VYA;65S`"]S<F,O:&5A9&5R8FQO8VL`
M+W-R8R]F:6QE<R]C.EQU<V5R<UQC865T=5QS;W5R8V5<<F5P;W-<8F8@+FYE
M="!L:6)R87)Y7&)F("YN970@;&EB<F%R>5QC;&%S<S$N8W,`+W-R8R]F:6QE
M<R]C.EQU<V5R<UQC865T=5QS;W5R8V5<<F5P;W-<8F8@+FYE="!L:6)R87)Y
M7&)F("YN970@;&EB<F%R>5QO8FI<9&5B=6=<+FYE=&9R86UE=V]R:RQV97)S
M:6]N/78T+C<N,BYA<W-E;6)L>6%T=')I8G5T97,N8W,`+W-R8R]F:6QE<R]C
M.EQU<V5R<UQC865T=5QS;W5R8V5<<F5P;W-<8F8@+FYE="!L:6)R87)Y7&)F
M("YN970@;&EB<F%R>5QP<F]P97)T:65S7&%S<V5M8FQY:6YF;RYC<P`'````
M#@````$```"@+P```````!,````'``````````4````*````!@```!H````(
M``````$```T````K````"P```'P````,`````````-Q1,P$`````````````
M```````````````````````````````````````````3````*````-8!```X
M````"P0``#@``````````````&X"``#8````8````"@```!H````:````&@`
M```@````6`D``.P"```L````G`$```<````>`````P```!L````<````'0``
M``0````.````#P```!`````)````"@````L````,````#0```!$````2````
M$P```!0````5````%@```!<````8````&@```!D`````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M`````!\`````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````&^(P`=@```````````````$`````````
M``````````````````````````````````````````````````````,````&
M`````0```"D`````````2````"@````;XC`!)0>JY6@````!````1P```$@`
M``!E``````````````#7`0``*````!OB,`'D8*;G:````(`!``!'````UP$`
M`&4```````````````<!```H````&^(P`2CO0+IH````C@```$<````'`0``
M90``````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````````````````````````````````````````````````#_____&@DO
M\9````!,`@``00````$```!M`````0```(4````!````L0````$````5````
M`0```/$````!````(0$```$````Y`0```0```)D````!````:0$```$```#%
M`````0```%$!```!````60````$```#=`````0```(4!```!````"0$```$`
M```!`````0```"T````!`````0``````````````````````````````````
M```````!@`(`````````````````````````````````````````````````
M`````````````````````````````````0``````````````````````````
M```````````````!``````````````````````````````````````````$`
M``````````````````````````!``````````````0`````(````````````
M```````````````````````!````````````````````````````````````
M````````````````````````````````````````````````````````````
M```````````````````````````````*``````````$`````````````````
M``````````````(`````````````````````````````````````````````
M``````````````````````````````````````"`````````````````````
M``````(``````0``````````````````````````````````````````````
M``````````````````````````````````````````````````````````P`
M```8````)````#`````\````2````%0```!@````;````'@```"$````D```
M`)P```"H````M````,````#,````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````_____W<),0$!````$``>CA$`
M\'<2````/`$````!```L````-`$`````````````%@```!D``````.[`````
M``````#__P```````/____\`````__\````````````````/`,0$````````
M2`0```$```````````````````!"1D1.+D5S<V5N=&EA;',`-C4R1D(R,D(`
M`````````/__````````_____P````#__P````````````````D`7```````
M`````````````````````````````"H@0V]M<&EL97));F9O("H`.#9&-3(P
M-SD`````````__\```````#_____`````/__````````````````#@`$````
M`````!@````"````````````````````/$1A;F=L:6YG1&]C=6UE;G1S*C(R
M,S,T,V)D+6$X-3DM-#%A,RTY,&,P+3ED9F$Q,#%F,6$Y-3X`-T9"1$$R1#(`
M```MNB[Q`0````````!'``````````````````````````$```!'````1P``
M```````````````````````!````C@```%4`````````````````````````
M`0```.,```!5``````````````````````````$````X`0``'P`````````0
M````````````````````````````````````_____QH)+_$`````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````````````````````````````````````$```!7`0``'@``````````
M```````````````!````=0$``#P``````````````````````````0```+$!
M``#2``````````````````````````$```"#`@``(```````````````````
M```````"``(`#0$``````0#_____`````*,"```(`@```````/____\`````
M_____P,``P````$``0`!`````@``````1@```+\```!#.EQ5<V5R<UQC865T
M=5QS;W5R8V5<<F5P;W-<0D8@+DY%5"!,:6)R87)Y7$)&("Y.150@3&EB<F%R
M>5Q#;&%S<S$N8W,`0SI<57-E<G-<8V%E='5<<V]U<F-E7')E<&]S7$)&("Y.
M150@3&EB<F%R>5Q"1B`N3D54($QI8G)A<GE<;V)J7$1E8G5G7"Y.151&<F%M
M97=O<FLL5F5R<VEO;CUV-"XW+C(N07-S96UB;'E!='1R:6)U=&5S+F-S`$,Z
M7%5S97)S7&-A971U7'-O=7)C95QR97!O<UQ"1B`N3D54($QI8G)A<GE<0D8@
M+DY%5"!,:6)R87)Y7%!R;W!E<G1I97-<07-S96UB;'E);F9O+F-S````_N_^
M[P$````!``````$``````````````/____________\*`/____________\`
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````"4+C$!W-OTZ@$````RERMB>Y3G1XV=:RSOQ*JZ8@$``"],:6YK26YF
M;P`O5$U#86-H90`O;F%M97,`+W-R8R]H96%D97)B;&]C:P`O<W)C+V9I;&5S
M+V,Z7'5S97)S7&-A971U7'-O=7)C95QR97!O<UQB9B`N;F5T(&QI8G)A<GE<
M8F8@+FYE="!L:6)R87)Y7&-L87-S,2YC<P`O<W)C+V9I;&5S+V,Z7'5S97)S
M7&-A971U7'-O=7)C95QR97!O<UQB9B`N;F5T(&QI8G)A<GE<8F8@+FYE="!L
M:6)R87)Y7&]B:EQD96)U9UPN;F5T9G)A;65W;W)K+'9E<G-I;VX]=C0N-RXR
M+F%S<V5M8FQY871T<FEB=71E<RYC<P`O<W)C+V9I;&5S+V,Z7'5S97)S7&-A
M971U7'-O=7)C95QR97!O<UQB9B`N;F5T(&QI8G)A<GE<8F8@+FYE="!L:6)R
M87)Y7'!R;W!E<G1I97-<87-S96UB;'EI;F9O+F-S``<````.`````0```*`O
M````````$P````<`````````!0````H````&````&@````@``````0``#0``
M`"L````+````?`````P`````````W%$S`0``````````````````````````
M`````````````````````````````!,```"T````U@$``#@````+!```.```
M````````````;@(``-@```!@````*````&@```!H````:````"````!8"0``
M[`(``"P```"<`0``'P```"@````#````)````"8````G````!`````X````/
M````(0````D````(````!0````8````'````$0```!(````3````%````!4`
M```6````(@```",````E````&0``````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````*0``````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
+````````````````
`
end
SHAR_EOF
  (set 20 23 12 16 23 31 16 'BF .NET/BF .NET/bin/Debug/bfdotnet.pdb'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/bin/Debug/bfdotnet.pdb'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/bin/Debug/bfdotnet.pdb failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/bin/Debug/bfdotnet.pdb': 'MD5 check failed'
       ) << \SHAR_EOF
fac7610f0839d27a901c50829ef6099b  BF .NET/BF .NET/bin/Debug/bfdotnet.pdb
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/bin/Debug/bfdotnet.pdb'` -ne 22016 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/bin/Debug/bfdotnet.pdb' is not 22016"
  fi
fi
# ============= BF .NET/BF .NET/bin/Debug/examples/io.txt ==============
if test ! -d 'BF .NET/BF .NET/bin/Debug/examples'; then
  mkdir 'BF .NET/BF .NET/bin/Debug/examples'
if test $? -eq 0
then ${echo} "x - created directory BF .NET/BF .NET/bin/Debug/examples."
else ${echo} "x - failed to create directory BF .NET/BF .NET/bin/Debug/examples."
     exit 1
fi
fi
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/bin/Debug/examples/io.txt'
then
${echo} "x - SKIPPING BF .NET/BF .NET/bin/Debug/examples/io.txt (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/bin/Debug/examples/io.txt (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/bin/Debug/examples/io.txt
M+@T*/$U!24Y254X-"B`@*RLK#0H@(%]#04Q,(%MB9F1O=&YE=%U"1D1.+DE/
M.CI.=6U/=70-"B`@*PT*("!?0T%,3"!;8F9D;W1N971=0D9$3BY)3SHZ3G5M
M3W5T#0H@(%]#04Q,(%MB9F1O=&YE=%U"1D1.+DE/.CI,:6YE#0H@("L-"B`@
M7T-!3$P@6V)F9&]T;F5T74)&1$XN24\Z.DYU;45R<DQI;F4-"B`@7T-!3$P@
M6V)F9&]T;F5T74)&1$XN24\Z.DYU;4EN4')O8FQE;4AA;F1L960-"B`@/@T*
M("`\3$]/4"!#:&5C:TYU;65R:6-A;`T*("`@("T\+2TM+0T*("`@(%]#04Q,
M(%MB9F1O=&YE=%U"1D1.+DE/.CI.=6U/=71,:6YE#0H@("`@/@T*("`^3$]/
M4"!#:&5C:TYU;65R:6-A;`T*("`K#0H@(#Q,3T]0($ME>7,-"B`@("`^#0H@
M("`@7T-!3$P@6V)F9&]T;F5T74)&1$XN24\Z.DME>0T*("`@(%]#04Q,(%MB
M9F1O=&YE=%U"1D1.+DE/.CI.=6U/=70-"B`@("`^#0H@("`@7T-!3$P@6V)F
M9&]T;F5T74)&1$XN24\Z.DYU;4]U=`T*("`@(#X-"B`@("!?0T%,3"!;8F9D
M;W1N971=0D9$3BY)3SHZ3G5M3W5T#0H@("`@7T-!3$P@6V)F9&]T;F5T74)&
M1$XN24\Z.DQI;F4-"B`@("`\/%LM73P-"B`@/DQ/3U`@2V5Y<PT*/DU!24Y2
"54XN
`
end
SHAR_EOF
  (set 20 23 12 22 16 10 51 'BF .NET/BF .NET/bin/Debug/examples/io.txt'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/bin/Debug/examples/io.txt'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/bin/Debug/examples/io.txt failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/bin/Debug/examples/io.txt': 'MD5 check failed'
       ) << \SHAR_EOF
e200f524ee85fefdb00e9f06cc0a0c43  BF .NET/BF .NET/bin/Debug/examples/io.txt
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/bin/Debug/examples/io.txt'` -ne 587 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/bin/Debug/examples/io.txt' is not 587"
  fi
fi
# ============= BF .NET/BF .NET/bin/Debug/examples/storage and comments.txt ==============
if test ! -d 'BF .NET/BF .NET/bin/Debug/examples'; then
  mkdir 'BF .NET/BF .NET/bin/Debug/examples'
if test $? -eq 0
then ${echo} "x - created directory BF .NET/BF .NET/bin/Debug/examples."
else ${echo} "x - failed to create directory BF .NET/BF .NET/bin/Debug/examples."
     exit 1
fi
fi
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/bin/Debug/examples/storage and comments.txt'
then
${echo} "x - SKIPPING BF .NET/BF .NET/bin/Debug/examples/storage and comments.txt (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/bin/Debug/examples/storage and comments.txt (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/bin/Debug/examples/storage and comments.txt
M+@T*7T-/32!#;W!Y<FEG:'0@*&,I($MR;VYO<W1A+T)O=6YD961"96%N<R`R
M,#(S#0I?0T]-($IU<W0@:VED9&EN9RP@=&AI<R!I<R!P=6)L:6,@9&]M86EN
M+@T*7T-/32!4:&ES(&ES(&$@9&5M;R!O9B!H96%D97(@8V]M;65N=',N#0I?
M0T]-(%1H97D@;75S="!C;VUE(&%F=&5R('1H92!A<W-E;6)L>2!R969E<F5N
M8V5S+@T*#0H\34%)3E)53@T*("!?0T]-($DG;&P@=7-E(#,@87,@=&AE('-T
M;W)A9V4@:V5Y+@T*("`K*RL-"B`@7T-/32!*=7-T(&9O<B!T97-T:6YG#0H@
M(%]#04Q,(%MB9F1O=&YE=%U"1D1.+E-T;W)A9V4Z.D-L;VYE#0H@(%]#3TT@
M5V4G;&P@8F4@<W1O<FEN9R!T:&4@=F%L=64@-"!A;F0@-RX@*%]#3TT@/"T@
M:G5S="!T;R!T97-T(&-O;6UE;G1S*0T*("`^*RLK*SXK*RLK*RLK/#P-"B`@
M7T-/32!3=&]R92!T:&5M#0H@(%]#04Q,(%MB9F1O=&YE=%U"1D1.+E-T;W)A
M9V4Z.E-T;W)E#0H@(%]#3TT@1&5L971E('1H92!C96QL<R!W:71H(#0@86YD
M(#<-"B`@/ELM73Y;+5T\#0H@(%]#3TT@36%K92!S=7)E('1H92!V86QU97,@
M87)E(&%C='5A;&QY(&-L96%R960N#0H@(%]#3TT@5&AI<R!S:&]U;&0@<')I
M;G0@)S`@,"<-"B`@7T-/32!;#0H@("`@7T-!3$P@6V)F9&]T;F5T74)&1$XN
M24\Z.DYU;4]U=`T*("`@(#X-"B`@("!?0T%,3"!;8F9D;W1N971=0D9$3BY)
M3SHZ3G5M3W5T3&EN90T*("`@(#P\#0H@(%]#3TT@70T*("!?0T]-($-L96%R
M('1H92`S("AT:&4@:V5Y*0T*("!;+5T-"B`@7T-/32!'970@8F%C:R!T:&4@
M:V5Y#0H@("LK*PT*("!?0T]-(%)E=')I979E(&ET(&9R;VT@<W1O<F%G92!A
M="!K97D@,PT*("!?0T%,3"!;8F9D;W1N971=0D9$3BY3=&]R86=E.CI2971R
M:65V90T*("!?0T]-($UA:V4@<W5R92!W92!H879E('1H92!V86QU97,@8F%C
M:PT*("!?0T]-(%1H:7,@<VAO=6QD('!R:6YT("<T(#<G#0H@(%]#3TT@6PT*
M("`@(#X-"B`@("!?0T%,3"!;8F9D;W1N971=0D9$3BY)3SHZ3G5M3W5T#0H@
M("`@/@T*("`@(%]#04Q,(%MB9F1O=&YE=%U"1D1.+DE/.CI.=6U/=71,:6YE
4#0H@(%]#3TT@70T*/DU!24Y254YO
`
end
SHAR_EOF
  (set 20 23 12 22 16 25 39 'BF .NET/BF .NET/bin/Debug/examples/storage and comments.txt'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/bin/Debug/examples/storage and comments.txt'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/bin/Debug/examples/storage and comments.txt failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/bin/Debug/examples/storage and comments.txt': 'MD5 check failed'
       ) << \SHAR_EOF
385fe253f9c05f17b69ea088d494f92e  BF .NET/BF .NET/bin/Debug/examples/storage and comments.txt
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/bin/Debug/examples/storage and comments.txt'` -ne 1055 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/bin/Debug/examples/storage and comments.txt' is not 1055"
  fi
fi
# ============= BF .NET/BF .NET/bin/Debug/immediate.exe ==============
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/bin/Debug/immediate.exe'
then
${echo} "x - SKIPPING BF .NET/BF .NET/bin/Debug/immediate.exe (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/bin/Debug/immediate.exe (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/bin/Debug/immediate.exe
M35J0``,````$````__\``+@`````````0```````````````````````````
M````````````````````@`````X?N@X`M`G-(;@!3,TA5&AI<R!P<F]G<F%M
M(&-A;FYO="!B92!R=6X@:6X@1$]3(&UO9&4N#0T*)`````````!010``3`$"
M`!4;AF4``````````.```@$+`0L```0````"````````3B,````@````0```
M``!````@`````@``!``````````$``````````!@`````@````````,`0(4`
M`!```!``````$```$````````!```````````````/PB``!/````````````
M`````````````````````````$````P`````````````````````````````
M````````````````````````````````````````(```"```````````````
M""```$@``````````````"YT97AT````5`,````@````!`````(`````````
M`````````"```&`N<F5L;V,```P`````0`````(````&````````````````
M``!```!"````````````````````````````````````````````````````
M```````````````````````P(P```````$@````"``4`G"```&`"```!````
M`0``!@``````````````````````````````````````````````````````
M`````````!,P"``^`````0``$2@!```**`(```HH`@``"B@"```**`(```HH
M`@``"B@"```**`(```HH`@``"B@"```**`,```HH!```"B8J``!"4TI"`0`!
M```````,````=C0N,"XS,#,Q.0`````%`&P```#L````(WX``%@!``"P````
M(U-T<FEN9W,`````"`(```@````C55,`$`(``!`````C1U5)1````"`"``!`
M````(T)L;V(``````````@```4<$`@@)`````/HE,P`6```!````!0````(`
M```!````!`````$````!`````0````(``````'0``0``````!@`1``H`!@`8
M``H`!@`[`"``"@!'`$(`"@!C`$(```````$```````$``0"``0``E`````4`
M`0`!`%`@`````!8`G0`K``$`(0!2``$`#`!?`!(`*0!F`!(`#`!Q`!(`+P`/
M`````````````````````````*<``````````````````````((`````````
M````````````````BP`````````````\36]D=6QE/@!3>7-T96T`3V)J96-T
M`%1U<&QE8#,`4WES=&5M+D-O;&QE8W1I;VYS+D=E;F5R:6,`3&ES=&`Q`$)&
M1$X`17-S96YT:6%L<P!#;VYS=')U8W1!<F<`26YC`$E/`$YU;4]U=$QI;F4`
M26X`:6UM961I871E+F5X90!M<V-O<FQI8@!B9F1O=&YE=`!254Y#3$%34P!2
M54Y-151(3T0`5&5S=$)&``````,@``````!P$+;]SN6N2KXNJ5*A;4IQ``T`
M`!42"0,5$@T!"`@.`A(1&``!%1()`Q42#0$("`X5$@D#%1(-`0@(#@,```$-
M!P$5$@D#%1(-`0@(#@```"0C`````````````#XC````(```````````````
M```````````````P(P```````````````%]#;W)%>&5-86EN`&US8V]R964N
M9&QL``````#_)0`@0```````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M`````````"````P```!0,P``````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
7````````````````````````````````
`
end
SHAR_EOF
  (set 20 23 12 22 17 26 13 'BF .NET/BF .NET/bin/Debug/immediate.exe'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/bin/Debug/immediate.exe'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/bin/Debug/immediate.exe failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/bin/Debug/immediate.exe': 'MD5 check failed'
       ) << \SHAR_EOF
4d7208d955bd3b08f8d79d1d58cbdbdf  BF .NET/BF .NET/bin/Debug/immediate.exe
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/bin/Debug/immediate.exe'` -ne 2048 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/bin/Debug/immediate.exe' is not 2048"
  fi
fi
# ============= BF .NET/BF .NET/bin/Debug/link-test.cs ==============
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/bin/Debug/link-test.cs'
then
${echo} "x - SKIPPING BF .NET/BF .NET/bin/Debug/link-test.cs (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/bin/Debug/link-test.cs (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/bin/Debug/link-test.cs
M;F%M97-P86-E($)&1&]T3F5T17AT96YS:6]N<R![#0H@("`@<'5B;&EC(&-L
M87-S($YU;65R:6-A;$E/('L-"B`@("`@("`@<'5B;&EC('-T871I8R!3>7-T
M96TN5'5P;&4\4WES=&5M+D-O;&QE8W1I;VYS+D=E;F5R:6,N3&ES=#QI;G0^
M+"!I;G0L('-T<FEN9SX@3W5T<'5T*%-Y<W1E;2Y4=7!L93Q3>7-T96TN0V]L
M;&5C=&EO;G,N1V5N97)I8RY,:7-T/&EN=#XL(&EN="P@<W1R:6YG/B!T*2![
M#0H@("`@("`@("`@("!3>7-T96TN0V]N<V]L92Y7<FET94QI;F4H="Y)=&5M
M,5MT+DET96TR72D[#0H@("`@("`@("`@("!R971U<FX@=#L-"B`@("`@("`@
+?0T*("`@('T-"GT[
`
end
SHAR_EOF
  (set 20 23 12 22 14 33 04 'BF .NET/BF .NET/bin/Debug/link-test.cs'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/bin/Debug/link-test.cs'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/bin/Debug/link-test.cs failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/bin/Debug/link-test.cs': 'MD5 check failed'
       ) << \SHAR_EOF
be0735f50222b2f5e493d56f149d8c31  BF .NET/BF .NET/bin/Debug/link-test.cs
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/bin/Debug/link-test.cs'` -ne 326 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/bin/Debug/link-test.cs' is not 326"
  fi
fi
# ============= BF .NET/BF .NET/bin/Debug/link-test.dll ==============
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/bin/Debug/link-test.dll'
then
${echo} "x - SKIPPING BF .NET/BF .NET/bin/Debug/link-test.dll (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/bin/Debug/link-test.dll (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/bin/Debug/link-test.dll
M35J0``,````$````__\``+@`````````0```````````````````````````
M````````````````````@`````X?N@X`M`G-(;@!3,TA5&AI<R!P<F]G<F%M
M(&-A;FYO="!B92!R=6X@:6X@1$]3(&UO9&4N#0T*)`````````!010``3`$#
M`(/RA64``````````.``(B`+`3````8````&````````<B0````@````0```
M````$``@`````@``!``````````$``````````"``````@````````,`0(4`
M`!```!``````$```$````````!```````````````"`D``!/`````$```*@"
M`````````````````````````&````P`````````````````````````````
M````````````````````````````````````````(```"```````````````
M""```$@``````````````"YT97AT````>`0````@````!@````(`````````
M`````````"```&`N<G-R8P```*@"````0`````0````(````````````````
M``!```!`+G)E;&]C```,`````&`````"````#```````````````````0```
M0@````````````````````!4)````````$@````"``4`A"```)P#```!````
M````````````````````````````````````````````````````````````
M`````````!,P`@`>`````0``$0`";P0```H";P4```IO!@``"B@'```*``(*
M*P`&*B("*`@```H`*@!"4TI"`0`!```````,````=C0N,"XS,#,Q.0`````%
M`&P````P`0``(WX``)P!``!4`0``(U-T<FEN9W,`````\`(```0````C55,`
M]`(``!`````C1U5)1`````0#``"8````(T)L;V(``````````@```4<5`@@)
M`````/H!,P`6```!````"`````(````"`````0````@````#`````0````(`
M```!`````0``````P0`!```````&`(,`^``&`*,`^``&`&\`Y0`/`!@!```&
M`#H!V``&`!P`V``&``$`0@`&`%T`V```````)````````0`!``$`$``M`"<!
M%0`!``$`4"``````E@!+`4X``0!Z(`````"&&-\`!@`"`````0!0`0D`WP`!
M`!$`WP`&`!D`WP`*``P`"``J``P`$@`O`!0`SP`Z`$$`90!``"D`WP`&`"X`
M"P!G`"X`$P!P`"X`&P"/`!``'@`T``2``````````````````````$$!```$
M``````````````!%`#D``````````$QI<W1@,0!G971?271E;3$`9V5T7TET
M96TR`%1U<&QE8#,`/$UO9'5L93X`3G5M97)I8V%L24\`;7-C;W)L:6(`4WES
M=&5M+D-O;&QE8W1I;VYS+D=E;F5R:6,`0V]N<V]L90!7<FET94QI;F4`1&5B
M=6=G86)L94%T=')I8G5T90!#;VUP:6QA=&EO;E)E;&%X871I;VYS071T<FEB
M=71E`%)U;G1I;65#;VUP871I8FEL:71Y071T<FEB=71E`&QI;FLM=&5S="YD
M;&P`9V5T7TET96T`4WES=&5M`"YC=&]R`%-Y<W1E;2Y$:6%G;F]S=&EC<P!3
M>7-T96TN4G5N=&EM92Y#;VUP:6QE<E-E<G9I8V5S`$1E8G5G9VEN9TUO9&5S
M`$)&1&]T3F5T17AT96YS:6]N<P!/8FIE8W0`;&EN:RUT97-T`$]U='!U=```
M``````"G^K\<0<;.1;1B;?UL)`")``0@`0$(`R```04@`0$1$0T'`142&0,5
M$AT!"`@."Q42&0,5$AT!"`@.!"``$P`$(``3`045$AT!"`4@`1,`"`0``0$(
M"+=Z7%89-.")&``!%1(9`Q42'0$("`X5$AD#%1(=`0@(#@@!``@``````!X!
M``$`5`(65W)A<$YO;D5X8V5P=&EO;E1H<F]W<P$(`0`'`0````!()```````
M``````!B)````"``````````````````````````````5"0`````````````
M``!?0V]R1&QL36%I;@!M<V-O<F5E+F1L;```````_R4`(``0````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````````````````````````````````````````````````$`$````!@`
M`(````````````````````$``0```#```(````````````````````$`````
M`$@```!80```3`(`````````````3`(T````5@!3`%\`5@!%`%(`4P!)`$\`
M3@!?`$D`3@!&`$\``````+T$[_X```$``````````````````````#\`````
M````!`````(```````````````````!$`````0!6`&$`<@!&`&D`;`!E`$D`
M;@!F`&\``````"0`!````%0`<@!A`&X`<P!L`&$`=`!I`&\`;@````````"P
M!*P!```!`%,`=`!R`&D`;@!G`$8`:0!L`&4`20!N`&8`;P```(@!```!`#``
M,``P`#``,``T`&(`,````"P``@`!`$8`:0!L`&4`1`!E`',`8P!R`&D`<`!T
M`&D`;P!N```````@````,``(``$`1@!I`&P`90!6`&4`<@!S`&D`;P!N````
M```P`"X`,``N`#``+@`P````/``.``$`20!N`'0`90!R`&X`80!L`$X`80!M
M`&4```!L`&D`;@!K`"T`=`!E`',`=``N`&0`;`!L````*``"``$`3`!E`&<`
M80!L`$,`;P!P`'D`<@!I`&<`:`!T````(````$0`#@`!`$\`<@!I`&<`:0!N
M`&$`;`!&`&D`;`!E`&X`80!M`&4```!L`&D`;@!K`"T`=`!E`',`=``N`&0`
M;`!L````-``(``$`4`!R`&\`9`!U`&,`=`!6`&4`<@!S`&D`;P!N````,``N
M`#``+@`P`"X`,````#@`"``!`$$`<P!S`&4`;0!B`&P`>0`@`%8`90!R`',`
M:0!O`&X````P`"X`,``N`#``+@`P````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M`````````````````"````P```!T-```````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
=````````````````````````````````````````
`
end
SHAR_EOF
  (set 20 23 12 22 14 33 07 'BF .NET/BF .NET/bin/Debug/link-test.dll'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/bin/Debug/link-test.dll'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/bin/Debug/link-test.dll failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/bin/Debug/link-test.dll': 'MD5 check failed'
       ) << \SHAR_EOF
355c74c9dd2375c651b4093af10121e5  BF .NET/BF .NET/bin/Debug/link-test.dll
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/bin/Debug/link-test.dll'` -ne 3584 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/bin/Debug/link-test.dll' is not 3584"
  fi
fi
# ============= BF .NET/BF .NET/bin/Debug/output ==============
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/bin/Debug/output'
then
${echo} "x - SKIPPING BF .NET/BF .NET/bin/Debug/output (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/bin/Debug/output (empty)"
 > 'BF .NET/BF .NET/bin/Debug/output' &&
  (set 20 23 12 22 17 35 29 'BF .NET/BF .NET/bin/Debug/output'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/bin/Debug/output'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/bin/Debug/output failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/bin/Debug/output': 'MD5 check failed'
       ) << \SHAR_EOF
d41d8cd98f00b204e9800998ecf8427e  BF .NET/BF .NET/bin/Debug/output
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/bin/Debug/output'` -ne 0 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/bin/Debug/output' is not 0"
  fi
fi
# ============= BF .NET/BF .NET/bin/Debug/sound ==============
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/bin/Debug/sound'
then
${echo} "x - SKIPPING BF .NET/BF .NET/bin/Debug/sound (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/bin/Debug/sound (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/bin/Debug/sound
A`0(#!`4&!P@)"@L,#0X/$!$2$Q05%A<8&1H;'!T>'R`A
`
end
SHAR_EOF
  (set 20 23 12 22 13 30 42 'BF .NET/BF .NET/bin/Debug/sound'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/bin/Debug/sound'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/bin/Debug/sound failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/bin/Debug/sound': 'MD5 check failed'
       ) << \SHAR_EOF
d41608a6b37022ca41d7b7d32d8a0eac  BF .NET/BF .NET/bin/Debug/sound
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/bin/Debug/sound'` -ne 33 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/bin/Debug/sound' is not 33"
  fi
fi
# ============= BF .NET/BF .NET/bin/Debug/test-tuple.cs ==============
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/bin/Debug/test-tuple.cs'
then
${echo} "x - SKIPPING BF .NET/BF .NET/bin/Debug/test-tuple.cs (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/bin/Debug/test-tuple.cs (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/bin/Debug/test-tuple.cs
M=7-I;F<@4WES=&5M.PT*=7-I;F<@4WES=&5M+D-O;&QE8W1I;VYS+D=E;F5R
M:6,[#0H-"F-L87-S(%!R;V=R86T@>PT*("`@('-T871I8R!V;VED($UA:6XH
M*2![#0H@("`@("`@(%1U<&QE/$QI<W0\:6YT/BP@:6YT+"!S=')I;F<^('0@
M/2!N97<@5'5P;&4\3&ES=#QI;G0^+"!I;G0L('-T<FEN9SXH;F5W($QI<W0\
M:6YT/B@I+"`P+"`B(BD[#0H@("`@("`@($-O;G-O;&4N5W)I=&5,:6YE*'0N
1271E;3$I.PT*("`@('T-"GT@
`
end
SHAR_EOF
  (set 20 23 12 17 00 36 03 'BF .NET/BF .NET/bin/Debug/test-tuple.cs'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/bin/Debug/test-tuple.cs'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/bin/Debug/test-tuple.cs failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/bin/Debug/test-tuple.cs': 'MD5 check failed'
       ) << \SHAR_EOF
a44f9a9a4829af6daa79514d0cf4fb1e  BF .NET/BF .NET/bin/Debug/test-tuple.cs
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/bin/Debug/test-tuple.cs'` -ne 242 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/bin/Debug/test-tuple.cs' is not 242"
  fi
fi
# ============= BF .NET/BF .NET/bin/Debug/test-tuple.exe ==============
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/bin/Debug/test-tuple.exe'
then
${echo} "x - SKIPPING BF .NET/BF .NET/bin/Debug/test-tuple.exe (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/bin/Debug/test-tuple.exe (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/bin/Debug/test-tuple.exe
M35J0``,````$````__\``+@`````````0```````````````````````````
M````````````````````@`````X?N@X`M`G-(;@!3,TA5&AI<R!P<F]G<F%M
M(&-A;FYO="!B92!R=6X@:6X@1$]3(&UO9&4N#0T*)`````````!010``3`$#
M`."6?F4``````````.``(@`+`3````8````(````````*B0````@````0```
M``!````@`````@``!``````````$``````````"``````@````````,`0(4`
M`!```!``````$```$````````!```````````````-@C``!/`````$```*P$
M`````````````````````````&````P`````````````````````````````
M````````````````````````````````````````(```"```````````````
M""```$@``````````````"YT97AT````,`0````@````!@````(`````````
M`````````"```&`N<G-R8P```*P$````0`````8````(````````````````
M``!```!`+G)E;&]C```,`````&`````"````#@``````````````````0```
M0@`````````````````````,)````````$@````"``4`A"```%0#```!````
M`0``!@``````````````````````````````````````````````````````
M`````````!,P`P`?`````0``$0!S!```"A9R`0``<',%```*"@9O!@``"B@'
M```*`"HB`B@(```*`"I"4TI"`0`!```````,````=C0N,"XS,#,Q.0`````%
M`&P````H`0``(WX``)0!```H`0``(U-T<FEN9W,`````O`(```0````C55,`
MP`(``!`````C1U5)1````-`"``"$````(T)L;V(``````````@```4<4`@@)
M`````/H!,P`6```!````"`````(````"````"`````,````!`````@````$`
M```!``````"V``$```````8`>`#R``8`F`#R``8`9`#?``\`$@$```8`(0'-
M``8`$@#-``8``0`L``8`1P#-```````:```````!``$````0`,4````5``$`
M`0!0(`````"1`-0`30`!`'L@`````(88V0`&``$`"0#9``$`$0#9``8`&0#9
M``H`#`#9``8`%`#9`#``%``(`#H`00!:`#\`*0#9``8`+@`+`%$`+@`3`%H`
M+@`;`'D`$``>`"0`!(``````````````````````3P````0`````````````
M`$0`(P````````````!,:7-T8#$`9V5T7TET96TQ`%1U<&QE8#,`/$UO9'5L
M93X`;7-C;W)L:6(`4WES=&5M+D-O;&QE8W1I;VYS+D=E;F5R:6,`0V]N<V]L
M90!T97-T+71U<&QE`%=R:71E3&EN90!$96)U9V=A8FQE071T<FEB=71E`$-O
M;7!I;&%T:6]N4F5L87AA=&EO;G-!='1R:6)U=&4`4G5N=&EM94-O;7!A=&EB
M:6QI='E!='1R:6)U=&4`=&5S="UT=7!L92YE>&4`4')O9W)A;0!3>7-T96T`
M36%I;@`N8W1O<@!3>7-T96TN1&EA9VYO<W1I8W,`4WES=&5M+E)U;G1I;64N
M0V]M<&EL97)397)V:6-E<P!$96)U9V=I;F=-;V1E<P!/8FIE8W0```$``&#Q
MOV[<!T],C)NBZI,8LM<`!"`!`0@#(``!!2`!`1$1#0<!%1(9`Q42'0$("`X%
M%1(=`0@+%1(9`Q42'0$("`X)(`,!$P`3`1,"!"``$P`$``$!'`BW>EQ6&33@
MB0,```$(`0`(```````>`0`!`%0"%E=R87!.;VY%>&-E<'1I;VY4:')O=W,!
M"`$`!P$`````````)``````````````:)````"``````````````````````
M````````#"0```````````````!?0V]R17AE36%I;@!M<V-O<F5E+F1L;```
M````_R4`($``````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````````````````````````````````````````````````(`$````"``
M`(`8````4```@````````````````````0`!````.```@```````````````
M`````0``````@````````````````````````0`!````:```@```````````
M`````````0``````K`(``)!````<`@`````````````<`C0```!6`%,`7P!6
M`$4`4@!3`$D`3P!.`%\`20!.`$8`3P``````O03O_@```0``````````````
M````````/P`````````$`````0```````````````````$0````!`%8`80!R
M`$8`:0!L`&4`20!N`&8`;P``````)``$````5`!R`&$`;@!S`&P`80!T`&D`
M;P!N`````````+`$?`$```$`4P!T`'(`:0!N`&<`1@!I`&P`90!)`&X`9@!O
M````6`$```$`,``P`#``,``P`#0`8@`P````+``"``$`1@!I`&P`90!$`&4`
M<P!C`'(`:0!P`'0`:0!O`&X``````"`````P``@``0!&`&D`;`!E`%8`90!R
M`',`:0!O`&X``````#``+@`P`"X`,``N`#`````D``(``0!)`&X`=`!E`'(`
M;@!A`&P`3@!A`&T`90```#\````H``(``0!,`&4`9P!A`&P`0P!O`'``>0!R
M`&D`9P!H`'0````@````+``"``$`3P!R`&D`9P!I`&X`80!L`$8`:0!L`&4`
M;@!A`&T`90```#\````T``@``0!0`'(`;P!D`'4`8P!T`%8`90!R`',`:0!O
M`&X````P`"X`,``N`#``+@`P````.``(``$`00!S`',`90!M`&(`;`!Y`"``
M5@!E`'(`<P!I`&\`;@```#``+@`P`"X`,``N`#````"\0@``Z@$`````````
M````[[N_/#]X;6P@=F5R<VEO;CTB,2XP(B!E;F-O9&EN9STB551&+3@B('-T
M86YD86QO;F4](GEE<R(_/@T*#0H\87-S96UB;'D@>&UL;G,](G5R;CIS8VAE
M;6%S+6UI8W)O<V]F="UC;VTZ87-M+G8Q(B!M86YI9F5S=%9E<G-I;VX](C$N
M,"(^#0H@(#QA<W-E;6)L>4ED96YT:71Y('9E<G-I;VX](C$N,"XP+C`B(&YA
M;64](DUY07!P;&EC871I;VXN87!P(B\^#0H@(#QT<G5S=$EN9F\@>&UL;G,]
M(G5R;CIS8VAE;6%S+6UI8W)O<V]F="UC;VTZ87-M+G8R(CX-"B`@("`\<V5C
M=7)I='D^#0H@("`@("`\<F5Q=65S=&5D4')I=FEL96=E<R!X;6QN<STB=7)N
M.G-C:&5M87,M;6EC<F]S;V9T+6-O;3IA<VTN=C,B/@T*("`@("`@("`\<F5Q
M=65S=&5D17AE8W5T:6]N3&5V96P@;&5V96P](F%S26YV;VME<B(@=6E!8V-E
M<W,](F9A;'-E(B\^#0H@("`@("`\+W)E<75E<W1E9%!R:79I;&5G97,^#0H@
M("`@/"]S96-U<FET>3X-"B`@/"]T<G5S=$EN9F\^#0H\+V%S<V5M8FQY/@``
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````(```#````"PT````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
!````
`
end
SHAR_EOF
  (set 20 23 12 17 00 36 16 'BF .NET/BF .NET/bin/Debug/test-tuple.exe'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/bin/Debug/test-tuple.exe'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/bin/Debug/test-tuple.exe failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/bin/Debug/test-tuple.exe': 'MD5 check failed'
       ) << \SHAR_EOF
732cf994668641b89349e548194adaaa  BF .NET/BF .NET/bin/Debug/test-tuple.exe
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/bin/Debug/test-tuple.exe'` -ne 4096 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/bin/Debug/test-tuple.exe' is not 4096"
  fi
fi
# ============= BF .NET/BF .NET/bin/Debug/test.exe ==============
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/bin/Debug/test.exe'
then
${echo} "x - SKIPPING BF .NET/BF .NET/bin/Debug/test.exe (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/bin/Debug/test.exe (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/bin/Debug/test.exe
M35J0``,````$````__\``+@`````````0```````````````````````````
M````````````````````@`````X?N@X`M`G-(;@!3,TA5&AI<R!P<F]G<F%M
M(&-A;FYO="!B92!R=6X@:6X@1$]3(&UO9&4N#0T*)`````````!010``3`$"
M`,(5AF4``````````.```@$+`0L```8````"````````_B,````@````0```
M``!````@`````@``!``````````$``````````!@`````@````````,`0(4`
M`!```!``````$```$````````!```````````````*@C``!3````````````
M`````````````````````````$````P`````````````````````````````
M````````````````````````````````````````(```"```````````````
M""```$@``````````````"YT97AT````!`0````@````!@````(`````````
M`````````"```&`N<F5L;V,```P`````0`````(````(````````````````
M``!```!"````````````````````````````````````````````````````
M``````````````````````#@(P```````$@````"``4`]"```+0"```!````
M`0``!@``````````````````````````````````````````````````````
M`````````!,P"`"6`````0``$2@!```**`(```HH`@``"B@"```**`(```HH
M`@``"B@"```**`(```HH`@``"@H&;P,```H&;P0```IO!0``"A8[*@````8H
M!@``"B@'```**`(```HH`@``"B@"```**`(```HH"```"@HXO____P`&*`<`
M``HH`@``"B@)```**`(```HH"0``"B@"```**`D```HF*@``0E-*0@$``0``
M````#````'8T+C`N,S`S,3D`````!0!L````"`$``"-^``!T`0``R````"-3
M=')I;F=S`````#P"```(````(U53`$0"```0````(T=5240```!4`@``8```
M`"-";&]B``````````(```%'!`(("0````#Z)3,`%@```0````0````"````
M`0````D````!`````P````$````"``````"3``$```````8`$0`*``8`&``*
M``8`.P`@``H`1P!"```````!```````!``$`@`$``*X````%``$``0!0(```
M```6`+<`30`!`"$`4@`!``P`7P`2`!0`8P`W`!0`;0`\`!P`=P!'``P`@``2
M``P`A``2``P`B@`2``P`CP`2`%$`#P`K`$$`````````````````````````
MP0``````````````````````G`````````````````````````"E````````
M`````#Q-;V1U;&4^`%-Y<W1E;0!/8FIE8W0`5'5P;&5@,P!3>7-T96TN0V]L
M;&5C=&EO;G,N1V5N97)I8P!,:7-T8#$`0D9$3@!%<W-E;G1I86QS`$-O;G-T
M<G5C=$%R9P!);F,`9V5T7TET96TQ`&=E=%])=&5M,@!G971?271E;0!$96,`
M4FEG:'0`3&5F=`!/=70`=&5S="YE>&4`;7-C;W)L:6(`8F9D;W1N970`4E5.
M0TQ!4U,`4E5.34542$]$`%1E<W1"1@```R```````'F=SX>\+YM*HK]?^AP+
MO),`#0``%1()`Q42#0$("`X"$A$8``$5$@D#%1(-`0@(#A42"0,5$@T!"`@.
M"Q42"0,5$@T!"`@.!"``$P`$(``3`045$@T!"`4@`1,`"`,```$-!P$5$@D#
M%1(-`0@(#@#0(P````````````#N(P```"``````````````````````````
M````X",`````````````````````7T-O<D5X94UA:6X`;7-C;W)E92YD;&P`
M`````/\E`"!`````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````(```#``````T````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
H````````````````````````````````````````````````````````
`
end
SHAR_EOF
  (set 20 23 12 22 17 03 30 'BF .NET/BF .NET/bin/Debug/test.exe'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/bin/Debug/test.exe'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/bin/Debug/test.exe failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/bin/Debug/test.exe': 'MD5 check failed'
       ) << \SHAR_EOF
28a3b088197d5122e997b0d35b2b81ca  BF .NET/BF .NET/bin/Debug/test.exe
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/bin/Debug/test.exe'` -ne 2560 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/bin/Debug/test.exe' is not 2560"
  fi
fi
# ============= BF .NET/BF .NET/bin/Debug/test.il ==============
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/bin/Debug/test.il'
then
${echo} "x - SKIPPING BF .NET/BF .NET/bin/Debug/test.il (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/bin/Debug/test.il (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/bin/Debug/test.il
M+F%S<V5M8FQY(&5X=&5R;B!M<V-O<FQI8B![('T-"BYA<W-E;6)L>2!E>'1E
M<FX@8F9D;W1N970@>R!]#0HN87-S96UB;'D@5&5S=$)&('L@?0T*+F-L87-S
M(&%B<W1R86-T('-E86QE9"!254Y#3$%34R![#0HN;65T:&]D('!U8FQI8R!S
M=&%T:6,@=F]I9"!254Y-151(3T0@*"E[#0HN;&]C86QS(&EN:70@*"!C;&%S
M<R!;;7-C;W)L:6)=4WES=&5M+E1U<&QE8#,\8VQA<W,@6VUS8V]R;&EB75-Y
M<W1E;2Y#;VQL96-T:6]N<RY'96YE<FEC+DQI<W1@,3QI;G0S,CXL:6YT,S(L
M<W1R:6YG/BD-"BYE;G1R>7!O:6YT#0IC86QL(&-L87-S(%MM<V-O<FQI8EU3
M>7-T96TN5'5P;&5@,SQC;&%S<R!;;7-C;W)L:6)=4WES=&5M+D-O;&QE8W1I
M;VYS+D=E;F5R:6,N3&ES=&`Q/&EN=#,R/BQI;G0S,BQS=')I;F<^(%MB9F1O
M=&YE=%U"1D1.+D5S<V5N=&EA;',Z.D-O;G-T<G5C=$%R9R`H("D-"F-A;&P@
M8VQA<W,@6VUS8V]R;&EB75-Y<W1E;2Y4=7!L96`S/&-L87-S(%MM<V-O<FQI
M8EU3>7-T96TN0V]L;&5C=&EO;G,N1V5N97)I8RY,:7-T8#$\:6YT,S(^+&EN
M=#,R+'-T<FEN9SX@8VQA<W,@6V)F9&]T;F5T74)&1$XN17-S96YT:6%L<SHZ
M26YC("@@8VQA<W,@6VUS8V]R;&EB75-Y<W1E;2Y4=7!L96`S/&-L87-S(%MM
M<V-O<FQI8EU3>7-T96TN0V]L;&5C=&EO;G,N1V5N97)I8RY,:7-T8#$\:6YT
M,S(^+&EN=#,R+'-T<FEN9SX@*0T*8V%L;"!C;&%S<R!;;7-C;W)L:6)=4WES
M=&5M+E1U<&QE8#,\8VQA<W,@6VUS8V]R;&EB75-Y<W1E;2Y#;VQL96-T:6]N
M<RY'96YE<FEC+DQI<W1@,3QI;G0S,CXL:6YT,S(L<W1R:6YG/B!C;&%S<R!;
M8F9D;W1N971=0D9$3BY%<W-E;G1I86QS.CI);F,@*"!C;&%S<R!;;7-C;W)L
M:6)=4WES=&5M+E1U<&QE8#,\8VQA<W,@6VUS8V]R;&EB75-Y<W1E;2Y#;VQL
M96-T:6]N<RY'96YE<FEC+DQI<W1@,3QI;G0S,CXL:6YT,S(L<W1R:6YG/B`I
M#0IC86QL(&-L87-S(%MM<V-O<FQI8EU3>7-T96TN5'5P;&5@,SQC;&%S<R!;
M;7-C;W)L:6)=4WES=&5M+D-O;&QE8W1I;VYS+D=E;F5R:6,N3&ES=&`Q/&EN
M=#,R/BQI;G0S,BQS=')I;F<^(&-L87-S(%MB9F1O=&YE=%U"1D1.+D5S<V5N
M=&EA;',Z.DEN8R`H(&-L87-S(%MM<V-O<FQI8EU3>7-T96TN5'5P;&5@,SQC
M;&%S<R!;;7-C;W)L:6)=4WES=&5M+D-O;&QE8W1I;VYS+D=E;F5R:6,N3&ES
M=&`Q/&EN=#,R/BQI;G0S,BQS=')I;F<^("D-"F-A;&P@8VQA<W,@6VUS8V]R
M;&EB75-Y<W1E;2Y4=7!L96`S/&-L87-S(%MM<V-O<FQI8EU3>7-T96TN0V]L
M;&5C=&EO;G,N1V5N97)I8RY,:7-T8#$\:6YT,S(^+&EN=#,R+'-T<FEN9SX@
M8VQA<W,@6V)F9&]T;F5T74)&1$XN17-S96YT:6%L<SHZ26YC("@@8VQA<W,@
M6VUS8V]R;&EB75-Y<W1E;2Y4=7!L96`S/&-L87-S(%MM<V-O<FQI8EU3>7-T
M96TN0V]L;&5C=&EO;G,N1V5N97)I8RY,:7-T8#$\:6YT,S(^+&EN=#,R+'-T
M<FEN9SX@*0T*8V%L;"!C;&%S<R!;;7-C;W)L:6)=4WES=&5M+E1U<&QE8#,\
M8VQA<W,@6VUS8V]R;&EB75-Y<W1E;2Y#;VQL96-T:6]N<RY'96YE<FEC+DQI
M<W1@,3QI;G0S,CXL:6YT,S(L<W1R:6YG/B!C;&%S<R!;8F9D;W1N971=0D9$
M3BY%<W-E;G1I86QS.CI);F,@*"!C;&%S<R!;;7-C;W)L:6)=4WES=&5M+E1U
M<&QE8#,\8VQA<W,@6VUS8V]R;&EB75-Y<W1E;2Y#;VQL96-T:6]N<RY'96YE
M<FEC+DQI<W1@,3QI;G0S,CXL:6YT,S(L<W1R:6YG/B`I#0IC86QL(&-L87-S
M(%MM<V-O<FQI8EU3>7-T96TN5'5P;&5@,SQC;&%S<R!;;7-C;W)L:6)=4WES
M=&5M+D-O;&QE8W1I;VYS+D=E;F5R:6,N3&ES=&`Q/&EN=#,R/BQI;G0S,BQS
M=')I;F<^(&-L87-S(%MB9F1O=&YE=%U"1D1.+D5S<V5N=&EA;',Z.DEN8R`H
M(&-L87-S(%MM<V-O<FQI8EU3>7-T96TN5'5P;&5@,SQC;&%S<R!;;7-C;W)L
M:6)=4WES=&5M+D-O;&QE8W1I;VYS+D=E;F5R:6,N3&ES=&`Q/&EN=#,R/BQI
M;G0S,BQS=')I;F<^("D-"F-A;&P@8VQA<W,@6VUS8V]R;&EB75-Y<W1E;2Y4
M=7!L96`S/&-L87-S(%MM<V-O<FQI8EU3>7-T96TN0V]L;&5C=&EO;G,N1V5N
M97)I8RY,:7-T8#$\:6YT,S(^+&EN=#,R+'-T<FEN9SX@8VQA<W,@6V)F9&]T
M;F5T74)&1$XN17-S96YT:6%L<SHZ26YC("@@8VQA<W,@6VUS8V]R;&EB75-Y
M<W1E;2Y4=7!L96`S/&-L87-S(%MM<V-O<FQI8EU3>7-T96TN0V]L;&5C=&EO
M;G,N1V5N97)I8RY,:7-T8#$\:6YT,S(^+&EN=#,R+'-T<FEN9SX@*0T*8V%L
M;"!C;&%S<R!;;7-C;W)L:6)=4WES=&5M+E1U<&QE8#,\8VQA<W,@6VUS8V]R
M;&EB75-Y<W1E;2Y#;VQL96-T:6]N<RY'96YE<FEC+DQI<W1@,3QI;G0S,CXL
M:6YT,S(L<W1R:6YG/B!C;&%S<R!;8F9D;W1N971=0D9$3BY%<W-E;G1I86QS
M.CI);F,@*"!C;&%S<R!;;7-C;W)L:6)=4WES=&5M+E1U<&QE8#,\8VQA<W,@
M6VUS8V]R;&EB75-Y<W1E;2Y#;VQL96-T:6]N<RY'96YE<FEC+DQI<W1@,3QI
M;G0S,CXL:6YT,S(L<W1R:6YG/B`I#0IC86QL(&-L87-S(%MM<V-O<FQI8EU3
M>7-T96TN5'5P;&5@,SQC;&%S<R!;;7-C;W)L:6)=4WES=&5M+D-O;&QE8W1I
M;VYS+D=E;F5R:6,N3&ES=&`Q/&EN=#,R/BQI;G0S,BQS=')I;F<^(&-L87-S
M(%MB9F1O=&YE=%U"1D1.+D5S<V5N=&EA;',Z.DEN8R`H(&-L87-S(%MM<V-O
M<FQI8EU3>7-T96TN5'5P;&5@,SQC;&%S<R!;;7-C;W)L:6)=4WES=&5M+D-O
M;&QE8W1I;VYS+D=E;F5R:6,N3&ES=&`Q/&EN=#,R/BQI;G0S,BQS=')I;F<^
M("D-"F-A;&P@8VQA<W,@6VUS8V]R;&EB75-Y<W1E;2Y4=7!L96`S/&-L87-S
M(%MM<V-O<FQI8EU3>7-T96TN0V]L;&5C=&EO;G,N1V5N97)I8RY,:7-T8#$\
M:6YT,S(^+&EN=#,R+'-T<FEN9SX@6V)F9&]T;F5T74)&1$XN24\Z.DYU;4]U
M=$QI;F4@*"!C;&%S<R!;;7-C;W)L:6)=4WES=&5M+E1U<&QE8#,\8VQA<W,@
M6VUS8V]R;&EB75-Y<W1E;2Y#;VQL96-T:6]N<RY'96YE<FEC+DQI<W1@,3QI
M;G0S,CXL:6YT,S(L<W1R:6YG/B`I#0IC86QL(&-L87-S(%MM<V-O<FQI8EU3
M>7-T96TN5'5P;&5@,SQC;&%S<R!;;7-C;W)L:6)=4WES=&5M+D-O;&QE8W1I
M;VYS+D=E;F5R:6,N3&ES=&`Q/&EN=#,R/BQI;G0S,BQS=')I;F<^(&-L87-S
M(%MB9F1O=&YE=%U"1D1.+D5S<V5N=&EA;',Z.DEN("@@8VQA<W,@6VUS8V]R
M;&EB75-Y<W1E;2Y4=7!L96`S/&-L87-S(%MM<V-O<FQI8EU3>7-T96TN0V]L
M;&5C=&EO;G,N1V5N97)I8RY,:7-T8#$\:6YT,S(^+&EN=#,R+'-T<FEN9SX@
3*0T*<&]P#0IR970-"GT-"GT-"G-T
`
end
SHAR_EOF
  (set 20 23 12 22 17 37 21 'BF .NET/BF .NET/bin/Debug/test.il'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/bin/Debug/test.il'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/bin/Debug/test.il failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/bin/Debug/test.il': 'MD5 check failed'
       ) << \SHAR_EOF
901486222877842c709b311064866e15  BF .NET/BF .NET/bin/Debug/test.il
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/bin/Debug/test.il'` -ne 3214 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/bin/Debug/test.il' is not 3214"
  fi
fi
# ============= BF .NET/BF .NET/bin/Debug/test.txt ==============
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/bin/Debug/test.txt'
then
${echo} "x - SKIPPING BF .NET/BF .NET/bin/Debug/test.txt (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/bin/Debug/test.txt (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/bin/Debug/test.txt
M+@T*/$U!24Y254X-"B`@*RLK*RLK*RLK#0H@(%]#04Q,(%MB9F1O=&YE=%U"
A1D1.+DE/.CI.=6U/=71,:6YE#0H@("P-"CY-04E.4E5.
`
end
SHAR_EOF
  (set 20 23 12 22 17 19 10 'BF .NET/BF .NET/bin/Debug/test.txt'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/bin/Debug/test.txt'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/bin/Debug/test.txt failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/bin/Debug/test.txt': 'MD5 check failed'
       ) << \SHAR_EOF
9174122e9d13eea4985b60c2b5ea2180  BF .NET/BF .NET/bin/Debug/test.txt
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/bin/Debug/test.txt'` -ne 78 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/bin/Debug/test.txt' is not 78"
  fi
fi
# ============= BF .NET/BF .NET/Program.cs ==============
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/Program.cs'
then
${echo} "x - SKIPPING BF .NET/BF .NET/Program.cs (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/Program.cs (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/Program.cs
M[[N_+RH@#0I4:&ES(&1O97,@;F]T(&-O;7!I;&4@9&ER96-T;'D@:6YT;R!#
M24PL(`T*<F%T:&5R+"!I="!C;VUP:6QE<R!I;G1O('1H92!)3&%S;2!F;W)M
M870L#0IW:&EC:"!C86X@8F4@8V]M<&EL960@:6YT;R`N97AE(&]R("YD;&P@
M9FEL97,-"G=I=&@@26QA<VTN97AE#0H@("`@#0I!8V-E<'1S(&-O;6UA;F1L
M:6YE(&%R9W,@:6X@9F]R;6%T.@T*("`M($9I;&5P871H(&]F($)&("Y.150@
M8V]D90T*("`M($9I;&5P871H(&]F(&-O;7!I;&5D('1X="!F:6QE#0H@("T@
M36]D=6QE(&YA;64-"B`@+2!!<W-E;6)L>2!N86UE#0H-"BHO#0IU<VEN9R!3
M>7-T96T[#0IU<VEN9R!3>7-T96TN0V]L;&5C=&EO;G,N1V5N97)I8SL-"G5S
M:6YG(%-Y<W1E;2Y$:6%G;F]S=&EC<SL-"G5S:6YG(%-Y<W1E;2Y$:6%G;F]S
M=&EC<RY#;VYT<F%C=',[#0IU<VEN9R!3>7-T96TN24\[#0IU<VEN9R!3>7-T
M96TN3&EN<3L-"G5S:6YG(%-Y<W1E;2Y2=6YT:6UE+D-O;7!I;&5R4V5R=FEC
M97,[#0IU<VEN9R!3>7-T96TN5&5X="Y296=U;&%R17AP<F5S<VEO;G,[#0H-
M"F-L87-S($)&1$Y?0V]M<&EL97(-"GL-"@T*("`@('-T871I8R!3=')I;F<@
M8F9D;E!A=&@[#0H@("`@<W1A=&EC(%-T<FEN9R!C;VUP4&%T:#L-"B`@("!S
M=&%T:6,@4W1R:6YG(&UO9'5L94YA;64[#0H@("`@<W1A=&EC(%-T<FEN9R!A
M<W-E;6)L>4YA;64[#0H@("`@<W1A=&EC(%-T<F5A;5=R:71E<B!C;VUP5W)I
M=&5R.PT*("`@('-T871I8R!3=')I;F=;72!L:6YE<SL-"B`@("!S=&%T:6,@
M:6YT(&)R86-K971#;W5N="`](#$[#0H@("`@<W1A=&EC($QI<W0\0VAA<CX@
M;V]P1&5P=&@@/2!N97<@3&ES=#Q#:&%R/B![?3L-"B`@("!C;VYS="!3=')I
M;F<@05)'7U194$4@/2`B8VQA<W,@6VUS8V]R;&EB75-Y<W1E;2Y4=7!L96`S
M/&-L87-S(%MM<V-O<FQI8EU3>7-T96TN0V]L;&5C=&EO;G,N1V5N97)I8RY,
M:7-T8#$\:6YT,S(^+&EN=#,R+'-T<FEN9SXB.PT*("`@('-T871I8R!B;V]L
M(&-O<F4@/2!F86QS92P@<75I970@/2!F86QS93L-"B`@("!S=&%T:6,@<W1R
M:6YG(&%U=&]!<VT@/2!N=6QL+"!A=71O4G5N(#T@;G5L;#L-"B`@("!S=&%T
M:6,@<W1R:6YG(&5X95!A=&@@/2`B:6UM961I871E+F5X92([#0H-"@T*("`@
M('!U8FQI8R!S=&%T:6,@=F]I9"!-86EN*%-T<FEN9UM=(&%R9W,I#0H@("`@
M>PT*("`@("`@("!I9B`H87)G<RY,96YG=&@@/"`S("8F("%A<F=S6S!=+E-T
M87)T<U=I=&@H(CT](BDI#0H@("`@("`@('L-"B`@("`@("`@("`@($-O;G-O
M;&4N17)R;W(N5W)I=&5,:6YE*")"1BY.150@17)R;W(Z(#,@8V]M;6%N9&QI
M;F4@87)G=6UE;G1S(&5X<&5C=&5D.R`B("L@87)G<RY,96YG=&@@*R`B(&=I
M=F5N+B(I.PT*("`@("`@("`@("`@16YV:7)O;FUE;G0N17AI="@R*3L-"B`@
M("`@("`@?0T*("`@("`@("!I9B`H87)G<ULP72Y3=&%R='-7:71H*"(]/2(I
M*0T*("`@("`@("![#0H@("`@("`@("`@("!S=')I;F=;72!A<F=087)T<R`]
M(&%R9W-;,%TN4W5B<W1R:6YG*#(I+E-P;&ET*&YE=R!S=')I;F=;72![("(]
M/2(@?2P@4W1R:6YG4W!L:71/<'1I;VYS+DYO;F4I.PT*("`@("`@("`@("`@
M<W1R:6YG6UT@87)G4&%R='-297!L86-E9"`](&YE=R!S=')I;F=;87)G4&%R
M=',N3&5N9W1H73L-"B`@("`@("`@("`@(&9O<B`H:6YT(&D@/2`P.R!I(#P@
M87)G4&%R=',N3&5N9W1H.R!I*RLI#0H@("`@("`@("`@("![#0H@("`@("`@
M("`@("`@("`@87)G4&%R='-297!L86-E9%MI72`]('-T<FEN9RY&;W)M870H
M87)G4&%R='-;:5TL("<])RP@)R`G+"`G(B<I.PT*("`@("`@("`@("`@?0T*
M("`@("`@("`@("`@3&ES=#QS=')I;F<^(&YE=T%R9W,@/2!A<F=087)T<U)E
M<&QA8V5D+E1O3&ES="@I.PT*("`@("`@("`@("`@9F]R("AI;G0@:2`](#$[
M(&D@/"!A<F=S+DQE;F=T:#L@:2LK*0T*("`@("`@("`@("`@("`@(&YE=T%R
M9W,N061D*&%R9W-;:5TI.PT*("`@("`@("`@("`@36%I;BAN97=!<F=S+E1O
M07)R87DH*2D[#0H@("`@("`@("`@("!%;G9I<F]N;65N="Y%>&ET*#`I.PT*
M("`@("`@("!]#0H@("`@("`@(&)F9&Y0871H(#T@87)G<ULP73L-"B`@("`@
M("`@8V]M<%!A=&@@/2!A<F=S6S%=.PT*("`@("`@("!A<W-E;6)L>4YA;64@
M/2!A<F=S6S)=.PT*("`@("`@("!I;G0@87)G26YD97@@/2`S.PT*("`@("`@
M("!I9B`H8V]M<%!A=&@N16YD<U=I=&@H(B]<7"(I*0T*("`@("`@("![#0H@
M("`@("`@("`@("!C;VUP4&%T:"`](&-O;7!0871H+E-U8G-T<FEN9R@P+"!C
M;VUP4&%T:"Y,96YG=&@@+2`R*3L-"B`@("`@("`@("`@('=H:6QE("AA<F=S
M6V%R9TEN9&5X72`A/2`B+2TB*0T*("`@("`@("`@("`@>PT*("`@("`@("`@
M("`@("`@(&EF("AA<F=S6V%R9TEN9&5X75LP72`A/2`G+2<I#0H@("`@("`@
M("`@("`@("`@>PT*("`@("`@("`@("`@("`@("`@("!#;VYS;VQE+D5R<F]R
M+E=R:71E3&EN92@B0D8N3D54($5R<F]R.B!!<F=U;65N=',@;75S="!S=&%R
M="!W:71H("<M)RP@8F%D(&%R9W5M96YT("(@*R!A<F=S6V%R9TEN9&5X72`K
M("(@870@:6YD97@@(B`K(&%R9TEN9&5X("L@(BXB*3L-"B`@("`@("`@("`@
M("`@("`@("`@16YV:7)O;FUE;G0N17AI="@R*3L-"B`@("`@("`@("`@("`@
M("!]#0H@("`@("`@("`@("`@("`@<W=I=&-H("AA<F=S6V%R9TEN9&5X75LQ
M72D-"B`@("`@("`@("`@("`@("![#0H@("`@("`@("`@("`@("`@("`@(&-A
M<V4@)V,G.@T*("`@("`@("`@("`@("`@("`@("`@("`@8V]R92`]('1R=64[
M#0H@("`@("`@("`@("`@("`@("`@("`@("!B<F5A:SL-"B`@("`@("`@("`@
M("`@("`@("`@8V%S92`G82<Z#0H@("`@("`@("`@("`@("`@("`@("`@("!A
M<F=);F1E>"LK.PT*("`@("`@("`@("`@("`@("`@("`@("`@875T;T%S;2`]
M(&%R9W-;87)G26YD97A=.PT*("`@("`@("`@("`@("`@("`@("`@("`@8G)E
M86L[#0H@("`@("`@("`@("`@("`@("`@(&-A<V4@)W(G.@T*("`@("`@("`@
M("`@("`@("`@("`@("`@87)G26YD97@K*SL-"B`@("`@("`@("`@("`@("`@
M("`@("`@(&%U=&]2=6X@/2!A<F=S6V%R9TEN9&5X73L-"B`@("`@("`@("`@
M("`@("`@("`@("`@(&)R96%K.PT*("`@("`@("`@("`@("`@("`@("!C87-E
M("=P)SH-"B`@("`@("`@("`@("`@("`@("`@("`@(&EF("AA<F=S6V%R9TEN
M9&5X75LR72`]/2`G8B<I#0H@("`@("`@("`@("`@("`@("`@("`@("![#0H@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@87)G26YD97@K*SL-"B`@("`@
M("`@("`@("`@("`@("`@("`@("`@("!B9F1N4&%T:"`](&%R9W-;87)G26YD
M97A=.PT*("`@("`@("`@("`@("`@("`@("`@("`@?0T*("`@("`@("`@("`@
M("`@("`@("`@("`@96QS92!I9B`H87)G<UMA<F=);F1E>%U;,ET@/3T@)V,G
M*0T*("`@("`@("`@("`@("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@
M("`@("`@("`@("`@(&%R9TEN9&5X*RL[#0H@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@8V]M<%!A=&@@/2!A<F=S6V%R9TEN9&5X73L-"B`@("`@("`@
M("`@("`@("`@("`@("`@('T-"B`@("`@("`@("`@("`@("`@("`@("`@(&5L
M<V4@:68@*&%R9W-;87)G26YD97A=6S)=(#T]("=A)RD-"B`@("`@("`@("`@
M("`@("`@("`@("`@('L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("!A
M<F=);F1E>"LK.PT*("`@("`@("`@("`@("`@("`@("`@("`@("`@(&%S<V5M
M8FQY3F%M92`](&%R9W-;87)G26YD97A=.PT*("`@("`@("`@("`@("`@("`@
M("`@("`@?0T*("`@("`@("`@("`@("`@("`@("`@("`@8G)E86L[#0H@("`@
M("`@("`@("`@("`@("`@(&-A<V4@)W$G.@T*("`@("`@("`@("`@("`@("`@
M("`@("`@<75I970@/2!T<G5E.PT*("`@("`@("`@("`@("`@("`@("`@("`@
M8G)E86L[#0H-"B`@("`@("`@("`@("`@("!]#0H@("`@("`@("`@("`@("`@
M87)G26YD97@K*SL-"B`@("`@("`@("`@('T-"B`@("`@("`@?0T*("`@("`@
M("!I9B`H8F9D;E!A=&@@/3T@(CHB*0T*("`@("`@("![#0H@("`@("`@("`@
M("!,:7-T/'-T<FEN9SX@;&EN97-,:7-T(#T@;F5W($QI<W0\<W1R:6YG/B@I
M.PT*("`@("`@("`@("`@=VAI;&4@*&%R9TEN9&5X(#P@87)G<RY,96YG=&@I
M#0H@("`@("`@("`@("![#0H@("`@("`@("`@("`@("`@;&EN97-,:7-T+D%D
M9"AA<F=S6V%R9TEN9&5X72D[#0H@("`@("`@("`@("`@("`@87)G26YD97@K
M*SL-"B`@("`@("`@("`@('T-"B`@("`@("`@("`@(&QI;F5S(#T@;&EN97-,
M:7-T+E1O07)R87DH*3L-"B`@("`@("`@?0T*("`@("`@("!E;'-E#0H@("`@
M("`@('L-"B`@("`@("`@("`@(&QI;F5S(#T@1FEL92Y296%D06QL5&5X="AB
M9F1N4&%T:"DN4W!L:70H;F5W(%-T<FEN9UM=#0H@("`@("`@("`@("`@("`@
M>PT*("`@("`@("`@("`@("`@(")<<EQN(BP-"B`@("`@("`@("`@("`@("`B
M7&XB+`T*("`@("`@("`@("`@("`@(")<<B(L#0H@("`@("`@("`@("`@("`@
M(EQF(BP-"B`@("`@("`@("`@("`@("`B7'8B#0H@("`@("`@("`@("`@("`@
M?2P@4W1R:6YG4W!L:71/<'1I;VYS+DYO;F4I.PT*("`@("`@("!]#0H@("`@
M("`@('5S:6YG("AC;VUP5W)I=&5R(#T@;F5W(%-T<F5A;5=R:71E<BAC;VUP
M4&%T:"DI#0H@("`@("`@('L-"B`@("`@("`@("`@("\O0V]R92!P<F]G<F%M
M<R!H879E('1O(')E9F5R96YC92!T:&4@+DY%5"!#;W)E(&%S<V5M8FQI97,@
M=&AE;7-E;'9E<RX-"B`@("`@("`@("`@(&EF("@A8V]R92D-"B`@("`@("`@
M("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN92@B+F%S<V5M8FQY(&5X=&5R
M;B!M<V-O<FQI8B![('TB*3L-"B`@("`@("`@("`@(&-O;7!7<FET97(N5W)I
M=&5,:6YE*"(N87-S96UB;'D@97AT97)N(&)F9&]T;F5T('L@?2(I.PT*("`@
M("`@("`@("`@:6YT(&%S<V5M8FQY4V5A<F-H26YD97@@/2`P.PT*("`@("`@
M("`@("`@=')Y#0H@("`@("`@("`@("![#0H@("`@("`@("`@("`@("`@=VAI
M;&4@*&QI;F5S6V%S<V5M8FQY4V5A<F-H26YD97A=+E1R:6TH*2`A/2`B+B(I
M#0H@("`@("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@("`@("!C;VUP
M5W)I=&5R+E=R:71E3&EN92@B+F%S<V5M8FQY(&5X=&5R;B`B("L@;&EN97-;
M87-S96UB;'E396%R8VA);F1E>%T@*R`B('L@?2(I.PT*("`@("`@("`@("`@
M("`@("`@("!A<W-E;6)L>5-E87)C:$EN9&5X*RL[#0H@("`@("`@("`@("`@
M("`@?0T*("`@("`@("`@("`@?0T*("`@("`@("`@("`@8V%T8V@@*$EN9&5X
M3W5T3V9286YG945X8V5P=&EO;B!E*0T*("`@("`@("`@("`@>PT*("`@("`@
M("`@("`@("`@(&EF("@A<75I970I#0H@("`@("`@("`@("`@("`@0V]N<V]L
M92Y%<G)O<BY7<FET94QI;F4H(D)&+DY%5"!%<G)O<CH@4')O9W)A;2!D:60@
M;F]T(&AA=F4@82!L:6YE('=I=&@@;VYL>2!A('!E<FEO9"!T;R!E;F0@87-S
M96UB;'D@<F5F97)E;F-E<RXB*3L-"B`@("`@("`@("`@("`@("!%;G9I<F]N
M;65N="Y%>&ET*#$I.PT*("`@("`@("`@("`@?0T*("`@("`@("`@("`@8V]M
M<%=R:71E<BY7<FET94QI;F4H(BYA<W-E;6)L>2`B("L@87-S96UB;'E.86UE
M("L@(B![('TB*3L-"B`@("`@("`@("`@(&9O<B`H:6YT(&QI;F50;W,@/2!A
M<W-E;6)L>5-E87)C:$EN9&5X("L@,3L@;&EN95!O<R`\(&QI;F5S+DQE;F=T
M:#L@;&EN95!O<RLK*0T*("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@
M(&EF("A296=E>"Y)<TUA=&-H*&QI;F5S6VQI;F50;W-=+"`B7%QS*E]#3TT@
M+BHB*2D-"B`@("`@("`@("`@("`@("![#0H@("`@("`@("`@("`@("`@?0T*
M("`@("`@("`@("`@("`@(&5L<V4@:68@*%)E9V5X+DES36%T8V@H;&EN97-;
M;&EN95!O<UTL(")<7',J/$U!24Y254XH("XJ*3\B*2D-"B`@("`@("`@("`@
M("`@("![#0H@("`@("`@("`@("`@("`@("`@(&-O;7!7<FET97(N5W)I=&5,
M:6YE*"(N8VQA<W,@86)S=')A8W0@<V5A;&5D(%)53D-,05-3('LB*3L-"B`@
M("`@("`@("`@("`@("`@("`@8V]M<%=R:71E<BY7<FET94QI;F4H(BYM971H
M;V0@<'5B;&EC('-T871I8R!V;VED(%)53DU%5$A/1"`H*7LB*3L-"B`@("`@
M("`@("`@("`@("`@("`@8V]M<%=R:71E<BY7<FET94QI;F4H(BYL;V-A;',@
M:6YI="`H(&-L87-S(%MM<V-O<FQI8EU3>7-T96TN5'5P;&5@,SQC;&%S<R!;
M;7-C;W)L:6)=4WES=&5M+D-O;&QE8W1I;VYS+D=E;F5R:6,N3&ES=&`Q/&EN
M=#,R/BQI;G0S,BQS=')I;F<^*2(I.PT*("`@("`@("`@("`@("`@("`@("!C
M;VUP5W)I=&5R+E=R:71E3&EN92@B+F5N=')Y<&]I;G0B*3L-"B`@("`@("`@
M("`@("`@("`@("`@8V]M<%=R:71E<BY7<FET94QI;F4H(F-A;&P@(B`K($%2
M1U]465!%("L@(B!;8F9D;W1N971=0D9$3BY%<W-E;G1I86QS.CI#;VYS=')U
M8W1!<F<@*"`I(BD[#0H@("`@("`@("`@("`@("`@?0T*("`@("`@("`@("`@
M("`@(&5L<V4@:68@*%)E9V5X+DES36%T8V@H;&EN97-;;&EN95!O<UTL(")<
M7',J/DU!24Y254XH("XJ*3\B*2D-"B`@("`@("`@("`@("`@("![#0H@("`@
M("`@("`@("`@("`@("`@(&EF("@A<75I970I#0H@("`@("`@("`@("`@("`@
M("`@($-O;G-O;&4N5W)I=&5,:6YE*")3=&%R=&EN9R!E;F0@;6%I;B!R=6XN
M(BD[#0H@("`@("`@("`@("`@("`@("`@(&-O;7!7<FET97(N5W)I=&5,:6YE
M*")P;W`B*3L-"B`@("`@("`@("`@("`@("`@("`@8V]M<%=R:71E<BY7<FET
M94QI;F4H(G)E="(I.PT*("`@("`@("`@("`@("`@("`@("!C;VUP5W)I=&5R
M+E=R:71E3&EN92@B?2(I.PT*("`@("`@("`@("`@("`@("`@("!C;VUP5W)I
M=&5R+E=R:71E3&EN92@B?2(I.PT*("`@("`@("`@("`@("`@('T-"B`@("`@
M("`@("`@("`@("!E;'-E(&EF("A296=E>"Y)<TUA=&-H*&QI;F5S6VQI;F50
M;W-=+"`B7%QS*CY-3T153$5<7',K+BHB*2D-"B`@("`@("`@("`@("`@("![
M#0H@("`@("`@("`@("`@("`@("`@('1R>0T*("`@("`@("`@("`@("`@("`@
M("![#0H@("`@("`@("`@("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E
M3&EN92@B?2(I.PT*("`@("`@("`@("`@("`@("`@("`@("`@:68@*&]O<$1E
M<'1H6V]O<$1E<'1H+D-O=6YT("T@,5T@(3T@)T,G*0T*("`@("`@("`@("`@
M("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@("`@("`@("`@("`@(&EF
M("@A<75I970I#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@>PT*("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("!#;VYS;VQE+D5R<F]R+E=R
M:71E3&EN92@D(D)&+DY%5"!%<G)O<CH@/DU%5$A/1"!I<R!N;W0@=&AE(&-O
M<G)E8W0@8VQO<VEN9R!B<F%C:V5T(&%T(&QI;F4@>VQI;F50;W-](BD[#0H@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@($-O;G-O;&4N17)R;W(N
M5W)I=&5,:6YE*")5<V4@/DU%5$A/1"XB*3L-"B`@("`@("`@("`@("`@("`@
M("`@("`@("`@("!]#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@16YV
M:7)O;FUE;G0N17AI="@R*3L-"B`@("`@("`@("`@("`@("`@("`@("`@('T-
M"B`@("`@("`@("`@("`@("`@("`@("`@(&]O<$1E<'1H+E)E;6]V94%T*&]O
M<$1E<'1H+D-O=6YT("T@,2D[#0H@("`@("`@("`@("`@("`@("`@('T-"B`@
M("`@("`@("`@("`@("`@("`@8V%T8V@@*$EN9&5X3W5T3V9286YG945X8V5P
M=&EO;B!E*0T*("`@("`@("`@("`@("`@("`@("![#0H@("`@("`@("`@("`@
M("`@("`@("`@("!I9B`H(7%U:65T*0T*("`@("`@("`@("`@("`@("`@("`@
M("`@>PT*("`@("`@("`@("`@("`@("`@("`@("`@("`@($-O;G-O;&4N17)R
M;W(N5W)I=&5,:6YE*"0B0D8N3D54($5R<F]R.B!5;FUA=&-H960@/B!A="!L
M:6YE('ML:6YE4&]S?2(I.PT*("`@("`@("`@("`@("`@("`@("`@("`@?0T*
M("`@("`@("`@("`@("`@("`@("`@("`@16YV:7)O;FUE;G0N17AI="@R*3L-
M"B`@("`@("`@("`@("`@("`@("`@?0T*("`@("`@("`@("`@("`@('T-"B`@
M("`@("`@("`@("`@("!E;'-E(&EF("A296=E>"Y)<TUA=&-H*&QI;F5S6VQI
M;F50;W-=+"`B7%QS*CY-151(3T0H7%QS+BHI/R(I*0T*("`@("`@("`@("`@
M("`@('L-"B`@("`@("`@("`@("`@("`@("`@=')Y#0H@("`@("`@("`@("`@
M("`@("`@('L-"B`@("`@("`@("`@("`@("`@("`@("`@(&-O;7!7<FET97(N
M5W)I=&5,:6YE*")R970B*3L-"B`@("`@("`@("`@("`@("`@("`@("`@(&-O
M;7!7<FET97(N5W)I=&5,:6YE*")](BD[#0H@("`@("`@("`@("`@("`@("`@
M("`@("!I9B`H;V]P1&5P=&A;;V]P1&5P=&@N0V]U;G0@+2`Q72`A/2`G32<I
M#0H@("`@("`@("`@("`@("`@("`@("`@("![#0H@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@:68@*"%Q=6EE="D-"B`@("`@("`@("`@("`@("`@("`@
M("`@("`@("![#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@($-O
M;G-O;&4N17)R;W(N5W)I=&5,:6YE*"0B0D8N3D54($5R<F]R.B`^34542$]$
M(&ES(&YO="!T:&4@8V]R<F5C="!C;&]S:6YG(&)R86-K970@870@;&EN92![
M;&EN95!O<WTB*3L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M0V]N<V]L92Y%<G)O<BY7<FET94QI;F4H(E5S92`^34]$54Q%+B(I.PT*("`@
M("`@("`@("`@("`@("`@("`@("`@("`@('T-"B`@("`@("`@("`@("`@("`@
M("`@("`@("`@("!%;G9I<F]N;65N="Y%>&ET*#(I.PT*("`@("`@("`@("`@
M("`@("`@("`@("`@?0T*("`@("`@("`@("`@("`@("`@("`@("`@;V]P1&5P
M=&@N4F5M;W9E070H;V]P1&5P=&@N0V]U;G0@+2`Q*3L-"B`@("`@("`@("`@
M("`@("`@("`@?0T*("`@("`@("`@("`@("`@("`@("!C871C:"`H26YD97A/
M=71/9E)A;F=E17AC97!T:6]N(&4I#0H@("`@("`@("`@("`@("`@("`@('L-
M"B`@("`@("`@("`@("`@("`@("`@("`@(&EF("@A<75I970I#0H@("`@("`@
M("`@("`@("`@("`@("`@("!#;VYS;VQE+D5R<F]R+E=R:71E3&EN92@D(D)&
M+DY%5"!%<G)O<CH@56YM871C:&5D(#Y-151(3T0@870@;&EN92![;&EN95!O
M<WTB*3L-"B`@("`@("`@("`@("`@("`@("`@("`@($5N=FER;VYM96YT+D5X
M:70H,BD[#0H@("`@("`@("`@("`@("`@("`@('T-"B`@("`@("`@("`@("`@
M("!]#0H@("`@("`@("`@("`@("`@96QS92!I9B`H4F5G97@N27--871C:"AL
M:6YE<UML:6YE4&]S72P@(EQ<<RH\34]$54Q%7%QS*UM!+5IA+7I?,"TY7%P_
M0&!<7"1=*UQ<<RHB*2D-"B`@("`@("`@("`@("`@("![#0H@("`@("`@("`@
M("`@("`@("`@(&EF("AO;W!$97!T:%MO;W!$97!T:"Y#;W5N="`M(#%=(#T]
M("=#)RD-"B`@("`@("`@("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@
M("`@("`@("`@8V]M<%=R:71E<BY7<FET94QI;F4H(BYC;&%S<R!N97-T960@
M<'5B;&EC(&%B<W1R86-T('-E86QE9"`B("L@;&EN97-;;&EN95!O<UTN5')I
M;2@I+E-U8G-T<FEN9R@Q,2DN5')I;2@I("L@(B![("(I.PT*("`@("`@("`@
M("`@("`@("`@("!]#0H@("`@("`@("`@("`@("`@("`@(&5L<V4-"B`@("`@
M("`@("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@("`@("`@("`@8V]M
M<%=R:71E<BY7<FET94QI;F4H(BYC;&%S<R!P=6)L:6,@86)S=')A8W0@<V5A
M;&5D("(@*R!L:6YE<UML:6YE4&]S72Y4<FEM*"DN4W5B<W1R:6YG*#$Q*2Y4
M<FEM*"D@*R`B('L@(BD[#0H@("`@("`@("`@("`@("`@("`@('T-"B`@("`@
M("`@("`@("`@("`@("`@;V]P1&5P=&@N061D*"=#)RD[#0H@("`@("`@("`@
M("`@("`@?0T*("`@("`@("`@("`@("`@(&5L<V4@:68@*%)E9V5X+DES36%T
M8V@H;&EN97-;;&EN95!O<UTL(")<7',J/$U%5$A/1%Q<<RM;02U:82UZ7S`M
M.5Q</T!@7%PD72M<7',J(BDI#0H@("`@("`@("`@("`@("`@>PT*("`@("`@
M("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN92@B+FUE=&AO9"!P
M=6)L:6,@<W1A=&EC("(@*R!!4D=?5%E012`K("(@(B`K(&QI;F5S6VQI;F50
M;W-=+E1R:6TH*2Y3=6)S=')I;F<H."DN5')I;2@I("L-"B`@("`@("`@("`@
M("`@("`@("`@("`@("(@*"`B("L@05)'7U194$4@*R`B("D@>R(I.PT*("`@
M("`@("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN92@B+FQO8V%L
M<R!I;FET("@@8VQA<W,@6VUS8V]R;&EB75-Y<W1E;2Y4=7!L96`S/&-L87-S
M(%MM<V-O<FQI8EU3>7-T96TN0V]L;&5C=&EO;G,N1V5N97)I8RY,:7-T8#$\
M:6YT,S(^+&EN=#,R+'-T<FEN9SXL(&-L87-S(%MM<V-O<FQI8EU3>7-T96TN
M0V]L;&5C=&EO;G,N1V5N97)I8RY,:7-T8#$\:6YT,S(^+"!I;G0S,BP@:6YT
M,S(L(&-L87-S(%MM<V-O<FQI8EU3>7-T96TN4W1R:6YG*2(I.PT*("`@("`@
M("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN92@B;&1A<F<N,"(I
M.PT*("`@("`@("`@("`@("`@("`@("!O;W!$97!T:"Y!9&0H)TTG*3L-"B`@
M("`@("`@("`@("`@("!]#0H@("`@("`@("`@("`@("`@96QS92!I9B`H4F5G
M97@N27--871C:"AL:6YE<UML:6YE4&]S72P@(EQ<<RI?0T%,3%Q<<RXJ(BDI
M#0H@("`@("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@("`@("!C;VUP
M5W)I=&5R+E=R:71E3&EN92@B8V%L;"`B("L@05)'7U194$4@*R`B("(@*R!L
M:6YE<UML:6YE4&]S72Y4<FEM*"DN4W5B<W1R:6YG*#8I+E1R:6TH*2`K("(@
M*"`B("L@05)'7U194$4@*R`B("DB*3L-"B`@("`@("`@("`@("`@("!]#0H@
M("`@("`@("`@("`@("`@96QS92!I9B`H4F5G97@N27--871C:"AL:6YE<UML
M:6YE4&]S72P@(EQ<<RH\3$]/4%Q<<RM;02U:82UZ7S`M.5Q</T!@7%PD72M<
M7',J(BDI#0H@("`@("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@("`@
M("!C;VUP5W)I=&5R+E=R:71E3&EN92@B<W1L;V,N,"(I.PT*("`@("`@("`@
M("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN92@B06QO;F5,;V]P4W1A
M<G1,86)E;"(@*R!L:6YE<UML:6YE4&]S72Y4<FEM*"DN4W5B<W1R:6YG*#8I
M+E1R:6TH*2`K("(Z(&QD;&]C+C`B*3L-"B`@("`@("`@("`@("`@("`@("`@
M8V]M<%=R:71E<BY7<FET94QI;F4H(F-A;&QV:7)T(&EN<W1A;F-E("$P("(@
M*R!!4D=?5%E012`K("(Z.F=E=%])=&5M,2@I(BD[#0H@("`@("`@("`@("`@
M("`@("`@(&-O;7!7<FET97(N5W)I=&5,:6YE*")L9&QO8RXP(BD[#0H@("`@
M("`@("`@("`@("`@("`@(&-O;7!7<FET97(N5W)I=&5,:6YE*")C86QL=FER
M="!I;G-T86YC92`A,2`B("L@05)'7U194$4@*R`B.CIG971?271E;3(H*2(I
M.PT*("`@("`@("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN92@B
M8V%L;'9I<G0@:6YS=&%N8V4@(3`@8VQA<W,@6VUS8V]R;&EB75-Y<W1E;2Y#
M;VQL96-T:6]N<RY'96YE<FEC+DQI<W1@,3QI;G0S,CXZ.F=E=%])=&5M*&EN
M=#,R*2(I.PT*("`@("`@("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E
M3&EN92@B;&1C+FDT+C`B*3L-"B`@("`@("`@("`@("`@("`@("`@8V]M<%=R
M:71E<BY7<FET94QI;F4H(F)E<2!!;&]N94QO;W!%;F1,86)E;"(@*R!L:6YE
M<UML:6YE4&]S72Y4<FEM*"DN4W5B<W1R:6YG*#8I+E1R:6TH*2D[#0H@("`@
M("`@("`@("`@("`@("`@(&-O;7!7<FET97(N5W)I=&5,:6YE*")L9&QO8RXP
M(BD[#0H@("`@("`@("`@("`@("`@?0T*("`@("`@("`@("`@("`@(&5L<V4@
M:68@*%)E9V5X+DES36%T8V@H;&EN97-;;&EN95!O<UTL(")<7',J/DQ/3U!<
M7',K6T$M6F$M>E\P+3E<7#]`8%Q<)%TK7%QS*B(I*0T*("`@("`@("`@("`@
M("`@('L-"B`@("`@("`@("`@("`@("`@("`@8V]M<%=R:71E<BY7<FET94QI
M;F4H(G-T;&]C+C`B*3L-"B`@("`@("`@("`@("`@("`@("`@8V]M<%=R:71E
M<BY7<FET94QI;F4H(F)R($%L;VYE3&]O<%-T87)T3&%B96PB("L@;&EN97-;
M;&EN95!O<UTN5')I;2@I+E-U8G-T<FEN9R@V*2Y4<FEM*"DI.PT*("`@("`@
M("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN92@B06QO;F5,;V]P
M16YD3&%B96PB("L@;&EN97-;;&EN95!O<UTN5')I;2@I+E-U8G-T<FEN9R@V
M*2Y4<FEM*"D@*R`B.B!N;W`B*3L-"B`@("`@("`@("`@("`@("`@("`@8V]M
M<%=R:71E<BY7<FET94QI;F4H(FQD;&]C+C`B*3L-"B`@("`@("`@("`@("`@
M("!]#0H@("`@("`@("`@("`@("`@96QS92!I9B`H4F5G97@N27--871C:"AL
M:6YE<UML:6YE4&]S72P@(EQ<<RI;7%PK7%PM/CQ<7"Y<7"Q<7%M<7%TZ.UTK
M7%QS*B(I*0T*("`@("`@("`@("`@("`@('L-"B`@("`@("`@("`@("`@("`@
M("`@9F]R("AI;G0@:2`](#`[(&D@/"!L:6YE<UML:6YE4&]S72Y,96YG=&@[
M(&DK*RD-"B`@("`@("`@("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@
M("`@("`@("`@<W=I=&-H("AL:6YE<UML:6YE4&]S75MI72D-"B`@("`@("`@
M("`@("`@("`@("`@("`@('L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@
M("!C87-E("<K)SH-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M8V]M<%=R:71E<BY7<FET94QI;F4H(F-A;&P@(B`K($%21U]465!%("L@(B`B
M("L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@(")C;&%S
M<R!;8F9D;W1N971=0D9$3BY%<W-E;G1I86QS.CI);F,B("L-"B`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("(@*"`B("L@05)'7U194$4@
M*R`B("DB*3L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@8G)E
M86L[#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@8V%S92`G+2<Z#0H@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@(&-O;7!7<FET97(N5W)I
M=&5,:6YE*")C86QL("(@*R!!4D=?5%E012`K("(@(B`K#0H@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`B8VQA<W,@6V)F9&]T;F5T74)&
M1$XN17-S96YT:6%L<SHZ1&5C(B`K#0H@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`B("@@(B`K($%21U]465!%("L@(B`I(BD[#0H@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@(&)R96%K.PT*("`@("`@("`@
M("`@("`@("`@("`@("`@("`@(&-A<V4@)SXG.@T*("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN92@B8V%L;"`B
M("L@05)'7U194$4@*R`B("(@*PT*("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@(F-L87-S(%MB9F1O=&YE=%U"1D1.+D5S<V5N=&EA;',Z
M.E)I9VAT(B`K#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`B("@@(B`K($%21U]465!%("L@(B`I(BD[#0H@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@(&)R96%K.PT*("`@("`@("`@("`@("`@("`@("`@
M("`@("`@(&-A<V4@)SPG.@T*("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("!C;VUP5W)I=&5R+E=R:71E3&EN92@B8V%L;"`B("L@05)'7U194$4@
M*R`B("(@*PT*("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M(F-L87-S(%MB9F1O=&YE=%U"1D1.+D5S<V5N=&EA;',Z.DQE9G0B("L-"B`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("(@*"`B("L@05)'
M7U194$4@*R`B("DB*3L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@8G)E86L[#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@8V%S92`G
M+B<Z#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@(&-O;7!7<FET
M97(N5W)I=&5,:6YE*")C86QL("(@*R!!4D=?5%E012`K("(@(B`K#0H@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`B8VQA<W,@6V)F9&]T
M;F5T74)&1$XN17-S96YT:6%L<SHZ3W5T(B`K#0H@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`B("@@(B`K($%21U]465!%("L@(B`I(BD[
M#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@(&)R96%K.PT*("`@
M("`@("`@("`@("`@("`@("`@("`@("`@(&-A<V4@)RPG.@T*("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN92@B
M8V%L;"`B("L@05)'7U194$4@*R`B("(@*PT*("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@(F-L87-S(%MB9F1O=&YE=%U"1D1.+D5S<V5N
M=&EA;',Z.DEN(B`K#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`B("@@(B`K($%21U]465!%("L@(B`I(BD[#0H@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@(&)R96%K.PT*("`@("`@("`@("`@("`@("`@
M("`@("`@("`@(&-A<V4@)SHG.@T*("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN92@B8V%L;"`B("L@05)'7U19
M4$4@*R`B("(@*PT*("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@(F-L87-S(%MB9F1O=&YE=%U"1D1.+D5S<V5N=&EA;',Z.E%U975E3W5T
M(B`K#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`B("@@
M(B`K($%21U]465!%("L@(B`I(BD[#0H@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@(&)R96%K.PT*("`@("`@("`@("`@("`@("`@("`@("`@("`@
M(&-A<V4@)SLG.@T*("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("!C
M;VUP5W)I=&5R+E=R:71E3&EN92@B8V%L;"`B("L@05)'7U194$4@*R`B("(@
M*PT*("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@(F-L87-S
M(%MB9F1O=&YE=%U"1D1.+D5S<V5N=&EA;',Z.E%U975E26XB("L-"B`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("(@*"`B("L@05)'7U19
M4$4@*R`B("DB*3L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M8G)E86L[#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@8V%S92`G6R<Z
M#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@('L-"B`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@(&)R86-K971#;W5N="LK.PT*
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@:6YT(&%U>$)R
M86-K971#;W5N="`](&)R86-K971#;W5N=#L-"B`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@(&EN="!I7R`](&D[#0H@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("!I;G0@9&5P=&@@/2`Q.PT*("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@=VAI;&4@*&1E<'1H("$]
M(#`I#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("![#0H@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@:5\K*SL-
M"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("!I9B`H
M;&EN97-;;&EN95!O<UU;:5]=(#T]("=;)RD-"B`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("![#0H@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@(&1E<'1H*RL[#0H@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@(&%U>$)R86-K971#
M;W5N="LK.PT*("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@('T-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("!I9B`H;&EN97-;;&EN95!O<UU;:5]=(#T]("==)RD-"B`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("![#0H@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@(&1E<'1H+2T[#0H@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@(&%U>$)R
M86-K971#;W5N="LK.PT*("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@('T-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@('T-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@(&-O
M;7!7<FET97(N5W)I=&5,:6YE*")S=&QO8RXP(BD[#0H@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN92@B
M3&]O<%-T87)T3&%B96PB("L@8G)A8VME=$-O=6YT("L@(CH@;&1L;V,N,"(I
M.PT*("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@8V]M<%=R
M:71E<BY7<FET94QI;F4H(F-A;&QV:7)T(&EN<W1A;F-E("$P("(@*R!!4D=?
M5%E012`K("(Z.F=E=%])=&5M,2@I(BD[#0H@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN92@B;&1L;V,N
M,"(I.PT*("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@8V]M
M<%=R:71E<BY7<FET94QI;F4H(F-A;&QV:7)T(&EN<W1A;F-E("$Q("(@*R!!
M4D=?5%E012`K("(Z.F=E=%])=&5M,B@I(BD[#0H@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN92@B8V%L
M;'9I<G0@:6YS=&%N8V4@(3`@8VQA<W,@6VUS8V]R;&EB75-Y<W1E;2Y#;VQL
M96-T:6]N<RY'96YE<FEC+DQI<W1@,3QI;G0S,CXZ.F=E=%])=&5M*&EN=#,R
M*2(I.PT*("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@8V]M
M<%=R:71E<BY7<FET94QI;F4H(FQD8RYI-"XP(BD[#0H@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("!C;VUP5W)I=&5R+E=R:71E3&EN92@B
M8F5Q($QO;W!%;F1,86)E;"(@*R!A=7A"<F%C:V5T0V]U;G0I.PT*("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@8V]M<%=R:71E<BY7<FET
M94QI;F4H(FQD;&]C+C`B*3L-"B`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@?0T*("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("!B<F5A
M:SL-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("!C87-E("==)SH-"B`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@>PT*("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@8G)A8VME=$-O=6YT*RL[#0H@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("!I;G0@875X0G)A8VME
M=$-O=6YT(#T@8G)A8VME=$-O=6YT.PT*("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@:6YT(&E?(#T@:3L-"B`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@(&EN="!D97!T:"`](#$[#0H@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("!W:&EL92`H9&5P=&@@(3T@,"D-
M"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@('L-"B`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("!I7RTM.PT*("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@(&EF("AL:6YE
M<UML:6YE4&]S75MI7UT@/3T@)ULG*0T*("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@('L-"B`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@9&5P=&@M+3L-"B`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@875X0G)A8VME=$-O=6YT
M+2T[#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M?0T*("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@(&EF
M("AL:6YE<UML:6YE4&]S75MI7UT@/3T@)UTG*0T*("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@('L-"B`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@9&5P=&@K*SL-"B`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@875X0G)A8VME
M=$-O=6YT+2T[#0H@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@("`@?0T*("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M?0T*("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@8V]M<%=R
M:71E<BY7<FET94QI;F4H(G-T;&]C+C`B*3L-"B`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@("`@("`@(&-O;7!7<FET97(N5W)I=&5,:6YE*")B<B!,
M;V]P4W1A<G1,86)E;"(@*R!A=7A"<F%C:V5T0V]U;G0I.PT*("`@("`@("`@
M("`@("`@("`@("`@("`@("`@("`@("`@("`@8V]M<%=R:71E<BY7<FET94QI
M;F4H(DQO;W!%;F1,86)E;"(@*R!B<F%C:V5T0V]U;G0@*R`B.B!N;W`B*3L-
M"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@("`@(&-O;7!7<FET
M97(N5W)I=&5,:6YE*")L9&QO8RXP(BD[#0H@("`@("`@("`@("`@("`@("`@
M("`@("`@("`@("`@('T-"B`@("`@("`@("`@("`@("`@("`@("`@("`@("`@
M("`@8G)E86L[#0H@("`@("`@("`@("`@("`@("`@("`@("!]#0H@("`@("`@
M("`@("`@("`@("`@('T-"B`@("`@("`@("`@("`@("`@("`@:68@*"%Q=6EE
M="D-"B`@("`@("`@("`@("`@("`@("`@0V]N<V]L92Y7<FET94QI;F4H(D9I
M;FES:&5D(&)F(&-O9&4@;&EN92`B("L@;&EN95!O<R`K("(N(BD[#0H@("`@
M("`@("`@("`@("`@?0T*("`@("`@("`@("`@?0T*("`@("`@("!]#0H@("`@
M("`@(&EF("AA=71O07-M("$](&YU;&PI#0H@("`@("`@('L-"B`@("`@("`@
M("`@(%!R;V-E<W-3=&%R=$EN9F\@<'-I(#T@;F5W(%!R;V-E<W-3=&%R=$EN
M9F\H875T;T%S;2P@*&%U=&]2=6X@(3T@;G5L;"`_("(O;W5T<'5T.B(@*R!E
M>&50871H("L@(B`B(#H@(B(I("L@8V]M<%!A=&@I.PT*("`@("`@("`@("`@
M<'-I+E5S95-H96QL17AE8W5T92`](&9A;'-E.PT*("`@("`@("`@("`@:68@
M*'%U:65T*0T*("`@("`@("`@("`@>PT*("`@("`@("`@("`@("`@('!S:2Y2
M961I<F5C=%-T86YD87)D17)R;W(@/2!T<G5E.PT*("`@("`@("`@("`@("`@
M('!S:2Y2961I<F5C=%-T86YD87)D3W5T<'5T(#T@=')U93L-"B`@("`@("`@
M("`@('T-"B`@("`@("`@("`@('!S:2Y#<F5A=&5.;U=I;F1O=R`]('1R=64[
M#0H@("`@("`@("`@("!P<VDN5VEN9&]W4W1Y;&4@/2!0<F]C97-S5VEN9&]W
M4W1Y;&4N3F]R;6%L.PT*("`@("`@("`@("`@4')O8V5S<RY3=&%R="AP<VDI
M.PT*("`@("`@("!]#0H@("`@("`@(&EF("AA=71O4G5N("$](&YU;&PI#0H@
M("`@("`@('L-"B`@("`@("`@("`@(%!R;V-E<W-3=&%R=$EN9F\@<'-I(#T@
M;F5W(%!R;V-E<W-3=&%R=$EN9F\H97AE4&%T:"D[#0H@("`@("`@("`@("!P
M<VDN57-E4VAE;&Q%>&5C=71E(#T@9F%L<V4[#0H@("`@("`@("`@("!P<VDN
M0W)E871E3F]7:6YD;W<@/2!T<G5E.PT*("`@("`@("`@("`@<'-I+E)E9&ER
M96-T4W1A;F1A<F1);G!U="`]('1R=64[#0H@("`@("`@("`@("!P<VDN4F5D
M:7)E8W13=&%N9&%R9$]U='!U="`]('1R=64[#0H@("`@("`@("`@("!P<VDN
M4F5D:7)E8W13=&%N9&%R9$5R<F]R(#T@=')U93L-"B`@("`@("`@("`@(%!R
M;V-E<W,@<"`](%!R;V-E<W,N4W1A<G0H<'-I*3L-"B`@("`@("`@("`@('`N
M4W1A;F1A<F1);G!U="Y7<FET94QI;F4H875T;U)U;BD[#0H@("`@("`@("`@
M("!P+E=A:71&;W)%>&ET*"D[#0H@("`@("`@("`@("!S=')I;F<@;W5T<'5T
M(#T@<"Y3=&%N9&%R9$]U='!U="Y296%D5&]%;F0H*3L-"B`@("`@("`@("`@
M('-T<FEN9R!E<G)P=70@/2!P+E-T86YD87)D17)R;W(N4F5A9%1O16YD*"D[
M#0H@("`@("`@("`@("!#;VYS;VQE+E=R:71E*&]U='!U="D[#0H@("`@("`@
M("`@("!#;VYS;VQE+D5R<F]R+E=R:71E*&5R<G!U="D[#0H@("`@("`@('T-
-"B`@("!]#0I]#0H-"D5R
`
end
SHAR_EOF
  (set 20 23 12 22 17 38 03 'BF .NET/BF .NET/Program.cs'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/Program.cs'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/Program.cs failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/Program.cs': 'MD5 check failed'
       ) << \SHAR_EOF
e6e211662db3d09bc34754e08fde239e  BF .NET/BF .NET/Program.cs
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/Program.cs'` -ne 19543 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/Program.cs' is not 19543"
  fi
fi
# ============= BF .NET/BF .NET/Properties/AssemblyInfo.cs ==============
if test ! -d 'BF .NET/BF .NET/Properties'; then
  mkdir 'BF .NET/BF .NET/Properties'
if test $? -eq 0
then ${echo} "x - created directory BF .NET/BF .NET/Properties."
else ${echo} "x - failed to create directory BF .NET/BF .NET/Properties."
     exit 1
fi
fi
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET/Properties/AssemblyInfo.cs'
then
${echo} "x - SKIPPING BF .NET/BF .NET/Properties/AssemblyInfo.cs (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET/Properties/AssemblyInfo.cs (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET/Properties/AssemblyInfo.cs
M[[N_=7-I;F<@4WES=&5M+E)E9FQE8W1I;VX[#0IU<VEN9R!3>7-T96TN4G5N
M=&EM92Y#;VUP:6QE<E-E<G9I8V5S.PT*=7-I;F<@4WES=&5M+E)U;G1I;64N
M26YT97)O<%-E<G9I8V5S.PT*#0HO+R!'96YE<F%L($EN9F]R;6%T:6]N(&%B
M;W5T(&%N(&%S<V5M8FQY(&ES(&-O;G1R;VQL960@=&AR;W5G:"!T:&4@9F]L
M;&]W:6YG#0HO+R!S970@;V8@871T<FEB=71E<RX@0VAA;F=E('1H97-E(&%T
M=')I8G5T92!V86QU97,@=&\@;6]D:69Y('1H92!I;F9O<FUA=&EO;@T*+R\@
M87-S;V-I871E9"!W:71H(&%N(&%S<V5M8FQY+@T*6V%S<V5M8FQY.B!!<W-E
M;6)L>51I=&QE*")"1B`N3D54(BE=#0I;87-S96UB;'DZ($%S<V5M8FQY1&5S
M8W)I<'1I;VXH(B(I70T*6V%S<V5M8FQY.B!!<W-E;6)L>4-O;F9I9W5R871I
M;VXH(B(I70T*6V%S<V5M8FQY.B!!<W-E;6)L>4-O;7!A;GDH(B(I70T*6V%S
M<V5M8FQY.B!!<W-E;6)L>5!R;V1U8W0H(D)&("Y.150B*5T-"EMA<W-E;6)L
M>3H@07-S96UB;'E#;W!Y<FEG:'0H(D-O<'ER:6=H="#"J2`@,C`R,B(I70T*
M6V%S<V5M8FQY.B!!<W-E;6)L>51R861E;6%R:R@B(BE=#0I;87-S96UB;'DZ
M($%S<V5M8FQY0W5L='5R92@B(BE=#0H-"B\O(%-E='1I;F<@0V]M5FES:6)L
M92!T;R!F86QS92!M86ME<R!T:&4@='EP97,@:6X@=&AI<R!A<W-E;6)L>2!N
M;W0@=FES:6)L90T*+R\@=&\@0T]-(&-O;7!O;F5N=',N("!)9B!Y;W4@;F5E
M9"!T;R!A8V-E<W,@82!T>7!E(&EN('1H:7,@87-S96UB;'D@9G)O;0T*+R\@
M0T]-+"!S970@=&AE($-O;59I<VEB;&4@871T<FEB=71E('1O('1R=64@;VX@
M=&AA="!T>7!E+@T*6V%S<V5M8FQY.B!#;VU6:7-I8FQE*&9A;'-E*5T-"@T*
M+R\@5&AE(&9O;&QO=VEN9R!'54E$(&ES(&9O<B!T:&4@240@;V8@=&AE('1Y
M<&5L:6(@:68@=&AI<R!P<F]J96-T(&ES(&5X<&]S960@=&\@0T]-#0I;87-S
M96UB;'DZ($=U:60H(C$U8S,V-60W+61D9F0M-#,X,RTX8F%E+3-F-#=C-C8Y
M9#<X92(I70T*#0HO+R!697)S:6]N(&EN9F]R;6%T:6]N(&9O<B!A;B!A<W-E
M;6)L>2!C;VYS:7-T<R!O9B!T:&4@9F]L;&]W:6YG(&9O=7(@=F%L=65S.@T*
M+R\-"B\O("`@("`@36%J;W(@5F5R<VEO;@T*+R\@("`@("!-:6YO<B!697)S
M:6]N#0HO+R`@("`@($)U:6QD($YU;6)E<@T*+R\@("`@("!2979I<VEO;@T*
M+R\-"B\O(%EO=2!C86X@<W!E8VEF>2!A;&P@=&AE('9A;'5E<R!O<B!Y;W4@
M8V%N(&1E9F%U;'0@=&AE($)U:6QD(&%N9"!2979I<VEO;B!.=6UB97)S#0HO
M+R!B>2!U<VEN9R!T:&4@)RHG(&%S('-H;W=N(&)E;&]W.@T*+R\@6V%S<V5M
M8FQY.B!!<W-E;6)L>59E<G-I;VXH(C$N,"XJ(BE=#0I;87-S96UB;'DZ($%S
M<V5M8FQY5F5R<VEO;B@B,2XP+C`N,"(I70T*6V%S<V5M8FQY.B!!<W-E;6)L
:>49I;&5697)S:6]N*"(Q+C`N,"XP(BE=#0H*
`
end
SHAR_EOF
  (set 20 22 08 17 17 45 00 'BF .NET/BF .NET/Properties/AssemblyInfo.cs'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET/Properties/AssemblyInfo.cs'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET/Properties/AssemblyInfo.cs failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET/Properties/AssemblyInfo.cs': 'MD5 check failed'
       ) << \SHAR_EOF
f336458af4d458bb37e7c15d9275fba7  BF .NET/BF .NET/Properties/AssemblyInfo.cs
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET/Properties/AssemblyInfo.cs'` -ne 1421 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET/Properties/AssemblyInfo.cs' is not 1421"
  fi
fi
# ============= BF .NET/BF .NET.sln ==============
if test -n "${keep_file}" && test -f 'BF .NET/BF .NET.sln'
then
${echo} "x - SKIPPING BF .NET/BF .NET.sln (file already exists)"

else
${echo} "x - extracting BF .NET/BF .NET.sln (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/BF .NET.sln
M[[N_#0I-:6-R;W-O9G0@5FES=6%L(%-T=61I;R!3;VQU=&EO;B!&:6QE+"!&
M;W)M870@5F5R<VEO;B`Q,BXP,`T*(R!6:7-U86P@4W1U9&EO(%9E<G-I;VX@
M,3<-"E9I<W5A;%-T=61I;U9E<G-I;VX@/2`Q-RXS+C,R.#`T+C0V-PT*36EN
M:6UU;59I<W5A;%-T=61I;U9E<G-I;VX@/2`Q,"XP+C0P,C$Y+C$-"E!R;VIE
M8W0H(GM&044P-$5#,"TS,#%&+3$Q1#,M0D8T0BTP,$,P-$8W.45&0D-](BD@
M/2`B0D8@+DY%5"(L(")"1B`N3D547$)&("Y.150N8W-P<F]J(BP@(GLQ-4,S
M-C5$-RU$1$9$+30S.#,M.$)!12TS1C0W0S8V.40W.$5](@T*16YD4')O:F5C
M=`T*1VQO8F%L#0H)1VQO8F%L4V5C=&EO;BA3;VQU=&EO;D-O;F9I9W5R871I
M;VY0;&%T9F]R;7,I(#T@<')E4V]L=71I;VX-"@D)1&5B=6=\06YY($-052`]
M($1E8G5G?$%N>2!#4%4-"@D)4F5L96%S97Q!;GD@0U!5(#T@4F5L96%S97Q!
M;GD@0U!5#0H)16YD1VQO8F%L4V5C=&EO;@T*"4=L;V)A;%-E8W1I;VXH4')O
M:F5C=$-O;F9I9W5R871I;VY0;&%T9F]R;7,I(#T@<&]S=%-O;'5T:6]N#0H)
M"7LQ-4,S-C5$-RU$1$9$+30S.#,M.$)!12TS1C0W0S8V.40W.$5]+D1E8G5G
M?$%N>2!#4%4N06-T:79E0V9G(#T@1&5B=6=\06YY($-050T*"0E[,35#,S8U
M1#<M1$1&1"TT,S@S+3A"044M,T8T-T,V-CE$-SA%?2Y$96)U9WQ!;GD@0U!5
M+D)U:6QD+C`@/2!$96)U9WQ!;GD@0U!5#0H)"7LQ-4,S-C5$-RU$1$9$+30S
M.#,M.$)!12TS1C0W0S8V.40W.$5]+E)E;&5A<V5\06YY($-052Y!8W1I=F5#
M9F<@/2!296QE87-E?$%N>2!#4%4-"@D)>S$U0S,V-40W+41$1D0M-#,X,RTX
M0D%%+3-&-#=#-C8Y1#<X17TN4F5L96%S97Q!;GD@0U!5+D)U:6QD+C`@/2!2
M96QE87-E?$%N>2!#4%4-"@E%;F1';&]B86Q396-T:6]N#0H)1VQO8F%L4V5C
M=&EO;BA3;VQU=&EO;E!R;W!E<G1I97,I(#T@<')E4V]L=71I;VX-"@D)2&ED
M95-O;'5T:6]N3F]D92`]($9!3%-%#0H)16YD1VQO8F%L4V5C=&EO;@T*"4=L
M;V)A;%-E8W1I;VXH17AT96YS:6)I;&ET>4=L;V)A;',I(#T@<&]S=%-O;'5T
M:6]N#0H)"5-O;'5T:6]N1W5I9"`]('LW03@T1#<X12TP-#$X+30V-$(M03@V
M12TQ-S(P,D)$-D-&,D9]#0H)16YD1VQO8F%L4V5C=&EO;@T*16YD1VQO8F%L
"#0HQ
`
end
SHAR_EOF
  (set 20 22 08 17 17 45 02 'BF .NET/BF .NET.sln'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/BF .NET.sln'
if test $? -ne 0
then ${echo} "restore of BF .NET/BF .NET.sln failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/BF .NET.sln': 'MD5 check failed'
       ) << \SHAR_EOF
eef44e55b724ff0faaffbba9070871a5  BF .NET/BF .NET.sln
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/BF .NET.sln'` -ne 1127 && \
  ${echo} "restoration warning:  size of 'BF .NET/BF .NET.sln' is not 1127"
  fi
fi
# ============= BF .NET/Manual.txt ==============
if test -n "${keep_file}" && test -f 'BF .NET/Manual.txt'
then
${echo} "x - SKIPPING BF .NET/Manual.txt (file already exists)"

else
${echo} "x - extracting BF .NET/Manual.txt (text)"
  sed 's/^X//' << 'SHAR_EOF' | uudecode &&
begin 600 BF .NET/Manual.txt
M0D8@+DY%5"!I<R!A;B!I;7!L96UE;G1A=&EO;B!O9B!"<F%I;F9U8VL@9F]R
M("Y.150@1G)A;65W;W)K(#0N-RXR+B!)="!I<R!T:&5R969O<F4@5VEN9&]W
M<R!O;FQY+"!B=70@>6]U(&UA>2!B92!A8FQE('1O(&UE<W,@87)O=6YD('=I
M=&@@36]N;R!T;R!G970@:70@=V]R:VEN9R!O;B!O=&AE<B!S>7-T96US+@T*
M#0I.979E<G1H96QE<W,L($)&("Y.150@:7,@<V]M971H:6YG('1O('=O<FL@
M9F]R+"!S;R!I="!I<R!P<F]V:61E9"!A<R!A(%5N:7@@<VAA<B!A<F-H:79E
M(&1E<W!I=&4@8F5I;F<@5VEN9&]W<R!O;FQY+"!R97%U:7)I;F<@=&AE(&EN
M<W1A;&P@;V8@5U-,(&]R($-Y9W=I;BX-"@T*06YY=V%Y+"!L;V]K(&%T(%!R
M;V=R86TN8W,@;W(@=&AE(&5X86UP;&5S('1O(&9I;F0@;W5T(&AO=R!T:&5S
M92!W;W)K("AM87D@<F5Q=6ER92!K;F]W;&5D9V4@;V8@+DY%5"!#24P@:6YT
M97)N86QS*2X-"@T*36%K92!S=7)E('=H96X@>6]U(')U;B!T:&4@8V]M<&EL
M960@<')O9W)A;2!T:&%T('1H92!"1D1.7TQI8B`H8F9D;W1N970N9&QL*2!I
M<R!A=F%I;&%B;&4N#0H-"D%L<V\L(&ES;B=T('1H:7,@9&ES=')I8G5T:6]N
<(&IU<W0@4T\@9&5L:6=H=&9U;&QY(&UE<W-Y/W1H
`
end
SHAR_EOF
  (set 20 24 02 07 20 29 09 'BF .NET/Manual.txt'
   eval "${shar_touch}") && \
  chmod 0777 'BF .NET/Manual.txt'
if test $? -ne 0
then ${echo} "restore of BF .NET/Manual.txt failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'BF .NET/Manual.txt': 'MD5 check failed'
       ) << \SHAR_EOF
7044b5a2e65c84abfb7615a49283cf8a  BF .NET/Manual.txt
SHAR_EOF

else
test `LC_ALL=C wc -c < 'BF .NET/Manual.txt'` -ne 613 && \
  ${echo} "restoration warning:  size of 'BF .NET/Manual.txt' is not 613"
  fi
fi
if rm -fr ${lock_dir}
then ${echo} "x - removed lock directory ${lock_dir}."
else ${echo} "x - failed to remove lock directory ${lock_dir}."
     exit 1
fi
exit 0
