î
UC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersLogicServer\Contracts\IBoard.cs
	namespace 	&
ChineseCheckersLogicServer
 $
.$ %
	Contracts% .
{/ 0
[		 
ServiceContract		 
(		 
CallbackContract		 %
=		& '
typeof		( .
(		. /
IBoardCallback		/ =
)		= >
)		> ?
]		? @
public

 

	interface

 
IBoard

 
{

 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SendToBoard 
( 
string 
idRoom  &
)& '
;' (
[ 	
OperationContract	 
] 
void 
AddPlayerInBoard 
( 
string $
gamertag% -
,- .
string/ 5
idRoom6 <
)< =
;= >
[ 	
OperationContract	 
] 
bool 
ValidateBoardRoom 
( 
string %
idRoom& ,
), -
;- .
} 
[ 
ServiceContract 
] 
public 

	interface 
IBoardCallback #
{$ %
[ 	
OperationContract	 
] 
void 
SendToBoardCallback  
(  !
)! "
;" #
} 
} °
ZC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersLogicServer\Contracts\IFriendship.cs
	namespace		 	&
ChineseCheckersLogicServer		
 $
.		$ %
	Contracts		% .
{		/ 0
[

 
ServiceContract

 
]

 
public 

	interface 
IFriendship  
{! "
[ 	
OperationContract	 
] 
int 
AddFriendPlayer 
( 
FriendshipModel +
friendshipModel, ;
); <
;< =
[ 	
OperationContract	 
] 
int 
UpdateFriendPlayer 
( 
int "
idUser# )
,) *
int+ .
idFriend/ 7
,7 8
string9 ?
requestStatus@ M
)M N
;N O
[ 	
OperationContract	 
] 
int 
DeleteFriendPlayer 
( 
FriendshipModel .
friendshipModel/ >
)> ?
;? @
[ 	
OperationContract	 
] 
int !
ValidateFriendRequest !
(! "
int" %
idUser& ,
,, -
int. 1
idFriend2 :
,: ;
string< B
resquestStatusC Q
)Q R
;R S
} 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /&
IUserFriendRequestCallback/ I
)I J
)J K
]K L
public 

	interface 
IUserFriendRequest '
{( )
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
GetFriendRequest 
( 
int !
idUser" (
)( )
;) *
} 
[ 
ServiceContract 
] 
public 

	interface &
IUserFriendRequestCallback /
{0 1
[ 	
OperationContract	 
] 
void $
GetFriendRequestCallback %
(% &

Dictionary& 0
<0 1
string1 7
,7 8
(9 :
string: @
,@ A
stringB H
,H I
stringJ P
)P Q
>Q R
friendPlayerS _
)_ `
;` a
}   
}!! 
VC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersLogicServer\Contracts\IReport.cs
	namespace		 	&
ChineseCheckersLogicServer		
 $
.		$ %
	Contracts		% .
{		/ 0
[

 
ServiceContract

 
]

 
public 

	interface 
IReport 
{ 
[ 	
OperationContract	 
] 
int 
	AddReport 
( 
ReportModel !
reportModel" -
)- .
;. /
[ 	
OperationContract	 
] 
int 
UpdateReport 
( 
ReportModel $
reportModel% 0
)0 1
;1 2
[ 	
OperationContract	 
] 
int 
DeleteReport 
( 
int 
idUser #
)# $
;$ %
[ 	
OperationContract	 
] 
int 
GetNumReports 
( 
int 
idUser $
)$ %
;% &
} 
} Î
TC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersLogicServer\Contracts\IRoom.cs
	namespace		 	&
ChineseCheckersLogicServer		
 $
.		$ %
	Contracts		% .
{		/ 0
[ 
ServiceContract 
] 
public 

	interface 
IRoom 
{ 
[ 	
OperationContract	 
] 
string 

CreateRoom 
( 
string  
gamertag! )
)) *
;* +
[ 	
OperationContract	 
] 
string 

GenerateId 
( 
) 
; 
[ 	
OperationContract	 
] 
void 
RemovePlayer 
( 
string  
gamertag! )
,) *
string+ 1
idRoom2 8
)8 9
;9 :
[ 	
OperationContract	 
] 
int 
ValidateRoom 
( 
string 
idRoom  &
)& '
;' (
} 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /
IMessageCallback/ ?
)? @
)@ A
]A B
public 

	interface 
IMessage 
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SendMessage 
( 
string 
message  '
,' (
string) /
gamertag0 8
,8 9
string: @
idRoomA G
)G H
;H I
[ 	
OperationContract	 
] 
void 
	AddPlayer 
( 
string 
gamertag &
,& '
string( .
idRoom/ 5
)5 6
;6 7
} 
[ 
ServiceContract 
] 
public   

	interface   
IMessageCallback   %
{  & '
[!! 	
OperationContract!!	 
]!! 
void"" 
SendMessageCallback""  
(""  !
string""! '
message""( /
,""/ 0
string""1 7
gamertag""8 @
)""@ A
;""A B
}## 
[%% 
ServiceContract%% 
(%% 
CallbackContract%% %
=%%& '
typeof%%( .
(%%. / 
IPlayersRoomCallback%%/ C
)%%C D
)%%D E
]%%E F
public&& 

	interface&& 
IPlayersRoom&& !
{&&" #
['' 	
OperationContract''	 
('' 
IsOneWay'' #
=''$ %
true''& *
)''* +
]''+ ,
void(( 
GetPlayersRoom(( 
((( 
string(( "
gamertag((# +
,((+ ,
string((- 3
idRoom((4 :
)((: ;
;((; <
[)) 	
OperationContract))	 
])) 
void** 
AddPlayerRoom** 
(** 
string** !
gamertag**" *
,*** +
string**, 2
idRoom**3 9
)**9 :
;**: ;
}++ 
[-- 
ServiceContract-- 
]-- 
public.. 

	interface..  
IPlayersRoomCallback.. )
{..* +
[// 	
OperationContract//	 
]// 
void00 "
GetPlayersRoomCallback00 #
(00# $
List00$ (
<00( )
string00) /
>00/ 0
playersInRoom001 >
)00> ?
;00? @
}11 
}22 ∂'
TC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersLogicServer\Contracts\IUser.cs
	namespace		 	&
ChineseCheckersLogicServer		
 $
.		$ %
	Contracts		% .
{		/ 0
[

 
ServiceContract

 
]

 
public 

	interface 
IUser 
{ 
[ 	
OperationContract	 
] 
int 
AddUserGame 
( 
	UserModel !
	userModel" +
)+ ,
;, -
[ 	
OperationContract	 
] 
int 
AddUserAccount 
( 
	UserModel $
	userModel% .
). /
;/ 0
[ 	
OperationContract	 
] 
int 
ValidateUser 
( 
	UserModel "
	userModel# ,
), -
;- .
[ 	
OperationContract	 
] 
string 
GetPlayerImage 
( 
string $
gamertag% -
)- .
;. /
[ 	
OperationContract	 
] 
void 

LogoutUser 
( 
int 
idUser "
)" #
;# $
[ 	
OperationContract	 
] 
int 
ValidateEmail 
( 
	UserModel #
	userModel$ -
)- .
;. /
[ 	
OperationContract	 
] 
int 
ValidateGamertag 
( 
	UserModel &
	userModel' 0
)0 1
;1 2
[ 	
OperationContract	 
] 
int 
UpdatePassword 
( 
	UserModel $
	userModel% .
). /
;/ 0
[ 	
OperationContract	 
] 
	UserModel 
InfoUser 
( 
string !
gamertag" *
)* +
;+ ,
[ 	
OperationContract	 
] 
int 
UpdateInfoUser 
( 
	UserModel $
	usermodel% .
,. /
string0 6
gamertag7 ?
)? @
;@ A
[   	
OperationContract  	 
]   
string!! 
FindGamertag!! 
(!! 
string!! "
currentGamertag!!# 2
,!!2 3
string!!4 :
friendGamertag!!; I
)!!I J
;!!J K
["" 	
OperationContract""	 
]"" 
string## 
GetEmail## 
(## 
string## 
gamertag## '
)##' (
;##( )
[$$ 	
OperationContract$$	 
]$$ 
int%% 
GetId%% 
(%% 
string%% 
gamertag%% !
)%%! "
;%%" #
}&& 
[)) 
ServiceContract)) 
()) 
CallbackContract)) %
=))& '
typeof))( .
()). /
IUserCallback))/ <
)))< =
)))= >
]))> ?
public** 

	interface** 
IUsersManager** "
{**# $
[++ 	
OperationContract++	 
(++ 
IsOneWay++ #
=++$ %
true++& *
)++* +
]+++ ,
void,, 

GetFriends,, 
(,, 
string,, 
gamertag,, '
),,' (
;,,( )
}-- 
[// 
ServiceContract// 
]// 
public00 

	interface00 
IUserCallback00 "
{00# $
[11 	
OperationContract11	 
]11 
void22 
GetFriendsCallback22 
(22  

Dictionary22  *
<22* +
string22+ 1
,221 2
Tuple223 8
<228 9
string229 ?
,22? @
bool22A E
>22E F
>22F G
stateFriend22H S
)22S T
;22T U
}33 
[55 
ServiceContract55 
(55 
CallbackContract55 %
=55& '
typeof55( .
(55. / 
IUserSessionCallback55/ C
)55C D
)55D E
]55E F
public66 

	interface66 
IUserSession66 !
{66" #
[77 	
OperationContract77	 
(77 
IsOneWay77 #
=77$ %
true77& *
)77* +
]77+ ,
void88 
GetSessionPlayer88 
(88 
int88 !
idUser88" (
)88( )
;88) *
}99 
[;; 
ServiceContract;; 
];; 
public<< 

	interface<<  
IUserSessionCallback<< )
{<<* +
[== 	
OperationContract==	 
]== 
void>> $
GetSessionPlayerCallback>> %
(>>% &
)>>& '
;>>' (
}?? 
}@@ ¥)
_C:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersLogicServer\Controller\BoardController.cs
	namespace 	&
ChineseCheckersLogicServer
 $
.$ %

