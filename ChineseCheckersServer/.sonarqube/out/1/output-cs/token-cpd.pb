Ÿ
oC:\Users\alexs\Desktop\JuegoTecno (2)\JuegoTecno\ChineseCheckers\ChineseCheckersLogicServer\Contracts\IBoard.cs
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
	interface 
IBoard 
{ 
[ 	
OperationContract	 
] 
bool 
ValidateGame 
( 
string  
idRoom! '
)' (
;( )
[ 	
OperationContract	 
] 
bool 
ValidateBoard 
( 
string !
idRoom" (
)( )
;) *
} 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /
ITurnCallback/ <
)< =
)= >
]> ?
public 

	interface 
ITurn 
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 

SendToTurn 
( 
string 
idRoom %
)% &
;& '
[ 	
OperationContract	 
] 
void 
AddPlayerInGame 
( 
string #
gamertag$ ,
,, -
string. 4
idRoom5 ;
); <
;< =
[ 	
OperationContract	 
] 
void  
RemovePlayerFromGame !
(! "
string" (
gamertag) 1
,1 2
string3 9
idRoom: @
)@ A
;A B
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
UpdateBoard 
( 
Point 
marble %
,% &
Point' ,
position- 5
,5 6
string7 =
idRoom> D
)D E
;E F
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
WinningPlayer 
( 
string !
idRoom" (
,( )
string* 0
gamertag1 9
)9 :
;: ;
} 
[!! 
ServiceContract!! 
]!! 
public"" 

	interface"" 
ITurnCallback"" "
{""# $
[## 	
OperationContract##	 
]## 
void$$ 
GameTurn$$ 
($$ 
string$$ 
turn$$ !
,$$! "
int$$# &
type$$' +
)$$+ ,
;$$, -
[%% 	
OperationContract%%	 
]%% 
void&& 
UpdateBoardCallback&&  
(&&  !
Point&&! &
marble&&' -
,&&- .
Point&&/ 4
position&&5 =
)&&= >
;&&> ?
['' 	
OperationContract''	 
]'' 
void(( !
WinningPlayerCallback(( "
(((" #
string((# )
gamertag((* 2
)((2 3
;((3 4
})) 
}** ∫
tC:\Users\alexs\Desktop\JuegoTecno (2)\JuegoTecno\ChineseCheckers\ChineseCheckersLogicServer\Contracts\IFriendship.cs
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
string< B
requestStatusC P
)P Q
;Q R
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
}!! ∫
pC:\Users\alexs\Desktop\JuegoTecno (2)\JuegoTecno\ChineseCheckers\ChineseCheckersLogicServer\Contracts\IReport.cs
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
[ 	
OperationContract	 
] 
DateTime 
GetDateReport 
( 
int "
idUser# )
)) *
;* +
[ 	
OperationContract	 
] 
bool 
IsBanned 
( 
int 
idUser  
)  !
;! "
[ 	
OperationContract	 
] 
bool 

IsReported 
( 
int 
idUser "
)" #
;# $
} 
} ≥)
nC:\Users\alexs\Desktop\JuegoTecno (2)\JuegoTecno\ChineseCheckers\ChineseCheckersLogicServer\Contracts\IRoom.cs
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
] 
bool 
ValidateRoom 
( 
string  
idRoom! '
)' (
;( )
[ 	
OperationContract	 
] 
bool 
ValidateBoardRoom 
( 
string %
idRoom& ,
), -
;- .
} 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /
IMessageCallback/ ?
)? @
)@ A
]A B
public 

	interface 
IMessage 
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SendMessage 
( 
string 
message  '
,' (
string) /
gamertag0 8
,8 9
string: @
idRoomA G
)G H
;H I
[ 	
OperationContract	 
] 
void 
	AddPlayer 
( 
string 
gamertag &
,& '
string( .
idRoom/ 5
)5 6
;6 7
} 
[!! 
ServiceContract!! 
]!! 
public"" 

	interface"" 
IMessageCallback"" %
{""& '
[## 	
OperationContract##	 
]## 
void$$ 
SendMessageCallback$$  
($$  !
string$$! '
message$$( /
,$$/ 0
string$$1 7
gamertag$$8 @
)$$@ A
;$$A B
}%% 
['' 
ServiceContract'' 
('' 
CallbackContract'' %
=''& '
typeof''( .
(''. / 
IPlayersRoomCallback''/ C
)''C D
)''D E
]''E F
public(( 

	interface(( 
IPlayersRoom(( !
{((" #
[)) 	
OperationContract))	 
()) 
IsOneWay)) #
=))$ %
true))& *
)))* +
]))+ ,
void** 
GetPlayersRoom** 
(** 
string** "
gamertag**# +
,**+ ,
string**- 3
idRoom**4 :
)**: ;
;**; <
[++ 	
OperationContract++	 
]++ 
void,, 
AddPlayerRoom,, 
(,, 
string,, !
gamertag,," *
,,,* +
string,,, 2
idRoom,,3 9
),,9 :
;,,: ;
[-- 	
OperationContract--	 
]-- 
void.. 
RemovePlayerRoom.. 
(.. 
string.. $
gamertag..% -
,..- .
string../ 5
idRoom..6 <
)..< =
;..= >
[// 	
OperationContract//	 
(// 
IsOneWay// #
=//$ %
true//& *
)//* +
]//+ ,
void00 
SendToBoard00 
(00 
string00 
idRoom00  &
)00& '
;00' (
[11 	
OperationContract11	 
(11 
IsOneWay11 #
=11$ %
true11& *
)11* +
]11+ ,
void22 
AssignColors22 
(22 
string22  
idRoom22! '
)22' (
;22( )
}33 
[55 
ServiceContract55 
]55 
public66 

	interface66  
IPlayersRoomCallback66 )
{66* +
[77 	
OperationContract77	 
]77 
void88 "
GetPlayersRoomCallback88 #
(88# $
List88$ (
<88( )
string88) /
>88/ 0
playersInRoom881 >
)88> ?
;88? @
[99 	
OperationContract99	 
]99 
void:: 
SendToBoardCallback::  
(::  !
)::! "
;::" #
[;; 	
OperationContract;;	 
];; 
void<<  
AssignColorsCallback<< !
(<<! "

Dictionary<<" ,
<<<, -
string<<- 3
,<<3 4
char<<5 9
><<9 :"
dictionaryPlayersColor<<; Q
)<<Q R
;<<R S
}== 
}>>  1
nC:\Users\alexs\Desktop\JuegoTecno (2)\JuegoTecno\ChineseCheckers\ChineseCheckersLogicServer\Contracts\IUser.cs
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
] 
int 
UpdateStatusPlayer 
( 
int "
idUser# )
,) *
bool+ /
status0 6
)6 7
;7 8
[ 	
OperationContract	 
] 
void 

LogoutUser 
( 
int 
idUser "
)" #
;# $
[ 	
OperationContract	 
] 
int 
ValidateEmail 
( 
	UserModel #
	userModel$ -
)- .
;. /
[ 	
OperationContract	 
] 
int 
ValidateGamertag 
( 
	UserModel &
	userModel' 0
)0 1
;1 2
[ 	
OperationContract	 
] 
int 
UpdatePassword 
( 
	UserModel $
	userModel% .
). /
;/ 0
[ 	
OperationContract	 
] 
	UserModel 
InfoUser 
( 
string !
gamertag" *
)* +
;+ ,
[   	
OperationContract  	 
]   
int!! 
UpdateInfoUser!! 
(!! 
	UserModel!! $
	usermodel!!% .
,!!. /
string!!0 6
gamertag!!7 ?
)!!? @
;!!@ A
["" 	
OperationContract""	 
]"" 
string## 
FindGamertag## 
(## 
string## "
currentGamertag### 2
,##2 3
string##4 :
friendGamertag##; I
)##I J
;##J K
[$$ 	
OperationContract$$	 
]$$ 
string%% 
GetEmail%% 
(%% 
string%% 
gamertag%% '
)%%' (
;%%( )
[&& 	
OperationContract&&	 
]&& 
int'' 
GetId'' 
('' 
string'' 
gamertag'' !
)''! "
;''" #
[(( 	
OperationContract((	 
](( 
int)) 
UpdateGamesWon)) 
()) 
int)) 
idUser)) %
)))% &
;))& '
[** 	
OperationContract**	 
]** 
int++ 
UpdateTotalGames++ 
(++ 
int++  
idUser++! '
)++' (
;++( )
[,, 	
OperationContract,,	 
],, 
int-- 
GetTotalGames-- 
(-- 
int-- 
idUser-- $
)--$ %
;--% &
[.. 	
OperationContract..	 
].. 
int// 
GetGamesWon// 
(// 
int// 
idUser// "
)//" #
;//# $
[00 	
OperationContract00	 
]00 

Dictionary11 
<11 
string11 
,11 
int11 
>11 
GetGames11  (
(11( )
)11) *
;11* +
}22 
[44 
ServiceContract44 
(44 
CallbackContract44 %
=44& '
typeof44( .
(44. /
IUserCallback44/ <
)44< =
)44= >
]44> ?
public55 

	interface55 
IUsersManager55 "
{55# $
[66 	
OperationContract66	 
(66 
IsOneWay66 #
=66$ %
true66& *
)66* +
]66+ ,
void77 

GetFriends77 
(77 
string77 
gamertag77 '
)77' (
;77( )
}88 
[:: 
ServiceContract:: 
]:: 
public;; 

	interface;; 
IUserCallback;; "
{;;# $
[<< 	
OperationContract<<	 
]<< 
void== 
GetFriendsCallback== 
(==  

Dictionary==  *
<==* +
string==+ 1
,==1 2
Tuple==3 8
<==8 9
string==9 ?
,==? @
bool==A E
>==E F
>==F G
stateFriend==H S
)==S T
;==T U
}>> 
[@@ 
ServiceContract@@ 
(@@ 
CallbackContract@@ %
=@@& '
typeof@@( .
(@@. / 
IUserSessionCallback@@/ C
)@@C D
)@@D E
]@@E F
publicAA 

	interfaceAA 
IUserSessionAA !
{AA" #
[BB 	
OperationContractBB	 
(BB 
IsOneWayBB #
=BB$ %
trueBB& *
)BB* +
]BB+ ,
voidCC 
GetSessionPlayerCC 
(CC 
intCC !
idUserCC" (
)CC( )
;CC) *
}DD 
[FF 
ServiceContractFF 
]FF 
publicGG 

	interfaceGG  
IUserSessionCallbackGG )
{GG* +
[HH 	
OperationContractHH	 
]HH 
voidII $
GetSessionPlayerCallbackII %
(II% &
boolII& *
sessionOpenedII+ 8
)II8 9
;II9 :
}JJ 
}KK ®v
yC:\Users\alexs\Desktop\JuegoTecno (2)\JuegoTecno\ChineseCheckers\ChineseCheckersLogicServer\Controller\BoardController.cs
	namespace 	&
ChineseCheckersLogicServer
 $
.$ %

