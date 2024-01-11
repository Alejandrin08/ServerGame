�
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
}** �
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
}!! �
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
} �)
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
}>> �1
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
}KK �v
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
�� 
(
�� 
_rooms
�� 
.
�� 
Contains
�� #
(
��# $
idRoom
��$ *
)
��* +
)
��+ ,
{
��- .
if
�� 
(
�� 
_playersInGame
�� &
.
��& '
ContainsKey
��' 2
(
��2 3
idRoom
��3 9
)
��9 :
)
��: ;
{
��< =

BoardModel
�� "
board
��# (
=
��) *
_playersInGame
��+ 9
[
��9 :
idRoom
��: @
]
��@ A
;
��A B
board
�� 
.
�� 
GamePlayers
�� )
.
��) *
Add
��* -
(
��- .
gamertag
��. 6
,
��6 7
context
��8 ?
)
��? @
;
��@ A
}
�� 
else
�� 
{
�� 

BoardModel
�� "
board
��# (
=
��) *
new
��+ .

BoardModel
��/ 9
{
��: ;
IdRoom
�� "
=
��# $
idRoom
��% +
}
�� 
;
�� 
board
�� 
.
�� 
GamePlayers
�� )
.
��) *
Add
��* -
(
��- .
gamertag
��. 6
,
��6 7
context
��8 ?
)
��? @
;
��@ A
_playersInGame
�� &
.
��& '
Add
��' *
(
��* +
idRoom
��+ 1
,
��1 2
board
��3 8
)
��8 9
;
��9 :
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +
ex
��, .
)
��. /
{
��0 1

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" L
{
��L M
ex
��M O
.
��O P
Message
��P W
}
��W X
"
��X Y
)
��Y Z
;
��Z [
}
�� 
}
�� 	
public
�� 
void
�� "
RemovePlayerFromGame
�� (
(
��( )
string
��) /
gamertag
��0 8
,
��8 9
string
��: @
idRoom
��A G
)
��G H
{
��I J
const
�� 
int
�� 
MIN_PLAYERS_ROOM
�� &
=
��' (
$num
��) *
;
��* +
try
�� 
{
�� 
if
�� 
(
�� 
_playersInGame
�� "
.
��" #
ContainsKey
��# .
(
��. /
idRoom
��/ 5
)
��5 6
)
��6 7
{
��8 9

BoardModel
�� 
board
�� $
=
��% &
_playersInGame
��' 5
[
��5 6
idRoom
��6 <
]
��< =
;
��= >
if
�� 
(
�� 
board
�� 
.
�� 
GamePlayers
�� )
.
��) *
Count
��* /
>
��0 1
MIN_PLAYERS_ROOM
��2 B
)
��B C
{
��D E
board
�� 
.
�� 
GamePlayers
�� )
.
��) *
Remove
��* 0
(
��0 1
gamertag
��1 9
)
��9 :
;
��: ;
}
�� 
else
�� 
{
�� 
board
�� 
.
�� 
GamePlayers
�� )
.
��) *
Remove
��* 0
(
��0 1
gamertag
��1 9
)
��9 :
;
��: ;
_playersInGame
�� &
.
��& '
Remove
��' -
(
��- .
idRoom
��. 4
)
��4 5
;
��5 6
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +
ex
��, .
)
��. /
{
��0 1

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" M
{
��M N
ex
��N P
.
��P Q
Message
��Q X
}
��X Y
"
��Y Z
)
��Z [
;
��[ \
}
�� 
}
�� 	
public
�� 
void
�� 
WinningPlayer
�� !
(
��! "
string
��" (
idRoom
��) /
,
��/ 0
string
��1 7
gamertag
��8 @
)
��@ A
{
��B C
try
�� 
{
�� 
const
�� 
int
�� 
MIN_PLAYERS_ROOM
�� *
=
��+ ,
$num
��- .
;
��. /
string
�� 
winningGamertag
�� &
=
��' (
gamertag
��) 1
;
��1 2
if
�� 
(
�� 
_playersInGame
�� "
.
��" #
ContainsKey
��# .
(
��. /
idRoom
��/ 5
)
��5 6
)
��6 7
{
��8 9

BoardModel
�� 
board
�� $
=
��% &
_playersInGame
��' 5
[
��5 6
idRoom
��6 <
]
��< =
;
��= >
if
�� 
(
�� 
board
�� 
.
�� 
GamePlayers
�� )
.
��) *
Count
��* /
==
��0 2
MIN_PLAYERS_ROOM
��3 C
)
��C D
{
��E F
winningGamertag
�� '
=
��( )
board
��* /
.
��/ 0
GamePlayers
��0 ;
.
��; <
Keys
��< @
.
��@ A
FirstOrDefault
��A O
(
��O P
)
��P Q
?
��Q R
.
��R S
ToString
��S [
(
��[ \
)
��\ ]
;
��] ^
}
�� 
foreach
�� 
(
�� 
var
��  
gamePlayers
��! ,
in
��- /
board
��0 5
.
��5 6
GamePlayers
��6 A
.
��A B
Values
��B H
)
��H I
{
��J K
gamePlayers
�� #
.
��# $#
WinningPlayerCallback
��$ 9
(
��9 :
winningGamertag
��: I
)
��I J
;
��J K
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +
ex
��, .
)
��. /
{
��0 1

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" A
{
��A B
ex
��B D
.
��D E
Message
��E L
}
��L M
"
��M N
)
��N O
;
��O P
}
�� 
}
�� 	
}
�� 
}�� �o
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
��  
isValidatedRequest
�� 1
?
��2 3
$num
��4 5
:
��6 7
-
��8 9
$num
��9 :
;
��: ;
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� $
ex
��% '
)
��' (
{
��) *

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" M
{
��M N
ex
��N P
.
��P Q
Message
��Q X
}
��X Y
"
��Y Z
)
��Z [
;
��[ \
return
�� 
-
�� 
$num
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
public
�� 

partial
�� 
class
�� 
ManagerController
�� *
:
��+ , 
IUserFriendRequest
��- ?
{
��@ A
public
�� 
void
�� 
GetFriendRequest
�� $
(
��$ %
int
��% (
idUser
��) /
)
��/ 0
{
��1 2

Dictionary
�� 
<
�� 
string
�� 
,
�� 
(
��  
string
��  &
,
��& '
string
��( .
,
��. /
string
��0 6
)
��6 7
>
��7 8
friendsDictionary
��9 J
=
��K L
new
��M P

Dictionary
��Q [
<
��[ \
string
��\ b
,
��b c
(
��d e
string
��e k
,
��k l
string
��m s
,
��s t
string
��u {
)
��{ |
>
��| }
(
��} ~
)
��~ 
;�� �
try
�� 
{
�� 
const
�� 
string
�� 
FRIEND_REQUEST
�� +
=
��, -
$str
��. 7
;
��7 8
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (%
ChineseCheckersEntities
��) @
(
��@ A
)
��A B
)
��B C
{
��D E
var
�� 

friendData
�� "
=
��# $
(
��% &
from
��& *
friend
��+ 1
in
��2 4
context
��5 <
.
��< =
FriendPlayer
��= I
join
��& *
user
��+ /
in
��0 2
context
��3 :
.
��: ;
UserAccount
��; F
on
��G I
friend
��J P
.
��P Q
IdPlayer
��Q Y
equals
��Z `
user
��a e
.
��e f
Id
��f h
where
��& +
friend
��, 2
.
��2 3
RequestStatus
��3 @
==
��A C
FRIEND_REQUEST
��D R
&&
��S U
friend
��V \
.
��\ ]
IdFriend
��] e
==
��f h
idUser
��i o
select
��& ,
new
��- 0
{
��1 2
user
��* .
.
��. /
Id
��/ 1
,
��1 2
Gamertag
��* 2
=
��3 4
user
��5 9
.
��9 :
GamertagUser
��: F
,
��F G
user
��* .
.
��. /
ImageProfile
��/ ;
,
��; <
friend
��* 0
.
��0 1
TypeNotification
��1 A
,
��A B
SingletonClass
��* 8
.
��8 9
Instance
��9 A
.
��A B
IdRoom
��B H
}
��& '
)
��' (
.
��( )
ToList
��) /
(
��/ 0
)
��0 1
;
��1 2
foreach
�� 
(
�� 
var
��  
friend
��! '
in
��( *

friendData
��+ 5
)
��5 6
{
��7 8
friendsDictionary
�� )
[
��) *
friend
��* 0
.
��0 1
Gamertag
��1 9
]
��9 :
=
��; <
(
��= >
friend
��> D
.
��D E
ImageProfile
��E Q
,
��Q R
friend
��S Y
.
��Y Z
TypeNotification
��Z j
,
��j k
friend
��l r
.
��r s
IdRoom
��s y
)
��y z
;
��z {
}
�� (
IUserFriendRequestCallback
�� .
callback
��/ 7
=
��8 9
OperationContext
��: J
.
��J K
Current
��K R
.
��R S 
GetCallbackChannel
��S e
<
��e f)
IUserFriendRequestCallback��f �
>��� �
(��� �
)��� �
;��� �
callback
�� 
.
�� &
GetFriendRequestCallback
�� 5
(
��5 6
friendsDictionary
��6 G
)
��G H
;
��H I
}
�� 
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +
ex
��, .
)
��. /
{
��0 1

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" G
{
��G H
ex
��H J
.
��J K
Message
��K R
}
��R S
"
��S T
)
��T U
;
��U V
}
�� 
catch
�� 
(
�� 
EntityException
�� $
ex
��% '
)
��' (
{
��) *

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" G
{
��G H
ex
��H J
.
��J K
Message
��K R
}
��R S
"
��S T
)
��T U
;
��U V
}
�� 
}
�� 	
}
�� 
}�� �j
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
�� 

dateValues
�� "
=
��# $
context
��% ,
.
��, -
Reports
��- 4
.
�� 
FirstOrDefault
�� '
(
��' (
date
��( ,
=>
��- /
date
��0 4
.
��4 5
IdUser
��5 ;
==
��< >
idUser
��? E
)
��E F
;
��F G
if
�� 
(
�� 

dateValues
�� "
!=
��# %
null
��& *
)
��* +
{
��, -
dateTime
��  
=
��! "
(
��# $
DateTime
��$ ,
)
��, -

dateValues
��- 7
.
��7 8

DateFinish
��8 B
;
��B C
}
�� 
return
�� 
dateTime
�� #
;
��# $
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� $
ex
��% '
)
��' (
{
��) *

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" H
{
��H I
ex
��I K
.
��K L
Message
��L S
}
��S T
"
��T U
)
��U V
;
��V W
return
�� 
DateTime
�� 
.
��  
Now
��  #
;
��# $
}
�� 
}
�� 	
public
�� 
bool
�� 

IsReported
�� 
(
�� 
int
�� "
idUser
��# )
)
��) *
{
��+ ,
try
�� 
{
�� 
bool
�� 

isReported
�� 
=
��  !
true
��" &
;
��& '
DateTime
�� 
dateTime
�� !
;
��! "
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (%
ChineseCheckersEntities
��) @
(
��@ A
)
��A B
)
��B C
{
��D E
var
�� 

dateValues
�� "
=
��# $
context
��% ,
.
��, -
Reports
��- 4
.
�� 
FirstOrDefault
�� '
(
��' (
date
��( ,
=>
��- /
date
��0 4
.
��4 5
IdUser
��5 ;
==
��< >
idUser
��? E
)
��E F
;
��F G
if
�� 
(
�� 

dateValues
�� "
!=
��# %
null
��& *
)
��* +
{
��, -
dateTime
��  
=
��! "
(
��# $
DateTime
��$ ,
)
��, -

dateValues
��- 7
.
��7 8

DateFinish
��8 B
;
��B C
if
�� 
(
�� 
dateTime
�� $
>
��% &
DateTime
��' /
.
��/ 0
Now
��0 3
)
��3 4
{
��5 6

isReported
�� &
=
��' (
false
��) .
;
��. /
}
�� 
}
�� 
return
�� 

isReported
�� %
;
��% &
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� $
ex
��% '
)
��' (
{
��) *

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" ?
{
��? @
ex
��@ B
.
��B C
Message
��C J
}
��J K
"
��K L
)
��L M
;
��M N
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
bool
�� 
IsBanned
�� 
(
�� 
int
��  
idUser
��! '
)
��' (
{
��) *
try
�� 
{
�� 
const
�� 
string
�� 
BANNED
�� #
=
��$ %
$str
��& )
;
��) *
bool
�� 
isBanned
�� 
=
�� 
false
��  %
;
��% &
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (%
ChineseCheckersEntities
��) @
(
��@ A
)
��A B
)
��B C
{
��D E
var
�� 

userBanned
�� "
=
��# $
context
��% ,
.
��, -
User
��- 1
.
�� 
FirstOrDefault
�� '
(
��' (
banned
��( .
=>
��/ 1
banned
��2 8
.
��8 9
Id
��9 ;
==
��< >
idUser
��? E
)
��E F
;
��F G
if
�� 
(
�� 

userBanned
�� "
!=
��# %
null
��& *
&&
��+ -

userBanned
��. 8
.
��8 9
PlayerStatus
��9 E
.
��E F
Equals
��F L
(
��L M
BANNED
��M S
)
��S T
)
��T U
{
��V W
isBanned
��  
=
��! "
true
��# '
;
��' (
}
�� 
return
�� 
isBanned
�� #
;
��# $
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� $
ex
��% '
)
��' (
{
��) *

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" =
{
��= >
ex
��> @
.
��@ A
Message
��A H
}
��H I
"
��I J
)
��J K
;
��K L
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� ��
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
[	yy �
idRoom
yy� �
]
yy� �
.
yy� �
PlayersRoom
yy� �
.
yy� �
Count
yy� �
<=
yy� �
MAX_PLAYERS
yy� �
;
yy� �
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
�� 

partial
�� 
class
�� 
ManagerController
�� *
:
��+ ,
IMessage
��- 5
{
��6 7
private
�� 
static
�� 
readonly
�� 

Dictionary
��  *
<
��* +
string
��+ 1
,
��1 2
	RoomModel
��3 <
>
��< =
_playersInRoom
��> L
=
��M N
new
��O R

Dictionary
��S ]
<
��] ^
string
��^ d
,
��d e
	RoomModel
��f o
>
��o p
(
��p q
)
��q r
;
��r s
public
�� 
void
�� 
SendMessage
�� 
(
��  
string
��  &
message
��' .
,
��. /
string
��0 6
gamertag
��7 ?
,
��? @
string
��A G
idRoom
��H N
)
��N O
{
��P Q
try
�� 
{
�� 
if
�� 
(
�� 
_playersInRoom
�� "
.
��" #
ContainsKey
��# .
(
��. /
idRoom
��/ 5
)
��5 6
)
��6 7
{
��8 9
	RoomModel
�� 
room
�� "
=
��# $
_playersInRoom
��% 3
[
��3 4
idRoom
��4 :
]
��: ;
;
��; <
if
�� 
(
�� 
room
�� 
!=
�� 
null
��  $
&&
��% '
room
��( ,
.
��, -
Players
��- 4
!=
��5 7
null
��8 <
)
��< =
{
��> ?
foreach
�� 
(
��  !
var
��! $
players
��% ,
in
��- /
room
��0 4
.
��4 5
Players
��5 <
.
��< =
Values
��= C
)
��C D
{
��E F
players
�� #
.
��# $!
SendMessageCallback
��$ 7
(
��7 8
message
��8 ?
,
��? @
gamertag
��A I
)
��I J
;
��J K
}
�� 
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +
ex
��, .
)
��. /
{
��0 1

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" >
{
��> ?
ex
��? A
.
��A B
Message
��B I
}
��I J
"
��J K
)
��K L
;
��L M
}
�� 
}
�� 	
public
�� 
void
�� 
	AddPlayer
�� 
(
�� 
string
�� $
gamertag
��% -
,
��- .
string
��/ 5
idRoom
��6 <
)
��< =
{
��> ?
try
�� 
{
�� 
IMessageCallback
��  
context
��! (
=
��) *
OperationContext
��+ ;
.
��; <
Current
��< C
.
��C D 
GetCallbackChannel
��D V
<
��V W
IMessageCallback
��W g
>
��g h
(
��h i
)
��i j
;
��j k
if
�� 
(
�� 
_playersInRoom
�� "
.
��" #
ContainsKey
��# .
(
��. /
idRoom
��/ 5
)
��5 6
)
��6 7
{
��8 9
	RoomModel
�� 
room
�� "
=
��# $
_playersInRoom
��% 3
[
��3 4
idRoom
��4 :
]
��: ;
;
��; <
room
�� 
.
�� 
Players
��  
.
��  !
Add
��! $
(
��$ %
gamertag
��% -
,
��- .
context
��/ 6
)
��6 7
;
��7 8
}
�� 
else
�� 
{
�� 
	RoomModel
�� 
room
�� "
=
��# $
new
��% (
	RoomModel
��) 2
{
��3 4
IdRoom
�� 
=
��  
idRoom
��! '
}
�� 
;
�� 
room
�� 
.
�� 
Players
��  
.
��  !
Add
��! $
(
��$ %
gamertag
��% -
,
��- .
context
��/ 6
)
��6 7
;
��7 8
_playersInRoom
�� "
.
��" #
Add
��# &
(
��& '
idRoom
��' -
,
��- .
room
��/ 3
)
��3 4
;
��4 5
}
�� 
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +
ex
��, .
)
��. /
{
��0 1

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" G
{
��G H
ex
��H J
.
��J K
Message
��K R
}
��R S
"
��S T
)
��T U
;
��U V
}
�� 
}
�� 	
}
�� 
public
�� 

partial
�� 
class
�� 
ManagerController
�� *
:
��+ ,
IPlayersRoom
��- 9
{
��: ;
private
�� 
static
�� 
readonly
�� 

Dictionary
��  *
<
��* +
string
��+ 1
,
��1 2
	RoomModel
��3 <
>
��< =
_playersRoom
��> J
=
��K L
new
��M P

Dictionary
��Q [
<
��[ \
string
��\ b
,
��b c
	RoomModel
��d m
>
��m n
(
��n o
)
��o p
;
��p q
private
�� 
static
�� 
readonly
�� 

Dictionary
��  *
<
��* +
string
��+ 1
,
��1 2
List
��3 7
<
��7 8
String
��8 >
>
��> ?
>
��? @$
_playersRoomDictionary
��A W
=
��X Y
new
��Z ]

Dictionary
��^ h
<
��h i
string
��i o
,
��o p
List
��q u
<
��u v
String
��v |
>
��| }
>
��} ~
(
��~ 
)�� �
;��� �
public
�� 
void
�� 
AddPlayerRoom
�� !
(
��! "
string
��" (
gamertag
��) 1
,
��1 2
string
��3 9
idRoom
��: @
)
��@ A
{
��B C
try
�� 
{
�� "
IPlayersRoomCallback
�� $
context
��% ,
=
��- .
OperationContext
��/ ?
.
��? @
Current
��@ G
.
��G H 
GetCallbackChannel
��H Z
<
��Z ["
IPlayersRoomCallback
��[ o
>
��o p
(
��p q
)
��q r
;
��r s
if
�� 
(
�� 
_rooms
�� 
.
�� 
Contains
�� #
(
��# $
idRoom
��$ *
)
��* +
)
��+ ,
{
��- .
if
�� 
(
�� 
_playersRoom
�� $
.
��$ %
ContainsKey
��% 0
(
��0 1
idRoom
��1 7
)
��7 8
)
��8 9
{
��: ;
	RoomModel
�� !
room
��" &
=
��' (
_playersRoom
��) 5
[
��5 6
idRoom
��6 <
]
��< =
;
��= >
room
�� 
.
�� 
PlayersRoom
�� (
.
��( )
Add
��) ,
(
��, -
gamertag
��- 5
,
��5 6
context
��7 >
)
��> ?
;
��? @
List
�� 
<
�� 
string
�� #
>
��# $
listPlayers
��% 0
=
��1 2$
_playersRoomDictionary
��3 I
[
��I J
idRoom
��J P
]
��P Q
;
��Q R
listPlayers
�� #
.
��# $
Add
��$ '
(
��' (
gamertag
��( 0
)
��0 1
;
��1 2$
_playersRoomDictionary
�� .
[
��. /
idRoom
��/ 5
]
��5 6
=
��7 8
listPlayers
��9 D
;
��D E
}
�� 
else
�� 
{
�� 
	RoomModel
�� !
room
��" &
=
��' (
new
��) ,
	RoomModel
��- 6
{
��7 8
IdRoom
�� "
=
��# $
idRoom
��% +
}
�� 
;
�� 
room
�� 
.
�� 
PlayersRoom
�� (
.
��( )
Add
��) ,
(
��, -
gamertag
��- 5
,
��5 6
context
��7 >
)
��> ?
;
��? @
_playersRoom
�� $
.
��$ %
Add
��% (
(
��( )
idRoom
��) /
,
��/ 0
room
��1 5
)
��5 6
;
��6 7
List
�� 
<
�� 
string
�� #
>
��# $
listPlayers
��% 0
=
��1 2
new
��3 6
List
��7 ;
<
��; <
string
��< B
>
��B C
(
��C D
)
��D E
;
��E F
listPlayers
�� #
.
��# $
Add
��$ '
(
��' (
gamertag
��( 0
)
��0 1
;
��1 2$
_playersRoomDictionary
�� .
.
��. /
Add
��/ 2
(
��2 3
idRoom
��3 9
,
��9 :
listPlayers
��; F
)
��F G
;
��G H
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +
ex
��, .
)
��. /
{
��0 1

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" U
{
��U V
ex
��V X
.
��X Y
Message
��Y `
}
��` a
"
��a b
)
��b c
;
��c d
}
�� 
}
�� 	
public
�� 
void
�� 
GetPlayersRoom
�� "
(
��" #
string
��# )
gamertag
��* 2
,
��2 3
string
��4 :
idRoom
��; A
)
��A B
{
��C D
try
�� 
{
�� 
if
�� 
(
�� 
_playersRoom
��  
.
��  !
ContainsKey
��! ,
(
��, -
idRoom
��- 3
)
��3 4
)
��4 5
{
��6 7
	RoomModel
�� 
room
�� "
=
��# $
_playersRoom
��% 1
[
��1 2
idRoom
��2 8
]
��8 9
;
��9 :
if
�� 
(
�� 
room
�� 
!=
�� 
null
��  $
&&
��% '
room
��( ,
.
��, -
PlayersRoom
��- 8
!=
��9 ;
null
��< @
)
��@ A
{
��B C
List
�� 
<
�� 
string
�� #
>
��# $
listPlayers
��% 0
=
��1 2$
_playersRoomDictionary
��3 I
[
��I J
idRoom
��J P
]
��P Q
;
��Q R
foreach
�� 
(
��  !
var
��! $
players
��% ,
in
��- /
room
��0 4
.
��4 5
PlayersRoom
��5 @
.
��@ A
Values
��A G
)
��G H
{
��I J
players
�� #
.
��# $$
GetPlayersRoomCallback
��$ :
(
��: ;
listPlayers
��; F
)
��F G
;
��G H
}
�� 
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +
ex
��, .
)
��. /
{
��0 1

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" M
{
��M N
ex
��N P
.
��P Q
Message
��Q X
}
��X Y
"
��Y Z
)
��Z [
;
��[ \
}
�� 
}
�� 	
public
�� 
void
�� 
SendToBoard
�� 
(
��  
string
��  &
idRoom
��' -
)
��- .
{
��/ 0
try
�� 
{
�� 
if
�� 
(
�� 
_playersRoom
��  
.
��  !
ContainsKey
��! ,
(
��, -
idRoom
��- 3
)
��3 4
)
��4 5
{
��6 7
	RoomModel
�� 
room
�� "
=
��# $
_playersRoom
��% 1
[
��1 2
idRoom
��2 8
]
��8 9
;
��9 :
if
�� 
(
�� 
room
�� 
!=
�� 
null
��  $
&&
��% '
room
��( ,
.
��, -
PlayersRoom
��- 8
!=
��9 ;
null
��< @
)
��@ A
{
��B C
foreach
�� 
(
��  !
var
��! $
players
��% ,
in
��- /
room
��0 4
.
��4 5
PlayersRoom
��5 @
.
��@ A
Values
��A G
)
��G H
{
��I J
players
�� #
.
��# $!
SendToBoardCallback
��$ 7
(
��7 8
)
��8 9
;
��9 :
}
�� 
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +
ex
��, .
)
��. /
{
��0 1

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" P
{
��P Q
ex
��Q S
.
��S T
Message
��T [
}
��[ \
"
��\ ]
)
��] ^
;
��^ _
}
�� 
}
�� 	
public
�� 
void
�� 
RemovePlayerRoom
�� $
(
��$ %
string
��% +
gamertag
��, 4
,
��4 5
string
��6 <
idRoom
��= C
)
��C D
{
��E F
try
�� 
{
�� 
const
�� 
int
�� 
MIN_PLAYERS
�� %
=
��& '
$num
��( )
;
��) *
if
�� 
(
�� 
_playersRoom
��  
.
��  !
ContainsKey
��! ,
(
��, -
idRoom
��- 3
)
��3 4
)
��4 5
{
��6 7
	RoomModel
�� 
room
�� "
=
��# $
_playersRoom
��% 1
[
��1 2
idRoom
��2 8
]
��8 9
;
��9 :
if
�� 
(
�� $
_playersRoomDictionary
�� .
.
��. /
ContainsKey
��/ :
(
��: ;
idRoom
��; A
)
��A B
)
��B C
{
��D E
List
�� 
<
�� 
string
�� #
>
��# $
listPlayers
��% 0
=
��1 2$
_playersRoomDictionary
��3 I
[
��I J
idRoom
��J P
]
��P Q
;
��Q R
listPlayers
�� #
.
��# $
Remove
��$ *
(
��* +
gamertag
��+ 3
)
��3 4
;
��4 5$
_playersRoomDictionary
�� .
[
��. /
idRoom
��/ 5
]
��5 6
=
��7 8
listPlayers
��9 D
;
��D E
}
�� 
if
�� 
(
�� 
room
�� 
.
�� 
PlayersRoom
�� (
.
��( )
Count
��) .
>
��/ 0
MIN_PLAYERS
��1 <
)
��< =
{
��> ?
room
�� 
.
�� 
PlayersRoom
�� (
.
��( )
Remove
��) /
(
��/ 0
gamertag
��0 8
)
��8 9
;
��9 :
}
�� 
else
�� 
{
�� 
room
�� 
.
�� 
Players
�� $
.
��$ %
Remove
��% +
(
��+ ,
gamertag
��, 4
)
��4 5
;
��5 6
_playersRoom
�� $
.
��$ %
Remove
��% +
(
��+ ,
idRoom
��, 2
)
��2 3
;
��3 4
_rooms
�� 
.
�� 
Remove
�� %
(
��% &
idRoom
��& ,
)
��, -
;
��- .
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +
ex
��, .
)
��. /
{
��0 1

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" I
{
��I J
ex
��J L
.
��L M
Message
��M T
}
��T U
"
��U V
)
��V W
;
��W X
}
�� 
}
�� 	
public
�� 
void
�� 
AssignColors
��  
(
��  !
string
��! '
idRoom
��( .
)
��. /
{
��0 1

Dictionary
�� 
<
�� 
string
�� 
,
�� 
char
�� #
>
��# $$
dictionaryPlayersColor
��% ;
=
��< =
new
��> A

Dictionary
��B L
<
��L M
string
��M S
,
��S T
char
��U Y
>
��Y Z
(
��Z [
)
��[ \
;
��\ ]
try
�� 
{
�� 
if
�� 
(
�� 
_playersRoom
��  
.
��  !
TryGetValue
��! ,
(
��, -
idRoom
��- 3
,
��3 4
out
��5 8
var
��9 <
room
��= A
)
��A B
&&
��C E
room
��F J
!=
��K M
null
��N R
&&
��S U
room
��V Z
.
��Z [
PlayersRoom
��[ f
!=
��g i
null
��j n
)
��n o
{
��p q
char
�� 
[
�� 
]
�� 
colors
�� !
=
��" #
null
��$ (
;
��( )
switch
�� 
(
�� 
room
��  
.
��  !
PlayersRoom
��! ,
.
��, -
Count
��- 2
)
��2 3
{
��4 5
case
�� 
$num
�� 
:
�� 
colors
�� "
=
��# $
room
��% )
.
��) * 
ColorForTwoPlayers
��* <
;
��< =
break
�� !
;
��! "
case
�� 
$num
�� 
:
�� 
colors
�� "
=
��# $
room
��% )
.
��) *"
ColorForThreePlayers
��* >
;
��> ?
break
�� !
;
��! "
case
�� 
$num
�� 
:
�� 
colors
�� "
=
��# $
room
��% )
.
��) *!
ColorForFourPlayers
��* =
;
��= >
break
�� !
;
��! "
case
�� 
$num
�� 
:
�� 
colors
�� "
=
��# $
room
��% )
.
��) *!
ColorForFivePlayers
��* =
;
��= >
break
�� !
;
��! "
case
�� 
$num
�� 
:
�� 
colors
�� "
=
��# $
room
��% )
.
��) * 
ColorForSixPlayers
��* <
;
��< =
break
�� !
;
��! "
}
�� 
if
�� 
(
�� 
colors
�� 
!=
�� !
null
��" &
)
��& '
{
��( )
foreach
�� 
(
��  !
var
��! $
	playerKey
��% .
in
��/ 1
room
��2 6
.
��6 7
PlayersRoom
��7 B
.
��B C
Keys
��C G
)
��G H
{
��I J
char
��  
	colorType
��! *
=
��+ ,
colors
��- 3
[
��3 4$
dictionaryPlayersColor
��4 J
.
��J K
Count
��K P
]
��P Q
;
��Q R$
dictionaryPlayersColor
�� 2
.
��2 3
Add
��3 6
(
��6 7
	playerKey
��7 @
,
��@ A
	colorType
��B K
)
��K L
;
��L M
}
�� 
foreach
�� 
(
��  !
var
��! $
players
��% ,
in
��- /
room
��0 4
.
��4 5
PlayersRoom
��5 @
.
��@ A
Values
��A G
)
��G H
{
��I J
players
�� #
.
��# $"
AssignColorsCallback
��$ 8
(
��8 9$
dictionaryPlayersColor
��9 O
)
��O P
;
��P Q
}
�� 
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +
ex
��, .
)
��. /
{
��0 1

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" @
{
��@ A
ex
��A C
.
��C D
Message
��D K
}
��K L
"
��L M
)
��M N
;
��N O
}
�� 
}
�� 	
}
�� 
}�� �
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
} �
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
�� 
int
�� 
UpdateInfoUser
�� !
(
��! "
	UserModel
��" +
	usermodel
��, 5
,
��5 6
string
��7 =
gamertag
��> F
)
��F G
{
��H I
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (%
ChineseCheckersEntities
��) @
(
��@ A
)
��A B
)
��B C
using
�� 
(
�� 
var
�� 
transaction
�� &
=
��' (
context
��) 0
.
��0 1
Database
��1 9
.
��9 :
BeginTransaction
��: J
(
��J K
)
��K L
)
��L M
{
��N O
try
�� 
{
�� 
var
�� 
user
��  
=
��! "
context
��# *
.
��* +
UserAccount
��+ 6
.
�� 
Where
�� "
(
��" #

userUpdate
��# -
=>
��. 0

userUpdate
��1 ;
.
��; <
GamertagUser
��< H
==
��I K
gamertag
��L T
)
��T U
.
�� 
FirstOrDefault
�� +
(
��+ ,
)
��, -
;
��- .
if
�� 
(
�� 
user
��  
!=
��! #
null
��$ (
)
��( )
{
��* +
user
��  
.
��  !
Id
��! #
=
��$ %
	usermodel
��& /
.
��/ 0
Id
��0 2
;
��2 3
user
��  
.
��  !
GamertagUser
��! -
=
��. /
	usermodel
��0 9
.
��9 :
Gamertag
��: B
;
��B C
user
��  
.
��  !
ImageProfile
��! -
=
��. /
	usermodel
��0 9
.
��9 :
ImageProfile
��: F
;
��F G
user
��  
.
��  !
Email
��! &
=
��' (
	usermodel
��) 2
.
��2 3
Email
��3 8
;
��8 9
RemoveClient
�� (
(
��( )
	usermodel
��) 2
.
��2 3
Id
��3 5
)
��5 6
;
��6 7
context
�� #
.
��# $
SaveChanges
��$ /
(
��/ 0
)
��0 1
;
��1 2
}
�� 
transaction
�� #
.
��# $
Commit
��$ *
(
��* +
)
��+ ,
;
��, -
return
�� 
$num
��  
;
��  !
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� .
ex
��/ 1
)
��1 2
{
��3 4
transaction
�� #
.
��# $
Rollback
��$ ,
(
��, -
)
��- .
;
��. /

MessageBox
�� "
.
��" #
Show
��# '
(
��' (
$"
��( *
$str
��* j
{
��j k
ex
��k m
.
��m n
Message
��n u
}
��u v
"
��v w
)
��w x
;
��x y
return
�� 
-
��  
$num
��  !
;
��! "
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� $
ex
��% '
)
��' (
{
��) *

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" R
{
��R S
ex
��S U
.
��U V
Message
��V ]
}
��] ^
"
��^ _
)
��_ `
;
��` a
return
�� 
-
�� 
$num
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
int
�� 
UpdatePassword
�� !
(
��! "
	UserModel
��" +
	userModel
��, 5
)
��5 6
{
��7 8
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (%
ChineseCheckersEntities
��) @
(
��@ A
)
��A B
)
��B C
{
��D E
var
�� 
userAccountUpdate
�� )
=
��* +
context
��, 3
.
��3 4
UserAccount
��4 ?
.
��( )
Where
��) .
(
��. /
user
��/ 3
=>
��4 6
user
��7 ;
.
��; <
Email
��< A
==
��B D
	userModel
��E N
.
��N O
Email
��O T
)
��T U
.
��( )
FirstOrDefault
��) 7
(
��7 8
)
��8 9
;
��9 :
if
�� 
(
�� 
userAccountUpdate
�� )
!=
��* ,
null
��- 1
)
��1 2
{
��3 4
userAccountUpdate
�� )
.
��) *
Password
��* 2
=
��3 4
BCrypt
��5 ;
.
��; <
Net
��< ?
.
��? @
BCrypt
��@ F
.
��F G
HashPassword
��G S
(
��S T
	userModel
��T ]
.
��] ^
Password
��^ f
)
��f g
;
��g h
}
�� 
return
�� 
context
�� "
.
��" #
SaveChanges
��# .
(
��. /
)
��/ 0
;
��0 1
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� $
ex
��% '
)
��' (
{
��) *

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" E
{
��E F
ex
��F H
.
��H I
Message
��I P
}
��P Q
"
��Q R
)
��R S
;
��S T
return
�� 
-
�� 
$num
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
int
�� 
ValidateUser
�� 
(
��  
	UserModel
��  )
	userModel
��* 3
)
��3 4
{
��5 6
try
�� 
{
�� 
int
�� 
userValidated
�� !
=
��" #
$num
��$ %
;
��% &
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (%
ChineseCheckersEntities
��) @
(
��@ A
)
��A B
)
��B C
{
��D E
var
�� 
validateUser
�� $
=
��% &
(
��' (
from
��( ,
user
��- 1
in
��2 4
context
��5 <
.
��< =
UserAccount
��= H
where
��( -
string
��. 4
.
��4 5
Equals
��5 ;
(
��; <
user
��< @
.
��@ A
GamertagUser
��A M
,
��M N
	userModel
��O X
.
��X Y
Gamertag
��Y a
)
��a b
select
��( .
user
��/ 3
)
��3 4
.
��4 5
FirstOrDefault
��5 C
(
��C D
)
��D E
;
��E F
if
�� 
(
�� 
validateUser
�� $
!=
��% '
null
��( ,
&&
��- /
BCrypt
��0 6
.
��6 7
Net
��7 :
.
��: ;
BCrypt
��; A
.
��A B
Verify
��B H
(
��H I
	userModel
��I R
.
��R S
Password
��S [
,
��[ \
validateUser
��] i
.
��i j
Password
��j r
)
��r s
)
��s t
{
��u v
userValidated
�� %
=
��& '
$num
��( )
;
��) *
}
�� 
return
�� 
userValidated
�� (
;
��( )
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� $
ex
��% '
)
��' (
{
��) *

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" ?
{
��? @
ex
��@ B
.
��B C
Message
��C J
}
��J K
"
��K L
)
��L M
;
��M N
return
�� 
-
�� 
$num
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
int
�� 
ValidateEmail
��  
(
��  !
	UserModel
��! *
	userModel
��+ 4
)
��4 5
{
��6 7
int
�� 
emailValidated
�� 
=
��  
$num
��! "
;
��" #
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (%
ChineseCheckersEntities
��) @
(
��@ A
)
��A B
)
��B C
{
��D E
var
�� 
validatedEmail
�� &
=
��' (
(
��) *
from
��* .
user
��/ 3
in
��4 6
context
��7 >
.
��> ?
UserAccount
��? J
where
��* /
user
��0 4
.
��4 5
Email
��5 :
==
��; =
	userModel
��> G
.
��G H
Email
��H M
select
��* 0
user
��1 5
)
��5 6
.
��6 7
FirstOrDefault
��7 E
(
��E F
)
��F G
;
��G H
if
�� 
(
�� 
validatedEmail
�� &
!=
��' )
null
��* .
)
��. /
{
��0 1
emailValidated
�� &
=
��' (
$num
��) *
;
��* +
}
�� 
return
�� 
emailValidated
�� )
;
��) *
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� $
ex
��% '
)
��' (
{
��) *

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" =
{
��= >
ex
��> @
.
��@ A
Message
��A H
}
��H I
"
��I J
)
��J K
;
��K L
return
�� 
-
�� 
$num
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
int
�� 
ValidateGamertag
�� #
(
��# $
	UserModel
��$ -
	userModel
��. 7
)
��7 8
{
��9 :
int
�� 
gamertagValidated
�� !
=
��" #
$num
��$ %
;
��% &
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (%
ChineseCheckersEntities
��) @
(
��@ A
)
��A B
)
��B C
{
��D E
var
�� 
validatedEmail
�� &
=
��' (
(
��) *
from
��* .
user
��/ 3
in
��4 6
context
��7 >
.
��> ?
UserAccount
��? J
where
��* /
user
��0 4
.
��4 5
GamertagUser
��5 A
==
��B D
	userModel
��E N
.
��N O
Gamertag
��O W
select
��* 0
user
��1 5
)
��5 6
.
��6 7
FirstOrDefault
��7 E
(
��E F
)
��F G
;
��G H
if
�� 
(
�� 
validatedEmail
�� &
!=
��' )
null
��* .
)
��. /
{
��0 1
gamertagValidated
�� )
=
��* +
$num
��, -
;
��- .
}
�� 
return
�� 
gamertagValidated
�� ,
;
��, -
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� $
ex
��% '
)
��' (
{
��) *

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" @
{
��@ A
ex
��A C
.
��C D
Message
��D K
}
��K L
"
��L M
)
��M N
;
��N O
return
�� 
-
�� 
$num
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
string
�� 
GetPlayerImage
�� $
(
��$ %
string
��% +
gamertag
��, 4
)
��4 5
{
��6 7
string
�� 
path
�� 
=
�� 
$str
�� 
;
�� 
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (%
ChineseCheckersEntities
��) @
(
��@ A
)
��A B
)
��B C
{
��D E
var
�� 
playerImage
�� #
=
��$ %
(
��& '
from
��' +
user
��, 0
in
��1 3
context
��4 ;
.
��; <
UserAccount
��< G
where
��' ,
string
��- 3
.
��3 4
Equals
��4 :
(
��: ;
user
��; ?
.
��? @
GamertagUser
��@ L
,
��L M
gamertag
��N V
)
��V W
select
��' -
user
��. 2
)
��2 3
.
��3 4
FirstOrDefault
��4 B
(
��B C
)
��C D
;
��D E
if
�� 
(
�� 
playerImage
�� #
!=
��$ &
null
��' +
)
��+ ,
{
��- .
path
�� 
=
�� 
$str
�� 3
+
��4 5
playerImage
��6 A
.
��A B
ImageProfile
��B N
;
��N O
}
�� 
return
�� 
path
�� 
;
��  
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� $
ex
��% '
)
��' (
{
��) *

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" H
{
��H I
ex
��I K
.
��K L
Message
��L S
}
��S T
"
��T U
)
��U V
;
��V W
return
�� 
null
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
�� 

LogoutUser
�� 
(
�� 
int
�� "
idUser
��# )
)
��) *
{
��+ ,
try
�� 
{
�� 
RemoveClient
�� 
(
�� 
idUser
�� #
)
��# $
;
��$ %
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +
ex
��, .
)
��. /
{
��0 1

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" :
{
��: ;
ex
��; =
.
��= >
Message
��> E
}
��E F
"
��F G
)
��G H
;
��H I
}
�� 
}
�� 	
public
�� 
string
�� 
FindGamertag
�� "
(
��" #
string
��# )
currentGamertag
��* 9
,
��9 :
string
��; A
friendGamertag
��B P
)
��P Q
{
��R S
string
�� 
gamertagToFound
�� "
=
��# $
$str
��% '
;
��' (
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (%
ChineseCheckersEntities
��) @
(
��@ A
)
��A B
)
��B C
{
��D E
var
�� 
currentUser
�� #
=
��$ %
context
��& -
.
��- .
UserAccount
��. 9
.
��9 :
FirstOrDefault
��: H
(
��H I
user
��I M
=>
��N P
user
��Q U
.
��U V
GamertagUser
��V b
==
��c e
currentGamertag
��f u
)
��u v
;
��v w
var
�� 

friendUser
�� "
=
��# $
context
��% ,
.
��, -
UserAccount
��- 8
.
��8 9
FirstOrDefault
��9 G
(
��G H
user
��H L
=>
��M O
user
��P T
.
��T U
GamertagUser
��U a
==
��b d
friendGamertag
��e s
)
��s t
;
��t u
if
�� 
(
�� 
currentUser
�� #
!=
��$ &
null
��' +
&&
��, .

friendUser
��/ 9
!=
��: <
null
��= A
&&
��B D
currentGamertag
��E T
!=
��U W
friendGamertag
��X f
)
��f g
{
��h i
var
�� 

areFriends
�� &
=
��' (
context
��) 0
.
��0 1
FriendPlayer
��1 =
.
��= >
Any
��> A
(
��A B
friend
��B H
=>
��I K
(
�� 
friend
�� #
.
��# $
IdPlayer
��$ ,
==
��- /
currentUser
��0 ;
.
��; <
Id
��< >
&&
��? A
friend
��B H
.
��H I
IdFriend
��I Q
==
��R T

friendUser
��U _
.
��_ `
Id
��` b
&&
��c e
friend
��f l
.
��l m
RequestStatus
��m z
==
��{ }
$str��~ �
)��� �
||��� �
(
�� 
friend
�� #
.
��# $
IdPlayer
��$ ,
==
��- /

friendUser
��0 :
.
��: ;
Id
��; =
&&
��> @
friend
��A G
.
��G H
IdFriend
��H P
==
��Q S
currentUser
��T _
.
��_ `
Id
��` b
&&
��c e
friend
��f l
.
��l m
RequestStatus
��m z
==
��{ }
$str��~ �
)��� �
)��� �
;��� �
if
�� 
(
�� 
!
�� 

areFriends
�� '
)
��' (
{
��) *
gamertagToFound
�� +
=
��, -
friendGamertag
��. <
;
��< =
}
�� 
}
�� 
return
�� 
gamertagToFound
�� *
;
��* +
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� $
ex
��% '
)
��' (
{
��) *

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" ?
{
��? @
ex
��@ B
.
��B C
Message
��C J
}
��J K
"
��K L
)
��L M
;
��M N
return
�� 
null
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
string
�� 
GetEmail
�� 
(
�� 
string
�� %
gamertag
��& .
)
��. /
{
��0 1
string
�� 
email
�� 
=
�� 
$str
�� 
;
�� 
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (%
ChineseCheckersEntities
��) @
(
��@ A
)
��A B
)
��B C
{
��D E
var
�� 
user
�� 
=
�� 
context
�� &
.
��& '
UserAccount
��' 2
.
�� 
FirstOrDefault
�� '
(
��' (
	userEmail
��( 1
=>
��2 4
	userEmail
��5 >
.
��> ?
GamertagUser
��? K
==
��L N
gamertag
��O W
)
��W X
;
��X Y
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  $
)
��$ %
{
��& '
email
�� 
=
�� 
user
��  $
.
��$ %
Email
��% *
;
��* +
}
�� 
return
�� 
email
��  
;
��  !
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� $
ex
��% '
)
��' (
{
��) *

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" >
{
��> ?
ex
��? A
.
��A B
Message
��B I
}
��I J
"
��J K
)
��K L
;
��L M
return
�� 
null
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
int
�� 
GetId
�� 
(
�� 
string
�� 
gamertag
��  (
)
��( )
{
��* +
int
�� 
id
�� 
=
�� 
$num
�� 
;
�� 
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (%
ChineseCheckersEntities
��) @
(
��@ A
)
��A B
)
��B C
{
��D E
var
�� 
user
�� 
=
�� 
context
�� &
.
��& '
UserAccount
��' 2
.
�� 
FirstOrDefault
�� '
(
��' (
userId
��( .
=>
��/ 1
userId
��2 8
.
��8 9
GamertagUser
��9 E
==
��F H
gamertag
��I Q
)
��Q R
;
��R S
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  $
)
��$ %
{
��& '
id
�� 
=
�� 
user
�� !
.
��! "
Id
��" $
;
��$ %
}
�� 
return
�� 
id
�� 
;
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� $
ex
��% '
)
��' (
{
��) *

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" :
{
��: ;
ex
��; =
.
��= >
Message
��> E
}
��E F
"
��F G
)
��G H
;
��H I
return
�� 
-
�� 
$num
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
int
�� 
UpdateGamesWon
�� !
(
��! "
int
��" %
idUser
��& ,
)
��, -
{
��. /
try
�� 
{
�� 
const
�� 
int
�� 
	MIN_GAMES
�� #
=
��$ %
$num
��& '
;
��' (
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (%
ChineseCheckersEntities
��) @
(
��@ A
)
��A B
)
��B C
{
��D E
var
�� 
user
�� 
=
�� 
context
�� &
.
��& '
User
��' +
.
�� 
FirstOrDefault
�� '
(
��' (
userId
��( .
=>
��/ 1
userId
��2 8
.
��8 9
Id
��9 ;
==
��< >
idUser
��? E
)
��E F
;
��F G
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  $
)
��$ %
{
��& '
if
�� 
(
�� 
user
��  
.
��  !
GamesWon
��! )
==
��* ,
null
��- 1
)
��1 2
{
��3 4
user
��  
.
��  !
GamesWon
��! )
=
��* +
	MIN_GAMES
��, 5
;
��5 6
}
�� 
else
�� 
{
��  
user
��  
.
��  !
GamesWon
��! )
++
��) +
;
��+ ,
}
�� 
}
�� 
return
�� 
context
�� "
.
��" #
SaveChanges
��# .
(
��. /
)
��/ 0
;
��0 1
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� $
ex
��% '
)
��' (
{
��) *

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" J
{
��J K
ex
��K M
.
��M N
Message
��N U
}
��U V
"
��V W
)
��W X
;
��X Y
return
�� 
-
�� 
$num
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
int
�� 
UpdateTotalGames
�� #
(
��# $
int
��$ '
idUser
��( .
)
��. /
{
��0 1
try
�� 
{
�� 
const
�� 
int
�� 
	MIN_GAMES
�� #
=
��$ %
$num
��& '
;
��' (
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (%
ChineseCheckersEntities
��) @
(
��@ A
)
��A B
)
��B C
{
��D E
var
�� 
user
�� 
=
�� 
context
�� &
.
��& '
User
��' +
.
�� 
FirstOrDefault
�� '
(
��' (
userId
��( .
=>
��/ 1
userId
��2 8
.
��8 9
Id
��9 ;
==
��< >
idUser
��? E
)
��E F
;
��F G
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  $
)
��$ %
{
��& '
if
�� 
(
�� 
user
��  
.
��  !
NumberGames
��! ,
==
��- /
null
��0 4
)
��4 5
{
��6 7
user
��  
.
��  !
NumberGames
��! ,
=
��- .
	MIN_GAMES
��/ 8
;
��8 9
}
�� 
else
�� 
{
��  
user
��  
.
��  !
NumberGames
��! ,
++
��, .
;
��. /
}
�� 
}
�� 
return
�� 
context
�� "
.
��" #
SaveChanges
��# .
(
��. /
)
��/ 0
;
��0 1
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� $
ex
��% '
)
��' (
{
��) *

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" J
{
��J K
ex
��K M
.
��M N
Message
��N U
}
��U V
"
��V W
)
��W X
;
��X Y
return
�� 
-
�� 
$num
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
int
�� 
GetTotalGames
��  
(
��  !
int
��! $
idUser
��% +
)
��+ ,
{
��- .
int
�� 

totalGames
�� 
=
�� 
$num
�� 
;
�� 
try
�� 
{
�� 
const
�� 
int
�� 
	MIN_GAMES
�� #
=
��$ %
$num
��& '
;
��' (
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (%
ChineseCheckersEntities
��) @
(
��@ A
)
��A B
)
��B C
{
��D E
var
�� 
user
�� 
=
�� 
context
�� &
.
��& '
User
��' +
.
�� 
FirstOrDefault
�� '
(
��' (
userId
��( .
=>
��/ 1
userId
��2 8
.
��8 9
Id
��9 ;
==
��< >
idUser
��? E
)
��E F
;
��F G
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  $
)
��$ %
{
��& '
if
�� 
(
�� 
user
��  
.
��  !
NumberGames
��! ,
==
��- /
null
��0 4
)
��4 5
{
��6 7
user
��  
.
��  !
NumberGames
��! ,
=
��- .
	MIN_GAMES
��/ 8
;
��8 9
}
�� 
else
�� 
{
��  

totalGames
�� &
=
��' (
(
��) *
int
��* -
)
��- .
user
��. 2
.
��2 3
NumberGames
��3 >
;
��> ?
}
�� 
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� $
ex
��% '
)
��' (
{
��) *

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" G
{
��G H
ex
��H J
.
��J K
Message
��K R
}
��R S
"
��S T
)
��T U
;
��U V
return
�� 
-
�� 
$num
�� 
;
�� 
}
�� 
return
�� 

totalGames
�� 
;
�� 
}
�� 	
public
�� 
int
�� 
GetGamesWon
�� 
(
�� 
int
�� "
idUser
��# )
)
��) *
{
��+ ,
int
�� 
gamesWon
�� 
=
�� 
$num
�� 
;
�� 
try
�� 
{
�� 
const
�� 
int
�� 
	MIN_GAMES
�� #
=
��$ %
$num
��& '
;
��' (
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (%
ChineseCheckersEntities
��) @
(
��@ A
)
��A B
)
��B C
{
��D E
var
�� 
user
�� 
=
�� 
context
�� &
.
��& '
User
��' +
.
�� 
FirstOrDefault
�� '
(
��' (
userId
��( .
=>
��/ 1
userId
��2 8
.
��8 9
Id
��9 ;
==
��< >
idUser
��? E
)
��E F
;
��F G
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  $
)
��$ %
{
��& '
if
�� 
(
�� 
user
��  
.
��  !
GamesWon
��! )
==
��* ,
null
��- 1
)
��1 2
{
��3 4
user
��  
.
��  !
GamesWon
��! )
=
��* +
	MIN_GAMES
��, 5
;
��5 6
}
�� 
else
�� 
{
��  
gamesWon
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
user
��, 0
.
��0 1
GamesWon
��1 9
;
��9 :
}
�� 
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� $
ex
��% '
)
��' (
{
��) *

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" G
{
��G H
ex
��H J
.
��J K
Message
��K R
}
��R S
"
��S T
)
��T U
;
��U V
return
�� 
-
�� 
$num
�� 
;
�� 
}
�� 
return
�� 
gamesWon
�� 
;
�� 
}
�� 	
public
�� 
int
��  
UpdateStatusPlayer
�� %
(
��% &
int
��& )
idUser
��* 0
,
��0 1
bool
��2 6
status
��7 =
)
��= >
{
��? @
try
�� 
{
�� 
const
�� 
string
�� "
PLAYER_STATUS_BANNED
�� 1
=
��2 3
$str
��4 7
;
��7 8
const
�� 
string
�� "
PLAYER_STATUS_ACTIVE
�� 1
=
��2 3
$str
��4 7
;
��7 8
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (%
ChineseCheckersEntities
��) @
(
��@ A
)
��A B
)
��B C
{
��D E
var
�� 
user
�� 
=
�� 
context
�� &
.
��& '
User
��' +
.
�� 
FirstOrDefault
�� '
(
��' (
userId
��( .
=>
��/ 1
userId
��2 8
.
��8 9
Id
��9 ;
==
��< >
idUser
��? E
)
��E F
;
��F G
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  $
)
��$ %
{
��& '
if
�� 
(
�� 
status
�� "
)
��" #
{
��$ %
user
��  
.
��  !
PlayerStatus
��! -
=
��. /"
PLAYER_STATUS_ACTIVE
��0 D
;
��D E
}
�� 
else
�� 
{
��  
user
��  
.
��  !
PlayerStatus
��! -
=
��. /"
PLAYER_STATUS_BANNED
��0 D
;
��D E
}
�� 
}
�� 
return
�� 
context
�� "
.
��" #
SaveChanges
��# .
(
��. /
)
��/ 0
;
��0 1
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� $
ex
��% '
)
��' (
{
��) *

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" M
{
��M N
ex
��N P
.
��P Q
Message
��Q X
}
��X Y
"
��Y Z
)
��Z [
;
��[ \
return
�� 
-
�� 
$num
�� 
;
�� 
}
�� 
}
�� 	
public
�� 

Dictionary
�� 
<
�� 
string
��  
,
��  !
int
��" %
>
��% &
GetGames
��' /
(
��/ 0
)
��0 1
{
��2 3

Dictionary
�� 
<
�� 
string
�� 
,
�� 
int
�� "
>
��" #
_bestPlayers
��$ 0
=
��1 2
new
��3 6

Dictionary
��7 A
<
��A B
string
��B H
,
��H I
int
��J M
>
��M N
(
��N O
)
��O P
;
��P Q
try
�� 
{
�� 
const
�� 
int
�� 
BEST_PLAYERS
�� &
=
��' (
$num
��) *
;
��* +
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (%
ChineseCheckersEntities
��) @
(
��@ A
)
��A B
)
��B C
{
��D E
var
�� 
bestPlayers
�� #
=
��$ %
context
��& -
.
��- .
User
��. 2
.
�� 
Where
�� 
(
�� 
user
�� #
=>
��$ &
user
��' +
.
��+ ,
GamesWon
��, 4
!=
��5 7
null
��8 <
)
��< =
.
�� 
OrderByDescending
�� *
(
��* +
user
��+ /
=>
��0 2
user
��3 7
.
��7 8
GamesWon
��8 @
)
��@ A
.
�� 
Take
�� 
(
�� 
BEST_PLAYERS
�� *
)
��* +
.
�� 
ToList
�� 
(
��  
)
��  !
;
��! "
_bestPlayers
��  
=
��! "
bestPlayers
��# .
.
��. /
ToDictionary
��/ ;
(
��; <
user
��< @
=>
��A C
user
��D H
.
��H I
Gamertag
��I Q
,
��Q R
user
��S W
=>
��X Z
user
��[ _
.
��_ `
GamesWon
��` h
.
��h i
Value
��i n
)
��n o
;
��o p
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� $
ex
��% '
)
��' (
{
��) *

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" D
{
��D E
ex
��E G
.
��G H
Message
��H O
}
��O P
"
��P Q
)
��Q R
;
��R S
}
�� 
return
�� 
_bestPlayers
�� 
;
��  
}
�� 	
}
�� 
public
�� 

partial
�� 
class
�� 
ManagerController
�� *
:
��+ ,
IUsersManager
��- :
{
��; <
private
�� 
static
�� 
readonly
�� 

Dictionary
��  *
<
��* +
int
��+ .
,
��. /"
IUserSessionCallback
��0 D
>
��D E
playerStatus
��F R
=
��S T
new
��U X

Dictionary
��Y c
<
��c d
int
��d g
,
��g h"
IUserSessionCallback
��i }
>
��} ~
(
��~ 
)�� �
;��� �
public
�� 
void
�� 

GetFriends
�� 
(
�� 
string
�� %
gamertag
��& .
)
��. /
{
��0 1

Dictionary
�� 
<
�� 
string
�� 
,
�� 
Tuple
�� $
<
��$ %
string
��% +
,
��+ ,
bool
��- 1
>
��1 2
>
��2 3
friendsDictionary
��4 E
=
��F G
new
��H K

Dictionary
��L V
<
��V W
string
��W ]
,
��] ^
Tuple
��_ d
<
��d e
string
��e k
,
��k l
bool
��m q
>
��q r
>
��r s
(
��s t
)
��t u
;
��u v
try
�� 
{
�� 
const
�� 
string
�� 
FRIEND_REQUEST
�� +
=
��, -
$str
��. 8
;
��8 9
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (%
ChineseCheckersEntities
��) @
(
��@ A
)
��A B
)
��B C
{
��D E
int
�� 
userId
�� 
=
��  
context
��! (
.
��( )
UserAccount
��) 4
.
�� 
Where
�� 
(
�� 
user
�� #
=>
��$ &
user
��' +
.
��+ ,
GamertagUser
��, 8
==
��9 ;
gamertag
��< D
)
��D E
.
�� 
Select
�� 
(
��  
user
��  $
=>
��% '
user
��( ,
.
��, -
Id
��- /
)
��/ 0
.
�� 
FirstOrDefault
�� '
(
��' (
)
��( )
;
��) *
if
�� 
(
�� 
userId
�� 
>
��  
$num
��! "
)
��" #
{
��$ %
var
�� 

friendData
�� &
=
��' (
(
��) *
from
��* .
friend
��/ 5
in
��6 8
context
��9 @
.
��@ A
FriendPlayer
��A M
join
��* .
user
��/ 3
in
��4 6
context
��7 >
.
��> ?
UserAccount
��? J
on
��K M
friend
��N T
.
��T U
IdFriend
��U ]
equals
��^ d
user
��e i
.
��i j
Id
��j l
where
��* /
friend
��0 6
.
��6 7
IdPlayer
��7 ?
==
��@ B
userId
��C I
&&
��J L
friend
��M S
.
��S T
RequestStatus
��T a
==
��b d
FRIEND_REQUEST
��e s
select
��* 0
new
��1 4
{
��5 6
user
��. 2
.
��2 3
Id
��3 5
,
��5 6
Gamertag
��. 6
=
��7 8
user
��9 =
.
��= >
GamertagUser
��> J
,
��J K
user
��. 2
.
��2 3
ImageProfile
��3 ?
,
��? @
}
��* +
)
��+ ,
.
��, -
ToList
��- 3
(
��3 4
)
��4 5
;
��5 6
foreach
�� 
(
��  !
var
��! $
friend
��% +
in
��, .

friendData
��/ 9
)
��9 :
{
��; <
bool
��  
isOnline
��! )
=
��* +
playerStatus
��, 8
.
��8 9
ContainsKey
��9 D
(
��D E
friend
��E K
.
��K L
Id
��L N
)
��N O
;
��O P
friendsDictionary
�� -
[
��- .
friend
��. 4
.
��4 5
Gamertag
��5 =
]
��= >
=
��? @
new
��A D
Tuple
��E J
<
��J K
string
��K Q
,
��Q R
bool
��S W
>
��W X
(
��X Y
friend
��Y _
.
��_ `
ImageProfile
��` l
,
��l m
isOnline
��n v
)
��v w
;
��w x
}
�� 
IUserCallback
�� %
callback
��& .
=
��/ 0
OperationContext
��1 A
.
��A B
Current
��B I
.
��I J 
GetCallbackChannel
��J \
<
��\ ]
IUserCallback
��] j
>
��j k
(
��k l
)
��l m
;
��m n
callback
��  
.
��  ! 
GetFriendsCallback
��! 3
(
��3 4
friendsDictionary
��4 E
)
��E F
;
��F G
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� $
ex
��% '
)
��' (
{
��) *

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" G
{
��G H
ex
��H J
.
��J K
Message
��K R
}
��R S
"
��S T
)
��T U
;
��U V
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +
ex
��, .
)
��. /
{
��0 1

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" G
{
��G H
ex
��H J
.
��J K
Message
��K R
}
��R S
"
��S T
)
��T U
;
��U V
}
�� 
}
�� 	
private
�� 
void
�� 
RemoveClient
�� !
(
��! "
int
��" %
idUser
��& ,
)
��, -
{
��. /
try
�� 
{
�� 
if
�� 
(
�� 
playerStatus
��  
.
��  !
ContainsKey
��! ,
(
��, -
idUser
��- 3
)
��3 4
)
��4 5
{
��6 7
playerStatus
��  
.
��  !
Remove
��! '
(
��' (
idUser
��( .
)
��. /
;
��/ 0
}
�� 
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +
ex
��, .
)
��. /
{
��0 1

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" ?
{
��? @
ex
��@ B
.
��B C
Message
��C J
}
��J K
"
��K L
)
��L M
;
��M N
}
�� 
}
�� 	
}
�� 
public
�� 

partial
�� 
class
�� 
ManagerController
�� *
:
��+ ,
IUserSession
��- 9
{
��: ;
public
�� 
void
�� 
GetSessionPlayer
�� $
(
��$ %
int
��% (
idUser
��) /
)
��/ 0
{
��1 2
try
�� 
{
�� "
IUserSessionCallback
�� $
context
��% ,
=
��- .
OperationContext
��/ ?
.
��? @
Current
��@ G
.
��G H 
GetCallbackChannel
��H Z
<
��Z ["
IUserSessionCallback
��[ o
>
��o p
(
��p q
)
��q r
;
��r s
bool
�� 
sessionOpened
�� "
=
��# $
playerStatus
��% 1
.
��1 2
ContainsKey
��2 =
(
��= >
idUser
��> D
)
��D E
;
��E F
if
�� 
(
�� 
!
�� 
sessionOpened
�� "
)
��" #
{
��$ %
playerStatus
��  
.
��  !
Add
��! $
(
��$ %
idUser
��% +
,
��+ ,
context
��- 4
)
��4 5
;
��5 6"
ICommunicationObject
�� (!
communicationObject
��) <
=
��= >
(
��? @"
ICommunicationObject
��@ T
)
��T U
context
��U \
;
��\ ]!
communicationObject
�� '
.
��' (
Closed
��( .
+=
��/ 1
(
��2 3
sender
��3 9
,
��9 :
e
��; <
)
��< =
=>
��> @
{
��A B
RemoveClient
�� $
(
��$ %
idUser
��% +
)
��+ ,
;
��, -
}
�� 
;
�� !
communicationObject
�� '
.
��' (
Faulted
��( /
+=
��0 2
(
��3 4
sender
��4 :
,
��: ;
e
��< =
)
��= >
=>
��? A
{
��B C
RemoveClient
�� $
(
��$ %
idUser
��% +
)
��+ ,
;
��, -
}
�� 
;
�� 
}
�� 
context
�� 
.
�� &
GetSessionPlayerCallback
�� 0
(
��0 1
sessionOpened
��1 >
)
��> ?
;
��? @
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +
ex
��, .
)
��. /
{
��0 1

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" J
{
��J K
ex
��K M
.
��M N
Message
��N U
}
��U V
"
��V W
)
��W X
;
��X Y
}
�� 
}
�� 	
}
�� 
}�� �
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
} �
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
} �	
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
} �
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
>	 �
(
� �
)
� �
;
� �
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
} �
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
} �
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