Controller% /
{0 1
public 

partial 
class 
ManagerController *
:+ ,
IBoard- 3
{4 5
private 
static 

Dictionary !
<! "
string" (
,( )
	RoomModel* 3
>3 4
_playersInBoard5 D
=E F
newG J

DictionaryK U
<U V
stringV \
,\ ]
	RoomModel^ g
>g h
(h i
)i j
;j k
public 
void 
AddPlayerInBoard $
($ %
string% +
gamertag, 4
,4 5
string6 <
idRoom= C
)C D
{E F
try 
{ 
IBoardCallback 
context &
=' (
OperationContext) 9
.9 :
Current: A
.A B
GetCallbackChannelB T
<T U
IBoardCallbackU c
>c d
(d e
)e f
;f g
if 
( 
_rooms 
. 
Contains #
(# $
idRoom$ *
)* +
)+ ,
{- .
if 
( 
_playersInBoard '
.' (
ContainsKey( 3
(3 4
idRoom4 :
): ;
); <
{= >
	RoomModel !
room" &
=' (
_playersInBoard) 8
[8 9
idRoom9 ?
]? @
;@ A
room 
. 
BoardPlayers )
.) *
Add* -
(- .
gamertag. 6
,6 7
context8 ?
)? @
;@ A
} 
else 
{ 
	RoomModel !
room" &
=' (
new) ,
	RoomModel- 6
{7 8
IdRoom "
=# $
idRoom% +
} 
; 
room 
. 
BoardPlayers )
.) *
Add* -
(- .
gamertag. 6
,6 7
context8 ?
)? @
;@ A
_playersInBoard '
.' (
Add( +
(+ ,
idRoom, 2
,2 3
room4 8
)8 9
;9 :
} 
} 
}   
catch   
(   "
CommunicationException   +
ex  , .
)  . /
{  0 1

MessageBox!! 
.!! 
Show!! 
(!!  
$"!!  "
$str!!" L
{!!L M
ex!!M O
.!!O P
Message!!P W
}!!W X
"!!X Y
)!!Y Z
;!!Z [
}"" 
}## 	
public%% 
void%% 
SendToBoard%% 
(%%  
string%%  &
idRoom%%' -
)%%- .
{%%/ 0
try&& 
{&& 
if'' 
('' 
_playersInBoard'' #
.''# $
ContainsKey''$ /
(''/ 0
idRoom''0 6
)''6 7
)''7 8
{''9 :
	RoomModel(( 
room(( "
=((# $
_playersInBoard((% 4
[((4 5
idRoom((5 ;
]((; <
;((< =
if)) 
()) 
room)) 
!=)) 
null))  $
&&))% '
room))( ,
.)), -
BoardPlayers))- 9
!=)): <
null))= A
)))A B
{))C D
foreach** 
(**  !
var**! $
players**% ,
in**- /
room**0 4
.**4 5
BoardPlayers**5 A
.**A B
Values**B H
)**H I
{**J K
players++ #
.++# $
SendToBoardCallback++$ 7
(++7 8
)++8 9
;++9 :
},, 
}-- 
}.. 
}// 
catch// 
(// "
CommunicationException// +
ex//, .
)//. /
{//0 1

MessageBox00 
.00 
Show00 
(00  
$"00  "
$str00" L
{00L M
ex00M O
.00O P
Message00P W
}00W X
"00X Y
)00Y Z
;00Z [
}11 
}22 	
public44 
bool44 
ValidateBoardRoom44 %
(44% &
string44& ,
idRoom44- 3
)443 4
{445 6
bool55 
result55 
;55 
	RoomModel66 
room66 
=66 
_playersInBoard66 ,
[66, -
idRoom66- 3
]663 4
;664 5
if77 
(77 
room77 
.77 
BoardPlayers77 !
.77! "
Count77" '
>77( )
$num77* +
)77+ ,
{77- .
result88 
=88 
true88 
;88 
}99 
else99 
{99 
result:: 
=:: 
false:: 
;:: 
};; 
return<< 
result<< 
;<< 
}== 	
}>> 
}?? ≤h
dC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersLogicServer\Controller\FriendshipController.cs
	namespace 	&
ChineseCheckersLogicServer
 $
.$ %

Controller% /
{0 1
public 

partial 
class 
ManagerController *
:+ ,
IFriendship- 8
{9 :
public 
int 
AddFriendPlayer "
(" #
FriendshipModel# 2
friendshipModel3 B
)B C
{D E
int 
result 
= 
$num 
; 
try 
{ 
using 
( 
var 
context "
=# $
new% (#
ChineseCheckersEntities) @
(@ A
)A B
)B C
{D E
var 
friendPlayer $
=% &
new' *
FriendPlayer+ 7
{8 9
IdPlayer  
=! "
friendshipModel# 2
.2 3
IdUser3 9
,9 :
IdFriend  
=! "
friendshipModel# 2
.2 3
IdFriend3 ;
,; <
RequestStatus %
=& '
friendshipModel( 7
.7 8
RequestStatus8 E
,E F
TypeNotification (
=) *
friendshipModel+ :
.: ;
TypeNotification; K
,K L
} 
; 
SingletonClass "
." #
Instance# +
.+ ,
IdRoom, 2
=3 4
friendshipModel5 D
.D E
IdRoomE K
;K L
context 
. 
FriendPlayer (
.( )
Add) ,
(, -
friendPlayer- 9
)9 :
;: ;
result 
= 
context $
.$ %
SaveChanges% 0
(0 1
)1 2
;2 3
} 
return 
result 
; 
}   
catch   
(   
EntityException   $
ex  % '
)  ' (
{  ) *

MessageBox!! 
.!! 
Show!! 
(!!  
$"!!  "
$str!!" @
{!!@ A
ex!!A C
.!!C D
Message!!D K
}!!K L
"!!L M
)!!M N
;!!N O
return"" 
-"" 
$num"" 
;"" 
}## 
}$$ 	
public&& 
int&& 
UpdateFriendPlayer&& %
(&&% &
int&&& )
idUser&&* 0
,&&0 1
int&&2 5
idFriend&&6 >
,&&> ?
string&&@ F
requestStatus&&G T
)&&T U
{&&V W
int'' 
result'' 
='' 
$num'' 
;'' 
try(( 
{(( 
using)) 
()) 
var)) 
context)) "
=))# $
new))% (#
ChineseCheckersEntities))) @
())@ A
)))A B
)))B C
{))D E
var** 
friendPlayer** $
=**% &
context**' .
.**. /
FriendPlayer**/ ;
.++ 
FirstOrDefault++ '
(++' (
friend++( .
=>++/ 1
(,, 
friend,, #
.,,# $
IdPlayer,,$ ,
==,,- /
idUser,,0 6
&&,,7 9
friend,,: @
.,,@ A
IdFriend,,A I
==,,J L
idFriend,,M U
),,U V
),,V W
;,,W X
if-- 
(-- 
friendPlayer-- $
!=--% '
null--( ,
)--, -
{--. /
friendPlayer.. $
...$ %
RequestStatus..% 2
=..3 4
requestStatus..5 B
;..B C
result// 
=//  
context//! (
.//( )
SaveChanges//) 4
(//4 5
)//5 6
;//6 7
}00 
}11 
return22 
result22 
;22 
}33 
catch33 
(33 
EntityException33 $
ex33% '
)33' (
{33) *

MessageBox44 
.44 
Show44 
(44  
$"44  "
$str44" C
{44C D
ex44D F
.44F G
Message44G N
}44N O
"44O P
)44P Q
;44Q R
return55 
-55 
$num55 
;55 
}66 
}77 	
public99 
int99 
DeleteFriendPlayer99 %
(99% &
FriendshipModel99& 5
friendshipModel996 E
)99E F
{99G H
int:: 
result:: 
=:: 
$num:: 
;:: 
try;; 
{;; 
using<< 
(<< 
var<< 
context<< "
=<<# $
new<<% (#
ChineseCheckersEntities<<) @
(<<@ A
)<<A B
)<<B C
{<<D E
var== 
friendPlayer== $
===% &
context==' .
.==. /
FriendPlayer==/ ;
.>> 
Where>> 
(>> 
friend>> %
=>>>& (
friend>>) /
.>>/ 0
IdPlayer>>0 8
==>>9 ;
friendshipModel>>< K
.>>K L
IdUser>>L R
&&>>S U
friend>>V \
.>>\ ]
IdFriend>>] e
==>>f h
friendshipModel>>i x
.>>x y
IdFriend	>>y Å
&&
>>Ç Ñ
friend
>>Ö ã
.
>>ã å
TypeNotification
>>å ú
==
>>ù ü
friendshipModel
>>† Ø
.
>>Ø ∞
TypeNotification
>>∞ ¿
)
>>¿ ¡
.?? 
FirstOrDefault?? '
(??' (
)??( )
;??) *
if@@ 
(@@ 
friendPlayer@@ $
!=@@% '
null@@( ,
)@@, -
{@@. /
contextAA 
.AA  
FriendPlayerAA  ,
.AA, -
RemoveAA- 3
(AA3 4
friendPlayerAA4 @
)AA@ A
;AAA B
resultBB 
=BB  
contextBB! (
.BB( )
SaveChangesBB) 4
(BB4 5
)BB5 6
;BB6 7
}CC 
}DD 
returnEE 
resultEE 
;EE 
}FF 
catchFF 
(FF 
EntityExceptionFF $
exFF% '
)FF' (
{FF) *