Controller% /
{0 1
public 

partial 
class 
ManagerController *
:+ ,
IBoard- 3
{4 5
public 
bool 
ValidateGame  
(  !
string! '
idRoom( .
). /
{0 1
try 
{ 
if 
( 
string 
. 
IsNullOrEmpty (
(( )
idRoom) /
)/ 0
)0 1
{2 3
return 
false  
;  !
} 
return   
_playersInGame   %
.  % &
ContainsKey  & 1
(  1 2
idRoom  2 8
)  8 9
;  9 :
}!! 
catch!! 
(!! "
CommunicationException!! +
ex!!, .
)!!. /
{!!0 1

MessageBox"" 
."" 
Show"" 
(""  
$"""  "
$str""" ?
{""? @
ex""@ B
.""B C
Message""C J
}""J K
"""K L
)""L M
;""M N
return## 
false## 
;## 
}$$ 
}%% 	
public-- 
bool-- 
ValidateBoard-- !
(--! "
string--" (
idRoom--) /
)--/ 0
{--1 2
try.. 
{.. 
const// 
int// 
MIN_PLAYERS_ROOM// *
=//+ ,
$num//- .
;//. /
return00 
_playersInGame00 %
.00% &
ContainsKey00& 1
(001 2
idRoom002 8
)008 9
&&00: <
_playersInGame00= K
[00K L
idRoom00L R
]00R S
.00S T
GamePlayers00T _
.00_ `
Count00` e
>00f g
MIN_PLAYERS_ROOM00h x
;00x y
}11 
catch11 
(11 "
CommunicationException11 +
ex11, .
)11. /
{110 1

MessageBox22 
.22 
Show22 
(22  
$"22  "
$str22" ?
{22? @
ex22@ B
.22B C
Message22C J
}22J K
"22K L
)22L M
;22M N
return33 
false33 
;33 
}44 
}55 	
}66 
public:: 

partial:: 
class:: 
ManagerController:: *
:::+ ,
ITurn::- 2
{::3 4
privateBB 
staticBB 

DictionaryBB !
<BB! "
stringBB" (
,BB( )
intBB* -
>BB- .
_turnTrackerBB/ ;
=BB< =
newBB> A

DictionaryBBB L
<BBL M
stringBBM S
,BBS T
intBBU X
>BBX Y
(BBY Z
)BBZ [
;BB[ \
privateCC 
staticCC 

DictionaryCC !
<CC! "
stringCC" (
,CC( )

BoardModelCC* 4
>CC4 5
_playersInGameCC6 D
=CCE F
newCCG J

DictionaryCCK U
<CCU V
stringCCV \
,CC\ ]

BoardModelCC^ h
>CCh i
(CCi j
)CCj k
;CCk l
publicEE 
voidEE 

SendToTurnEE 
(EE 
stringEE %
idRoomEE& ,
)EE, -
{EE. /
constFF 
intFF 
IS_TURNFF 
=FF 
$numFF  !
;FF! "
constGG 
intGG 
IS_NOT_TURNGG !
=GG" #
$numGG$ %
;GG% &
tryHH 
{HH 
ifII 
(II 
_playersInGameII "
.II" #
TryGetValueII# .
(II. /
idRoomII/ 5
,II5 6
outII7 :
varII; >
boardII? D
)IID E
)IIE F
{IIG H
ifJJ 
(JJ 
!JJ 
_turnTrackerJJ %
.JJ% &
ContainsKeyJJ& 1
(JJ1 2
idRoomJJ2 8
)JJ8 9
)JJ9 :
{JJ; <
_turnTrackerKK $
[KK$ %
idRoomKK% +
]KK+ ,
=KK- .
$numKK/ 0
;KK0 1
}LL 
intMM 
nextTurnMM  
=MM! "
_turnTrackerMM# /
[MM/ 0
idRoomMM0 6
]MM6 7
;MM7 8
varNN 
keysNN 
=NN 
boardNN $
.NN$ %
GamePlayersNN% 0
.NN0 1
KeysNN1 5
.NN5 6
ToListNN6 <
(NN< =
)NN= >
;NN> ?
ifOO 
(OO 
keysOO 
.OO 
CountOO "
>OO# $
$numOO% &
)OO& '
{OO( )
stringPP 
nextGamertagPP +
=PP, -
keysPP. 2
[PP2 3
nextTurnPP3 ;
%PP< =
keysPP> B
.PPB C
CountPPC H
]PPH I
;PPI J
_turnTrackerQQ $
[QQ$ %
idRoomQQ% +
]QQ+ ,
=QQ- .
(QQ/ 0
nextTurnQQ0 8
+QQ9 :
IS_TURNQQ; B
)QQB C
%QQD E
keysQQF J
.QQJ K
CountQQK P
;QQP Q
foreachRR 
(RR  !
varRR! $
gamePlayersRR% 0
inRR1 3
boardRR4 9
.RR9 :
GamePlayersRR: E
)RRE F
{RRG H
varSS 
gamertagSS  (
=SS) *
gamePlayersSS+ 6
.SS6 7
KeySS7 :
.SS: ;
ToStringSS; C
(SSC D
)SSD E
;SSE F
varTT 
contextTT  '
=TT( )
gamePlayersTT* 5
.TT5 6
ValueTT6 ;
;TT; <
varUU 
isTurnUU  &
=UU' (
gamertagUU) 1
==UU2 4
nextGamertagUU5 A
?UUB C
IS_TURNUUD K
:UUL M
IS_NOT_TURNUUN Y
;UUY Z
contextVV #
.VV# $
GameTurnVV$ ,
(VV, -
nextGamertagVV- 9
,VV9 :
isTurnVV; A
)VVA B
;VVB C
}WW 
}XX 
}YY 
}ZZ 
catchZZ 
(ZZ "
CommunicationExceptionZZ +
exZZ, .
)ZZ. /
{ZZ0 1

MessageBox[[ 
.[[ 
Show[[ 
([[  
$"[[  "
$str[[" O
{[[O P
ex[[P R
.[[R S
Message[[S Z
}[[Z [
"[[[ \
)[[\ ]
;[[] ^
}\\ 
}]] 	
publicff 
voidff 
UpdateBoardff 
(ff  
Pointff  %
marbleff& ,
,ff, -
Pointff. 3
positionff4 <
,ff< =
stringff> D
idRoomffE K
)ffK L
{ffM N
trygg 
{gg 
ifhh 
(hh 
_playersInGamehh "
.hh" #
ContainsKeyhh# .
(hh. /
idRoomhh/ 5
)hh5 6
)hh6 7
{hh8 9

BoardModelii 
boardii $
=ii% &
_playersInGameii' 5
[ii5 6
idRoomii6 <
]ii< =
;ii= >
ifjj 
(jj 
boardjj 
!=jj  
nulljj! %
&&jj& (
boardjj) .
.jj. /
GamePlayersjj/ :
!=jj; =
nulljj> B
)jjB C
{jjD E
foreachkk 
(kk  !
varkk! $
gamePlayerskk% 0
inkk1 3
boardkk4 9
.kk9 :
GamePlayerskk: E
.kkE F
ValueskkF L
)kkL M
{kkN O
gamePlayersll '
.ll' (
UpdateBoardCallbackll( ;
(ll; <
marblell< B
,llB C
positionllD L
)llL M
;llM N
}mm 
}nn 
}oo 
}pp 
catchpp 
(pp "
CommunicationExceptionpp +
expp, .
)pp. /
{pp0 1

MessageBoxqq 
.qq 
Showqq 
(qq  
$"qq  "
$strqq" B
{qqB C
exqqC E
.qqE F
MessageqqF M
}qqM N
"qqN O
)qqO P
;qqP Q
}rr 
}ss 	
public|| 
void|| 
AddPlayerInGame|| #
(||# $
string||$ *
gamertag||+ 3
,||3 4
string||5 ;
idRoom||< B
)||B C
{||D E
try}} 
{}} 
ITurnCallback~~ 
context~~ %
=~~& '
OperationContext~~( 8
.~~8 9
Current~~9 @
.~~@ A
GetCallbackChannel~~A S
<~~S T
ITurnCallback~~T a
>~~a b
(~~b c
)~~c d
;~~d e
if
ÄÄ 
(
ÄÄ 
_rooms
ÄÄ 
.
ÄÄ 
Contains
ÄÄ #
(
ÄÄ# $
idRoom
ÄÄ$ *
)
ÄÄ* +
)
ÄÄ+ ,
{
ÄÄ- .
if
ÅÅ 
(
ÅÅ 
_playersInGame
ÅÅ &
.
ÅÅ& '
ContainsKey
ÅÅ' 2
(
ÅÅ2 3
idRoom
ÅÅ3 9
)
ÅÅ9 :
)
ÅÅ: ;
{
ÅÅ< =

BoardModel
ÇÇ "
board
ÇÇ# (
=
ÇÇ) *
_playersInGame
ÇÇ+ 9
[
ÇÇ9 :
idRoom
ÇÇ: @
]
ÇÇ@ A
;
ÇÇA B
board
ÉÉ 
.
ÉÉ 
GamePlayers
ÉÉ )
.
ÉÉ) *
Add
ÉÉ* -
(
ÉÉ- .
gamertag
ÉÉ. 6
,
ÉÉ6 7
context
ÉÉ8 ?
)
ÉÉ? @
;
ÉÉ@ A
}
ÑÑ 
else
ÑÑ 
{
ÑÑ 

BoardModel
ÖÖ "
board
ÖÖ# (
=
ÖÖ) *
new
ÖÖ+ .

BoardModel
ÖÖ/ 9
{
ÖÖ: ;
IdRoom
ÜÜ "
=
ÜÜ# $
idRoom
ÜÜ% +
}
áá 
;
áá 
board
àà 
.
àà 
GamePlayers
àà )
.
àà) *
Add
àà* -
(
àà- .
gamertag
àà. 6
,
àà6 7
context
àà8 ?
)
àà? @
;
àà@ A
_playersInGame
ââ &
.
ââ& '
Add
ââ' *
(
ââ* +
idRoom
ââ+ 1
,
ââ1 2
board
ââ3 8
)
ââ8 9
;
ââ9 :
}
ää 
}
ãã 
}
åå 
catch
åå 
(
åå $
CommunicationException
åå +
ex
åå, .
)
åå. /
{
åå0 1

MessageBox
çç 
.
çç 
Show
çç 
(
çç  
$"
çç  "
$str
çç" L
{
ççL M
ex
ççM O
.
ççO P
Message
ççP W
}
ççW X
"
ççX Y
)
ççY Z
;
ççZ [
}
éé 
}
èè 	
public
òò 
void
òò "
RemovePlayerFromGame
òò (
(
òò( )
string
òò) /
gamertag
òò0 8
,
òò8 9
string
òò: @
idRoom
òòA G
)
òòG H
{
òòI J
const
ôô 
int
ôô 
MIN_PLAYERS_ROOM
ôô &
=
ôô' (
$num
ôô) *
;
ôô* +
try
öö 
{
öö 
if
õõ 
(
õõ 
_playersInGame
õõ "
.
õõ" #
ContainsKey
õõ# .
(
õõ. /
idRoom
õõ/ 5
)
õõ5 6
)
õõ6 7
{
õõ8 9

BoardModel
úú 
board
úú $
=
úú% &
_playersInGame
úú' 5
[
úú5 6
idRoom
úú6 <
]
úú< =
;
úú= >
if
ûû 
(
ûû 
board
ûû 
.
ûû 
GamePlayers
ûû )
.
ûû) *
Count
ûû* /
>
ûû0 1
MIN_PLAYERS_ROOM
ûû2 B
)
ûûB C
{
ûûD E
board
üü 
.
üü 
GamePlayers
üü )
.
üü) *
Remove
üü* 0
(
üü0 1
gamertag
üü1 9
)
üü9 :
;
üü: ;
}
†† 
else
†† 
{
†† 
board
°° 
.
°° 
GamePlayers
°° )
.
°°) *
Remove
°°* 0
(
°°0 1
gamertag
°°1 9
)
°°9 :
;
°°: ;
_playersInGame
¢¢ &
.
¢¢& '
Remove
¢¢' -
(
¢¢- .
idRoom
¢¢. 4
)
¢¢4 5
;
¢¢5 6
}
££ 
}
§§ 
}
•• 
catch
•• 
(
•• $
CommunicationException
•• +
ex
••, .
)
••. /
{
••0 1

MessageBox
¶¶ 
.
¶¶ 
Show
¶¶ 
(
¶¶  
$"
¶¶  "
$str
¶¶" M
{
¶¶M N
ex
¶¶N P
.
¶¶P Q
Message
¶¶Q X
}
¶¶X Y
"
¶¶Y Z
)
¶¶Z [
;
¶¶[ \
}
ßß 
}
®® 	
public
±± 
void
±± 
WinningPlayer
±± !
(
±±! "
string
±±" (
idRoom
±±) /
,
±±/ 0
string
±±1 7
gamertag
±±8 @
)
±±@ A
{
±±B C
try
≤≤ 
{
≤≤ 
const
≥≥ 
int
≥≥ 
MIN_PLAYERS_ROOM
≥≥ *
=
≥≥+ ,
$num
≥≥- .
;
≥≥. /
string
¥¥ 
winningGamertag
¥¥ &
=
¥¥' (
gamertag
¥¥) 1
;
¥¥1 2
if
µµ 
(
µµ 
_playersInGame
µµ "
.
µµ" #
ContainsKey
µµ# .
(
µµ. /
idRoom
µµ/ 5
)
µµ5 6
)
µµ6 7
{
µµ8 9

BoardModel
∑∑ 
board
∑∑ $
=
∑∑% &
_playersInGame
∑∑' 5
[
∑∑5 6
idRoom
∑∑6 <
]
∑∑< =
;
∑∑= >
if
∏∏ 
(
∏∏ 
board
∏∏ 
.
∏∏ 
GamePlayers
∏∏ )
.
∏∏) *
Count
∏∏* /
==
∏∏0 2
MIN_PLAYERS_ROOM
∏∏3 C
)
∏∏C D
{
∏∏E F
winningGamertag
ππ '
=
ππ( )
board
ππ* /
.
ππ/ 0
GamePlayers
ππ0 ;
.
ππ; <
Keys
ππ< @
.
ππ@ A
FirstOrDefault
ππA O
(
ππO P
)
ππP Q
?
ππQ R
.
ππR S
ToString
ππS [
(
ππ[ \
)
ππ\ ]
;
ππ] ^
}
∫∫ 
foreach
ªª 
(
ªª 
var
ªª  
gamePlayers
ªª! ,
in
ªª- /
board
ªª0 5
.
ªª5 6
GamePlayers
ªª6 A
.
ªªA B
Values
ªªB H
)
ªªH I
{
ªªJ K
gamePlayers
ºº #
.
ºº# $#
WinningPlayerCallback
ºº$ 9
(
ºº9 :
winningGamertag
ºº: I
)
ººI J
;
ººJ K
}
ΩΩ 
}
ææ 
}
øø 
catch
øø 
(
øø $
CommunicationException
øø +
ex
øø, .
)
øø. /
{
øø0 1

MessageBox
¿¿ 
.
¿¿ 
Show
¿¿ 
(
¿¿  
$"
¿¿  "
$str
¿¿" A
{
¿¿A B
ex
¿¿B D
.
¿¿D E
Message
¿¿E L
}
¿¿L M
"
¿¿M N
)
¿¿N O
;
¿¿O P
}
¡¡ 
}
¬¬ 	
}
√√ 
}ƒƒ ão
~C:\Users\alexs\Desktop\JuegoTecno (2)\JuegoTecno\ChineseCheckers\ChineseCheckersLogicServer\Controller\FriendshipController.cs
	namespace 	&
ChineseCheckersLogicServer
 $
.$ %

Controller% /
{0 1
public 

partial 
class 
ManagerController *
:+ ,
IFriendship- 8
{9 :
public 
int 
AddFriendPlayer "
(" #
FriendshipModel# 2
friendshipModel3 B
)B C
{D E
try 
{ 
using 
( 
var 
context "
=# $
new% (#
ChineseCheckersEntities) @
(@ A
)A B
)B C
{D E
bool 
friendshipExists )
=* +
context, 3
.3 4
FriendPlayer4 @
.@ A
AnyA D
(D E
friendPlayerE Q
=>R T
friendPlayer $
.$ %
IdPlayer% -
==. 0
friendshipModel1 @
.@ A
IdUserA G
&&H J
friendPlayer   $
.  $ %
IdFriend  % -
==  . 0
friendshipModel  1 @
.  @ A
IdFriend  A I
&&  J L
friendPlayer!! $
.!!$ %
TypeNotification!!% 5
==!!6 8
friendshipModel!!9 H
.!!H I
TypeNotification!!I Y
)!!Y Z
;!!Z [
if## 
(## 
!## 
friendshipExists## )
)##) *
{##+ ,
var$$ 
friendPlayer$$ (
=$$) *
new$$+ .
FriendPlayer$$/ ;
{$$< =
IdPlayer%% $
=%%% &
friendshipModel%%' 6
.%%6 7
IdUser%%7 =
,%%= >
IdFriend&& $
=&&% &
friendshipModel&&' 6
.&&6 7
IdFriend&&7 ?
,&&? @
RequestStatus'' )
=''* +
friendshipModel'', ;
.''; <
RequestStatus''< I
,''I J
TypeNotification(( ,
=((- .
friendshipModel((/ >
.((> ?
TypeNotification((? O
,((O P
})) 
;)) 
SingletonClass** &
.**& '
Instance**' /
.**/ 0
IdRoom**0 6
=**7 8
friendshipModel**9 H
.**H I
IdRoom**I O
;**O P
context++ 
.++  
FriendPlayer++  ,
.++, -
Add++- 0
(++0 1
friendPlayer++1 =
)++= >
;++> ?
return,, 
context,, &
.,,& '
SaveChanges,,' 2
(,,2 3
),,3 4
;,,4 5
}-- 
else-- 
{-- 
return.. 
-..  
$num..  !
;..! "
}// 
}00 
}11 
catch11 
(11 
EntityException11 $
ex11% '
)11' (
{11) *

MessageBox22 
.22 
Show22 
(22  
$"22  "
$str22" @
{22@ A
ex22A C
.22C D
Message22D K
}22K L
"22L M
)22M N
;22N O
return33 
-33 
$num33 
;33 
}44 
}55 	
public?? 
int?? 
UpdateFriendPlayer?? %
(??% &
int??& )
idUser??* 0
,??0 1
int??2 5
idFriend??6 >
,??> ?
string??@ F
requestStatus??G T
)??T U
{??V W
try@@ 
{@@ 
usingAA 
(AA 
varAA 
contextAA "
=AA# $
newAA% (#
ChineseCheckersEntitiesAA) @
(AA@ A
)AAA B
)AAB C
{AAD E
varBB 
friendPlayerBB $
=BB% &
contextBB' .
.BB. /
FriendPlayerBB/ ;
.CC 
FirstOrDefaultCC '
(CC' (
friendCC( .
=>CC/ 1
friendDD "
.DD" #
IdPlayerDD# +
==DD, .
idUserDD/ 5
&&DD6 8
friendDD9 ?
.DD? @
IdFriendDD@ H
==DDI K
idFriendDDL T
)DDT U
;DDU V
ifFF 
(FF 
friendPlayerFF $
!=FF% '
nullFF( ,
)FF, -
{FF. /
friendPlayerGG $
.GG$ %
RequestStatusGG% 2
=GG3 4
requestStatusGG5 B
;GGB C
returnHH 
contextHH &
.HH& '
SaveChangesHH' 2
(HH2 3
)HH3 4
;HH4 5
}II 
elseII 
{II 
returnJJ 
-JJ  
$numJJ  !
;JJ! "
}KK 
}LL 
}MM 
catchMM 
(MM 
EntityExceptionMM $
exMM% '
)MM' (
{MM) *

MessageBoxNN 
.NN 
ShowNN 
(NN  
$"NN  "
$strNN" C
{NNC D
exNND F
.NNF G
MessageNNG N
}NNN O
"NNO P
)NNP Q
;NNQ R
returnOO 
-OO 
$numOO 
;OO 
}PP 
}QQ 	
publicYY 
intYY 
DeleteFriendPlayerYY %
(YY% &
FriendshipModelYY& 5
friendshipModelYY6 E
)YYE F
{YYG H
tryZZ 
{ZZ 
using[[ 
([[ 
var[[ 
context[[ "
=[[# $
new[[% (#
ChineseCheckersEntities[[) @
([[@ A
)[[A B
)[[B C
{[[D E
var\\ 
friendPlayer\\ $
=\\% &
context\\' .
.\\. /
FriendPlayer\\/ ;
.]] 
FirstOrDefault]] '
(]]' (
friend]]( .
=>]]/ 1
friend^^ "
.^^" #
IdPlayer^^# +
==^^, .
friendshipModel^^/ >
.^^> ?
IdUser^^? E
&&^^F H
friend__ "
.__" #
IdFriend__# +
==__, .
friendshipModel__/ >
.__> ?
IdFriend__? G
&&__H J
friend`` "
.``" #
TypeNotification``# 3
==``4 6
friendshipModel``7 F
.``F G
TypeNotification``G W
)``W X
;``X Y
ifbb 
(bb 
friendPlayerbb $
!=bb% '
nullbb( ,
)bb, -
{bb. /
contextcc 
.cc  
FriendPlayercc  ,
.cc, -
Removecc- 3
(cc3 4
friendPlayercc4 @
)cc@ A
;ccA B
returndd 
contextdd &
.dd& '
SaveChangesdd' 2
(dd2 3
)dd3 4
;dd4 5
}ee 
elseee 
{ee 
returnff 
-ff  
$numff  !
;ff! "
}gg 
}hh 
}ii 
catchii 
(ii 
EntityExceptionii $
exii% '
)ii' (
{ii) *

MessageBoxjj 
.jj 
Showjj 
(jj  
$"jj  "
$strjj" A
{jjA B
exjjB D
.jjD E
MessagejjE L
}jjL M
"jjM N
)jjN O
;jjO P
returnkk 
-kk 
$numkk 
;kk 
}ll 
}mm 	
privateww 
staticww 
readonlyww 
objectww  &
validationLockww' 5
=ww6 7
newww8 ;
objectww< B
(wwB C
)wwC D
;wwD E
publicxx 
intxx !
ValidateFriendRequestxx (
(xx( )
intxx) ,
idUserxx- 3
,xx3 4
intxx5 8
idFriendxx9 A
,xxA B
stringxxC I
requestStatusxxJ W
)xxW X
{xxY Z
tryyy 
{yy 
lockzz 
(zz 
validationLockzz $
)zz$ %
{zz& '
using{{ 
({{ 
var{{ 
context{{ &
={{' (
new{{) ,#
ChineseCheckersEntities{{- D
({{D E
){{E F
){{F G
{{{H I
bool|| 
isValidatedRequest|| /
=||0 1
context||2 9
.||9 :
FriendPlayer||: F
.}} 
Any}}  
(}}  !

userFriend}}! +
=>}}, .

userFriend}}/ 9
.}}9 :
IdPlayer}}: B
==}}C E
idUser}}F L
&&}}M O

userFriend~~/ 9
.~~9 :
IdFriend~~: B
==~~C E
idFriend~~F N
&&~~O Q

userFriend/ 9
.9 :
RequestStatus: G
==H J
requestStatusK X
)X Y
;Y Z
return
ÄÄ  
isValidatedRequest
ÄÄ 1
?
ÄÄ2 3
$num
ÄÄ4 5
:
ÄÄ6 7
-
ÄÄ8 9
$num
ÄÄ9 :
;
ÄÄ: ;
}
ÅÅ 
}
ÇÇ 
}
ÉÉ 
catch
ÉÉ 
(
ÉÉ 
EntityException
ÉÉ $
ex
ÉÉ% '
)
ÉÉ' (
{
ÉÉ) *

MessageBox
ÑÑ 
.
ÑÑ 
Show
ÑÑ 
(
ÑÑ  
$"
ÑÑ  "
$str
ÑÑ" M
{
ÑÑM N
ex
ÑÑN P
.
ÑÑP Q
Message
ÑÑQ X
}
ÑÑX Y
"
ÑÑY Z
)
ÑÑZ [
;
ÑÑ[ \
return
ÖÖ 
-
ÖÖ 
$num
ÖÖ 
;
ÖÖ 
}
ÜÜ 
}
áá 	
}
àà 
public
åå 

partial
åå 
class
åå 
ManagerController
åå *
:
åå+ , 
IUserFriendRequest
åå- ?
{
åå@ A
public
ìì 
void
ìì 
GetFriendRequest
ìì $
(
ìì$ %
int
ìì% (
idUser
ìì) /
)
ìì/ 0
{
ìì1 2

Dictionary
îî 
<
îî 
string
îî 
,
îî 
(
îî  
string
îî  &
,
îî& '
string
îî( .
,
îî. /
string
îî0 6
)
îî6 7
>
îî7 8
friendsDictionary
îî9 J
=
îîK L
new
îîM P

Dictionary
îîQ [
<
îî[ \
string
îî\ b
,
îîb c
(
îîd e
string
îîe k
,
îîk l
string
îîm s
,
îîs t
string
îîu {
)
îî{ |
>
îî| }
(
îî} ~
)
îî~ 
;îî Ä
try
ïï 
{
ïï 
const
ññ 
string
ññ 
FRIEND_REQUEST
ññ +
=
ññ, -
$str
ññ. 7
;
ññ7 8
using
óó 
(
óó 
var
óó 
context
óó "
=
óó# $
new
óó% (%
ChineseCheckersEntities
óó) @
(
óó@ A
)
óóA B
)
óóB C
{
óóD E
var
òò 

friendData
òò "
=
òò# $
(
òò% &
from
òò& *
friend
òò+ 1
in
òò2 4
context
òò5 <
.
òò< =
FriendPlayer
òò= I
join
ôô& *
user
ôô+ /
in
ôô0 2
context
ôô3 :
.
ôô: ;
UserAccount
ôô; F
on
ôôG I
friend
ôôJ P
.
ôôP Q
IdPlayer
ôôQ Y
equals
ôôZ `
user
ôôa e
.
ôôe f
Id
ôôf h
where
öö& +
friend
öö, 2
.
öö2 3
RequestStatus
öö3 @
==
ööA C
FRIEND_REQUEST
ööD R
&&
ööS U
friend
ööV \
.
öö\ ]
IdFriend
öö] e
==
ööf h
idUser
ööi o
select
õõ& ,
new
õõ- 0
{
õõ1 2
user
úú* .
.
úú. /
Id
úú/ 1
,
úú1 2
Gamertag
ùù* 2
=
ùù3 4
user
ùù5 9
.
ùù9 :
GamertagUser
ùù: F
,
ùùF G
user
ûû* .
.
ûû. /
ImageProfile
ûû/ ;
,
ûû; <
friend
üü* 0
.
üü0 1
TypeNotification
üü1 A
,
üüA B
SingletonClass
††* 8
.
††8 9
Instance
††9 A
.
††A B
IdRoom
††B H
}
°°& '
)
°°' (
.
°°( )
ToList
°°) /
(
°°/ 0
)
°°0 1
;
°°1 2
foreach
¢¢ 
(
¢¢ 
var
¢¢  
friend
¢¢! '
in
¢¢( *

friendData
¢¢+ 5
)
¢¢5 6
{
¢¢7 8
friendsDictionary
££ )
[
££) *
friend
££* 0
.
££0 1
Gamertag
££1 9
]
££9 :
=
££; <
(
££= >
friend
££> D
.
££D E
ImageProfile
££E Q
,
££Q R
friend
££S Y
.
££Y Z
TypeNotification
££Z j
,
££j k
friend
££l r
.
££r s
IdRoom
££s y
)
££y z
;
££z {
}
§§ (
IUserFriendRequestCallback
•• .
callback
••/ 7
=
••8 9
OperationContext
••: J
.
••J K
Current
••K R
.
••R S 
GetCallbackChannel
••S e
<
••e f)
IUserFriendRequestCallback••f Ä
>••Ä Å
(••Å Ç
)••Ç É
;••É Ñ
callback
¶¶ 
.
¶¶ &
GetFriendRequestCallback
¶¶ 5
(
¶¶5 6
friendsDictionary
¶¶6 G
)
¶¶G H
;
¶¶H I
}
ßß 
}
®® 
catch
®® 
(
®® $
CommunicationException
®® +
ex
®®, .
)
®®. /
{
®®0 1

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
©©" G
{
©©G H
ex
©©H J
.
©©J K
Message
©©K R
}
©©R S
"
©©S T
)
©©T U
;
©©U V
}
™™ 
catch
™™ 
(
™™ 
EntityException
™™ $
ex
™™% '
)
™™' (
{
™™) *

MessageBox
´´ 
.
´´ 
Show
´´ 
(
´´  
$"
´´  "
$str
´´" G
{
´´G H
ex
´´H J
.
´´J K
Message
´´K R
}
´´R S
"
´´S T
)
´´T U
;
´´U V
}
¨¨ 
}
≠≠ 	
}
ÆÆ 
}ØØ ±j
zC:\Users\alexs\Desktop\JuegoTecno (2)\JuegoTecno\ChineseCheckers\ChineseCheckersLogicServer\Controller\ReportController.cs
	namespace 	&
ChineseCheckersLogicServer
 $
.$ %

Controller% /
{0 1
public 

partial 
class 
ManagerController *
:+ ,
IReport- 4
{5 6
public 
int 
	AddReport 
( 
ReportModel (
reportModel) 4
)4 5
{6 7
try 
{ 
const 
int 
INITIAL_COUNTER )
=* +
$num, -
;- .
using 
( 
var 
context "
=# $
new% (#
ChineseCheckersEntities) @
(@ A
)A B
)B C
{D E
var 

reportUser "
=# $
new% (
Reports) 0
{1 2
IdUser   
=    
reportModel  ! ,
.  , -
IdUser  - 3
,  3 4
Counter!! 
=!!  !
INITIAL_COUNTER!!" 1
,!!1 2
Reason"" 
=""  
reportModel""! ,
."", -
Reason""- 3
,""3 4
DateCurrent## #
=##$ %
reportModel##& 1
.##1 2
CurrentDate##2 =
,##= >

DateFinish$$ "
=$$# $
reportModel$$% 0
.$$0 1
EndDate$$1 8
,$$8 9
}%% 
;%% 
context&& 
.&& 
Reports&& #
.&&# $
Add&&$ '
(&&' (

reportUser&&( 2
)&&2 3
;&&3 4
return'' 
context'' "
.''" #
SaveChanges''# .
(''. /
)''/ 0
;''0 1
}(( 
})) 
catch)) 
()) 
EntityException)) $
ex))% '
)))' (
{))) *

MessageBox** 
.** 
Show** 
(**  
$"**  "
$str**" ?
{**? @
ex**@ B
.**B C
Message**C J
}**J K
"**K L
)**L M
;**M N
return++ 
-++ 
$num++ 
;++ 
},, 
}-- 	
public66 
int66 
UpdateReport66 
(66  
ReportModel66  +
reportModel66, 7
)667 8
{669 :
try77 
{77 
using88 
(88 
var88 
context88 "
=88# $
new88% (#
ChineseCheckersEntities88) @
(88@ A
)88A B
)88B C
{88D E
var99 

userReport99 "
=99# $
context99% ,
.99, -
Reports99- 4
.:: 
Where:: 
(:: 
user:: #
=>::$ &
user::' +
.::+ ,
IdUser::, 2
==::3 5
reportModel::6 A
.::A B
IdUser::B H
)::H I
.;; 
FirstOrDefault;; '
(;;' (
);;( )
;;;) *
if<< 
(<< 

userReport<< "
!=<<# %
null<<& *
)<<* +
{<<, -

userReport== "
.==" #
Counter==# *
++==* ,
;==, -

userReport>> "
.>>" #
Reason>># )
=>>* +
reportModel>>, 7
.>>7 8
Reason>>8 >
;>>> ?

userReport?? "
.??" #
DateCurrent??# .
=??/ 0
reportModel??1 <
.??< =
CurrentDate??= H
;??H I

userReport@@ "
.@@" #

DateFinish@@# -
=@@. /
reportModel@@0 ;
.@@; <
EndDate@@< C
;@@C D
}AA 
returnBB 
contextBB "
.BB" #
SaveChangesBB# .
(BB. /
)BB/ 0
;BB0 1
}CC 
}DD 
catchDD 
(DD 
EntityExceptionDD $
exDD% '
)DD' (
{DD) *

MessageBoxEE 
.EE 
ShowEE 
(EE  
$"EE  "
$strEE" B
{EEB C
exEEC E
.EEE F
MessageEEF M
}EEM N
"EEN O
)EEO P
;EEP Q
returnFF 
-FF 
$numFF 
;FF 
}GG 
}HH 	
publicPP 
intPP 
DeleteReportPP 
(PP  
intPP  #
idUserPP$ *
)PP* +
{PP, -
tryQQ 
{QQ 
usingRR 
(RR 
varRR 
contextRR "
=RR# $
newRR% (#
ChineseCheckersEntitiesRR) @
(RR@ A
)RRA B
)RRB C
{RRD E
varSS 
reportToDeleteSS &
=SS' (
contextSS) 0
.SS0 1
ReportsSS1 8
.SS8 9
FirstOrDefaultSS9 G
(SSG H
reportSSH N
=>SSO Q
reportSSR X
.SSX Y
IdUserSSY _
==SS` b
idUserSSc i
)SSi j
;SSj k
ifTT 
(TT 
reportToDeleteTT &
!=TT' )
nullTT* .
)TT. /
{TT0 1
contextUU 
.UU  
ReportsUU  '
.UU' (
RemoveUU( .
(UU. /
reportToDeleteUU/ =
)UU= >
;UU> ?
}VV 
returnWW 
contextWW "
.WW" #
SaveChangesWW# .
(WW. /
)WW/ 0
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
$strZZ" @
{ZZ@ A
exZZA C
.ZZC D
MessageZZD K
}ZZK L
"ZZL M
)ZZM N
;ZZN O
return[[ 
-[[ 
$num[[ 
;[[ 
}\\ 
}]] 	
publicee 
intee 
GetNumReportsee  
(ee  !
intee! $
idUseree% +
)ee+ ,
{ee- .
tryff 
{ff 
intgg 

numReportsgg 
=gg  
-gg! "
$numgg" #
;gg# $
usinghh 
(hh 
varhh 
contexthh "
=hh# $
newhh% (#
ChineseCheckersEntitieshh) @
(hh@ A
)hhA B
)hhB C
{hhD E
varii 
counterValuesii %
=ii& '
contextii( /
.ii/ 0
Reportsii0 7
.jj 
FirstOrDefaultjj '
(jj' (
counterjj( /
=>jj0 2
counterjj3 :
.jj: ;
IdUserjj; A
==jjB D
idUserjjE K
)jjK L
;jjL M
ifkk 
(kk 
counterValueskk %
!=kk& (
nullkk) -
)kk- .
{kk/ 0

numReportsll "
=ll# $
(ll% &
intll& )
)ll) *
counterValuesll* 7
.ll7 8
Counterll8 ?
;ll? @
}mm 
returnnn 

numReportsnn %
;nn% &
}oo 
}pp 
catchpp 
(pp 
EntityExceptionpp $
expp% '
)pp' (
{pp) *

MessageBoxqq 
.qq 
Showqq 
(qq  
$"qq  "
$strqq" L
{qqL M
exqqM O
.qqO P
MessageqqP W
}qqW X
"qqX Y
)qqY Z
;qqZ [
returnrr 
-rr 
$numrr 
;rr 
}ss 
}tt 	
public|| 
DateTime|| 
GetDateReport|| %
(||% &
int||& )
idUser||* 0
)||0 1
{||2 3
try}} 
{}} 
DateTime~~ 
dateTime~~ !
=~~" #
DateTime~~$ ,
.~~, -
Now~~- 0
;~~0 1
using 
( 
var 
context "
=# $
new% (#
ChineseCheckersEntities) @
(@ A
)A B
)B C
{D E
var
ÄÄ 

dateValues
ÄÄ "
=
ÄÄ# $
context
ÄÄ% ,
.
ÄÄ, -
Reports
ÄÄ- 4
.
ÅÅ 
FirstOrDefault
ÅÅ '
(
ÅÅ' (
date
ÅÅ( ,
=>
ÅÅ- /
date
ÅÅ0 4
.
ÅÅ4 5
IdUser
ÅÅ5 ;
==
ÅÅ< >
idUser
ÅÅ? E
)
ÅÅE F
;
ÅÅF G
if
ÇÇ 
(
ÇÇ 

dateValues
ÇÇ "
!=
ÇÇ# %
null
ÇÇ& *
)
ÇÇ* +
{
ÇÇ, -
dateTime
ÉÉ  
=
ÉÉ! "
(
ÉÉ# $
DateTime
ÉÉ$ ,
)
ÉÉ, -

dateValues
ÉÉ- 7
.
ÉÉ7 8

DateFinish
ÉÉ8 B
;
ÉÉB C
}
ÑÑ 
return
ÖÖ 
dateTime
ÖÖ #
;
ÖÖ# $
}
ÜÜ 
}
áá 
catch
áá 
(
áá 
EntityException
áá $
ex
áá% '
)
áá' (
{
áá) *

MessageBox
àà 
.
àà 
Show
àà 
(
àà  
$"
àà  "
$str
àà" H
{
ààH I
ex
ààI K
.
ààK L
Message
ààL S
}
ààS T
"
ààT U
)
ààU V
;
ààV W
return
ââ 
DateTime
ââ 
.
ââ  
Now
ââ  #
;
ââ# $
}
ää 
}
ãã 	
public
ìì 
bool
ìì 

IsReported
ìì 
(
ìì 
int
ìì "
idUser
ìì# )
)
ìì) *
{
ìì+ ,
try
îî 
{
îî 
bool
ïï 

isReported
ïï 
=
ïï  !
true
ïï" &
;
ïï& '
DateTime
ññ 
dateTime
ññ !
;
ññ! "
using
óó 
(
óó 
var
óó 
context
óó "
=
óó# $
new
óó% (%
ChineseCheckersEntities
óó) @
(
óó@ A
)
óóA B
)
óóB C
{
óóD E
var
òò 

dateValues
òò "
=
òò# $
context
òò% ,
.
òò, -
Reports
òò- 4
.
ôô 
FirstOrDefault
ôô '
(
ôô' (
date
ôô( ,
=>
ôô- /
date
ôô0 4
.
ôô4 5
IdUser
ôô5 ;
==
ôô< >
idUser
ôô? E
)
ôôE F
;
ôôF G
if
öö 
(
öö 

dateValues
öö "
!=
öö# %
null
öö& *
)
öö* +
{
öö, -
dateTime
õõ  
=
õõ! "
(
õõ# $
DateTime
õõ$ ,
)
õõ, -

dateValues
õõ- 7
.
õõ7 8

DateFinish
õõ8 B
;
õõB C
if
úú 
(
úú 
dateTime
úú $
>
úú% &
DateTime
úú' /
.
úú/ 0
Now
úú0 3
)
úú3 4
{
úú5 6

isReported
ùù &
=
ùù' (
false
ùù) .
;
ùù. /
}
ûû 
}
üü 
return
†† 

isReported
†† %
;
††% &
}
°° 
}
¢¢ 
catch
¢¢ 
(
¢¢ 
EntityException
¢¢ $
ex
¢¢% '
)
¢¢' (
{
¢¢) *

MessageBox
££ 
.
££ 
Show
££ 
(
££  
$"
££  "
$str
££" ?
{
££? @
ex
££@ B
.
££B C
Message
££C J
}
££J K
"
££K L
)
££L M
;
££M N
return
§§ 
false
§§ 
;
§§ 
}
•• 
}
¶¶ 	
public
ÆÆ 
bool
ÆÆ 
IsBanned
ÆÆ 
(
ÆÆ 
int
ÆÆ  
idUser
ÆÆ! '
)
ÆÆ' (
{
ÆÆ) *
try
ØØ 
{
ØØ 
const
∞∞ 
string
∞∞ 
BANNED
∞∞ #
=
∞∞$ %
$str
∞∞& )
;
∞∞) *
bool
±± 
isBanned
±± 
=
±± 
false
±±  %
;
±±% &
using
≤≤ 
(
≤≤ 
var
≤≤ 
context
≤≤ "
=
≤≤# $
new
≤≤% (%
ChineseCheckersEntities
≤≤) @
(
≤≤@ A
)
≤≤A B
)
≤≤B C
{
≤≤D E
var
≥≥ 

userBanned
≥≥ "
=
≥≥# $
context
≥≥% ,
.
≥≥, -
User
≥≥- 1
.
¥¥ 
FirstOrDefault
¥¥ '
(
¥¥' (
banned
¥¥( .
=>
¥¥/ 1
banned
¥¥2 8
.
¥¥8 9
Id
¥¥9 ;
==
¥¥< >
idUser
¥¥? E
)
¥¥E F
;
¥¥F G
if
µµ 
(
µµ 

userBanned
µµ "
!=
µµ# %
null
µµ& *
&&
µµ+ -

userBanned
µµ. 8
.
µµ8 9
PlayerStatus
µµ9 E
.
µµE F
Equals
µµF L
(
µµL M
BANNED
µµM S
)
µµS T
)
µµT U
{
µµV W
isBanned
∂∂  
=
∂∂! "
true
∂∂# '
;
∂∂' (
}
∑∑ 
return
∏∏ 
isBanned
∏∏ #
;
∏∏# $
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
ªª" =
{
ªª= >
ex
ªª> @
.
ªª@ A
Message
ªªA H
}
ªªH I
"
ªªI J
)
ªªJ K
;
ªªK L
return
ºº 
false
ºº 
;
ºº 
}
ΩΩ 
}
ææ 	
}
øø 
}¿¿ ﬂ›
xC:\Users\alexs\Desktop\JuegoTecno (2)\JuegoTecno\ChineseCheckers\ChineseCheckersLogicServer\Controller\RoomController.cs
	namespace 	&
ChineseCheckersLogicServer
 $
.$ %

Controller% /
{0 1
public 

partial 
class 
ManagerController *
:+ ,
IRoom- 2
{3 4
private 
static 
readonly 
List  $
<$ %
string% +
>+ ,
_rooms- 3
=4 5
new6 9
List: >
<> ?
string? E
>E F
(F G
)G H
;H I
public 
string 

CreateRoom  
(  !
string! '
gamertag( 0
)0 1
{2 3
try 
{ 
string 
idRoom 
; 
do 
{ 
idRoom   
=   

GenerateId   '
(  ' (
)  ( )
;  ) *
}!! 
while!! 
(!! 
_rooms!! 
.!!  
Contains!!  (
(!!( )
idRoom!!) /
)!!/ 0
)!!0 1
;!!1 2
_rooms"" 
."" 
Add"" 
("" 
idRoom"" !
)""! "
;""" #
return## 
idRoom## 
;## 
}$$ 
catch$$ 
($$ "
CommunicationException$$ +
ex$$, .
)$$. /
{$$0 1

MessageBox%% 
.%% 
Show%% 
(%%  
$"%%  "
$str%%" :
{%%: ;
ex%%; =
.%%= >
Message%%> E
}%%E F
"%%F G
)%%G H
;%%H I
return&& 
null&& 
;&& 
}'' 
}(( 	
public// 
string// 

GenerateId//  
(//  !
)//! "
{//# $
try00 
{00 
const11 
string11 

CHARACTERS11 '
=11( )
$str11* 6
;116 7
const22 
int22 
MAX_PLAYERS22 %
=22& '
$num22( )
;22) *
StringBuilder33 
id33  
=33! "
new33# &
StringBuilder33' 4
(334 5
)335 6
;336 7
using55 
(55 
var55 
randomGenerator55 *
=55+ ,!
RandomNumberGenerator55- B
.55B C
Create55C I
(55I J
)55J K
)55K L
{55M N
byte66 
[66 
]66 
data66 
=66  !
new66" %
byte66& *
[66* +
MAX_PLAYERS66+ 6
]666 7
;667 8
randomGenerator88 #
.88# $
GetBytes88$ ,
(88, -
data88- 1
)881 2
;882 3
for:: 
(:: 
int:: 
i:: 
=::  
$num::! "
;::" #
i::$ %
<::& '
MAX_PLAYERS::( 3
;::3 4
i::5 6
++::6 8
)::8 9
{::: ;
int;; 
index;; !
=;;" #
data;;$ (
[;;( )
i;;) *
];;* +
%;;, -

CHARACTERS;;. 8
.;;8 9
Length;;9 ?
;;;? @
id<< 
.<< 
Append<< !
(<<! "

CHARACTERS<<" ,
[<<, -
index<<- 2
]<<2 3
)<<3 4
;<<4 5
}== 
}>> 
return?? 
id?? 
.?? 
ToString?? "
(??" #
)??# $
;??$ %
}@@ 
catch@@ 
(@@ "
CommunicationException@@ +
ex@@, .
)@@. /
{@@0 1

MessageBoxAA 
.AA 
ShowAA 
(AA  
$"AA  "
$strAA" :
{AA: ;
exAA; =
.AA= >
MessageAA> E
}AAE F
"AAF G
)AAG H
;AAH I
returnBB 
nullBB 
;BB 
}CC 
}DD 	
publicLL 
voidLL 
RemovePlayerLL  
(LL  !
stringLL! '
gamertagLL( 0
,LL0 1
stringLL2 8
idRoomLL9 ?
)LL? @
{LLA B
tryMM 
{MM 
constNN 
intNN 
MIN_PLAYERSNN %
=NN& '
$numNN( )
;NN) *
ifOO 
(OO 
_playersInRoomOO "
.OO" #
ContainsKeyOO# .
(OO. /
idRoomOO/ 5
)OO5 6
)OO6 7
{OO8 9
	RoomModelPP 
roomPP "
=PP# $
_playersInRoomPP% 3
[PP3 4
idRoomPP4 :
]PP: ;
;PP; <
ifRR 
(RR 
roomRR 
.RR 
PlayersRR $
.RR$ %
CountRR% *
>RR+ ,
MIN_PLAYERSRR- 8
)RR8 9
{RR: ;
roomSS 
.SS 
PlayersSS $
.SS$ %
RemoveSS% +
(SS+ ,
gamertagSS, 4
)SS4 5
;SS5 6
}UU 
elseUU 
{UU 
roomVV 
.VV 
PlayersVV $
.VV$ %
RemoveVV% +
(VV+ ,
gamertagVV, 4
)VV4 5
;VV5 6
_playersInRoomWW &
.WW& '
RemoveWW' -
(WW- .
idRoomWW. 4
)WW4 5
;WW5 6
_roomsXX 
.XX 
RemoveXX %
(XX% &
idRoomXX& ,
)XX, -
;XX- .
}YY 
}ZZ 
}[[ 
catch[[ 
([[ "
CommunicationException[[ +
ex[[, .
)[[. /
{[[0 1

MessageBox\\ 
.\\ 
Show\\ 
(\\  
$"\\  "
$str\\" I
{\\I J
ex\\J L
.\\L M
Message\\M T
}\\T U
"\\U V
)\\V W
;\\W X
}]] 
}^^ 	
publicff 
boolff 
ValidateRoomff  
(ff  !
stringff! '
idRoomff( .
)ff. /
{ff0 1
trygg 
{gg 
returnhh 
_roomshh 
.hh 
Containshh "
(hh" #
idRoomhh# )
)hh) *
;hh* +
}ii 
catchii 
(ii "
CommunicationExceptionii +
exii, .
)ii. /
{ii0 1

MessageBoxjj 
.jj 
Showjj 
(jj  
$"jj  "
$strjj" <
{jj< =
exjj= ?
.jj? @
Messagejj@ G
}jjG H
"jjH I
)jjI J
;jjJ K
returnkk 
falsekk 
;kk 
}ll 
}mm 	
publicuu 
booluu 
ValidateBoardRoomuu %
(uu% &
stringuu& ,
idRoomuu- 3
)uu3 4
{uu5 6
tryvv 
{vv 
constww 
intww 
MAX_PLAYERSww %
=ww& '
$numww( )
;ww) *
constxx 
intxx 
MIN_PLAYERSxx %
=xx& '
$numxx( )
;xx) *
returnyy 
_playersRoomyy #
.yy# $
ContainsKeyyy$ /
(yy/ 0
idRoomyy0 6
)yy6 7
&&yy8 :
_playersRoomyy; G
[yyG H
idRoomyyH N
]yyN O
.yyO P
PlayersRoomyyP [
.yy[ \
Countyy\ a
>yyb c
MIN_PLAYERSyyd o
&&yyp r
_playersRoomyys 
[	yy Ä
idRoom
yyÄ Ü
]
yyÜ á
.
yyá à
PlayersRoom
yyà ì
.
yyì î
Count
yyî ô
<=
yyö ú
MAX_PLAYERS
yyù ®
;
yy® ©
}zz 
catchzz 
(zz "
CommunicationExceptionzz +
exzz, .
)zz. /
{zz0 1

MessageBox{{ 
.{{ 
Show{{ 
({{  
$"{{  "
$str{{" <
{{{< =
ex{{= ?
.{{? @
Message{{@ G
}{{G H
"{{H I
){{I J
;{{J K
return|| 
false|| 
;|| 
}}} 
}~~ 	
} 
public
ÉÉ 

partial
ÉÉ 
class
ÉÉ 
ManagerController
ÉÉ *
:
ÉÉ+ ,
IMessage
ÉÉ- 5
{
ÉÉ6 7
private
åå 
static
åå 
readonly
åå 

Dictionary
åå  *
<
åå* +
string
åå+ 1
,
åå1 2
	RoomModel
åå3 <
>
åå< =
_playersInRoom
åå> L
=
ååM N
new
ååO R

Dictionary
ååS ]
<
åå] ^
string
åå^ d
,
ååd e
	RoomModel
ååf o
>
ååo p
(
ååp q
)
ååq r
;
åår s
public
çç 
void
çç 
SendMessage
çç 
(
çç  
string
çç  &
message
çç' .
,
çç. /
string
çç0 6
gamertag
çç7 ?
,
çç? @
string
ççA G
idRoom
ççH N
)
ççN O
{
ççP Q
try
éé 
{
éé 
if
èè 
(
èè 
_playersInRoom
èè "
.
èè" #
ContainsKey
èè# .
(
èè. /
idRoom
èè/ 5
)
èè5 6
)
èè6 7
{
èè8 9
	RoomModel
êê 
room
êê "
=
êê# $
_playersInRoom
êê% 3
[
êê3 4
idRoom
êê4 :
]
êê: ;
;
êê; <
if
ëë 
(
ëë 
room
ëë 
!=
ëë 
null
ëë  $
&&
ëë% '
room
ëë( ,
.
ëë, -
Players
ëë- 4
!=
ëë5 7
null
ëë8 <
)
ëë< =
{
ëë> ?
foreach
íí 
(
íí  !
var
íí! $
players
íí% ,
in
íí- /
room
íí0 4
.
íí4 5
Players
íí5 <
.
íí< =
Values
íí= C
)
ííC D
{
ííE F
players
ìì #
.
ìì# $!
SendMessageCallback
ìì$ 7
(
ìì7 8
message
ìì8 ?
,
ìì? @
gamertag
ììA I
)
ììI J
;
ììJ K
}
îî 
}
ïï 
}
ññ 
}
óó 
catch
óó 
(
óó $
CommunicationException
óó +
ex
óó, .
)
óó. /
{
óó0 1

MessageBox
òò 
.
òò 
Show
òò 
(
òò  
$"
òò  "
$str
òò" >
{
òò> ?
ex
òò? A
.
òòA B
Message
òòB I
}
òòI J
"
òòJ K
)
òòK L
;
òòL M
}
ôô 
}
öö 	
public
¢¢ 
void
¢¢ 
	AddPlayer
¢¢ 
(
¢¢ 
string
¢¢ $
gamertag
¢¢% -
,
¢¢- .
string
¢¢/ 5
idRoom
¢¢6 <
)
¢¢< =
{
¢¢> ?
try
££ 
{
££ 
IMessageCallback
§§  
context
§§! (
=
§§) *
OperationContext
§§+ ;
.
§§; <
Current
§§< C
.
§§C D 
GetCallbackChannel
§§D V
<
§§V W
IMessageCallback
§§W g
>
§§g h
(
§§h i
)
§§i j
;
§§j k
if
•• 
(
•• 
_playersInRoom
•• "
.
••" #
ContainsKey
••# .
(
••. /
idRoom
••/ 5
)
••5 6
)
••6 7
{
••8 9
	RoomModel
¶¶ 
room
¶¶ "
=
¶¶# $
_playersInRoom
¶¶% 3
[
¶¶3 4
idRoom
¶¶4 :
]
¶¶: ;
;
¶¶; <
room
ßß 
.
ßß 
Players
ßß  
.
ßß  !
Add
ßß! $
(
ßß$ %
gamertag
ßß% -
,
ßß- .
context
ßß/ 6
)
ßß6 7
;
ßß7 8
}
®® 
else
®® 
{
®® 
	RoomModel
©© 
room
©© "
=
©©# $
new
©©% (
	RoomModel
©©) 2
{
©©3 4
IdRoom
™™ 
=
™™  
idRoom
™™! '
}
´´ 
;
´´ 
room
¨¨ 
.
¨¨ 
Players
¨¨  
.
¨¨  !
Add
¨¨! $
(
¨¨$ %
gamertag
¨¨% -
,
¨¨- .
context
¨¨/ 6
)
¨¨6 7
;
¨¨7 8
_playersInRoom
≠≠ "
.
≠≠" #
Add
≠≠# &
(
≠≠& '
idRoom
≠≠' -
,
≠≠- .
room
≠≠/ 3
)
≠≠3 4
;
≠≠4 5
}
ÆÆ 
}
ØØ 
catch
ØØ 
(
ØØ $
CommunicationException
ØØ +
ex
ØØ, .
)
ØØ. /
{
ØØ0 1

MessageBox
∞∞ 
.
∞∞ 
Show
∞∞ 
(
∞∞  
$"
∞∞  "
$str
∞∞" G
{
∞∞G H
ex
∞∞H J
.
∞∞J K
Message
∞∞K R
}
∞∞R S
"
∞∞S T
)
∞∞T U
;
∞∞U V
}
±± 
}
≤≤ 	
}
≥≥ 
public
∑∑ 

partial
∑∑ 
class
∑∑ 
ManagerController
∑∑ *
:
∑∑+ ,
IPlayersRoom
∑∑- 9
{
∑∑: ;
private
øø 
static
øø 
readonly
øø 

Dictionary
øø  *
<
øø* +
string
øø+ 1
,
øø1 2
	RoomModel
øø3 <
>
øø< =
_playersRoom
øø> J
=
øøK L
new
øøM P

Dictionary
øøQ [
<
øø[ \
string
øø\ b
,
øøb c
	RoomModel
øød m
>
øøm n
(
øøn o
)
øøo p
;
øøp q
private
¿¿ 
static
¿¿ 
readonly
¿¿ 

Dictionary
¿¿  *
<
¿¿* +
string
¿¿+ 1
,
¿¿1 2
List
¿¿3 7
<
¿¿7 8
String
¿¿8 >
>
¿¿> ?
>
¿¿? @$
_playersRoomDictionary
¿¿A W
=
¿¿X Y
new
¿¿Z ]

Dictionary
¿¿^ h
<
¿¿h i
string
¿¿i o
,
¿¿o p
List
¿¿q u
<
¿¿u v
String
¿¿v |
>
¿¿| }
>
¿¿} ~
(
¿¿~ 
)¿¿ Ä
;¿¿Ä Å
public
¡¡ 
void
¡¡ 
AddPlayerRoom
¡¡ !
(
¡¡! "
string
¡¡" (
gamertag
¡¡) 1
,
¡¡1 2
string
¡¡3 9
idRoom
¡¡: @
)
¡¡@ A
{
¡¡B C
try
¬¬ 
{
¬¬ "
IPlayersRoomCallback
√√ $
context
√√% ,
=
√√- .
OperationContext
√√/ ?
.
√√? @
Current
√√@ G
.
√√G H 
GetCallbackChannel
√√H Z
<
√√Z ["
IPlayersRoomCallback
√√[ o
>
√√o p
(
√√p q
)
√√q r
;
√√r s
if
≈≈ 
(
≈≈ 
_rooms
≈≈ 
.
≈≈ 
Contains
≈≈ #
(
≈≈# $
idRoom
≈≈$ *
)
≈≈* +
)
≈≈+ ,
{
≈≈- .
if
∆∆ 
(
∆∆ 
_playersRoom
∆∆ $
.
∆∆$ %
ContainsKey
∆∆% 0
(
∆∆0 1
idRoom
∆∆1 7
)
∆∆7 8
)
∆∆8 9
{
∆∆: ;
	RoomModel
«« !
room
««" &
=
««' (
_playersRoom
««) 5
[
««5 6
idRoom
««6 <
]
««< =
;
««= >
room
»» 
.
»» 
PlayersRoom
»» (
.
»»( )
Add
»») ,
(
»», -
gamertag
»»- 5
,
»»5 6
context
»»7 >
)
»»> ?
;
»»? @
List
…… 
<
…… 
string
…… #
>
……# $
listPlayers
……% 0
=
……1 2$
_playersRoomDictionary
……3 I
[
……I J
idRoom
……J P
]
……P Q
;
……Q R
listPlayers
   #
.
  # $
Add
  $ '
(
  ' (
gamertag
  ( 0
)
  0 1
;
  1 2$
_playersRoomDictionary
ÀÀ .
[
ÀÀ. /
idRoom
ÀÀ/ 5
]
ÀÀ5 6
=
ÀÀ7 8
listPlayers
ÀÀ9 D
;
ÀÀD E
}
ÃÃ 
else
ÃÃ 
{
ÃÃ 
	RoomModel
ÕÕ !
room
ÕÕ" &
=
ÕÕ' (
new
ÕÕ) ,
	RoomModel
ÕÕ- 6
{
ÕÕ7 8
IdRoom
ŒŒ "
=
ŒŒ# $
idRoom
ŒŒ% +
}
œœ 
;
œœ 
room
–– 
.
–– 
PlayersRoom
–– (
.
––( )
Add
––) ,
(
––, -
gamertag
––- 5
,
––5 6
context
––7 >
)
––> ?
;
––? @
_playersRoom
—— $
.
——$ %
Add
——% (
(
——( )
idRoom
——) /
,
——/ 0
room
——1 5
)
——5 6
;
——6 7
List
““ 
<
““ 
string
““ #
>
““# $
listPlayers
““% 0
=
““1 2
new
““3 6
List
““7 ;
<
““; <
string
““< B
>
““B C
(
““C D
)
““D E
;
““E F
listPlayers
”” #
.
””# $
Add
””$ '
(
””' (
gamertag
””( 0
)
””0 1
;
””1 2$
_playersRoomDictionary
‘‘ .
.
‘‘. /
Add
‘‘/ 2
(
‘‘2 3
idRoom
‘‘3 9
,
‘‘9 :
listPlayers
‘‘; F
)
‘‘F G
;
‘‘G H
}
’’ 
}
÷÷ 
}
◊◊ 
catch
◊◊ 
(
◊◊ $
CommunicationException
◊◊ +
ex
◊◊, .
)
◊◊. /
{
◊◊0 1

MessageBox
ÿÿ 
.
ÿÿ 
Show
ÿÿ 
(
ÿÿ  
$"
ÿÿ  "
$str
ÿÿ" U
{
ÿÿU V
ex
ÿÿV X
.
ÿÿX Y
Message
ÿÿY `
}
ÿÿ` a
"
ÿÿa b
)
ÿÿb c
;
ÿÿc d
}
ŸŸ 
}
⁄⁄ 	
public
‚‚ 
void
‚‚ 
GetPlayersRoom
‚‚ "
(
‚‚" #
string
‚‚# )
gamertag
‚‚* 2
,
‚‚2 3
string
‚‚4 :
idRoom
‚‚; A
)
‚‚A B
{
‚‚C D
try
„„ 
{
„„ 
if
‰‰ 
(
‰‰ 
_playersRoom
‰‰  
.
‰‰  !
ContainsKey
‰‰! ,
(
‰‰, -
idRoom
‰‰- 3
)
‰‰3 4
)
‰‰4 5
{
‰‰6 7
	RoomModel
ÂÂ 
room
ÂÂ "
=
ÂÂ# $
_playersRoom
ÂÂ% 1
[
ÂÂ1 2
idRoom
ÂÂ2 8
]
ÂÂ8 9
;
ÂÂ9 :
if
ÊÊ 
(
ÊÊ 
room
ÊÊ 
!=
ÊÊ 
null
ÊÊ  $
&&
ÊÊ% '
room
ÊÊ( ,
.
ÊÊ, -
PlayersRoom
ÊÊ- 8
!=
ÊÊ9 ;
null
ÊÊ< @
)
ÊÊ@ A
{
ÊÊB C
List
ÁÁ 
<
ÁÁ 
string
ÁÁ #
>
ÁÁ# $
listPlayers
ÁÁ% 0
=
ÁÁ1 2$
_playersRoomDictionary
ÁÁ3 I
[
ÁÁI J
idRoom
ÁÁJ P
]
ÁÁP Q
;
ÁÁQ R
foreach
ËË 
(
ËË  !
var
ËË! $
players
ËË% ,
in
ËË- /
room
ËË0 4
.
ËË4 5
PlayersRoom
ËË5 @
.
ËË@ A
Values
ËËA G
)
ËËG H
{
ËËI J
players
ÈÈ #
.
ÈÈ# $$
GetPlayersRoomCallback
ÈÈ$ :
(
ÈÈ: ;
listPlayers
ÈÈ; F
)
ÈÈF G
;
ÈÈG H
}
ÍÍ 
}
ÎÎ 
}
ÏÏ 
}
ÌÌ 
catch
ÌÌ 
(
ÌÌ $
CommunicationException
ÌÌ +
ex
ÌÌ, .
)
ÌÌ. /
{
ÌÌ0 1

MessageBox
ÓÓ 
.
ÓÓ 
Show
ÓÓ 
(
ÓÓ  
$"
ÓÓ  "
$str
ÓÓ" M
{
ÓÓM N
ex
ÓÓN P
.
ÓÓP Q
Message
ÓÓQ X
}
ÓÓX Y
"
ÓÓY Z
)
ÓÓZ [
;
ÓÓ[ \
}
ÔÔ 
}
 	
public
˜˜ 
void
˜˜ 
SendToBoard
˜˜ 
(
˜˜  
string
˜˜  &
idRoom
˜˜' -
)
˜˜- .
{
˜˜/ 0
try
¯¯ 
{
¯¯ 
if
˘˘ 
(
˘˘ 
_playersRoom
˘˘  
.
˘˘  !
ContainsKey
˘˘! ,
(
˘˘, -
idRoom
˘˘- 3
)
˘˘3 4
)
˘˘4 5
{
˘˘6 7
	RoomModel
˙˙ 
room
˙˙ "
=
˙˙# $
_playersRoom
˙˙% 1
[
˙˙1 2
idRoom
˙˙2 8
]
˙˙8 9
;
˙˙9 :
if
˚˚ 
(
˚˚ 
room
˚˚ 
!=
˚˚ 
null
˚˚  $
&&
˚˚% '
room
˚˚( ,
.
˚˚, -
PlayersRoom
˚˚- 8
!=
˚˚9 ;
null
˚˚< @
)
˚˚@ A
{
˚˚B C
foreach
¸¸ 
(
¸¸  !
var
¸¸! $
players
¸¸% ,
in
¸¸- /
room
¸¸0 4
.
¸¸4 5
PlayersRoom
¸¸5 @
.
¸¸@ A
Values
¸¸A G
)
¸¸G H
{
¸¸I J
players
˝˝ #
.
˝˝# $!
SendToBoardCallback
˝˝$ 7
(
˝˝7 8
)
˝˝8 9
;
˝˝9 :
}
˛˛ 
}
ˇˇ 
}
ÄÄ 
}
ÅÅ 
catch
ÅÅ 
(
ÅÅ $
CommunicationException
ÅÅ +
ex
ÅÅ, .
)
ÅÅ. /
{
ÅÅ0 1

MessageBox
ÇÇ 
.
ÇÇ 
Show
ÇÇ 
(
ÇÇ  
$"
ÇÇ  "
$str
ÇÇ" P
{
ÇÇP Q
ex
ÇÇQ S
.
ÇÇS T
Message
ÇÇT [
}
ÇÇ[ \
"
ÇÇ\ ]
)
ÇÇ] ^
;
ÇÇ^ _
}
ÉÉ 
}
ÑÑ 	
public
åå 
void
åå 
RemovePlayerRoom
åå $
(
åå$ %
string
åå% +
gamertag
åå, 4
,
åå4 5
string
åå6 <
idRoom
åå= C
)
ååC D
{
ååE F
try
çç 
{
çç 
const
éé 
int
éé 
MIN_PLAYERS
éé %
=
éé& '
$num
éé( )
;
éé) *
if
èè 
(
èè 
_playersRoom
èè  
.
èè  !
ContainsKey
èè! ,
(
èè, -
idRoom
èè- 3
)
èè3 4
)
èè4 5
{
èè6 7
	RoomModel
êê 
room
êê "
=
êê# $
_playersRoom
êê% 1
[
êê1 2
idRoom
êê2 8
]
êê8 9
;
êê9 :
if
íí 
(
íí $
_playersRoomDictionary
íí .
.
íí. /
ContainsKey
íí/ :
(
íí: ;
idRoom
íí; A
)
ííA B
)
ííB C
{
ííD E
List
ìì 
<
ìì 
string
ìì #
>
ìì# $
listPlayers
ìì% 0
=
ìì1 2$
_playersRoomDictionary
ìì3 I
[
ììI J
idRoom
ììJ P
]
ììP Q
;
ììQ R
listPlayers
îî #
.
îî# $
Remove
îî$ *
(
îî* +
gamertag
îî+ 3
)
îî3 4
;
îî4 5$
_playersRoomDictionary
ïï .
[
ïï. /
idRoom
ïï/ 5
]
ïï5 6
=
ïï7 8
listPlayers
ïï9 D
;
ïïD E
}
ññ 
if
óó 
(
óó 
room
óó 
.
óó 
PlayersRoom
óó (
.
óó( )
Count
óó) .
>
óó/ 0
MIN_PLAYERS
óó1 <
)
óó< =
{
óó> ?
room
òò 
.
òò 
PlayersRoom
òò (
.
òò( )
Remove
òò) /
(
òò/ 0
gamertag
òò0 8
)
òò8 9
;
òò9 :
}
ôô 
else
ôô 
{
ôô 
room
öö 
.
öö 
Players
öö $
.
öö$ %
Remove
öö% +
(
öö+ ,
gamertag
öö, 4
)
öö4 5
;
öö5 6
_playersRoom
õõ $
.
õõ$ %
Remove
õõ% +
(
õõ+ ,
idRoom
õõ, 2
)
õõ2 3
;
õõ3 4
_rooms
úú 
.
úú 
Remove
úú %
(
úú% &
idRoom
úú& ,
)
úú, -
;
úú- .
}
ùù 
}
ûû 
}
üü 
catch
üü 
(
üü $
CommunicationException
üü +
ex
üü, .
)
üü. /
{
üü0 1

MessageBox
†† 
.
†† 
Show
†† 
(
††  
$"
††  "
$str
††" I
{
††I J
ex
††J L
.
††L M
Message
††M T
}
††T U
"
††U V
)
††V W
;
††W X
}
°° 
}
¢¢ 	
public
©© 
void
©© 
AssignColors
©©  
(
©©  !
string
©©! '
idRoom
©©( .
)
©©. /
{
©©0 1

Dictionary
™™ 
<
™™ 
string
™™ 
,
™™ 
char
™™ #
>
™™# $$
dictionaryPlayersColor
™™% ;
=
™™< =
new
™™> A

Dictionary
™™B L
<
™™L M
string
™™M S
,
™™S T
char
™™U Y
>
™™Y Z
(
™™Z [
)
™™[ \
;
™™\ ]
try
´´ 
{
´´ 
if
¨¨ 
(
¨¨ 
_playersRoom
¨¨  
.
¨¨  !
TryGetValue
¨¨! ,
(
¨¨, -
idRoom
¨¨- 3
,
¨¨3 4
out
¨¨5 8
var
¨¨9 <
room
¨¨= A
)
¨¨A B
&&
¨¨C E
room
¨¨F J
!=
¨¨K M
null
¨¨N R
&&
¨¨S U
room
¨¨V Z
.
¨¨Z [
PlayersRoom
¨¨[ f
!=
¨¨g i
null
¨¨j n
)
¨¨n o
{
¨¨p q
char
≠≠ 
[
≠≠ 
]
≠≠ 
colors
≠≠ !
=
≠≠" #
null
≠≠$ (
;
≠≠( )
switch
ÆÆ 
(
ÆÆ 
room
ÆÆ  
.
ÆÆ  !
PlayersRoom
ÆÆ! ,
.
ÆÆ, -
Count
ÆÆ- 2
)
ÆÆ2 3
{
ÆÆ4 5
case
ØØ 
$num
ØØ 
:
ØØ 
colors
∞∞ "
=
∞∞# $
room
∞∞% )
.
∞∞) * 
ColorForTwoPlayers
∞∞* <
;
∞∞< =
break
±± !
;
±±! "
case
≤≤ 
$num
≤≤ 
:
≤≤ 
colors
≥≥ "
=
≥≥# $
room
≥≥% )
.
≥≥) *"
ColorForThreePlayers
≥≥* >
;
≥≥> ?
break
¥¥ !
;
¥¥! "
case
µµ 
$num
µµ 
:
µµ 
colors
∂∂ "
=
∂∂# $
room
∂∂% )
.
∂∂) *!
ColorForFourPlayers
∂∂* =
;
∂∂= >
break
∑∑ !
;
∑∑! "
case
∏∏ 
$num
∏∏ 
:
∏∏ 
colors
ππ "
=
ππ# $
room
ππ% )
.
ππ) *!
ColorForFivePlayers
ππ* =
;
ππ= >
break
∫∫ !
;
∫∫! "
case
ªª 
$num
ªª 
:
ªª 
colors
ºº "
=
ºº# $
room
ºº% )
.
ºº) * 
ColorForSixPlayers
ºº* <
;
ºº< =
break
ΩΩ !
;
ΩΩ! "
}
ææ 
if
øø 
(
øø 
colors
øø 
!=
øø !
null
øø" &
)
øø& '
{
øø( )
foreach
¿¿ 
(
¿¿  !
var
¿¿! $
	playerKey
¿¿% .
in
¿¿/ 1
room
¿¿2 6
.
¿¿6 7
PlayersRoom
¿¿7 B
.
¿¿B C
Keys
¿¿C G
)
¿¿G H
{
¿¿I J
char
¡¡  
	colorType
¡¡! *
=
¡¡+ ,
colors
¡¡- 3
[
¡¡3 4$
dictionaryPlayersColor
¡¡4 J
.
¡¡J K
Count
¡¡K P
]
¡¡P Q
;
¡¡Q R$
dictionaryPlayersColor
¬¬ 2
.
¬¬2 3
Add
¬¬3 6
(
¬¬6 7
	playerKey
¬¬7 @
,
¬¬@ A
	colorType
¬¬B K
)
¬¬K L
;
¬¬L M
}
√√ 
foreach
ƒƒ 
(
ƒƒ  !
var
ƒƒ! $
players
ƒƒ% ,
in
ƒƒ- /
room
ƒƒ0 4
.
ƒƒ4 5
PlayersRoom
ƒƒ5 @
.
ƒƒ@ A
Values
ƒƒA G
)
ƒƒG H
{
ƒƒI J
players
≈≈ #
.
≈≈# $"
AssignColorsCallback
≈≈$ 8
(
≈≈8 9$
dictionaryPlayersColor
≈≈9 O
)
≈≈O P
;
≈≈P Q
}
∆∆ 
}
«« 
}
»» 
}
…… 
catch
…… 
(
…… $
CommunicationException
…… +
ex
……, .
)
……. /
{
……0 1

MessageBox
   
.
   
Show
   
(
    
$"
    "
$str
  " @
{
  @ A
ex
  A C
.
  C D
Message
  D K
}
  K L
"
  L M
)
  M N
;
  N O
}
ÀÀ 
}
ÃÃ 	
}
ÕÕ 
}ŒŒ ∆
xC:\Users\alexs\Desktop\JuegoTecno (2)\JuegoTecno\ChineseCheckers\ChineseCheckersLogicServer\Controller\SingletonClass.cs
	namespace 	&
ChineseCheckersLogicServer
 $
.$ %

Controller% /
{0 1
public 

class 
SingletonClass 
{  !
private 
static 
SingletonClass %
	_instance& /
;/ 0
public 
static 
SingletonClass $
Instance% -
{. /
get 
{ 
if 
( 
	_instance 
==  
null! %
)% &
{' (
	_instance 
= 
new  #
SingletonClass$ 2
(2 3
)3 4
;4 5
} 
return 
	_instance  
;  !
} 
} 	
public 
string 
IdRoom 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} Û†
xC:\Users\alexs\Desktop\JuegoTecno (2)\JuegoTecno\ChineseCheckers\ChineseCheckersLogicServer\Controller\UserController.cs
	namespace 	&
ChineseCheckersLogicServer
 $
.$ %

Controller% /
{0 1
[ 
ServiceBehavior 
( 
ConcurrencyMode $
=% &
ConcurrencyMode' 6
.6 7
	Reentrant7 @
)@ A
]A B
public 

partial 
class 
ManagerController *
:+ ,
IUser- 2
{3 4
public## 
int## 
AddUserGame## 
(## 
	UserModel## (
	userModel##) 2
)##2 3
{##4 5
try$$ 
{$$ 
using%% 
(%% 
var%% 
context%% "
=%%# $
new%%% (#
ChineseCheckersEntities%%) @
(%%@ A
)%%A B
)%%B C
using&& 
(&& 
var&& 
transaction&& &
=&&' (
context&&) 0
.&&0 1
Database&&1 9
.&&9 :
BeginTransaction&&: J
(&&J K
)&&K L
)&&L M
{&&N O
var'' 
userGame''  
=''! "
new''# &
User''' +
{'', -
Gamertag((  
=((! "
	userModel((# ,
.((, -
Gamertag((- 5
,((5 6
PlayerStatus)) $
=))% &
	userModel))' 0
.))0 1
PlayerStatus))1 =
,))= >
}** 
;** 
context++ 
.++ 
User++  
.++  !
Add++! $
(++$ %
userGame++% -
)++- .
;++. /
try,, 
{,, 
context-- 
.--  
SaveChanges--  +
(--+ ,
)--, -
;--- .
}.. 
catch.. 
(.. 
DbUpdateException.. .
ex../ 1
)..1 2
{..3 4
transaction// #
.//# $
Rollback//$ ,
(//, -
)//- .
;//. /

MessageBox00 "
.00" #
Show00# '
(00' (
$"00( *
$str00* W
{00W X
ex00X Z
.00Z [
Message00[ b
}00b c
"00c d
)00d e
;00e f
return11 
-11  
$num11  !
;11! "
}22 
transaction33 
.33  
Commit33  &
(33& '
)33' (
;33( )
}44 
}55 
catch55 
(55 
EntityException55 $
ex55% '
)55' (
{55) *

MessageBox66 
.66 
Show66 
(66  
$"66  "
$str66" ?
{66? @
ex66@ B
.66B C
Message66C J
}66J K
"66K L
)66L M
;66M N
return77 
-77 
$num77 
;77 
}88 
return99 
$num99 
;99 
}:: 	
publicBB 
intBB 
AddUserAccountBB !
(BB! "
	UserModelBB" +
	userModelBB, 5
)BB5 6
{BB7 8
tryCC 
{CC 
usingDD 
(DD 
varDD 
contextDD "
=DD# $
newDD% (#
ChineseCheckersEntitiesDD) @
(DD@ A
)DDA B
)DDB C
usingEE 
(EE 
varEE 
transactionEE &
=EE' (
contextEE) 0
.EE0 1
DatabaseEE1 9
.EE9 :
BeginTransactionEE: J
(EEJ K
)EEK L
)EEL M
{EEN O
varFF 
userAccountGameFF '
=FF( )
newFF* -
UserAccountFF. 9
{FF: ;
GamertagUserGG $
=GG% &
	userModelGG' 0
.GG0 1
GamertagGG1 9
,GG9 :
EmailHH 
=HH 
	userModelHH  )
.HH) *
EmailHH* /
,HH/ 0
PasswordII  
=II! "
BCryptII# )
.II) *
NetII* -
.II- .
BCryptII. 4
.II4 5
HashPasswordII5 A
(IIA B
	userModelIIB K
.IIK L
PasswordIIL T
)IIT U
,IIU V
ImageProfileJJ $
=JJ% &
	userModelJJ' 0
.JJ0 1
ImageProfileJJ1 =
,JJ= >
}KK 
;KK 
contextLL 
.LL 
UserAccountLL '
.LL' (
AddLL( +
(LL+ ,
userAccountGameLL, ;
)LL; <
;LL< =
tryMM 
{MM 
contextNN 
.NN  
SaveChangesNN  +
(NN+ ,
)NN, -
;NN- .
}OO 
catchOO 
(OO 
DbUpdateExceptionOO .
exOO/ 1
)OO1 2
{OO3 4
transactionPP #
.PP# $
RollbackPP$ ,
(PP, -
)PP- .
;PP. /

MessageBoxQQ "
.QQ" #
ShowQQ# '
(QQ' (
$"QQ( *
$strQQ* W
{QQW X
exQQX Z
.QQZ [
MessageQQ[ b
}QQb c
"QQc d
)QQd e
;QQe f
returnRR 
-RR  
$numRR  !
;RR! "
}SS 
transactionTT 
.TT  
CommitTT  &
(TT& '
)TT' (
;TT( )
}UU 
}VV 
catchVV 
(VV 
EntityExceptionVV $
exVV% '
)VV' (
{VV) *

MessageBoxWW 
.WW 
ShowWW 
(WW  
$"WW  "
$strWW" I
{WWI J
exWWJ L
.WWL M
MessageWWM T
}WWT U
"WWU V
)WWV W
;WWW X
returnXX 
-XX 
$numXX 
;XX 
}YY 
returnZZ 
$numZZ 
;ZZ 
}[[ 	
publiccc 
	UserModelcc 
InfoUsercc !
(cc! "
stringcc" (
gamertagcc) 1
)cc1 2
{cc3 4
	UserModeldd 
	userModeldd 
=dd  !
newdd" %
	UserModeldd& /
(dd/ 0
)dd0 1
;dd1 2
tryee 
{ee 
usingff 
(ff 
varff 
contextff "
=ff# $
newff% (#
ChineseCheckersEntitiesff) @
(ff@ A
)ffA B
)ffB C
{ffD E
vargg 
	userFoundgg !
=gg" #
contextgg$ +
.gg+ ,
UserAccountgg, 7
.hh 
Wherehh 
(hh 
userhh #
=>hh$ &
userhh' +
.hh+ ,
GamertagUserhh, 8
==hh9 ;
gamertaghh< D
)hhD E
.ii 
Selectii 
(ii  
userii  $
=>ii% '
newii( +
{ii, -
userjj  
.jj  !
GamertagUserjj! -
,jj- .
userkk  
.kk  !
ImageProfilekk! -
,kk- .
userll  
.ll  !
Emailll! &
}mm 
)mm 
.nn 
FirstOrDefaultnn '
(nn' (
)nn( )
;nn) *
ifpp 
(pp 
	userFoundpp !
!=pp" $
nullpp% )
)pp) *
{pp+ ,
	userModelqq !
.qq! "
Gamertagqq" *
=qq+ ,
	userFoundqq- 6
.qq6 7
GamertagUserqq7 C
;qqC D
	userModelrr !
.rr! "
ImageProfilerr" .
=rr/ 0
	userFoundrr1 :
.rr: ;
ImageProfilerr; G
;rrG H
	userModelss !
.ss! "
Emailss" '
=ss( )
	userFoundss* 3
.ss3 4
Emailss4 9
;ss9 :
}tt 
returnuu 
	userModeluu $
;uu$ %
}vv 
}ww 
catchww 
(ww 
EntityExceptionww $
exww% '
)ww' (
{ww) *

MessageBoxxx 
.xx 
Showxx 
(xx  
$"xx  "
$strxx" O
{xxO P
exxxP R
.xxR S
MessagexxS Z
}xxZ [
"xx[ \
)xx\ ]
;xx] ^
returnyy 
nullyy 
;yy 
}zz 
}{{ 	
public
ÑÑ 
int
ÑÑ 
UpdateInfoUser
ÑÑ !
(
ÑÑ! "
	UserModel
ÑÑ" +
	usermodel
ÑÑ, 5
,
ÑÑ5 6
string
ÑÑ7 =
gamertag
ÑÑ> F
)
ÑÑF G
{
ÑÑH I
try
ÖÖ 
{
ÖÖ 
using
ÜÜ 
(
ÜÜ 
var
ÜÜ 
context
ÜÜ "
=
ÜÜ# $
new
ÜÜ% (%
ChineseCheckersEntities
ÜÜ) @
(
ÜÜ@ A
)
ÜÜA B
)
ÜÜB C
using
áá 
(
áá 
var
áá 
transaction
áá &
=
áá' (
context
áá) 0
.
áá0 1
Database
áá1 9
.
áá9 :
BeginTransaction
áá: J
(
ááJ K
)
ááK L
)
ááL M
{
ááN O
try
àà 
{
àà 
var
ââ 
user
ââ  
=
ââ! "
context
ââ# *
.
ââ* +
UserAccount
ââ+ 6
.
ää 
Where
ää "
(
ää" #

userUpdate
ää# -
=>
ää. 0

userUpdate
ää1 ;
.
ää; <
GamertagUser
ää< H
==
ääI K
gamertag
ääL T
)
ääT U
.
ãã 
FirstOrDefault
ãã +
(
ãã+ ,
)
ãã, -
;
ãã- .
if
çç 
(
çç 
user
çç  
!=
çç! #
null
çç$ (
)
çç( )
{
çç* +
user
éé  
.
éé  !
Id
éé! #
=
éé$ %
	usermodel
éé& /
.
éé/ 0
Id
éé0 2
;
éé2 3
user
èè  
.
èè  !
GamertagUser
èè! -
=
èè. /
	usermodel
èè0 9
.
èè9 :
Gamertag
èè: B
;
èèB C
user
êê  
.
êê  !
ImageProfile
êê! -
=
êê. /
	usermodel
êê0 9
.
êê9 :
ImageProfile
êê: F
;
êêF G
user
ëë  
.
ëë  !
Email
ëë! &
=
ëë' (
	usermodel
ëë) 2
.
ëë2 3
Email
ëë3 8
;
ëë8 9
RemoveClient
íí (
(
íí( )
	usermodel
íí) 2
.
íí2 3
Id
íí3 5
)
íí5 6
;
íí6 7
context
ìì #
.
ìì# $
SaveChanges
ìì$ /
(
ìì/ 0
)
ìì0 1
;
ìì1 2
}
îî 
transaction
ïï #
.
ïï# $
Commit
ïï$ *
(
ïï* +
)
ïï+ ,
;
ïï, -
return
ññ 
$num
ññ  
;
ññ  !
}
óó 
catch
óó 
(
óó 
DbUpdateException
óó .
ex
óó/ 1
)
óó1 2
{
óó3 4
transaction
òò #
.
òò# $
Rollback
òò$ ,
(
òò, -
)
òò- .
;
òò. /

MessageBox
ôô "
.
ôô" #
Show
ôô# '
(
ôô' (
$"
ôô( *
$str
ôô* j
{
ôôj k
ex
ôôk m
.
ôôm n
Message
ôôn u
}
ôôu v
"
ôôv w
)
ôôw x
;
ôôx y
return
öö 
-
öö  
$num
öö  !
;
öö! "
}
õõ 
}
úú 
}
ùù 
catch
ùù 
(
ùù 
EntityException
ùù $
ex
ùù% '
)
ùù' (
{
ùù) *

MessageBox
ûû 
.
ûû 
Show
ûû 
(
ûû  
$"
ûû  "
$str
ûû" R
{
ûûR S
ex
ûûS U
.
ûûU V
Message
ûûV ]
}
ûû] ^
"
ûû^ _
)
ûû_ `
;
ûû` a
return
üü 
-
üü 
$num
üü 
;
üü 
}
†† 
}
°° 	
public
©© 
int
©© 
UpdatePassword
©© !
(
©©! "
	UserModel
©©" +
	userModel
©©, 5
)
©©5 6
{
©©7 8
try
™™ 
{
™™ 
using
´´ 
(
´´ 
var
´´ 
context
´´ "
=
´´# $
new
´´% (%
ChineseCheckersEntities
´´) @
(
´´@ A
)
´´A B
)
´´B C
{
´´D E
var
¨¨ 
userAccountUpdate
¨¨ )
=
¨¨* +
context
¨¨, 3
.
¨¨3 4
UserAccount
¨¨4 ?
.
≠≠( )
Where
≠≠) .
(
≠≠. /
user
≠≠/ 3
=>
≠≠4 6
user
≠≠7 ;
.
≠≠; <
Email
≠≠< A
==
≠≠B D
	userModel
≠≠E N
.
≠≠N O
Email
≠≠O T
)
≠≠T U
.
ÆÆ( )
FirstOrDefault
ÆÆ) 7
(
ÆÆ7 8
)
ÆÆ8 9
;
ÆÆ9 :
if
ØØ 
(
ØØ 
userAccountUpdate
ØØ )
!=
ØØ* ,
null
ØØ- 1
)
ØØ1 2
{
ØØ3 4
userAccountUpdate
∞∞ )
.
∞∞) *
Password
∞∞* 2
=
∞∞3 4
BCrypt
∞∞5 ;
.
∞∞; <
Net
∞∞< ?
.
∞∞? @
BCrypt
∞∞@ F
.
∞∞F G
HashPassword
∞∞G S
(
∞∞S T
	userModel
∞∞T ]
.
∞∞] ^
Password
∞∞^ f
)
∞∞f g
;
∞∞g h
}
±± 
return
≤≤ 
context
≤≤ "
.
≤≤" #
SaveChanges
≤≤# .
(
≤≤. /
)
≤≤/ 0
;
≤≤0 1
}
≥≥ 
}
¥¥ 
catch
¥¥ 
(
¥¥ 
EntityException
¥¥ $
ex
¥¥% '
)
¥¥' (
{
¥¥) *

MessageBox
µµ 
.
µµ 
Show
µµ 
(
µµ  
$"
µµ  "
$str
µµ" E
{
µµE F
ex
µµF H
.
µµH I
Message
µµI P
}
µµP Q
"
µµQ R
)
µµR S
;
µµS T
return
∂∂ 
-
∂∂ 
$num
∂∂ 
;
∂∂ 
}
∑∑ 
}
∏∏ 	
public
¿¿ 
int
¿¿ 
ValidateUser
¿¿ 
(
¿¿  
	UserModel
¿¿  )
	userModel
¿¿* 3
)
¿¿3 4
{
¿¿5 6
try
¡¡ 
{
¡¡ 
int
¬¬ 
userValidated
¬¬ !
=
¬¬" #
$num
¬¬$ %
;
¬¬% &
using
√√ 
(
√√ 
var
√√ 
context
√√ "
=
√√# $
new
√√% (%
ChineseCheckersEntities
√√) @
(
√√@ A
)
√√A B
)
√√B C
{
√√D E
var
ƒƒ 
validateUser
ƒƒ $
=
ƒƒ% &
(
ƒƒ' (
from
ƒƒ( ,
user
ƒƒ- 1
in
ƒƒ2 4
context
ƒƒ5 <
.
ƒƒ< =
UserAccount
ƒƒ= H
where
≈≈( -
string
≈≈. 4
.
≈≈4 5
Equals
≈≈5 ;
(
≈≈; <
user
≈≈< @
.
≈≈@ A
GamertagUser
≈≈A M
,
≈≈M N
	userModel
≈≈O X
.
≈≈X Y
Gamertag
≈≈Y a
)
≈≈a b
select
∆∆( .
user
∆∆/ 3
)
∆∆3 4
.
∆∆4 5
FirstOrDefault
∆∆5 C
(
∆∆C D
)
∆∆D E
;
∆∆E F
if
«« 
(
«« 
validateUser
«« $
!=
««% '
null
««( ,
&&
««- /
BCrypt
««0 6
.
««6 7
Net
««7 :
.
««: ;
BCrypt
««; A
.
««A B
Verify
««B H
(
««H I
	userModel
««I R
.
««R S
Password
««S [
,
««[ \
validateUser
««] i
.
««i j
Password
««j r
)
««r s
)
««s t
{
««u v
userValidated
»» %
=
»»& '
$num
»»( )
;
»») *
}
…… 
return
   
userValidated
   (
;
  ( )
}
ÀÀ 
}
ÃÃ 
catch
ÃÃ 
(
ÃÃ 
EntityException
ÃÃ $
ex
ÃÃ% '
)
ÃÃ' (
{
ÃÃ) *

MessageBox
ÕÕ 
.
ÕÕ 
Show
ÕÕ 
(
ÕÕ  
$"
ÕÕ  "
$str
ÕÕ" ?
{
ÕÕ? @
ex
ÕÕ@ B
.
ÕÕB C
Message
ÕÕC J
}
ÕÕJ K
"
ÕÕK L
)
ÕÕL M
;
ÕÕM N
return
ŒŒ 
-
ŒŒ 
$num
ŒŒ 
;
ŒŒ 
}
œœ 
}
–– 	
public
ÿÿ 
int
ÿÿ 
ValidateEmail
ÿÿ  
(
ÿÿ  !
	UserModel
ÿÿ! *
	userModel
ÿÿ+ 4
)
ÿÿ4 5
{
ÿÿ6 7
int
ŸŸ 
emailValidated
ŸŸ 
=
ŸŸ  
$num
ŸŸ! "
;
ŸŸ" #
try
⁄⁄ 
{
⁄⁄ 
using
€€ 
(
€€ 
var
€€ 
context
€€ "
=
€€# $
new
€€% (%
ChineseCheckersEntities
€€) @
(
€€@ A
)
€€A B
)
€€B C
{
€€D E
var
‹‹ 
validatedEmail
‹‹ &
=
‹‹' (
(
‹‹) *
from
‹‹* .
user
‹‹/ 3
in
‹‹4 6
context
‹‹7 >
.
‹‹> ?
UserAccount
‹‹? J
where
››* /
user
››0 4
.
››4 5
Email
››5 :
==
››; =
	userModel
››> G
.
››G H
Email
››H M
select
ﬁﬁ* 0
user
ﬁﬁ1 5
)
ﬁﬁ5 6
.
ﬁﬁ6 7
FirstOrDefault
ﬁﬁ7 E
(
ﬁﬁE F
)
ﬁﬁF G
;
ﬁﬁG H
if
ﬂﬂ 
(
ﬂﬂ 
validatedEmail
ﬂﬂ &
!=
ﬂﬂ' )
null
ﬂﬂ* .
)
ﬂﬂ. /
{
ﬂﬂ0 1
emailValidated
‡‡ &
=
‡‡' (
$num
‡‡) *
;
‡‡* +
}
·· 
return
‚‚ 
emailValidated
‚‚ )
;
‚‚) *
}
„„ 
}
‰‰ 
catch
‰‰ 
(
‰‰ 
EntityException
‰‰ $
ex
‰‰% '
)
‰‰' (
{
‰‰) *

MessageBox
ÂÂ 
.
ÂÂ 
Show
ÂÂ 
(
ÂÂ  
$"
ÂÂ  "
$str
ÂÂ" =
{
ÂÂ= >
ex
ÂÂ> @
.
ÂÂ@ A
Message
ÂÂA H
}
ÂÂH I
"
ÂÂI J
)
ÂÂJ K
;
ÂÂK L
return
ÊÊ 
-
ÊÊ 
$num
ÊÊ 
;
ÊÊ 
}
ÁÁ 
}
ËË 	
public
 
int
 
ValidateGamertag
 #
(
# $
	UserModel
$ -
	userModel
. 7
)
7 8
{
9 :
int
ÒÒ 
gamertagValidated
ÒÒ !
=
ÒÒ" #
$num
ÒÒ$ %
;
ÒÒ% &
try
ÚÚ 
{
ÚÚ 
using
ÛÛ 
(
ÛÛ 
var
ÛÛ 
context
ÛÛ "
=
ÛÛ# $
new
ÛÛ% (%
ChineseCheckersEntities
ÛÛ) @
(
ÛÛ@ A
)
ÛÛA B
)
ÛÛB C
{
ÛÛD E
var
ÙÙ 
validatedEmail
ÙÙ &
=
ÙÙ' (
(
ÙÙ) *
from
ÙÙ* .
user
ÙÙ/ 3
in
ÙÙ4 6
context
ÙÙ7 >
.
ÙÙ> ?
UserAccount
ÙÙ? J
where
ıı* /
user
ıı0 4
.
ıı4 5
GamertagUser
ıı5 A
==
ııB D
	userModel
ııE N
.
ııN O
Gamertag
ııO W
select
ˆˆ* 0
user
ˆˆ1 5
)
ˆˆ5 6
.
ˆˆ6 7
FirstOrDefault
ˆˆ7 E
(
ˆˆE F
)
ˆˆF G
;
ˆˆG H
if
˜˜ 
(
˜˜ 
validatedEmail
˜˜ &
!=
˜˜' )
null
˜˜* .
)
˜˜. /
{
˜˜0 1
gamertagValidated
¯¯ )
=
¯¯* +
$num
¯¯, -
;
¯¯- .
}
˘˘ 
return
˙˙ 
gamertagValidated
˙˙ ,
;
˙˙, -
}
˚˚ 
}
¸¸ 
catch
¸¸ 
(
¸¸ 
EntityException
¸¸ $
ex
¸¸% '
)
¸¸' (
{
¸¸) *

MessageBox
˝˝ 
.
˝˝ 
Show
˝˝ 
(
˝˝  
$"
˝˝  "
$str
˝˝" @
{
˝˝@ A
ex
˝˝A C
.
˝˝C D
Message
˝˝D K
}
˝˝K L
"
˝˝L M
)
˝˝M N
;
˝˝N O
return
˛˛ 
-
˛˛ 
$num
˛˛ 
;
˛˛ 
}
ˇˇ 
}
ÄÄ 	
public
àà 
string
àà 
GetPlayerImage
àà $
(
àà$ %
string
àà% +
gamertag
àà, 4
)
àà4 5
{
àà6 7
string
ââ 
path
ââ 
=
ââ 
$str
ââ 
;
ââ 
try
ää 
{
ää 
using
ãã 
(
ãã 
var
ãã 
context
ãã "
=
ãã# $
new
ãã% (%
ChineseCheckersEntities
ãã) @
(
ãã@ A
)
ããA B
)
ããB C
{
ããD E
var
åå 
playerImage
åå #
=
åå$ %
(
åå& '
from
åå' +
user
åå, 0
in
åå1 3
context
åå4 ;
.
åå; <
UserAccount
åå< G
where
çç' ,
string
çç- 3
.
çç3 4
Equals
çç4 :
(
çç: ;
user
çç; ?
.
çç? @
GamertagUser
çç@ L
,
ççL M
gamertag
ççN V
)
ççV W
select
éé' -
user
éé. 2
)
éé2 3
.
éé3 4
FirstOrDefault
éé4 B
(
ééB C
)
ééC D
;
ééD E
if
èè 
(
èè 
playerImage
èè #
!=
èè$ &
null
èè' +
)
èè+ ,
{
èè- .
path
êê 
=
êê 
$str
êê 3
+
êê4 5
playerImage
êê6 A
.
êêA B
ImageProfile
êêB N
;
êêN O
}
ëë 
return
íí 
path
íí 
;
íí  
}
ìì 
}
îî 
catch
îî 
(
îî 
EntityException
îî $
ex
îî% '
)
îî' (
{
îî) *

MessageBox
ïï 
.
ïï 
Show
ïï 
(
ïï  
$"
ïï  "
$str
ïï" H
{
ïïH I
ex
ïïI K
.
ïïK L
Message
ïïL S
}
ïïS T
"
ïïT U
)
ïïU V
;
ïïV W
return
ññ 
null
ññ 
;
ññ 
}
óó 
}
òò 	
public
üü 
void
üü 

LogoutUser
üü 
(
üü 
int
üü "
idUser
üü# )
)
üü) *
{
üü+ ,
try
†† 
{
†† 
RemoveClient
°° 
(
°° 
idUser
°° #
)
°°# $
;
°°$ %
}
¢¢ 
catch
¢¢ 
(
¢¢ $
CommunicationException
¢¢ +
ex
¢¢, .
)
¢¢. /
{
¢¢0 1

MessageBox
££ 
.
££ 
Show
££ 
(
££  
$"
££  "
$str
££" :
{
££: ;
ex
££; =
.
££= >
Message
££> E
}
££E F
"
££F G
)
££G H
;
££H I
}
§§ 
}
•• 	
public
ÆÆ 
string
ÆÆ 
FindGamertag
ÆÆ "
(
ÆÆ" #
string
ÆÆ# )
currentGamertag
ÆÆ* 9
,
ÆÆ9 :
string
ÆÆ; A
friendGamertag
ÆÆB P
)
ÆÆP Q
{
ÆÆR S
string
ØØ 
gamertagToFound
ØØ "
=
ØØ# $
$str
ØØ% '
;
ØØ' (
try
∞∞ 
{
∞∞ 
using
±± 
(
±± 
var
±± 
context
±± "
=
±±# $
new
±±% (%
ChineseCheckersEntities
±±) @
(
±±@ A
)
±±A B
)
±±B C
{
±±D E
var
≤≤ 
currentUser
≤≤ #
=
≤≤$ %
context
≤≤& -
.
≤≤- .
UserAccount
≤≤. 9
.
≤≤9 :
FirstOrDefault
≤≤: H
(
≤≤H I
user
≤≤I M
=>
≤≤N P
user
≤≤Q U
.
≤≤U V
GamertagUser
≤≤V b
==
≤≤c e
currentGamertag
≤≤f u
)
≤≤u v
;
≤≤v w
var
≥≥ 

friendUser
≥≥ "
=
≥≥# $
context
≥≥% ,
.
≥≥, -
UserAccount
≥≥- 8
.
≥≥8 9
FirstOrDefault
≥≥9 G
(
≥≥G H
user
≥≥H L
=>
≥≥M O
user
≥≥P T
.
≥≥T U
GamertagUser
≥≥U a
==
≥≥b d
friendGamertag
≥≥e s
)
≥≥s t
;
≥≥t u
if
µµ 
(
µµ 
currentUser
µµ #
!=
µµ$ &
null
µµ' +
&&
µµ, .

friendUser
µµ/ 9
!=
µµ: <
null
µµ= A
&&
µµB D
currentGamertag
µµE T
!=
µµU W
friendGamertag
µµX f
)
µµf g
{
µµh i
var
∂∂ 

areFriends
∂∂ &
=
∂∂' (
context
∂∂) 0
.
∂∂0 1
FriendPlayer
∂∂1 =
.
∂∂= >
Any
∂∂> A
(
∂∂A B
friend
∂∂B H
=>
∂∂I K
(
∑∑ 
friend
∑∑ #
.
∑∑# $
IdPlayer
∑∑$ ,
==
∑∑- /
currentUser
∑∑0 ;
.
∑∑; <
Id
∑∑< >
&&
∑∑? A
friend
∑∑B H
.
∑∑H I
IdFriend
∑∑I Q
==
∑∑R T

friendUser
∑∑U _
.
∑∑_ `
Id
∑∑` b
&&
∑∑c e
friend
∑∑f l
.
∑∑l m
RequestStatus
∑∑m z
==
∑∑{ }
$str∑∑~ à
)∑∑à â
||∑∑ä å
(
∏∏ 
friend
∏∏ #
.
∏∏# $
IdPlayer
∏∏$ ,
==
∏∏- /

friendUser
∏∏0 :
.
∏∏: ;
Id
∏∏; =
&&
∏∏> @
friend
∏∏A G
.
∏∏G H
IdFriend
∏∏H P
==
∏∏Q S
currentUser
∏∏T _
.
∏∏_ `
Id
∏∏` b
&&
∏∏c e
friend
∏∏f l
.
∏∏l m
RequestStatus
∏∏m z
==
∏∏{ }
$str∏∏~ à
)∏∏à â
)∏∏â ä
;∏∏ä ã
if
∫∫ 
(
∫∫ 
!
∫∫ 

areFriends
∫∫ '
)
∫∫' (
{
∫∫) *
gamertagToFound
ªª +
=
ªª, -
friendGamertag
ªª. <
;
ªª< =
}
ºº 
}
ΩΩ 
return
ææ 
gamertagToFound
ææ *
;
ææ* +
}
øø 
}
¿¿ 
catch
¿¿ 
(
¿¿ 
EntityException
¿¿ $
ex
¿¿% '
)
¿¿' (
{
¿¿) *

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
¡¡" ?
{
¡¡? @
ex
¡¡@ B
.
¡¡B C
Message
¡¡C J
}
¡¡J K
"
¡¡K L
)
¡¡L M
;
¡¡M N
return
¬¬ 
null
¬¬ 
;
¬¬ 
}
√√ 
}
ƒƒ 	
public
ÃÃ 
string
ÃÃ 
GetEmail
ÃÃ 
(
ÃÃ 
string
ÃÃ %
gamertag
ÃÃ& .
)
ÃÃ. /
{
ÃÃ0 1
string
ÕÕ 
email
ÕÕ 
=
ÕÕ 
$str
ÕÕ 
;
ÕÕ 
try
ŒŒ 
{
ŒŒ 
using
œœ 
(
œœ 
var
œœ 
context
œœ "
=
œœ# $
new
œœ% (%
ChineseCheckersEntities
œœ) @
(
œœ@ A
)
œœA B
)
œœB C
{
œœD E
var
–– 
user
–– 
=
–– 
context
–– &
.
––& '
UserAccount
––' 2
.
—— 
FirstOrDefault
—— '
(
——' (
	userEmail
——( 1
=>
——2 4
	userEmail
——5 >
.
——> ?
GamertagUser
——? K
==
——L N
gamertag
——O W
)
——W X
;
——X Y
if
”” 
(
”” 
user
”” 
!=
”” 
null
””  $
)
””$ %
{
””& '
email
‘‘ 
=
‘‘ 
user
‘‘  $
.
‘‘$ %
Email
‘‘% *
;
‘‘* +
}
’’ 
return
÷÷ 
email
÷÷  
;
÷÷  !
}
◊◊ 
}
ÿÿ 
catch
ÿÿ 
(
ÿÿ 
EntityException
ÿÿ $
ex
ÿÿ% '
)
ÿÿ' (
{
ÿÿ) *

MessageBox
ŸŸ 
.
ŸŸ 
Show
ŸŸ 
(
ŸŸ  
$"
ŸŸ  "
$str
ŸŸ" >
{
ŸŸ> ?
ex
ŸŸ? A
.
ŸŸA B
Message
ŸŸB I
}
ŸŸI J
"
ŸŸJ K
)
ŸŸK L
;
ŸŸL M
return
⁄⁄ 
null
⁄⁄ 
;
⁄⁄ 
}
€€ 
}
‹‹ 	
public
‰‰ 
int
‰‰ 
GetId
‰‰ 
(
‰‰ 
string
‰‰ 
gamertag
‰‰  (
)
‰‰( )
{
‰‰* +
int
ÂÂ 
id
ÂÂ 
=
ÂÂ 
$num
ÂÂ 
;
ÂÂ 
try
ÊÊ 
{
ÊÊ 
using
ÁÁ 
(
ÁÁ 
var
ÁÁ 
context
ÁÁ "
=
ÁÁ# $
new
ÁÁ% (%
ChineseCheckersEntities
ÁÁ) @
(
ÁÁ@ A
)
ÁÁA B
)
ÁÁB C
{
ÁÁD E
var
ËË 
user
ËË 
=
ËË 
context
ËË &
.
ËË& '
UserAccount
ËË' 2
.
ÈÈ 
FirstOrDefault
ÈÈ '
(
ÈÈ' (
userId
ÈÈ( .
=>
ÈÈ/ 1
userId
ÈÈ2 8
.
ÈÈ8 9
GamertagUser
ÈÈ9 E
==
ÈÈF H
gamertag
ÈÈI Q
)
ÈÈQ R
;
ÈÈR S
if
ÎÎ 
(
ÎÎ 
user
ÎÎ 
!=
ÎÎ 
null
ÎÎ  $
)
ÎÎ$ %
{
ÎÎ& '
id
ÏÏ 
=
ÏÏ 
user
ÏÏ !
.
ÏÏ! "
Id
ÏÏ" $
;
ÏÏ$ %
}
ÌÌ 
return
ÓÓ 
id
ÓÓ 
;
ÓÓ 
}
ÔÔ 
}
 
catch
 
(
 
EntityException
 $
ex
% '
)
' (
{
) *

MessageBox
ÒÒ 
.
ÒÒ 
Show
ÒÒ 
(
ÒÒ  
$"
ÒÒ  "
$str
ÒÒ" :
{
ÒÒ: ;
ex
ÒÒ; =
.
ÒÒ= >
Message
ÒÒ> E
}
ÒÒE F
"
ÒÒF G
)
ÒÒG H
;
ÒÒH I
return
ÚÚ 
-
ÚÚ 
$num
ÚÚ 
;
ÚÚ 
}
ÛÛ 
}
ÙÙ 	
public
¸¸ 
int
¸¸ 
UpdateGamesWon
¸¸ !
(
¸¸! "
int
¸¸" %
idUser
¸¸& ,
)
¸¸, -
{
¸¸. /
try
˝˝ 
{
˝˝ 
const
˛˛ 
int
˛˛ 
	MIN_GAMES
˛˛ #
=
˛˛$ %
$num
˛˛& '
;
˛˛' (
using
ˇˇ 
(
ˇˇ 
var
ˇˇ 
context
ˇˇ "
=
ˇˇ# $
new
ˇˇ% (%
ChineseCheckersEntities
ˇˇ) @
(
ˇˇ@ A
)
ˇˇA B
)
ˇˇB C
{
ˇˇD E
var
ÄÄ 
user
ÄÄ 
=
ÄÄ 
context
ÄÄ &
.
ÄÄ& '
User
ÄÄ' +
.
ÅÅ 
FirstOrDefault
ÅÅ '
(
ÅÅ' (
userId
ÅÅ( .
=>
ÅÅ/ 1
userId
ÅÅ2 8
.
ÅÅ8 9
Id
ÅÅ9 ;
==
ÅÅ< >
idUser
ÅÅ? E
)
ÅÅE F
;
ÅÅF G
if
ÇÇ 
(
ÇÇ 
user
ÇÇ 
!=
ÇÇ 
null
ÇÇ  $
)
ÇÇ$ %
{
ÇÇ& '
if
ÉÉ 
(
ÉÉ 
user
ÉÉ  
.
ÉÉ  !
GamesWon
ÉÉ! )
==
ÉÉ* ,
null
ÉÉ- 1
)
ÉÉ1 2
{
ÉÉ3 4
user
ÑÑ  
.
ÑÑ  !
GamesWon
ÑÑ! )
=
ÑÑ* +
	MIN_GAMES
ÑÑ, 5
;
ÑÑ5 6
}
ÖÖ 
else
ÖÖ 
{
ÖÖ  
user
ÜÜ  
.
ÜÜ  !
GamesWon
ÜÜ! )
++
ÜÜ) +
;
ÜÜ+ ,
}
áá 
}
àà 
return
ââ 
context
ââ "
.
ââ" #
SaveChanges
ââ# .
(
ââ. /
)
ââ/ 0
;
ââ0 1
}
ää 
}
ãã 
catch
ãã 
(
ãã 
EntityException
ãã $
ex
ãã% '
)
ãã' (
{
ãã) *

MessageBox
åå 
.
åå 
Show
åå 
(
åå  
$"
åå  "
$str
åå" J
{
ååJ K
ex
ååK M
.
ååM N
Message
ååN U
}
ååU V
"
ååV W
)
ååW X
;
ååX Y
return
çç 
-
çç 
$num
çç 
;
çç 
}
éé 
}
èè 	
public
óó 
int
óó 
UpdateTotalGames
óó #
(
óó# $
int
óó$ '
idUser
óó( .
)
óó. /
{
óó0 1
try
òò 
{
òò 
const
ôô 
int
ôô 
	MIN_GAMES
ôô #
=
ôô$ %
$num
ôô& '
;
ôô' (
using
öö 
(
öö 
var
öö 
context
öö "
=
öö# $
new
öö% (%
ChineseCheckersEntities
öö) @
(
öö@ A
)
ööA B
)
ööB C
{
ööD E
var
õõ 
user
õõ 
=
õõ 
context
õõ &
.
õõ& '
User
õõ' +
.
úú 
FirstOrDefault
úú '
(
úú' (
userId
úú( .
=>
úú/ 1
userId
úú2 8
.
úú8 9
Id
úú9 ;
==
úú< >
idUser
úú? E
)
úúE F
;
úúF G
if
ùù 
(
ùù 
user
ùù 
!=
ùù 
null
ùù  $
)
ùù$ %
{
ùù& '
if
ûû 
(
ûû 
user
ûû  
.
ûû  !
NumberGames
ûû! ,
==
ûû- /
null
ûû0 4
)
ûû4 5
{
ûû6 7
user
üü  
.
üü  !
NumberGames
üü! ,
=
üü- .
	MIN_GAMES
üü/ 8
;
üü8 9
}
†† 
else
†† 
{
††  
user
°°  
.
°°  !
NumberGames
°°! ,
++
°°, .
;
°°. /
}
¢¢ 
}
££ 
return
§§ 
context
§§ "
.
§§" #
SaveChanges
§§# .
(
§§. /
)
§§/ 0
;
§§0 1
}
•• 
}
¶¶ 
catch
¶¶ 
(
¶¶ 
EntityException
¶¶ $
ex
¶¶% '
)
¶¶' (
{
¶¶) *

MessageBox
ßß 
.
ßß 
Show
ßß 
(
ßß  
$"
ßß  "
$str
ßß" J
{
ßßJ K
ex
ßßK M
.
ßßM N
Message
ßßN U
}
ßßU V
"
ßßV W
)
ßßW X
;
ßßX Y
return
®® 
-
®® 
$num
®® 
;
®® 
}
©© 
}
™™ 	
public
≤≤ 
int
≤≤ 
GetTotalGames
≤≤  
(
≤≤  !
int
≤≤! $
idUser
≤≤% +
)
≤≤+ ,
{
≤≤- .
int
≥≥ 

totalGames
≥≥ 
=
≥≥ 
$num
≥≥ 
;
≥≥ 
try
¥¥ 
{
¥¥ 
const
µµ 
int
µµ 
	MIN_GAMES
µµ #
=
µµ$ %
$num
µµ& '
;
µµ' (
using
∂∂ 
(
∂∂ 
var
∂∂ 
context
∂∂ "
=
∂∂# $
new
∂∂% (%
ChineseCheckersEntities
∂∂) @
(
∂∂@ A
)
∂∂A B
)
∂∂B C
{
∂∂D E
var
∑∑ 
user
∑∑ 
=
∑∑ 
context
∑∑ &
.
∑∑& '
User
∑∑' +
.
∏∏ 
FirstOrDefault
∏∏ '
(
∏∏' (
userId
∏∏( .
=>
∏∏/ 1
userId
∏∏2 8
.
∏∏8 9
Id
∏∏9 ;
==
∏∏< >
idUser
∏∏? E
)
∏∏E F
;
∏∏F G
if
ππ 
(
ππ 
user
ππ 
!=
ππ 
null
ππ  $
)
ππ$ %
{
ππ& '
if
∫∫ 
(
∫∫ 
user
∫∫  
.
∫∫  !
NumberGames
∫∫! ,
==
∫∫- /
null
∫∫0 4
)
∫∫4 5
{
∫∫6 7
user
ªª  
.
ªª  !
NumberGames
ªª! ,
=
ªª- .
	MIN_GAMES
ªª/ 8
;
ªª8 9
}
ºº 
else
ºº 
{
ºº  

totalGames
ΩΩ &
=
ΩΩ' (
(
ΩΩ) *
int
ΩΩ* -
)
ΩΩ- .
user
ΩΩ. 2
.
ΩΩ2 3
NumberGames
ΩΩ3 >
;
ΩΩ> ?
}
ææ 
}
øø 
}
¿¿ 
}
¡¡ 
catch
¡¡ 
(
¡¡ 
EntityException
¡¡ $
ex
¡¡% '
)
¡¡' (
{
¡¡) *

MessageBox
¬¬ 
.
¬¬ 
Show
¬¬ 
(
¬¬  
$"
¬¬  "
$str
¬¬" G
{
¬¬G H
ex
¬¬H J
.
¬¬J K
Message
¬¬K R
}
¬¬R S
"
¬¬S T
)
¬¬T U
;
¬¬U V
return
√√ 
-
√√ 
$num
√√ 
;
√√ 
}
ƒƒ 
return
≈≈ 

totalGames
≈≈ 
;
≈≈ 
}
∆∆ 	
public
ŒŒ 
int
ŒŒ 
GetGamesWon
ŒŒ 
(
ŒŒ 
int
ŒŒ "
idUser
ŒŒ# )
)
ŒŒ) *
{
ŒŒ+ ,
int
œœ 
gamesWon
œœ 
=
œœ 
$num
œœ 
;
œœ 
try
–– 
{
–– 
const
—— 
int
—— 
	MIN_GAMES
—— #
=
——$ %
$num
——& '
;
——' (
using
““ 
(
““ 
var
““ 
context
““ "
=
““# $
new
““% (%
ChineseCheckersEntities
““) @
(
““@ A
)
““A B
)
““B C
{
““D E
var
”” 
user
”” 
=
”” 
context
”” &
.
””& '
User
””' +
.
‘‘ 
FirstOrDefault
‘‘ '
(
‘‘' (
userId
‘‘( .
=>
‘‘/ 1
userId
‘‘2 8
.
‘‘8 9
Id
‘‘9 ;
==
‘‘< >
idUser
‘‘? E
)
‘‘E F
;
‘‘F G
if
’’ 
(
’’ 
user
’’ 
!=
’’ 
null
’’  $
)
’’$ %
{
’’& '
if
÷÷ 
(
÷÷ 
user
÷÷  
.
÷÷  !
GamesWon
÷÷! )
==
÷÷* ,
null
÷÷- 1
)
÷÷1 2
{
÷÷3 4
user
◊◊  
.
◊◊  !
GamesWon
◊◊! )
=
◊◊* +
	MIN_GAMES
◊◊, 5
;
◊◊5 6
}
ÿÿ 
else
ÿÿ 
{
ÿÿ  
gamesWon
ŸŸ $
=
ŸŸ% &
(
ŸŸ' (
int
ŸŸ( +
)
ŸŸ+ ,
user
ŸŸ, 0
.
ŸŸ0 1
GamesWon
ŸŸ1 9
;
ŸŸ9 :
}
⁄⁄ 
}
€€ 
}
‹‹ 
}
›› 
catch
›› 
(
›› 
EntityException
›› $
ex
››% '
)
››' (
{
››) *

MessageBox
ﬁﬁ 
.
ﬁﬁ 
Show
ﬁﬁ 
(
ﬁﬁ  
$"
ﬁﬁ  "
$str
ﬁﬁ" G
{
ﬁﬁG H
ex
ﬁﬁH J
.
ﬁﬁJ K
Message
ﬁﬁK R
}
ﬁﬁR S
"
ﬁﬁS T
)
ﬁﬁT U
;
ﬁﬁU V
return
ﬂﬂ 
-
ﬂﬂ 
$num
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 
return
·· 
gamesWon
·· 
;
·· 
}
‚‚ 	
public
ÎÎ 
int
ÎÎ  
UpdateStatusPlayer
ÎÎ %
(
ÎÎ% &
int
ÎÎ& )
idUser
ÎÎ* 0
,
ÎÎ0 1
bool
ÎÎ2 6
status
ÎÎ7 =
)
ÎÎ= >
{
ÎÎ? @
try
ÏÏ 
{
ÏÏ 
const
ÌÌ 
string
ÌÌ "
PLAYER_STATUS_BANNED
ÌÌ 1
=
ÌÌ2 3
$str
ÌÌ4 7
;
ÌÌ7 8
const
ÓÓ 
string
ÓÓ "
PLAYER_STATUS_ACTIVE
ÓÓ 1
=
ÓÓ2 3
$str
ÓÓ4 7
;
ÓÓ7 8
using
ÔÔ 
(
ÔÔ 
var
ÔÔ 
context
ÔÔ "
=
ÔÔ# $
new
ÔÔ% (%
ChineseCheckersEntities
ÔÔ) @
(
ÔÔ@ A
)
ÔÔA B
)
ÔÔB C
{
ÔÔD E
var
 
user
 
=
 
context
 &
.
& '
User
' +
.
ÒÒ 
FirstOrDefault
ÒÒ '
(
ÒÒ' (
userId
ÒÒ( .
=>
ÒÒ/ 1
userId
ÒÒ2 8
.
ÒÒ8 9
Id
ÒÒ9 ;
==
ÒÒ< >
idUser
ÒÒ? E
)
ÒÒE F
;
ÒÒF G
if
ÚÚ 
(
ÚÚ 
user
ÚÚ 
!=
ÚÚ 
null
ÚÚ  $
)
ÚÚ$ %
{
ÚÚ& '
if
ÛÛ 
(
ÛÛ 
status
ÛÛ "
)
ÛÛ" #
{
ÛÛ$ %
user
ÙÙ  
.
ÙÙ  !
PlayerStatus
ÙÙ! -
=
ÙÙ. /"
PLAYER_STATUS_ACTIVE
ÙÙ0 D
;
ÙÙD E
}
ıı 
else
ıı 
{
ıı  
user
ˆˆ  
.
ˆˆ  !
PlayerStatus
ˆˆ! -
=
ˆˆ. /"
PLAYER_STATUS_BANNED
ˆˆ0 D
;
ˆˆD E
}
˜˜ 
}
¯¯ 
return
˘˘ 
context
˘˘ "
.
˘˘" #
SaveChanges
˘˘# .
(
˘˘. /
)
˘˘/ 0
;
˘˘0 1
}
˙˙ 
}
˚˚ 
catch
˚˚ 
(
˚˚ 
EntityException
˚˚ $
ex
˚˚% '
)
˚˚' (
{
˚˚) *

MessageBox
¸¸ 
.
¸¸ 
Show
¸¸ 
(
¸¸  
$"
¸¸  "
$str
¸¸" M
{
¸¸M N
ex
¸¸N P
.
¸¸P Q
Message
¸¸Q X
}
¸¸X Y
"
¸¸Y Z
)
¸¸Z [
;
¸¸[ \
return
˝˝ 
-
˝˝ 
$num
˝˝ 
;
˝˝ 
}
˛˛ 
}
ˇˇ 	
public
ÜÜ 

Dictionary
ÜÜ 
<
ÜÜ 
string
ÜÜ  
,
ÜÜ  !
int
ÜÜ" %
>
ÜÜ% &
GetGames
ÜÜ' /
(
ÜÜ/ 0
)
ÜÜ0 1
{
ÜÜ2 3

Dictionary
áá 
<
áá 
string
áá 
,
áá 
int
áá "
>
áá" #
_bestPlayers
áá$ 0
=
áá1 2
new
áá3 6

Dictionary
áá7 A
<
ááA B
string
ááB H
,
ááH I
int
ááJ M
>
ááM N
(
ááN O
)
ááO P
;
ááP Q
try
àà 
{
àà 
const
ââ 
int
ââ 
BEST_PLAYERS
ââ &
=
ââ' (
$num
ââ) *
;
ââ* +
using
ää 
(
ää 
var
ää 
context
ää "
=
ää# $
new
ää% (%
ChineseCheckersEntities
ää) @
(
ää@ A
)
ääA B
)
ääB C
{
ääD E
var
ãã 
bestPlayers
ãã #
=
ãã$ %
context
ãã& -
.
ãã- .
User
ãã. 2
.
åå 
Where
åå 
(
åå 
user
åå #
=>
åå$ &
user
åå' +
.
åå+ ,
GamesWon
åå, 4
!=
åå5 7
null
åå8 <
)
åå< =
.
çç 
OrderByDescending
çç *
(
çç* +
user
çç+ /
=>
çç0 2
user
çç3 7
.
çç7 8
GamesWon
çç8 @
)
çç@ A
.
éé 
Take
éé 
(
éé 
BEST_PLAYERS
éé *
)
éé* +
.
èè 
ToList
èè 
(
èè  
)
èè  !
;
èè! "
_bestPlayers
êê  
=
êê! "
bestPlayers
êê# .
.
êê. /
ToDictionary
êê/ ;
(
êê; <
user
êê< @
=>
êêA C
user
êêD H
.
êêH I
Gamertag
êêI Q
,
êêQ R
user
êêS W
=>
êêX Z
user
êê[ _
.
êê_ `
GamesWon
êê` h
.
êêh i
Value
êêi n
)
êên o
;
êêo p
}
ëë 
}
íí 
catch
íí 
(
íí 
EntityException
íí $
ex
íí% '
)
íí' (
{
íí) *

MessageBox
ìì 
.
ìì 
Show
ìì 
(
ìì  
$"
ìì  "
$str
ìì" D
{
ììD E
ex
ììE G
.
ììG H
Message
ììH O
}
ììO P
"
ììP Q
)
ììQ R
;
ììR S
}
îî 
return
ïï 
_bestPlayers
ïï 
;
ïï  
}
ññ 	
}
óó 
public
õõ 

partial
õõ 
class
õõ 
ManagerController
õõ *
:
õõ+ ,
IUsersManager
õõ- :
{
õõ; <
private
¢¢ 
static
¢¢ 
readonly
¢¢ 

Dictionary
¢¢  *
<
¢¢* +
int
¢¢+ .
,
¢¢. /"
IUserSessionCallback
¢¢0 D
>
¢¢D E
playerStatus
¢¢F R
=
¢¢S T
new
¢¢U X

Dictionary
¢¢Y c
<
¢¢c d
int
¢¢d g
,
¢¢g h"
IUserSessionCallback
¢¢i }
>
¢¢} ~
(
¢¢~ 
)¢¢ Ä
;¢¢Ä Å
public
££ 
void
££ 

GetFriends
££ 
(
££ 
string
££ %
gamertag
££& .
)
££. /
{
££0 1

Dictionary
§§ 
<
§§ 
string
§§ 
,
§§ 
Tuple
§§ $
<
§§$ %
string
§§% +
,
§§+ ,
bool
§§- 1
>
§§1 2
>
§§2 3
friendsDictionary
§§4 E
=
§§F G
new
§§H K

Dictionary
§§L V
<
§§V W
string
§§W ]
,
§§] ^
Tuple
§§_ d
<
§§d e
string
§§e k
,
§§k l
bool
§§m q
>
§§q r
>
§§r s
(
§§s t
)
§§t u
;
§§u v
try
•• 
{
•• 
const
¶¶ 
string
¶¶ 
FRIEND_REQUEST
¶¶ +
=
¶¶, -
$str
¶¶. 8
;
¶¶8 9
using
ßß 
(
ßß 
var
ßß 
context
ßß "
=
ßß# $
new
ßß% (%
ChineseCheckersEntities
ßß) @
(
ßß@ A
)
ßßA B
)
ßßB C
{
ßßD E
int
®® 
userId
®® 
=
®®  
context
®®! (
.
®®( )
UserAccount
®®) 4
.
©© 
Where
©© 
(
©© 
user
©© #
=>
©©$ &
user
©©' +
.
©©+ ,
GamertagUser
©©, 8
==
©©9 ;
gamertag
©©< D
)
©©D E
.
™™ 
Select
™™ 
(
™™  
user
™™  $
=>
™™% '
user
™™( ,
.
™™, -
Id
™™- /
)
™™/ 0
.
´´ 
FirstOrDefault
´´ '
(
´´' (
)
´´( )
;
´´) *
if
¨¨ 
(
¨¨ 
userId
¨¨ 
>
¨¨  
$num
¨¨! "
)
¨¨" #
{
¨¨$ %
var
≠≠ 

friendData
≠≠ &
=
≠≠' (
(
≠≠) *
from
≠≠* .
friend
≠≠/ 5
in
≠≠6 8
context
≠≠9 @
.
≠≠@ A
FriendPlayer
≠≠A M
join
ÆÆ* .
user
ÆÆ/ 3
in
ÆÆ4 6
context
ÆÆ7 >
.
ÆÆ> ?
UserAccount
ÆÆ? J
on
ÆÆK M
friend
ÆÆN T
.
ÆÆT U
IdFriend
ÆÆU ]
equals
ÆÆ^ d
user
ÆÆe i
.
ÆÆi j
Id
ÆÆj l
where
ØØ* /
friend
ØØ0 6
.
ØØ6 7
IdPlayer
ØØ7 ?
==
ØØ@ B
userId
ØØC I
&&
ØØJ L
friend
ØØM S
.
ØØS T
RequestStatus
ØØT a
==
ØØb d
FRIEND_REQUEST
ØØe s
select
∞∞* 0
new
∞∞1 4
{
∞∞5 6
user
±±. 2
.
±±2 3
Id
±±3 5
,
±±5 6
Gamertag
≤≤. 6
=
≤≤7 8
user
≤≤9 =
.
≤≤= >
GamertagUser
≤≤> J
,
≤≤J K
user
≥≥. 2
.
≥≥2 3
ImageProfile
≥≥3 ?
,
≥≥? @
}
¥¥* +
)
¥¥+ ,
.
¥¥, -
ToList
¥¥- 3
(
¥¥3 4
)
¥¥4 5
;
¥¥5 6
foreach
µµ 
(
µµ  !
var
µµ! $
friend
µµ% +
in
µµ, .

friendData
µµ/ 9
)
µµ9 :
{
µµ; <
bool
∂∂  
isOnline
∂∂! )
=
∂∂* +
playerStatus
∂∂, 8
.
∂∂8 9
ContainsKey
∂∂9 D
(
∂∂D E
friend
∂∂E K
.
∂∂K L
Id
∂∂L N
)
∂∂N O
;
∂∂O P
friendsDictionary
∑∑ -
[
∑∑- .
friend
∑∑. 4
.
∑∑4 5
Gamertag
∑∑5 =
]
∑∑= >
=
∑∑? @
new
∑∑A D
Tuple
∑∑E J
<
∑∑J K
string
∑∑K Q
,
∑∑Q R
bool
∑∑S W
>
∑∑W X
(
∑∑X Y
friend
∑∑Y _
.
∑∑_ `
ImageProfile
∑∑` l
,
∑∑l m
isOnline
∑∑n v
)
∑∑v w
;
∑∑w x
}
∏∏ 
IUserCallback
ππ %
callback
ππ& .
=
ππ/ 0
OperationContext
ππ1 A
.
ππA B
Current
ππB I
.
ππI J 
GetCallbackChannel
ππJ \
<
ππ\ ]
IUserCallback
ππ] j
>
ππj k
(
ππk l
)
ππl m
;
ππm n
callback
∫∫  
.
∫∫  ! 
GetFriendsCallback
∫∫! 3
(
∫∫3 4
friendsDictionary
∫∫4 E
)
∫∫E F
;
∫∫F G
}
ªª 
}
ºº 
}
ΩΩ 
catch
ΩΩ 
(
ΩΩ 
EntityException
ΩΩ $
ex
ΩΩ% '
)
ΩΩ' (
{
ΩΩ) *

MessageBox
ææ 
.
ææ 
Show
ææ 
(
ææ  
$"
ææ  "
$str
ææ" G
{
ææG H
ex
ææH J
.
ææJ K
Message
ææK R
}
ææR S
"
ææS T
)
ææT U
;
ææU V
}
øø 
catch
øø 
(
øø $
CommunicationException
øø +
ex
øø, .
)
øø. /
{
øø0 1

MessageBox
¿¿ 
.
¿¿ 
Show
¿¿ 
(
¿¿  
$"
¿¿  "
$str
¿¿" G
{
¿¿G H
ex
¿¿H J
.
¿¿J K
Message
¿¿K R
}
¿¿R S
"
¿¿S T
)
¿¿T U
;
¿¿U V
}
¡¡ 
}
¬¬ 	
private
…… 
void
…… 
RemoveClient
…… !
(
……! "
int
……" %
idUser
……& ,
)
……, -
{
……. /
try
   
{
   
if
ÀÀ 
(
ÀÀ 
playerStatus
ÀÀ  
.
ÀÀ  !
ContainsKey
ÀÀ! ,
(
ÀÀ, -
idUser
ÀÀ- 3
)
ÀÀ3 4
)
ÀÀ4 5
{
ÀÀ6 7
playerStatus
ÃÃ  
.
ÃÃ  !
Remove
ÃÃ! '
(
ÃÃ' (
idUser
ÃÃ( .
)
ÃÃ. /
;
ÃÃ/ 0
}
ÕÕ 
}
ŒŒ 
catch
ŒŒ 
(
ŒŒ $
CommunicationException
ŒŒ +
ex
ŒŒ, .
)
ŒŒ. /
{
ŒŒ0 1

MessageBox
œœ 
.
œœ 
Show
œœ 
(
œœ  
$"
œœ  "
$str
œœ" ?
{
œœ? @
ex
œœ@ B
.
œœB C
Message
œœC J
}
œœJ K
"
œœK L
)
œœL M
;
œœM N
}
–– 
}
—— 	
}
““ 
public
÷÷ 

partial
÷÷ 
class
÷÷ 
ManagerController
÷÷ *
:
÷÷+ ,
IUserSession
÷÷- 9
{
÷÷: ;
public
›› 
void
›› 
GetSessionPlayer
›› $
(
››$ %
int
››% (
idUser
››) /
)
››/ 0
{
››1 2
try
ﬁﬁ 
{
ﬁﬁ "
IUserSessionCallback
ﬂﬂ $
context
ﬂﬂ% ,
=
ﬂﬂ- .
OperationContext
ﬂﬂ/ ?
.
ﬂﬂ? @
Current
ﬂﬂ@ G
.
ﬂﬂG H 
GetCallbackChannel
ﬂﬂH Z
<
ﬂﬂZ ["
IUserSessionCallback
ﬂﬂ[ o
>
ﬂﬂo p
(
ﬂﬂp q
)
ﬂﬂq r
;
ﬂﬂr s
bool
·· 
sessionOpened
·· "
=
··# $
playerStatus
··% 1
.
··1 2
ContainsKey
··2 =
(
··= >
idUser
··> D
)
··D E
;
··E F
if
„„ 
(
„„ 
!
„„ 
sessionOpened
„„ "
)
„„" #
{
„„$ %
playerStatus
‰‰  
.
‰‰  !
Add
‰‰! $
(
‰‰$ %
idUser
‰‰% +
,
‰‰+ ,
context
‰‰- 4
)
‰‰4 5
;
‰‰5 6"
ICommunicationObject
ÊÊ (!
communicationObject
ÊÊ) <
=
ÊÊ= >
(
ÊÊ? @"
ICommunicationObject
ÊÊ@ T
)
ÊÊT U
context
ÊÊU \
;
ÊÊ\ ]!
communicationObject
ÁÁ '
.
ÁÁ' (
Closed
ÁÁ( .
+=
ÁÁ/ 1
(
ÁÁ2 3
sender
ÁÁ3 9
,
ÁÁ9 :
e
ÁÁ; <
)
ÁÁ< =
=>
ÁÁ> @
{
ÁÁA B
RemoveClient
ËË $
(
ËË$ %
idUser
ËË% +
)
ËË+ ,
;
ËË, -
}
ÈÈ 
;
ÈÈ !
communicationObject
ÎÎ '
.
ÎÎ' (
Faulted
ÎÎ( /
+=
ÎÎ0 2
(
ÎÎ3 4
sender
ÎÎ4 :
,
ÎÎ: ;
e
ÎÎ< =
)
ÎÎ= >
=>
ÎÎ? A
{
ÎÎB C
RemoveClient
ÏÏ $
(
ÏÏ$ %
idUser
ÏÏ% +
)
ÏÏ+ ,
;
ÏÏ, -
}
ÌÌ 
;
ÌÌ 
}
ÓÓ 
context
 
.
 &
GetSessionPlayerCallback
 0
(
0 1
sessionOpened
1 >
)
> ?
;
? @
}
ÒÒ 
catch
ÒÒ 
(
ÒÒ $
CommunicationException
ÒÒ +
ex
ÒÒ, .
)
ÒÒ. /
{
ÒÒ0 1

MessageBox
ÚÚ 
.
ÚÚ 
Show
ÚÚ 
(
ÚÚ  
$"
ÚÚ  "
$str
ÚÚ" J
{
ÚÚJ K
ex
ÚÚK M
.
ÚÚM N
Message
ÚÚN U
}
ÚÚU V
"
ÚÚV W
)
ÚÚW X
;
ÚÚX Y
}
ÛÛ 
}
ÙÙ 	
}
ıı 
}ˆˆ «
oC:\Users\alexs\Desktop\JuegoTecno (2)\JuegoTecno\ChineseCheckers\ChineseCheckersLogicServer\Model\BoardModel.cs
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
class 

BoardModel 
{ 
[ 	

DataMember	 
] 
public 

Dictionary 
< 
string  
,  !
ITurnCallback" /
>/ 0
GamePlayers1 <
{= >
get? B
;B C
setD G
;G H
}I J
=K L
newM P

DictionaryQ [
<[ \
string\ b
,b c
ITurnCallbackd q
>q r
(r s
)s t
;t u
[ 	

DataMember	 
] 
public 
string 
IdRoom 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ®
tC:\Users\alexs\Desktop\JuegoTecno (2)\JuegoTecno\ChineseCheckers\ChineseCheckersLogicServer\Model\FriendshipModel.cs
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
! "
[ 	

DataMember	 
] 
public 
int 
IdUser 
{ 
get 
;  
set! $
;$ %
}& '
[ 	

DataMember	 
] 
public 
int 
IdFriend 
{ 
get !
;! "
set# &
;& '
}( )
[ 	

DataMember	 
] 
public 
string 
RequestStatus #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	

DataMember	 
] 
public 
string 
TypeNotification &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	

DataMember	 
] 
public 
string 
IdRoom 
{ 
get "
;" #
set$ '
;' (
}) *
} 
}  	
pC:\Users\alexs\Desktop\JuegoTecno (2)\JuegoTecno\ChineseCheckers\ChineseCheckersLogicServer\Model\ReportModel.cs
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
 
[ 	

DataMember	 
] 
public 
int 
IdUser 
{ 
get 
;  
set! $
;$ %
}& '
[ 	

DataMember	 
] 
public 
string 
Reason 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	

DataMember	 
] 
public 
DateTime 
CurrentDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	

DataMember	 
] 
public 
DateTime 
EndDate 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} Ó
nC:\Users\alexs\Desktop\JuegoTecno (2)\JuegoTecno\ChineseCheckers\ChineseCheckersLogicServer\Model\RoomModel.cs
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
{ 
[ 	

DataMember	 
] 
public 
string 
IdRoom 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	

DataMember	 
] 
public 

Dictionary 
< 
string  
,  !
IMessageCallback" 2
>2 3
Players4 ;
{< =
get> A
;A B
setC F
;F G
}H I
=J K
newL O

DictionaryP Z
<Z [
string[ a
,a b
IMessageCallbackc s
>s t
(t u
)u v
;v w
[ 	

DataMember	 
] 
public 

Dictionary 
< 
string  
,  ! 
IPlayersRoomCallback" 6
>6 7
PlayersRoom8 C
{D E
getF I
;I J
setK N
;N O
}P Q
=R S
newT W

DictionaryX b
<b c
stringc i
,i j 
IPlayersRoomCallbackk 
>	 Ä
(
Ä Å
)
Å Ç
;
Ç É
public 
char 
[ 
] 
ColorForTwoPlayers (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
=7 8
new9 <
char= A
[A B
]B C
{D E
$charF I
,I J
$charK N
}O P
;P Q
public 
char 
[ 
]  
ColorForThreePlayers *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
=9 :
new; >
char? C
[C D
]D E
{F G
$charH K
,K L
$charM P
,P Q
$charR U
}V W
;W X
public 
char 
[ 
] 
ColorForFourPlayers )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
=8 9
new: =
char> B
[B C
]C D
{E F
$charG J
,J K
$charL O
,O P
$charQ T
,T U
$charV Y
}Z [
;[ \
public 
char 
[ 
] 
ColorForFivePlayers )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
=8 9
new: =
char> B
[B C
]C D
{E F
$charG J
,J K
$charL O
,O P
$charQ T
,T U
$charV Y
,Y Z
$char[ ^
}_ `
;` a
public 
char 
[ 
] 
ColorForSixPlayers (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
=7 8
new9 <
char= A
[A B
]B C
{D E
$charF I
,I J
$charK N
,N O
$charP S
,S T
$charU X
,X Y
$charZ ]
,] ^
$char_ b
}c d
;d e
} 
} Á
nC:\Users\alexs\Desktop\JuegoTecno (2)\JuegoTecno\ChineseCheckers\ChineseCheckersLogicServer\Model\UserModel.cs
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
{ 
[ 	

DataMember	 
] 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	

DataMember	 
] 
public 
string 
Gamertag 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	

DataMember	 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	

DataMember	 
] 
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	

DataMember	 
] 
public 
string 
ImageProfile "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	

DataMember	 
] 
public 
string 
PlayerStatus "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} °
vC:\Users\alexs\Desktop\JuegoTecno (2)\JuegoTecno\ChineseCheckers\ChineseCheckersLogicServer\Properties\AssemblyInfo.cs
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