MessageBoxGG 
.GG 
ShowGG 
(GG  
$"GG  "
$strGG" A
{GGA B
exGGB D
.GGD E
MessageGGE L
}GGL M
"GGM N
)GGN O
;GGO P
returnHH 
-HH 
$numHH 
;HH 
}II 
}JJ 	
publicLL 
intLL !
ValidateFriendRequestLL (
(LL( )
intLL) ,
idUserLL- 3
,LL3 4
intLL5 8
idFriendLL9 A
,LLA B
stringLLC I
resquestStatusLLJ X
)LLX Y
{LLZ [
intMM !
friendRequestValidateMM %
=MM& '
$numMM( )
;MM) *
tryNN 
{NN 
usingOO 
(OO 
varOO 
contextOO "
=OO# $
newOO% (#
ChineseCheckersEntitiesOO) @
(OO@ A
)OOA B
)OOB C
{OOD E
varPP 
validatedRequestPP (
=PP) *
(PP+ ,
fromPP, 0

userFriendPP1 ;
inPP< >
contextPP? F
.PPF G
FriendPlayerPPG S
joinQQ, 0
userQQ1 5
inQQ6 8
contextQQ9 @
.QQ@ A
UserAccountQQA L
onQQM O

userFriendQQP Z
.QQZ [
IdPlayerQQ[ c
equalsQQd j
userQQk o
.QQo p
IdQQp r
whereRR, 1

userFriendRR2 <
.RR< =
IdPlayerRR= E
==RRF H
idUserRRI O
&&RRP R

userFriendRRS ]
.RR] ^
IdFriendRR^ f
==RRg i
idFriendRRj r
&&RRs u

userFriend	RRv Ä
.
RRÄ Å
RequestStatus
RRÅ é
==
RRè ë
resquestStatus
RRí †
selectSS, 2
userSS3 7
)SS7 8
.SS8 9
FirstOrDefaultSS9 G
(SSG H
)SSH I
;SSI J
ifTT 
(TT 
validatedRequestTT (
!=TT) +
nullTT, 0
)TT0 1
{TT2 3!
friendRequestValidateUU -
=UU. /
$numUU0 1
;UU1 2
}VV 
returnWW !
friendRequestValidateWW 0
;WW0 1
}XX 
}YY 
catchYY 
(YY 
EntityExceptionYY $
exYY% '
)YY' (
{YY) *

MessageBoxZZ 
.ZZ 
ShowZZ 
(ZZ  
$"ZZ  "
$strZZ" M
{ZZM N
exZZN P
.ZZP Q
MessageZZQ X
}ZZX Y
"ZZY Z
)ZZZ [
;ZZ[ \
return[[ 
-[[ 
$num[[ 
;[[ 
}\\ 
}]] 	
}^^ 
public`` 

partial`` 
class`` 
ManagerController`` *
:``+ ,
IUserFriendRequest``- ?
{``@ A
publicaa 
voidaa 
GetFriendRequestaa $
(aa$ %
intaa% (
idUseraa) /
)aa/ 0
{aa1 2

Dictionarybb 
<bb 
stringbb 
,bb 
(bb  
stringbb  &
,bb& '
stringbb( .
,bb. /
stringbb0 6
)bb6 7
>bb7 8
friendsDictionarybb9 J
=bbK L
newbbM P

DictionarybbQ [
<bb[ \
stringbb\ b
,bbb c
(bbd e
stringbbe k
,bbk l
stringbbm s
,bbs t
stringbbu {
)bb{ |
>bb| }
(bb} ~
)bb~ 
;	bb Ä
trycc 
{cc 
usingdd 
(dd 
vardd 
contextdd "
=dd# $
newdd% (#
ChineseCheckersEntitiesdd) @
(dd@ A
)ddA B
)ddB C
{ddD E
varee 

friendDataee "
=ee# $
(ee% &
fromee& *
friendee+ 1
inee2 4
contextee5 <
.ee< =
FriendPlayeree= I
joinff& *
userff+ /
inff0 2
contextff3 :
.ff: ;
UserAccountff; F
onffG I
friendffJ P
.ffP Q
IdPlayerffQ Y
equalsffZ `
userffa e
.ffe f
Idfff h
wheregg& +
friendgg, 2
.gg2 3
RequestStatusgg3 @
==ggA C
$strggD M
&&ggN P
friendggQ W
.ggW X
IdFriendggX `
==gga c
idUserggd j
selecthh& ,
newhh- 0
{hh1 2
userii* .
.ii. /
Idii/ 1
,ii1 2
Gamertagjj* 2
=jj3 4
userjj5 9
.jj9 :
GamertagUserjj: F
,jjF G
userkk* .
.kk. /
ImageProfilekk/ ;
,kk; <
friendll* 0
.ll0 1
TypeNotificationll1 A
,llA B
SingletonClassmm* 8
.mm8 9
Instancemm9 A
.mmA B
IdRoommmB H
}nn& '
)nn' (
.nn( )
ToListnn) /
(nn/ 0
)nn0 1
;nn1 2
ifpp 
(pp 

friendDatapp "
!=pp# %
nullpp& *
)pp* +
{pp, -
foreachqq 
(qq  !
varqq! $
friendqq% +
inqq, .

friendDataqq/ 9
)qq9 :
{qq; <
friendsDictionaryrr -
[rr- .
friendrr. 4
.rr4 5
Gamertagrr5 =
]rr= >
=rr? @
(rrA B
friendrrB H
.rrH I
ImageProfilerrI U
,rrU V
friendrrW ]
.rr] ^
TypeNotificationrr^ n
,rrn o
friendrrp v
.rrv w
IdRoomrrw }
)rr} ~
;rr~ 
}ss &
IUserFriendRequestCallbacktt 2
callbacktt3 ;
=tt< =
OperationContexttt> N
.ttN O
CurrentttO V
.ttV W
GetCallbackChannelttW i
<tti j'
IUserFriendRequestCallback	ttj Ñ
>
ttÑ Ö
(
ttÖ Ü
)
ttÜ á
;
ttá à
callbackuu  
.uu  !$
GetFriendRequestCallbackuu! 9
(uu9 :
friendsDictionaryuu: K
)uuK L
;uuL M
}vv 
}ww 
}xx 
catchxx 
(xx "
CommunicationExceptionxx +
exxx, .
)xx. /
{xx0 1

MessageBoxyy 
.yy 
Showyy 
(yy  
$"yy  "
$stryy" L
{yyL M
exyyM O
.yyO P
MessageyyP W
}yyW X
"yyX Y
)yyY Z
;yyZ [
}zz 
catchzz 
(zz 
EntityExceptionzz $
exzz% '
)zz' (
{zz) *

MessageBox{{ 
.{{ 
Show{{ 
({{  
$"{{  "
$str{{" L
{{{L M
ex{{M O
.{{O P
Message{{P W
}{{W X
"{{X Y
){{Y Z
;{{Z [
}|| 
}}} 	
}~~ 
} Â:
`C:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersLogicServer\Controller\ReportController.cs
	namespace 	&
ChineseCheckersLogicServer
 $
.$ %

Controller% /
{0 1
public 

partial 
class 
ManagerController *
:+ ,
IReport- 4
{5 6
public 
int 
	AddReport 
( 
ReportModel (
reportModel) 4
)4 5
{6 7
try 
{ 
using 
( 
var 
context "
=# $
new% (#
ChineseCheckersEntities) @
(@ A
)A B
)B C
{D E
var 

reportUser "
=# $
new% (
Reports) 0
{1 2
IdUser 
=  
reportModel! ,
., -
IdUser- 3
,3 4
Counter 
=  !
$num" #
,# $
Reason 
=  
reportModel! ,
., -
Reason- 3
,3 4
DateCurrent #
=$ %
reportModel& 1
.1 2
CurrentDate2 =
,= >

DateFinish "
=# $
reportModel% 0
.0 1
EndDate1 8
,8 9
} 
; 
context 
. 
Reports #
.# $
Add$ '
(' (

reportUser( 2
)2 3
;3 4
return 
context "
." #
SaveChanges# .
(. /
)/ 0
;0 1
} 
} 
catch 
( 
EntityException $
ex% '
)' (
{) *

MessageBox 
. 
Show 
(  
$"  "
$str" M
{M N
exN P
.P Q
MessageQ X
}X Y
"Y Z
)Z [
;[ \
return   
-   
$num   
;   
}!! 
}"" 	
public$$ 
int$$ 
UpdateReport$$ 
($$  
ReportModel$$  +
reportModel$$, 7
)$$7 8
{$$9 :
try%% 
{%% 
using&& 
(&& 
var&& 
context&& "
=&&# $
new&&% (#
ChineseCheckersEntities&&) @
(&&@ A
)&&A B
)&&B C
{&&D E
var'' 

userReport'' "
=''# $
context''% ,
.'', -
Reports''- 4
.(( 
Where(( 
((( 
u((  
=>((! #
u(($ %
.((% &
IdUser((& ,
==((- /
reportModel((0 ;
.((; <
IdUser((< B
)((B C
.)) 
FirstOrDefault)) '
())' (
)))( )
;))) *
if** 
(** 

userReport** "
!=**# %
null**& *
)*** +
{**, -

userReport++ "
.++" #
Counter++# *
++++* ,
;++, -

userReport,, "
.,," #
Reason,,# )
=,,* +
reportModel,,, 7
.,,7 8
Reason,,8 >
;,,> ?

userReport-- "
.--" #
DateCurrent--# .
=--/ 0
reportModel--1 <
.--< =
CurrentDate--= H
;--H I

userReport.. "
..." #

DateFinish..# -
=... /
reportModel..0 ;
...; <
EndDate..< C
;..C D
}// 
return00 
context00 "
.00" #
SaveChanges00# .
(00. /
)00/ 0
;000 1
}11 
}22 
catch22 
(22 
EntityException22 $
ex22% '
)22' (
{22) *

MessageBox33 
.33 
Show33 
(33  
$"33  "
$str33" M
{33M N
ex33N P
.33P Q
Message33Q X
}33X Y
"33Y Z
)33Z [
;33[ \
return44 
-44 
$num44 
;44 
}55 
}66 	
public88 
int88 
DeleteReport88 
(88  
int88  #
idUser88$ *
)88* +
{88, -
try99 
{99 
using:: 
(:: 
var:: 
context:: "
=::# $
new::% (#
ChineseCheckersEntities::) @
(::@ A
)::A B
)::B C
{::D E
var;; 
reportToDelete;; &
=;;' (
context;;) 0
.;;0 1
Reports;;1 8
.;;8 9
FirstOrDefault;;9 G
(;;G H
r;;H I
=>;;J L
r;;M N
.;;N O
Id;;O Q
==;;R T
idUser;;U [
);;[ \
;;;\ ]
if<< 
(<< 
reportToDelete<< &
!=<<' )
null<<* .
)<<. /
{<<0 1
context== 
.==  
Reports==  '
.==' (
Remove==( .
(==. /
reportToDelete==/ =
)=== >
;==> ?
}>> 
return?? 
context?? "
.??" #
SaveChanges??# .
(??. /
)??/ 0
;??0 1
}@@ 
}AA 
catchAA 
(AA 
EntityExceptionAA $
exAA% '
)AA' (
{AA) *

MessageBoxBB 
.BB 
ShowBB 
(BB  
$"BB  "
$strBB" M
{BBM N
exBBN P
.BBP Q
MessageBBQ X
}BBX Y
"BBY Z
)BBZ [
;BB[ \
returnCC 
-CC 
$numCC 
;CC 
}DD 
}EE 	
publicGG 
intGG 
GetNumReportsGG  
(GG  !
intGG! $
idUserGG% +
)GG+ ,
{GG- .
tryHH 
{HH 
intII 

numReportsII 
=II  
-II! "
$numII" #
;II# $
usingJJ 
(JJ 
varJJ 
contextJJ "
=JJ# $
newJJ% (#
ChineseCheckersEntitiesJJ) @
(JJ@ A
)JJA B
)JJB C
{JJD E
varKK 
counterValuesKK %
=KK& '
contextKK( /
.KK/ 0
ReportsKK0 7
.LL 
FirstOrDefaultLL '
(LL' (
counterLL( /
=>LL0 2
counterLL3 :
.LL: ;
IdUserLL; A
==LLB D
idUserLLE K
)LLK L
;LLL M
ifMM 
(MM 
counterValuesMM %
!=MM& (
nullMM) -
)MM- .
{MM/ 0

numReportsNN "
=NN# $
(NN% &
intNN& )
)NN) *
counterValuesNN* 7
.NN7 8
CounterNN8 ?
;NN? @
}OO 
returnPP 

numReportsPP %
;PP% &
}QQ 
}RR 
catchRR 
(RR 
EntityExceptionRR $
exRR% '
)RR' (
{RR) *

MessageBoxSS 
.SS 
ShowSS 
(SS  
$"SS  "
$strSS" M
{SSM N
exSSN P
.SSP Q
MessageSSQ X
}SSX Y
"SSY Z
)SSZ [
;SS[ \
returnTT 
-TT 
$numTT 
;TT 
}UU 
}VV 	
}WW 
}XX ïw
^C:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersLogicServer\Controller\RoomController.cs
	namespace 	&
ChineseCheckersLogicServer
 $
.$ %

Controller% /
{0 1
public 

partial 
class 
ManagerController *
:+ ,
IRoom- 2
{3 4
private 
static 
readonly 
List  $
<$ %
string% +
>+ ,
_rooms- 3
=4 5
new6 9
List: >
<> ?
string? E
>E F
(F G
)G H
;H I
public 
string 

CreateRoom  
(  !
string! '
gamertag( 0
)0 1
{2 3
string 
idRoom 
; 
do 
{ 
idRoom 
= 

GenerateId #
(# $
)$ %
;% &
} 
while 
( 
_rooms 
. 
Contains $
($ %
idRoom% +
)+ ,
), -
;- .
_rooms 
. 
Add 
( 
idRoom 
) 
; 
return 
idRoom 
; 
} 	
public 
string 

GenerateId  
(  !
)! "
{# $
const 
string 

CHARACTERS #
=$ %
$str& 2
;2 3
StringBuilder 
id 
= 
new "
StringBuilder# 0
(0 1
)1 2
;2 3
Random 
random 
= 
new 
Random  &
(& '
)' (
;( )
for!! 
(!! 
int!! 
i!! 
=!! 
$num!! 
;!! 
i!! 
<!! 
$num!!  !
;!!! "
i!!# $
++!!$ &
)!!& '
{!!( )
int"" 
index"" 
="" 
random"" "
.""" #
Next""# '
(""' (
$num""( )
,"") *

CHARACTERS""+ 5
.""5 6
Length""6 <
)""< =
;""= >
id## 
.## 
Append## 
(## 

CHARACTERS## $
[##$ %
index##% *
]##* +
)##+ ,
;##, -
}$$ 
return%% 
id%% 
.%% 
ToString%% 
(%% 
)%%  
;%%  !
}&& 	
public(( 
void(( 
RemovePlayer((  
(((  !
string((! '
gamertag((( 0
,((0 1
string((2 8
idRoom((9 ?
)((? @
{((A B
if)) 
()) 
_playersInRoom)) 
.)) 
ContainsKey)) *
())* +
idRoom))+ 1
)))1 2
)))2 3
{))4 5
	RoomModel** 
room** 
=**  
_playersInRoom**! /
[**/ 0
idRoom**0 6
]**6 7
;**7 8
if,, 
(,, 
room,, 
.,, 
Players,,  
.,,  !
Count,,! &
>,,' (
$num,,) *
),,* +
{,,, -
room-- 
.-- 
Players--  
.--  !
Remove--! '
(--' (
gamertag--( 0
)--0 1
;--1 2
}.. 
else.. 
{.. 
room// 
.// 
Players//  
.//  !
Remove//! '
(//' (
gamertag//( 0
)//0 1
;//1 2
_playersInRoom00 "
.00" #
Remove00# )
(00) *
idRoom00* 0
)000 1
;001 2
_rooms11 
.11 
Remove11 !
(11! "
idRoom11" (
)11( )
;11) *
}22 
}33 
}44 	
public66 
int66 
ValidateRoom66 
(66  
string66  &
idRoom66' -
)66- .
{66/ 0
int77 
result77 
;77 
if88 
(88 
_rooms88 
.88 
Contains88 
(88  
idRoom88  &
)88& '
)88' (
{88) *
result99 
=99 
$num99 
;99 
}:: 
else:: 
{:: 
result;; 
=;; 
$num;; 
;;; 
}<< 
return== 
result== 
;== 
}>> 	
}?? 
publicAA 

partialAA 
classAA 
ManagerControllerAA *
:AA+ ,
IMessageAA- 5
{AA6 7
privateCC 
staticCC 
readonlyCC 

DictionaryCC  *
<CC* +
stringCC+ 1
,CC1 2
	RoomModelCC3 <
>CC< =
_playersInRoomCC> L
=CCM N
newCCO R

DictionaryCCS ]
<CC] ^
stringCC^ d
,CCd e
	RoomModelCCf o
>CCo p
(CCp q
)CCq r
;CCr s
publicDD 
voidDD 
SendMessageDD 
(DD  
stringDD  &
messageDD' .
,DD. /
stringDD0 6
gamertagDD7 ?
,DD? @
stringDDA G
idRoomDDH N
)DDN O
{DDP Q
tryEE 
{EE 
ifFF 
(FF 
_playersInRoomFF "
.FF" #
ContainsKeyFF# .
(FF. /
idRoomFF/ 5
)FF5 6
)FF6 7
{FF8 9
	RoomModelGG 
roomGG "
=GG# $
_playersInRoomGG% 3
[GG3 4
idRoomGG4 :
]GG: ;
;GG; <
ifHH 
(HH 
roomHH 
!=HH 
nullHH  $
&&HH% '
roomHH( ,
.HH, -
PlayersHH- 4
!=HH5 7
nullHH8 <
)HH< =
{HH> ?
foreachII 
(II  !
varII! $
playersII% ,
inII- /
roomII0 4
.II4 5
PlayersII5 <
.II< =
ValuesII= C
)IIC D
{IIE F
playersJJ #
.JJ# $
SendMessageCallbackJJ$ 7
(JJ7 8
messageJJ8 ?
,JJ? @
gamertagJJA I
)JJI J
;JJJ K
}KK 
}LL 
}MM 
}NN 
catchNN 
(NN "
CommunicationExceptionNN +
exNN, .
)NN. /
{NN0 1

MessageBoxOO 
.OO 
ShowOO 
(OO  
$"OO  "
$strOO" L
{OOL M
exOOM O
.OOO P
MessageOOP W
}OOW X
"OOX Y
)OOY Z
;OOZ [
}PP 
}QQ 	
publicSS 
voidSS 
	AddPlayerSS 
(SS 
stringSS $
gamertagSS% -
,SS- .
stringSS/ 5
idRoomSS6 <
)SS< =
{SS> ?
tryTT 
{TT 
IMessageCallbackUU  
contextUU! (
=UU) *
OperationContextUU+ ;
.UU; <
CurrentUU< C
.UUC D
GetCallbackChannelUUD V
<UUV W
IMessageCallbackUUW g
>UUg h
(UUh i
)UUi j
;UUj k
ifVV 
(VV 
_playersInRoomVV "
.VV" #
ContainsKeyVV# .
(VV. /
idRoomVV/ 5
)VV5 6
)VV6 7
{VV8 9
	RoomModelWW 
roomWW "
=WW# $
_playersInRoomWW% 3
[WW3 4
idRoomWW4 :
]WW: ;
;WW; <
roomXX 
.XX 
PlayersXX  
.XX  !
AddXX! $
(XX$ %
gamertagXX% -
,XX- .
contextXX/ 6
)XX6 7
;XX7 8
}YY 
elseYY 
{YY 
	RoomModelZZ 
roomZZ "
=ZZ# $
newZZ% (
	RoomModelZZ) 2
{ZZ3 4
IdRoom[[ 
=[[  
idRoom[[! '
}\\ 
;\\ 
room]] 
.]] 
Players]]  
.]]  !
Add]]! $
(]]$ %
gamertag]]% -
,]]- .
context]]/ 6
)]]6 7
;]]7 8
_playersInRoom^^ "
.^^" #
Add^^# &
(^^& '
idRoom^^' -
,^^- .
room^^/ 3
)^^3 4
;^^4 5
}__ 
}`` 
catch`` 
(`` "
CommunicationException`` +
ex``, .
)``. /
{``0 1

MessageBoxaa 
.aa 
Showaa 
(aa  
$"aa  "
$straa" L
{aaL M
exaaM O
.aaO P
MessageaaP W
}aaW X
"aaX Y
)aaY Z
;aaZ [
}bb 
}cc 	
}dd 
publicff 

partialff 
classff 
ManagerControllerff *
:ff+ ,
IPlayersRoomff- 9
{ff: ;
privatehh 
statichh 
readonlyhh 

Dictionaryhh  *
<hh* +
stringhh+ 1
,hh1 2
	RoomModelhh3 <
>hh< =
playersRoomhh> I
=hhJ K
newhhL O

DictionaryhhP Z
<hhZ [
stringhh[ a
,hha b
	RoomModelhhc l
>hhl m
(hhm n
)hhn o
;hho p
privateii 
staticii 
readonlyii 

Dictionaryii  *
<ii* +
stringii+ 1
,ii1 2
Listii3 7
<ii7 8
Stringii8 >
>ii> ?
>ii? @!
playersRoomDictionaryiiA V
=iiW X
newiiY \

Dictionaryii] g
<iig h
stringiih n
,iin o
Listiip t
<iit u
Stringiiu {
>ii{ |
>ii| }
(ii} ~
)ii~ 
;	ii Ä
publickk 
voidkk 
AddPlayerRoomkk !
(kk! "
stringkk" (
gamertagkk) 1
,kk1 2
stringkk3 9
idRoomkk: @
)kk@ A
{kkB C
tryll 
{ll  
IPlayersRoomCallbackmm $
contextmm% ,
=mm- .
OperationContextmm/ ?
.mm? @
Currentmm@ G
.mmG H
GetCallbackChannelmmH Z
<mmZ [ 
IPlayersRoomCallbackmm[ o
>mmo p
(mmp q
)mmq r
;mmr s
ifoo 
(oo 
_roomsoo 
.oo 
Containsoo #
(oo# $
idRoomoo$ *
)oo* +
)oo+ ,
{oo- .
ifpp 
(pp 
playersRoompp #
.pp# $
ContainsKeypp$ /
(pp/ 0
idRoompp0 6
)pp6 7
)pp7 8
{pp9 :
	RoomModelqq !
roomqq" &
=qq' (
playersRoomqq) 4
[qq4 5
idRoomqq5 ;
]qq; <
;qq< =
roomrr 
.rr 
PlayersRoomrr (
.rr( )
Addrr) ,
(rr, -
gamertagrr- 5
,rr5 6
contextrr7 >
)rr> ?
;rr? @
Listss 
<ss 
stringss #
>ss# $
listPlayersss% 0
=ss1 2!
playersRoomDictionaryss3 H
[ssH I
idRoomssI O
]ssO P
;ssP Q
listPlayerstt #
.tt# $
Addtt$ '
(tt' (
gamertagtt( 0
)tt0 1
;tt1 2!
playersRoomDictionaryuu -
[uu- .
idRoomuu. 4
]uu4 5
=uu6 7
listPlayersuu8 C
;uuC D
}vv 
elsevv 
{vv 
	RoomModelww !
roomww" &
=ww' (
newww) ,
	RoomModelww- 6
{ww7 8
IdRoomxx "
=xx# $
idRoomxx% +
}yy 
;yy 
roomzz 
.zz 
PlayersRoomzz (
.zz( )
Addzz) ,
(zz, -
gamertagzz- 5
,zz5 6
contextzz7 >
)zz> ?
;zz? @
playersRoom{{ #
.{{# $
Add{{$ '
({{' (
idRoom{{( .
,{{. /
room{{0 4
){{4 5
;{{5 6
List|| 
<|| 
string|| #
>||# $
listPlayers||% 0
=||1 2
new||3 6
List||7 ;
<||; <
string||< B
>||B C
(||C D
)||D E
;||E F
listPlayers}} #
.}}# $
Add}}$ '
(}}' (
gamertag}}( 0
)}}0 1
;}}1 2!
playersRoomDictionary~~ -
.~~- .
Add~~. 1
(~~1 2
idRoom~~2 8
,~~8 9
listPlayers~~: E
)~~E F
;~~F G
}
ÄÄ 
}
ÅÅ 
}
ÇÇ 
catch
ÇÇ 
(
ÇÇ $
CommunicationException
ÇÇ +
ex
ÇÇ, .
)
ÇÇ. /
{
ÇÇ0 1

MessageBox
ÉÉ 
.
ÉÉ 
Show
ÉÉ 
(
ÉÉ  
$"
ÉÉ  "
$str
ÉÉ" L
{
ÉÉL M
ex
ÉÉM O
.
ÉÉO P
Message
ÉÉP W
}
ÉÉW X
"
ÉÉX Y
)
ÉÉY Z
;
ÉÉZ [
}
ÑÑ 
}
ÖÖ 	
public
áá 
void
áá 
GetPlayersRoom
áá "
(
áá" #
string
áá# )
gamertag
áá* 2
,
áá2 3
string
áá4 :
idRoom
áá; A
)
ááA B
{
ááC D
try
àà 
{
àà 
if
ââ 
(
ââ 
playersRoom
ââ 
.
ââ  
ContainsKey
ââ  +
(
ââ+ ,
idRoom
ââ, 2
)
ââ2 3
)
ââ3 4
{
ââ5 6
	RoomModel
ää 
room
ää "
=
ää# $
playersRoom
ää% 0
[
ää0 1
idRoom
ää1 7
]
ää7 8
;
ää8 9
if
ãã 
(
ãã 
room
ãã 
!=
ãã 
null
ãã  $
&&
ãã% '
room
ãã( ,
.
ãã, -
PlayersRoom
ãã- 8
!=
ãã9 ;
null
ãã< @
)
ãã@ A
{
ããB C
List
åå 
<
åå 
string
åå #
>
åå# $
listPlayers
åå% 0
=
åå1 2#
playersRoomDictionary
åå3 H
[
ååH I
idRoom
ååI O
]
ååO P
;
ååP Q
foreach
çç 
(
çç  !
var
çç! $
players
çç% ,
in
çç- /
room
çç0 4
.
çç4 5
PlayersRoom
çç5 @
.
çç@ A
Values
ççA G
)
ççG H
{
ççI J
players
éé #
.
éé# $$
GetPlayersRoomCallback
éé$ :
(
éé: ;
listPlayers
éé; F
)
ééF G
;
ééG H
}
èè 
}
êê 
}
ëë 
}
íí 
catch
íí 
(
íí $
CommunicationException
íí +
ex
íí, .
)
íí. /
{
íí0 1

MessageBox
ìì 
.
ìì 
Show
ìì 
(
ìì  
$"
ìì  "
$str
ìì" L
{
ììL M
ex
ììM O
.
ììO P
Message
ììP W
}
ììW X
"
ììX Y
)
ììY Z
;
ììZ [
}
îî 
}
ïï 	
}
ññ 
}óó ¨
^C:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersLogicServer\Controller\SingletonClass.cs
	namespace 	&
ChineseCheckersLogicServer
 $
.$ %

Controller% /
{0 1
public 

class 
SingletonClass 
{  !
private

 
static

 
SingletonClass

 %
	_instance

& /
;

/ 0
public 
static 
SingletonClass $
Instance% -
{. /
get 
{ 
if 
( 
	_instance 
==  
null! %
)% &
{' (
	_instance 
= 
new  #
SingletonClass$ 2
(2 3
)3 4
;4 5
} 
return 
	_instance  
;  !
} 
} 	
public 
string 
IdRoom 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} Õé
^C:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersLogicServer\Controller\UserController.cs
	namespace 	&
ChineseCheckersLogicServer
 $
.$ %

Controller% /
{0 1
[ 
ServiceBehavior 
( 
ConcurrencyMode $
=% &
ConcurrencyMode' 6
.6 7
	Reentrant7 @
)@ A
]A B
public 

partial 
class 
ManagerController *
:+ ,
IUser- 2
{3 4
public 
int 
AddUserGame 
( 
	UserModel (
	userModel) 2
)2 3
{4 5
try 
{ 
using 
( 
var 
context "
=# $
new% (#
ChineseCheckersEntities) @
(@ A
)A B
)B C
{D E
var 
userGame  
=! "
new# &
User' +
{, -
Gamertag  
=! "
	userModel# ,
., -
Gamertag- 5
,5 6
PlayerStatus $
=% &
	userModel' 0
.0 1
PlayerStatus1 =
,= >
} 
; 
context 
. 
User  
.  !
Add! $
($ %
userGame% -
)- .
;. /
return 
context "
." #
SaveChanges# .
(. /
)/ 0
;0 1
} 
}   
catch   
(   
EntityException   $
ex  % '
)  ' (
{  ) *

MessageBox!! 
.!! 
Show!! 
(!!  
$"!!  "
$str!!" ?
{!!? @
ex!!@ B
.!!B C
Message!!C J
}!!J K
"!!K L
)!!L M
;!!M N
return"" 
-"" 
$num"" 
;"" 
}## 
}$$ 	
public&& 
int&& 
AddUserAccount&& !
(&&! "
	UserModel&&" +
	userModel&&, 5
)&&5 6
{&&7 8
try'' 
{'' 
using(( 
((( 
var(( 
context(( "
=((# $
new((% (#
ChineseCheckersEntities(() @
(((@ A
)((A B
)((B C
{((D E
var)) 
userAccountGame)) '
=))( )
new))* -
UserAccount)). 9
{)): ;
GamertagUser** $
=**% &
	userModel**' 0
.**0 1
Gamertag**1 9
,**9 :
Email++ 
=++ 
	userModel++  )
.++) *
Email++* /
,++/ 0
Password,,  
=,,! "
BCrypt,,# )
.,,) *
Net,,* -
.,,- .
BCrypt,,. 4
.,,4 5
HashPassword,,5 A
(,,A B
	userModel,,B K
.,,K L
Password,,L T
),,T U
,,,U V
ImageProfile-- $
=--% &
	userModel--' 0
.--0 1
ImageProfile--1 =
,--= >
}.. 
;.. 
context// 
.// 
UserAccount// '
.//' (
Add//( +
(//+ ,
userAccountGame//, ;
)//; <
;//< =
return00 
context00 "
.00" #
SaveChanges00# .
(00. /
)00/ 0
;000 1
}11 
}22 
catch22 
(22 
EntityException22 $
ex22% '
)22' (
{22) *

MessageBox33 
.33 
Show33 
(33  
$"33  "
$str33" J
{33J K
ex33K M
.33M N
Message33N U
}33U V
"33V W
)33W X
;33X Y
return44 
-44 
$num44 
;44 
}55 
}66 	
public88 
	UserModel88 
InfoUser88 !
(88! "
string88" (
gamertag88) 1
)881 2
{883 4
	UserModel99 
	userModel99 
=99  !
new99" %
	UserModel99& /
(99/ 0
)990 1
;991 2
try:: 
{:: 
using;; 
(;; 
var;; 
context;; "
=;;# $
new;;% (#
ChineseCheckersEntities;;) @
(;;@ A
);;A B
);;B C
{;;D E
var<< 
	userFound<< !
=<<" #
context<<$ +
.<<+ ,
UserAccount<<, 7
.== 
Where== 
(== 
u==  
=>==! #
u==$ %
.==% &
GamertagUser==& 2
====3 5
gamertag==6 >
)==> ?
.>> 
Select>> 
(>>  
u>>  !
=>>>" $
new>>% (
{>>) *
u?? 
.?? 
GamertagUser?? *
,??* +
u@@ 
.@@ 
ImageProfile@@ *
,@@* +
uAA 
.AA 
EmailAA #
}BB 
)BB 
.CC 
FirstOrDefaultCC '
(CC' (
)CC( )
;CC) *
ifEE 
(EE 
	userFoundEE !
!=EE" $
nullEE% )
)EE) *
{EE+ ,
	userModelFF !
.FF! "
GamertagFF" *
=FF+ ,
	userFoundFF- 6
.FF6 7
GamertagUserFF7 C
;FFC D
	userModelGG !
.GG! "
ImageProfileGG" .
=GG/ 0
	userFoundGG1 :
.GG: ;
ImageProfileGG; G
;GGG H
	userModelHH !
.HH! "
EmailHH" '
=HH( )
	userFoundHH* 3
.HH3 4
EmailHH4 9
;HH9 :
}II 
returnJJ 
	userModelJJ $
;JJ$ %
}KK 
}LL 
catchLL 
(LL 
EntityExceptionLL $
exLL% '
)LL' (
{LL) *

MessageBoxMM 
.MM 
ShowMM 
(MM  
$"MM  "
$strMM" O
{MMO P
exMMP R
.MMR S
MessageMMS Z
}MMZ [
"MM[ \
)MM\ ]
;MM] ^
returnNN 
nullNN 
;NN 
}OO 
}PP 	
publicRR 
intRR 
UpdateInfoUserRR !
(RR! "
	UserModelRR" +
	usermodelRR, 5
,RR5 6
stringRR7 =
gamertagRR> F
)RRF G
{RRH I
trySS 
{SS 
usingTT 
(TT 
varTT 
contextTT "
=TT# $
newTT% (#
ChineseCheckersEntitiesTT) @
(TT@ A
)TTA B
)TTB C
{TTD E
varUU 
userUU 
=UU 
contextUU &
.UU& '
UserAccountUU' 2
.VV 
WhereVV 
(VV 
uVV  
=>VV! #
uVV$ %
.VV% &
GamertagUserVV& 2
==VV3 5
gamertagVV6 >
)VV> ?
.WW 
FirstOrDefaultWW '
(WW' (
)WW( )
;WW) *
ifXX 
(XX 
userXX 
!=XX 
nullXX  $
)XX$ %
{XX& '
userYY 
.YY 
IdYY 
=YY  !
	usermodelYY" +
.YY+ ,
IdYY, .
;YY. /
userZZ 
.ZZ 
GamertagUserZZ )
=ZZ* +
	usermodelZZ, 5
.ZZ5 6
GamertagZZ6 >
;ZZ> ?
user[[ 
.[[ 
ImageProfile[[ )
=[[* +
	usermodel[[, 5
.[[5 6
ImageProfile[[6 B
;[[B C
user\\ 
.\\ 
Email\\ "
=\\# $
	usermodel\\% .
.\\. /
Email\\/ 4
;\\4 5
RemoveClient]] $
(]]$ %
	usermodel]]% .
.]]. /
Id]]/ 1
)]]1 2
;]]2 3
}^^ 
return__ 
context__ "
.__" #
SaveChanges__# .
(__. /
)__/ 0
;__0 1
}`` 
}aa 
catchaa 
(aa 
EntityExceptionaa $
exaa% '
)aa' (
{aa) *

MessageBoxbb 
.bb 
Showbb 
(bb  
$"bb  "
$strbb" R
{bbR S
exbbS U
.bbU V
MessagebbV ]
}bb] ^
"bb^ _
)bb_ `
;bb` a
returncc 
-cc 
$numcc 
;cc 
}dd 
}ee 	
publicgg 
intgg 
UpdatePasswordgg !
(gg! "
	UserModelgg" +
	userModelgg, 5
)gg5 6
{gg7 8
tryhh 
{hh 
usingii 
(ii 
varii 
contextii "
=ii# $
newii% (#
ChineseCheckersEntitiesii) @
(ii@ A
)iiA B
)iiB C
{iiD E
varjj 
userAccountUpdatejj )
=jj* +
contextjj, 3
.jj3 4
UserAccountjj4 ?
.kk( )
Wherekk) .
(kk. /
userkk/ 3
=>kk4 6
userkk7 ;
.kk; <
Emailkk< A
==kkB D
	userModelkkE N
.kkN O
EmailkkO T
)kkT U
.ll( )
FirstOrDefaultll) 7
(ll7 8
)ll8 9
;ll9 :
ifmm 
(mm 
userAccountUpdatemm )
!=mm* ,
nullmm- 1
)mm1 2
{mm3 4
userAccountUpdatenn )
.nn) *
Passwordnn* 2
=nn3 4
BCryptnn5 ;
.nn; <
Netnn< ?
.nn? @
BCryptnn@ F
.nnF G
HashPasswordnnG S
(nnS T
	userModelnnT ]
.nn] ^
Passwordnn^ f
)nnf g
;nng h
}oo 
returnpp 
contextpp "
.pp" #
SaveChangespp# .
(pp. /
)pp/ 0
;pp0 1
}qq 
}rr 
catchrr 
(rr 
EntityExceptionrr $
exrr% '
)rr' (
{rr) *

MessageBoxss 
.ss 
Showss 
(ss  
$"ss  "
$strss" E
{ssE F
exssF H
.ssH I
MessagessI P
}ssP Q
"ssQ R
)ssR S
;ssS T
returntt 
-tt 
$numtt 
;tt 
}uu 
}vv 	
publicxx 
intxx 
ValidateUserxx 
(xx  
	UserModelxx  )
	userModelxx* 3
)xx3 4
{xx5 6
tryyy 
{yy 
intzz 
userValidatedzz !
=zz" #
$numzz$ %
;zz% &
using{{ 
({{ 
var{{ 
context{{ "
={{# $
new{{% (#
ChineseCheckersEntities{{) @
({{@ A
){{A B
){{B C
{{{D E
var|| 
validateUser|| $
=||% &
(||' (
from||( ,
user||- 1
in||2 4
context||5 <
.||< =
UserAccount||= H
where}}( -
string}}. 4
.}}4 5
Equals}}5 ;
(}}; <
user}}< @
.}}@ A
GamertagUser}}A M
,}}M N
	userModel}}O X
.}}X Y
Gamertag}}Y a
)}}a b
select~~( .
user~~/ 3
)~~3 4
.~~4 5
FirstOrDefault~~5 C
(~~C D
)~~D E
;~~E F
if 
( 
validateUser (
!=) +
null, 0
&&1 3
BCrypt4 :
.: ;
Net; >
.> ?
BCrypt? E
.E F
VerifyF L
(L M
	userModelM V
.V W
PasswordW _
,_ `
validateUsera m
.m n
Passwordn v
)v w
)w x
{y z
userValidated
ÄÄ )
=
ÄÄ* +
$num
ÄÄ, -
;
ÄÄ- .
}
ÅÅ 
return
ÇÇ 
userValidated
ÇÇ (
;
ÇÇ( )
}
ÉÉ 
}
ÑÑ 
catch
ÑÑ 
(
ÑÑ 
EntityException
ÑÑ $
ex
ÑÑ% '
)
ÑÑ' (
{
ÑÑ) *

MessageBox
ÖÖ 
.
ÖÖ 
Show
ÖÖ 
(
ÖÖ  
$"
ÖÖ  "
$str
ÖÖ" ?
{
ÖÖ? @
ex
ÖÖ@ B
.
ÖÖB C
Message
ÖÖC J
}
ÖÖJ K
"
ÖÖK L
)
ÖÖL M
;
ÖÖM N
return
ÜÜ 
-
ÜÜ 
$num
ÜÜ 
;
ÜÜ 
}
áá 
}
àà 	
public
ää 
int
ää 
ValidateEmail
ää  
(
ää  !
	UserModel
ää! *
	userModel
ää+ 4
)
ää4 5
{
ää6 7
int
ãã 
emailValidated
ãã 
=
ãã  
$num
ãã! "
;
ãã" #
try
åå 
{
åå 
using
çç 
(
çç 
var
çç 
context
çç "
=
çç# $
new
çç% (%
ChineseCheckersEntities
çç) @
(
çç@ A
)
ççA B
)
ççB C
{
ççD E
var
éé 
validatedEmail
éé &
=
éé' (
(
éé) *
from
éé* .
user
éé/ 3
in
éé4 6
context
éé7 >
.
éé> ?
UserAccount
éé? J
where
èè* /
user
èè0 4
.
èè4 5
Email
èè5 :
==
èè; =
	userModel
èè> G
.
èèG H
Email
èèH M
select
êê* 0
user
êê1 5
)
êê5 6
.
êê6 7
FirstOrDefault
êê7 E
(
êêE F
)
êêF G
;
êêG H
if
ëë 
(
ëë 
validatedEmail
ëë &
!=
ëë' )
null
ëë* .
)
ëë. /
{
ëë0 1
emailValidated
íí &
=
íí' (
$num
íí) *
;
íí* +
}
ìì 
return
îî 
emailValidated
îî )
;
îî) *
}
ïï 
}
ññ 
catch
ññ 
(
ññ 
EntityException
ññ $
ex
ññ% '
)
ññ' (
{
ññ) *

MessageBox
óó 
.
óó 
Show
óó 
(
óó  
$"
óó  "
$str
óó" =
{
óó= >
ex
óó> @
.
óó@ A
Message
óóA H
}
óóH I
"
óóI J
)
óóJ K
;
óóK L
return
òò 
-
òò 
$num
òò 
;
òò 
}
ôô 
}
öö 	
public
úú 
int
úú 
ValidateGamertag
úú #
(
úú# $
	UserModel
úú$ -
	userModel
úú. 7
)
úú7 8
{
úú9 :
int
ùù 
gamertagValidated
ùù !
=
ùù" #
$num
ùù$ %
;
ùù% &
try
ûû 
{
ûû 
using
üü 
(
üü 
var
üü 
context
üü "
=
üü# $
new
üü% (%
ChineseCheckersEntities
üü) @
(
üü@ A
)
üüA B
)
üüB C
{
üüD E
var
†† 
validatedEmail
†† &
=
††' (
(
††) *
from
††* .
user
††/ 3
in
††4 6
context
††7 >
.
††> ?
UserAccount
††? J
where
°°* /
user
°°0 4
.
°°4 5
GamertagUser
°°5 A
==
°°B D
	userModel
°°E N
.
°°N O
Gamertag
°°O W
select
¢¢* 0
user
¢¢1 5
)
¢¢5 6
.
¢¢6 7
FirstOrDefault
¢¢7 E
(
¢¢E F
)
¢¢F G
;
¢¢G H
if
££ 
(
££ 
validatedEmail
££ &
!=
££' )
null
££* .
)
££. /
{
££0 1
gamertagValidated
§§ )
=
§§* +
$num
§§, -
;
§§- .
}
•• 
return
¶¶ 
gamertagValidated
¶¶ ,
;
¶¶, -
}
ßß 
}
®® 
catch
®® 
(
®® 
EntityException
®® $
ex
®®% '
)
®®' (
{
®®) *

MessageBox
©© 
.
©© 
Show
©© 
(
©©  
$"
©©  "
$str
©©" @
{
©©@ A
ex
©©A C
.
©©C D
Message
©©D K
}
©©K L
"
©©L M
)
©©M N
;
©©N O
return
™™ 
-
™™ 
$num
™™ 
;
™™ 
}
´´ 
}
¨¨ 	
public
ÆÆ 
string
ÆÆ 
GetPlayerImage
ÆÆ $
(
ÆÆ$ %
string
ÆÆ% +
gamertag
ÆÆ, 4
)
ÆÆ4 5
{
ÆÆ6 7
string
ØØ 
path
ØØ 
=
ØØ 
$str
ØØ 
;
ØØ 
try
∞∞ 
{
∞∞ 
using
±± 
(
±± 
var
±± 
context
±± "
=
±±# $
new
±±% (%
ChineseCheckersEntities
±±) @
(
±±@ A
)
±±A B
)
±±B C
{
±±D E
var
≤≤ 
playerImage
≤≤ #
=
≤≤$ %
(
≤≤& '
from
≤≤' +
user
≤≤, 0
in
≤≤1 3
context
≤≤4 ;
.
≤≤; <
UserAccount
≤≤< G
where
≥≥' ,
string
≥≥- 3
.
≥≥3 4
Equals
≥≥4 :
(
≥≥: ;
user
≥≥; ?
.
≥≥? @
GamertagUser
≥≥@ L
,
≥≥L M
gamertag
≥≥N V
)
≥≥V W
select
¥¥' -
user
¥¥. 2
)
¥¥2 3
.
¥¥3 4
FirstOrDefault
¥¥4 B
(
¥¥B C
)
¥¥C D
;
¥¥D E
if
µµ 
(
µµ 
playerImage
µµ #
!=
µµ$ &
null
µµ' +
)
µµ+ ,
{
µµ- .
path
∂∂ 
=
∂∂ 
$str
∂∂ 3
+
∂∂4 5
playerImage
∂∂6 A
.
∂∂A B
ImageProfile
∂∂B N
;
∂∂N O
}
∑∑ 
return
∏∏ 
path
∏∏ 
;
∏∏  
}
ππ 
}
∫∫ 
catch
∫∫ 
(
∫∫ 
EntityException
∫∫ $
ex
∫∫% '
)
∫∫' (
{
∫∫) *

MessageBox
ªª 
.
ªª 
Show
ªª 
(
ªª  
$"
ªª  "
$str
ªª" H
{
ªªH I
ex
ªªI K
.
ªªK L
Message
ªªL S
}
ªªS T
"
ªªT U
)
ªªU V
;
ªªV W
return
ºº 
null
ºº 
;
ºº 
}
ΩΩ 
}
ææ 	
public
¿¿ 
void
¿¿ 

LogoutUser
¿¿ 
(
¿¿ 
int
¿¿ "
idUser
¿¿# )
)
¿¿) *
{
¿¿+ ,
RemoveClient
¡¡ 
(
¡¡ 
idUser
¡¡ 
)
¡¡  
;
¡¡  !
}
¬¬ 	
public
ƒƒ 
string
ƒƒ 
FindGamertag
ƒƒ "
(
ƒƒ" #
string
ƒƒ# )
currentGamertag
ƒƒ* 9
,
ƒƒ9 :
string
ƒƒ; A
friendGamertag
ƒƒB P
)
ƒƒP Q
{
ƒƒR S
string
≈≈ 
gamertagToFound
≈≈ "
=
≈≈# $
$str
≈≈% '
;
≈≈' (
try
∆∆ 
{
∆∆ 
using
«« 
(
«« 
var
«« 
context
«« "
=
««# $
new
««% (%
ChineseCheckersEntities
««) @
(
««@ A
)
««A B
)
««B C
{
««D E
var
»» 
currentUser
»» #
=
»»$ %
context
»»& -
.
»»- .
UserAccount
»». 9
.
»»9 :
FirstOrDefault
»»: H
(
»»H I
user
»»I M
=>
»»N P
user
»»Q U
.
»»U V
GamertagUser
»»V b
==
»»c e
currentGamertag
»»f u
)
»»u v
;
»»v w
var
…… 

friendUser
…… "
=
……# $
context
……% ,
.
……, -
UserAccount
……- 8
.
……8 9
FirstOrDefault
……9 G
(
……G H
user
……H L
=>
……M O
user
……P T
.
……T U
GamertagUser
……U a
==
……b d
friendGamertag
……e s
)
……s t
;
……t u
if
ÀÀ 
(
ÀÀ 
currentUser
ÀÀ #
!=
ÀÀ$ &
null
ÀÀ' +
&&
ÀÀ, .

friendUser
ÀÀ/ 9
!=
ÀÀ: <
null
ÀÀ= A
&&
ÀÀB D
currentGamertag
ÀÀE T
!=
ÀÀU W
friendGamertag
ÀÀX f
)
ÀÀf g
{
ÀÀh i
var
ÃÃ 

areFriends
ÃÃ &
=
ÃÃ' (
context
ÃÃ) 0
.
ÃÃ0 1
FriendPlayer
ÃÃ1 =
.
ÃÃ= >
Any
ÃÃ> A
(
ÃÃA B
friend
ÃÃB H
=>
ÃÃI K
(
ÕÕ 
friend
ÕÕ #
.
ÕÕ# $
IdPlayer
ÕÕ$ ,
==
ÕÕ- /
currentUser
ÕÕ0 ;
.
ÕÕ; <
Id
ÕÕ< >
&&
ÕÕ? A
friend
ÕÕB H
.
ÕÕH I
IdFriend
ÕÕI Q
==
ÕÕR T

friendUser
ÕÕU _
.
ÕÕ_ `
Id
ÕÕ` b
&&
ÕÕc e
friend
ÕÕf l
.
ÕÕl m
RequestStatus
ÕÕm z
==
ÕÕ{ }
$strÕÕ~ à
)ÕÕà â
||ÕÕä å
(
ŒŒ 
friend
ŒŒ #
.
ŒŒ# $
IdPlayer
ŒŒ$ ,
==
ŒŒ- /

friendUser
ŒŒ0 :
.
ŒŒ: ;
Id
ŒŒ; =
&&
ŒŒ> @
friend
ŒŒA G
.
ŒŒG H
IdFriend
ŒŒH P
==
ŒŒQ S
currentUser
ŒŒT _
.
ŒŒ_ `
Id
ŒŒ` b
&&
ŒŒc e
friend
ŒŒf l
.
ŒŒl m
RequestStatus
ŒŒm z
==
ŒŒ{ }
$strŒŒ~ à
)ŒŒà â
)ŒŒâ ä
;ŒŒä ã
if
–– 
(
–– 
!
–– 

areFriends
–– '
)
––' (
{
––) *
gamertagToFound
—— +
=
——, -
friendGamertag
——. <
;
——< =
}
““ 
}
”” 
return
‘‘ 
gamertagToFound
‘‘ *
;
‘‘* +
}
’’ 
}
÷÷ 
catch
÷÷ 
(
÷÷ 
EntityException
÷÷ $
ex
÷÷% '
)
÷÷' (
{
÷÷) *

MessageBox
◊◊ 
.
◊◊ 
Show
◊◊ 
(
◊◊  
$"
◊◊  "
$str
◊◊" ?
{
◊◊? @
ex
◊◊@ B
.
◊◊B C
Message
◊◊C J
}
◊◊J K
"
◊◊K L
)
◊◊L M
;
◊◊M N
return
ÿÿ 
null
ÿÿ 
;
ÿÿ 
}
ŸŸ 
}
⁄⁄ 	
public
‹‹ 
string
‹‹ 
GetEmail
‹‹ 
(
‹‹ 
string
‹‹ %
gamertag
‹‹& .
)
‹‹. /
{
‹‹0 1
string
›› 
email
›› 
=
›› 
$str
›› 
;
›› 
try
ﬁﬁ 
{
ﬁﬁ 
using
ﬂﬂ 
(
ﬂﬂ 
var
ﬂﬂ 
context
ﬂﬂ "
=
ﬂﬂ# $
new
ﬂﬂ% (%
ChineseCheckersEntities
ﬂﬂ) @
(
ﬂﬂ@ A
)
ﬂﬂA B
)
ﬂﬂB C
{
ﬂﬂD E
var
‡‡ 
user
‡‡ 
=
‡‡ 
context
‡‡ &
.
‡‡& '
UserAccount
‡‡' 2
.
·· 
FirstOrDefault
·· '
(
··' (
	userEmail
··( 1
=>
··2 4
	userEmail
··5 >
.
··> ?
GamertagUser
··? K
==
··L N
gamertag
··O W
)
··W X
;
··X Y
if
„„ 
(
„„ 
user
„„ 
!=
„„ 
null
„„  $
)
„„$ %
{
„„& '
email
‰‰ 
=
‰‰ 
user
‰‰  $
.
‰‰$ %
Email
‰‰% *
;
‰‰* +
}
ÂÂ 
return
ÊÊ 
email
ÊÊ  
;
ÊÊ  !
}
ÁÁ 
}
ËË 
catch
ËË 
(
ËË 
EntityException
ËË $
ex
ËË% '
)
ËË' (
{
ËË) *

MessageBox
ÈÈ 
.
ÈÈ 
Show
ÈÈ 
(
ÈÈ  
$"
ÈÈ  "
$str
ÈÈ" >
{
ÈÈ> ?
ex
ÈÈ? A
.
ÈÈA B
Message
ÈÈB I
}
ÈÈI J
"
ÈÈJ K
)
ÈÈK L
;
ÈÈL M
return
ÍÍ 
null
ÍÍ 
;
ÍÍ 
}
ÎÎ 
}
ÏÏ 	
public
ÓÓ 
int
ÓÓ 
GetId
ÓÓ 
(
ÓÓ 
string
ÓÓ 
gamertag
ÓÓ  (
)
ÓÓ( )
{
ÓÓ* +
int
ÔÔ 
id
ÔÔ 
=
ÔÔ 
$num
ÔÔ 
;
ÔÔ 
try
 
{
 
using
ÒÒ 
(
ÒÒ 
var
ÒÒ 
context
ÒÒ "
=
ÒÒ# $
new
ÒÒ% (%
ChineseCheckersEntities
ÒÒ) @
(
ÒÒ@ A
)
ÒÒA B
)
ÒÒB C
{
ÒÒD E
var
ÚÚ 
user
ÚÚ 
=
ÚÚ 
context
ÚÚ &
.
ÚÚ& '
UserAccount
ÚÚ' 2
.
ÛÛ 
FirstOrDefault
ÛÛ '
(
ÛÛ' (
userId
ÛÛ( .
=>
ÛÛ/ 1
userId
ÛÛ2 8
.
ÛÛ8 9
GamertagUser
ÛÛ9 E
==
ÛÛF H
gamertag
ÛÛI Q
)
ÛÛQ R
;
ÛÛR S
if
ıı 
(
ıı 
user
ıı 
!=
ıı 
null
ıı  $
)
ıı$ %
{
ıı& '
id
ˆˆ 
=
ˆˆ 
user
ˆˆ !
.
ˆˆ! "
Id
ˆˆ" $
;
ˆˆ$ %
}
˜˜ 
return
¯¯ 
id
¯¯ 
;
¯¯ 
}
˘˘ 
}
˙˙ 
catch
˙˙ 
(
˙˙ 
EntityException
˙˙ $
ex
˙˙% '
)
˙˙' (
{
˙˙) *

MessageBox
˚˚ 
.
˚˚ 
Show
˚˚ 
(
˚˚  
$"
˚˚  "
$str
˚˚" :
{
˚˚: ;
ex
˚˚; =
.
˚˚= >
Message
˚˚> E
}
˚˚E F
"
˚˚F G
)
˚˚G H
;
˚˚H I
return
¸¸ 
-
¸¸ 
$num
¸¸ 
;
¸¸ 
}
˝˝ 
}
˛˛ 	
}
ˇˇ 
public
ÅÅ 

partial
ÅÅ 
class
ÅÅ 
ManagerController
ÅÅ *
:
ÅÅ+ ,
IUsersManager
ÅÅ- :
{
ÅÅ; <
private
ÉÉ 
static
ÉÉ 
readonly
ÉÉ 

Dictionary
ÉÉ  *
<
ÉÉ* +
int
ÉÉ+ .
,
ÉÉ. /"
IUserSessionCallback
ÉÉ0 D
>
ÉÉD E
playerStatus
ÉÉF R
=
ÉÉS T
new
ÉÉU X

Dictionary
ÉÉY c
<
ÉÉc d
int
ÉÉd g
,
ÉÉg h"
IUserSessionCallback
ÉÉi }
>
ÉÉ} ~
(
ÉÉ~ 
)ÉÉ Ä
;ÉÉÄ Å
public
ÖÖ 
void
ÖÖ 

GetFriends
ÖÖ 
(
ÖÖ 
string
ÖÖ %
gamertag
ÖÖ& .
)
ÖÖ. /
{
ÖÖ0 1

Dictionary
ÜÜ 
<
ÜÜ 
string
ÜÜ 
,
ÜÜ 
Tuple
ÜÜ $
<
ÜÜ$ %
string
ÜÜ% +
,
ÜÜ+ ,
bool
ÜÜ- 1
>
ÜÜ1 2
>
ÜÜ2 3
friendsDictionary
ÜÜ4 E
=
ÜÜF G
new
ÜÜH K

Dictionary
ÜÜL V
<
ÜÜV W
string
ÜÜW ]
,
ÜÜ] ^
Tuple
ÜÜ_ d
<
ÜÜd e
string
ÜÜe k
,
ÜÜk l
bool
ÜÜm q
>
ÜÜq r
>
ÜÜr s
(
ÜÜs t
)
ÜÜt u
;
ÜÜu v
try
áá 
{
áá 
using
àà 
(
àà 
var
àà 
context
àà "
=
àà# $
new
àà% (%
ChineseCheckersEntities
àà) @
(
àà@ A
)
ààA B
)
ààB C
{
ààD E
int
ââ 
userId
ââ 
=
ââ  
context
ââ! (
.
ââ( )
UserAccount
ââ) 4
.
ää 
Where
ää 
(
ää 
user
ää #
=>
ää$ &
user
ää' +
.
ää+ ,
GamertagUser
ää, 8
==
ää9 ;
gamertag
ää< D
)
ääD E
.
ãã 
Select
ãã 
(
ãã  
user
ãã  $
=>
ãã% '
user
ãã( ,
.
ãã, -
Id
ãã- /
)
ãã/ 0
.
åå 
FirstOrDefault
åå '
(
åå' (
)
åå( )
;
åå) *
if
éé 
(
éé 
userId
éé 
>
éé  
$num
éé! "
)
éé" #
{
éé$ %
var
èè 

friendData
èè &
=
èè' (
(
èè) *
from
èè* .
friend
èè/ 5
in
èè6 8
context
èè9 @
.
èè@ A
FriendPlayer
èèA M
join
êê* .
user
êê/ 3
in
êê4 6
context
êê7 >
.
êê> ?
UserAccount
êê? J
on
êêK M
friend
êêN T
.
êêT U
IdFriend
êêU ]
equals
êê^ d
user
êêe i
.
êêi j
Id
êêj l
where
ëë* /
friend
ëë0 6
.
ëë6 7
IdPlayer
ëë7 ?
==
ëë@ B
userId
ëëC I
&&
ëëJ L
friend
ëëM S
.
ëëS T
RequestStatus
ëëT a
==
ëëb d
$str
ëëe o
select
íí* 0
new
íí1 4
{
íí5 6
user
ìì. 2
.
ìì2 3
Id
ìì3 5
,
ìì5 6
Gamertag
îî. 6
=
îî7 8
user
îî9 =
.
îî= >
GamertagUser
îî> J
,
îîJ K
user
ïï. 2
.
ïï2 3
ImageProfile
ïï3 ?
,
ïï? @
}
ññ* +
)
ññ+ ,
.
ññ, -
ToList
ññ- 3
(
ññ3 4
)
ññ4 5
;
ññ5 6
if
òò 
(
òò 

friendData
òò &
!=
òò' )
null
òò* .
)
òò. /
{
òò0 1
foreach
ôô #
(
ôô$ %
var
ôô% (
friend
ôô) /
in
ôô0 2

friendData
ôô3 =
)
ôô= >
{
ôô? @
bool
öö  $
isOnline
öö% -
=
öö. /
playerStatus
öö0 <
.
öö< =
ContainsKey
öö= H
(
ööH I
friend
ööI O
.
ööO P
Id
ööP R
)
ööR S
;
ööS T
friendsDictionary
õõ  1
[
õõ1 2
friend
õõ2 8
.
õõ8 9
Gamertag
õõ9 A
]
õõA B
=
õõC D
new
õõE H
Tuple
õõI N
<
õõN O
string
õõO U
,
õõU V
bool
õõW [
>
õõ[ \
(
õõ\ ]
friend
õõ] c
.
õõc d
ImageProfile
õõd p
,
õõp q
isOnline
õõr z
)
õõz {
;
õõ{ |
}
úú 
IUserCallback
ûû )
callback
ûû* 2
=
ûû3 4
OperationContext
ûû5 E
.
ûûE F
Current
ûûF M
.
ûûM N 
GetCallbackChannel
ûûN `
<
ûû` a
IUserCallback
ûûa n
>
ûûn o
(
ûûo p
)
ûûp q
;
ûûq r
callback
üü $
.
üü$ % 
GetFriendsCallback
üü% 7
(
üü7 8
friendsDictionary
üü8 I
)
üüI J
;
üüJ K
}
†† 
}
°° 
}
¢¢ 
}
££ 
catch
££ 
(
££ 
EntityException
££ $
ex
££% '
)
££' (
{
££) *

MessageBox
§§ 
.
§§ 
Show
§§ 
(
§§  
$"
§§  "
$str
§§" G
{
§§G H
ex
§§H J
.
§§J K
Message
§§K R
}
§§R S
"
§§S T
)
§§T U
;
§§U V
}
•• 
catch
•• 
(
•• $
CommunicationException
•• +
ex
••, .
)
••. /
{
••0 1

MessageBox
¶¶ 
.
¶¶ 
Show
¶¶ 
(
¶¶  
$"
¶¶  "
$str
¶¶" G
{
¶¶G H
ex
¶¶H J
.
¶¶J K
Message
¶¶K R
}
¶¶R S
"
¶¶S T
)
¶¶T U
;
¶¶U V
}
ßß 
}
®® 	
private
™™ 
void
™™ 
RemoveClient
™™ !
(
™™! "
int
™™" %
idUser
™™& ,
)
™™, -
{
™™. /
if
´´ 
(
´´ 
playerStatus
´´ 
.
´´ 
ContainsKey
´´ (
(
´´( )
idUser
´´) /
)
´´/ 0
)
´´0 1
{
´´2 3
playerStatus
¨¨ 
.
¨¨ 
Remove
¨¨ #
(
¨¨# $
idUser
¨¨$ *
)
¨¨* +
;
¨¨+ ,
}
≠≠ 
}
ÆÆ 	
}
ØØ 
public
±± 

partial
±± 
class
±± 
ManagerController
±± *
:
±±+ ,
IUserSession
±±- 9
{
±±: ;
public
≤≤ 
void
≤≤ 
GetSessionPlayer
≤≤ $
(
≤≤$ %
int
≤≤% (
idUser
≤≤) /
)
≤≤/ 0
{
≤≤1 2
try
≥≥ 
{
≥≥ "
IUserSessionCallback
¥¥ $
context
¥¥% ,
=
¥¥- .
OperationContext
¥¥/ ?
.
¥¥? @
Current
¥¥@ G
.
¥¥G H 
GetCallbackChannel
¥¥H Z
<
¥¥Z ["
IUserSessionCallback
¥¥[ o
>
¥¥o p
(
¥¥p q
)
¥¥q r
;
¥¥r s
playerStatus
µµ 
.
µµ 
Add
µµ  
(
µµ  !
idUser
µµ! '
,
µµ' (
context
µµ) 0
)
µµ0 1
;
µµ1 2"
ICommunicationObject
∑∑ $!
communicationObject
∑∑% 8
=
∑∑9 :
(
∑∑; <"
ICommunicationObject
∑∑< P
)
∑∑P Q
context
∑∑Q X
;
∑∑X Y!
communicationObject
∏∏ #
.
∏∏# $
Closed
∏∏$ *
+=
∏∏+ -
(
∏∏. /
sender
∏∏/ 5
,
∏∏5 6
e
∏∏7 8
)
∏∏8 9
=>
∏∏: <
{
∏∏= >
RemoveClient
ππ  
(
ππ  !
idUser
ππ! '
)
ππ' (
;
ππ( )
}
∫∫ 
;
∫∫ !
communicationObject
ºº #
.
ºº# $
Faulted
ºº$ +
+=
ºº, .
(
ºº/ 0
sender
ºº0 6
,
ºº6 7
e
ºº8 9
)
ºº9 :
=>
ºº; =
{
ºº> ?
RemoveClient
ΩΩ  
(
ΩΩ  !
idUser
ΩΩ! '
)
ΩΩ' (
;
ΩΩ( )
}
ææ 
;
ææ 
context
øø 
.
øø &
GetSessionPlayerCallback
øø 0
(
øø0 1
)
øø1 2
;
øø2 3
}
¿¿ 
catch
¿¿ 
(
¿¿ $
CommunicationException
¿¿ +
ex
¿¿, .
)
¿¿. /
{
¿¿0 1

MessageBox
¡¡ 
.
¡¡ 
Show
¡¡ 
(
¡¡  
$"
¡¡  "
$str
¡¡" J
{
¡¡J K
ex
¡¡K M
.
¡¡M N
Message
¡¡N U
}
¡¡U V
"
¡¡V W
)
¡¡W X
;
¡¡X Y
}
¬¬ 
}
√√ 	
}
ƒƒ 
}≈≈ Œ
ZC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersLogicServer\Model\FriendshipModel.cs
	namespace 	&
ChineseCheckersLogicServer
 $
.$ %
Model% *
{+ ,
[		 
DataContract		 
]		 
public

 

class

 
FriendshipModel

  
{

! "
private 
int 
_idUser 
; 
private 
int 
	_idFriend 
; 
private 
string 
_requestStatus %
;% &
private 
string 
_typeNotification (
;( )
private 
string 
_idRoom 
; 
[ 	

DataMember	 
] 
public 
int 
IdUser 
{ 
get 
{  !
return" (
_idUser) 0
;0 1
}2 3
set4 7
{8 9
_idUser: A
=B C
valueD I
;I J
}K L
}M N
[ 	

DataMember	 
] 
public 
int 
IdFriend 
{ 
get !
{" #
return$ *
	_idFriend+ 4
;4 5
}6 7
set8 ;
{< =
	_idFriend> G
=H I
valueJ O
;O P
}Q R
}S T
[ 	

DataMember	 
] 
public 
string 
RequestStatus #
{$ %
get& )
{* +
return, 2
_requestStatus3 A
;A B
}C D
setE H
{I J
_requestStatusK Y
=Z [
value\ a
;a b
}c d
}e f
[ 	

DataMember	 
] 
public 
string 
TypeNotification &
{' (
get) ,
{- .
return/ 5
_typeNotification6 G
;G H
}I J
setK N
{O P
_typeNotificationQ b
=c d
valuee j
;j k
}l m
}n o
[ 	

DataMember	 
] 
public 
string 
IdRoom 
{ 
get "
{# $
return% +
_idRoom, 3
;3 4
}5 6
set7 :
{; <
_idRoom= D
=E F
valueG L
;L M
}N O
}P Q
} 
} Á
VC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersLogicServer\Model\ReportModel.cs
	namespace 	&
ChineseCheckersLogicServer
 $
.$ %
Model% *
{+ ,
[		 
DataContract		 
]		 
public

 

class

 
ReportModel

 
{

 
private 
int 
_idUser 
; 
private 
string 
_reason 
; 
private 
DateTime 
_currentDate %
;% &
private 
DateTime 
_endDate !
;! "
[ 	

DataMember	 
] 
public 
int 
IdUser 
{ 
get 
{  !
return" (
_idUser) 0
;0 1
}2 3
set4 7
{8 9
_idUser: A
=B C
valueD I
;I J
}K L
}M N
[ 	

DataMember	 
] 
public 
string 
Reason 
{ 
get "
{# $
return% +
_reason, 3
;3 4
}5 6
set7 :
{; <
_reason= D
=E F
valueG L
;L M
}N O
}P Q
[ 	

DataMember	 
] 
public 
DateTime 
CurrentDate #
{$ %
get& )
{* +
return, 2
_currentDate3 ?
;? @
}A B
setC F
{G H
_currentDateI U
=V W
valueX ]
;] ^
}_ `
}a b
[ 	

DataMember	 
] 
public 
DateTime 
EndDate 
{  !
get" %
{& '
return( .
_endDate/ 7
;7 8
}9 :
set; >
{? @
_endDateA I
=J K
valueL Q
;Q R
}S T
}U V
} 
} ¬
TC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersLogicServer\Model\RoomModel.cs
	namespace		 	&
ChineseCheckersLogicServer		
 $
.		$ %
Model		% *
{		+ ,
[

 
DataContract

 
]

 
public 

class 
	RoomModel 
{ 
private 
string 
_idRoom 
{  
get! $
;$ %
set& )
;) *
}+ ,
private 

Dictionary 
< 
string !
,! "
IMessageCallback# 3
>3 4
_players5 =
=> ?
new@ C

DictionaryD N
<N O
stringO U
,U V
IMessageCallbackW g
>g h
(h i
)i j
;j k
private 

Dictionary 
< 
string !
,! " 
IPlayersRoomCallback# 7
>7 8
_playersRoom9 E
=F G
newH K

DictionaryL V
<V W
stringW ]
,] ^ 
IPlayersRoomCallback_ s
>s t
(t u
)u v
;v w
private 

Dictionary 
< 
string !
,! "
IBoardCallback# 1
>1 2
_boardPlayers3 @
=A B
newC F

DictionaryG Q
<Q R
stringR X
,X Y
IBoardCallbackZ h
>h i
(i j
)j k
;k l
[ 	

DataMember	 
] 
public 
string 
IdRoom 
{ 
get "
{# $
return% +
_idRoom, 3
;3 4
}5 6
set7 :
{; <
_idRoom= D
=E F
valueG L
;L M
}N O
}P Q
[ 	

DataMember	 
] 
public 

Dictionary 
< 
string  
,  !
IMessageCallback" 2
>2 3
Players4 ;
{< =
get> A
{B C
returnD J
_playersK S
;S T
}U V
setW Z
{[ \
_players] e
=f g
valueh m
;m n
}o p
}q r
[ 	

DataMember	 
] 
public 

Dictionary 
< 
string  
,  ! 
IPlayersRoomCallback" 6
>6 7
PlayersRoom8 C
{D E
getF I
{J K
returnL R
_playersRoomS _
;_ `
}a b
setc f
{g h
_playersRoomi u
=v w
valuex }
;} ~
}	 Ä
}
Å Ç
[ 	

DataMember	 
] 
public 

Dictionary 
< 
string  
,  !
IBoardCallback" 0
>0 1
BoardPlayers2 >
{? @
getA D
{E F
returnG M
_boardPlayersN [
;[ \
}] ^
set_ b
{c d
_boardPlayerse r
=s t
valueu z
;z {
}| }
}~ 
} 
} ·
TC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersLogicServer\Model\UserModel.cs
	namespace		 	&
ChineseCheckersLogicServer		
 $
.		$ %
Model		% *
{		+ ,
[

 
DataContract

 
]

 
public 

class 
	UserModel 
{ 
private 
int 
_id 
; 
private 
string 
	_gamertag  
;  !
private 
string 
_email 
; 
private 
string 
	_password  
;  !
private 
string 
_imageProfile $
;$ %
private 
string 
_playerStatus $
;$ %
[ 	

DataMember	 
] 
public 
int 
Id 
{ 
get 
{ 
return $
_id% (
;( )
}* +
set, /
{0 1
_id2 5
=6 7
value8 =
;= >
}? @
}A B
[ 	

DataMember	 
] 
public 
string 
Gamertag 
{  
get! $
{% &
return' -
	_gamertag. 7
;7 8
}9 :
set; >
{? @
	_gamertagA J
=K L
valueM R
;R S
}T U
}V W
[ 	

DataMember	 
] 
public 
string 
Email 
{ 
get !
{" #
return$ *
_email+ 1
;1 2
}3 4
set5 8
{9 :
_email; A
=B C
valueD I
;I J
}K L
}M N
[ 	

DataMember	 
] 
public 
string 
Password 
{  
get! $
{% &
return' -
	_password. 7
;7 8
}9 :
set; >
{? @
	_passwordA J
=K L
valueM R
;R S
}T U
}V W
[ 	

DataMember	 
] 
public 
string 
ImageProfile "
{# $
get% (
{) *
return+ 1
_imageProfile2 ?
;? @
}A B
setC F
{G H
_imageProfileI V
=W X
valueY ^
;^ _
}` a
}b c
[ 	

DataMember	 
] 
public 
string 
PlayerStatus "
{# $
get% (
{) *
return, 2
_playerStatus3 @
;@ A
}B C
setD G
{H I
_playerStatusJ W
=X Y
valueZ _
;_ `
}a b
}c d
}   
}!! á
\C:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersLogicServer\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str 5
)5 6
]6 7
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str 7
)7 8
]8 9
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *