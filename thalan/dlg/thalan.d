EXTEND_TOP %tutu_var%THALAN 2 #1
  IF ~~ THEN REPLY @8 GOTO s#tal02
END

%fwdslash_sign%%star_sign%
EXTEND_TOP %tutu_var%THALAN 35 #1
  IF ~~ THEN REPLY @12 GOTO s#tal03
END
%star_sign%%fwdslash_sign%

APPEND %tutu_var%THALAN
IF ~~ THEN BEGIN s#tal02
  SAY @14
  IF ~~ THEN REPLY @12 GOTO s#tal03
  IF ~~ THEN REPLY @15 GOTO s#tal04
END

IF ~~ THEN BEGIN s#tal03
  SAY @16
  IF ~PartyHasItem("%tutu_var%SW2H03")~ THEN REPLY @17 GOTO thsw2h01
  IF ~PartyHasItem("%tutu_var%MISC75")~ THEN REPLY @18 GOTO thdagg01
  IF ~PartyHasItem("%tutu_var%dagg02")~ THEN REPLY @19 GOTO thdagg02
  IF ~PartyHasItem("%tutu_var%ring09")~ THEN REPLY @20 GOTO THringFr
  IF ~OR(2) PartyHasItem("%tutu_var%brac09")
            PartyHasItem("%tutu_var%brac10")~ THEN REPLY @21 GOTO thbrac01
  IF ~PartyHasItem("%tutu_var%clck06")~ THEN REPLY @22 GOTO thclck01
  IF ~OR(6) PartyHasItem("%tutu_var%clck09")
            PartyHasItem("%tutu_var%clck10")
            PartyHasItem("%tutu_var%clck11")
            PartyHasItem("%tutu_var%clck12")
            PartyHasItem("%tutu_var%clck13")
            PartyHasItem("%tutu_var%clck14")~ THEN REPLY @23 GOTO thclck02
  IF ~OR(3) PartyHasItem("%tutu_var%belt02")
            PartyHasItem("%tutu_var%belt03")
            PartyHasItem("%tutu_var%belt04")~ THEN REPLY @24 GOTO thbelt01
  IF ~PartyHasItem("%tutu_var%SW1H10")~ THEN REPLY @25 GOTO thsw1h01
  IF ~PartyHasItem("%tutu_var%bow07")~ THEN REPLY @26 GOTO thbow01
  IF ~OR(3) PartyHasItem("%tutu_var%ring06") PartyHasItem("c!pp11") PartyHasItem("cdpp11")~ THEN REPLY @27 GOTO ring07
  IF ~OR(2) PartyHasItem("%tutu_var%boot02")
            PartyHasItem("boot02zh")~ THEN REPLY @28 GOTO thboot01
  IF ~PartyHasItem("%tutu_var%amul15")~ THEN REPLY @29 GOTO thamul01
  IF ~OR(2) PartyHasItem("%tutu_var%helm03")
            PartyHasItem("%tutu_var%helm04")~ THEN REPLY @30 GOTO thhelm01
  IF ~PartyHasItem("%tutu_var%clck05")~ THEN REPLY @31 GOTO thclck03
  IF ~~ THEN REPLY @32 GOTO s#tal04
END

IF ~~ THEN BEGIN s#tal04
  SAY @33
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN thsw2h01
    SAY @34
    IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~PartyHasItem("%tutu_var%SW2H03") NumItemsPartyGT("%tutu_var%scrl5g",1) NumItemsPartyGT("%tutu_var%scrl89",1)
        PartyGoldGT(2999)~
      THEN REPLY @36
      DO ~TakePartyGold(3000)     DestroyGold(3000)
          TakePartyItemNum("%tutu_var%SW2H03",1)    DestroyItem("%tutu_var%SW2H03")
          TakePartyItemNum("%tutu_var%scrl5g",2)    DestroyItem("%tutu_var%scrl5g")
          TakePartyItemNum("%tutu_var%scrl89",2)    DestroyItem("%tutu_var%scrl89")
          GiveItemCreate("thsw2h01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
END

IF ~~ THEN BEGIN thdagg01
    SAY @37
    IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~PartyHasItem("%tutu_var%MISC75") PartyHasItem("%tutu_var%dagg03")  PartyHasItem("%tutu_var%potn14")
PartyHasItem("%tutu_var%potn32")
        PartyGoldGT(3999)~
      THEN REPLY @36
      DO ~TakePartyGold(4000)    DestroyGold(4000)
          TakePartyItemNum("%tutu_var%MISC75",1)     DestroyItem("%tutu_var%MISC75")
          TakePartyItemNum("%tutu_var%dagg03",1)     DestroyItem("%tutu_var%dagg03")
          TakePartyItemNum("%tutu_var%potn14",1)     DestroyItem("%tutu_var%potn14")
          TakePartyItemNum("%tutu_var%potn32",1)     DestroyItem("%tutu_var%potn32")
          GiveItemCreate("thdagg01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
END

IF ~~ THEN BEGIN thdagg02
    SAY @38
IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~PartyHasItem("%tutu_var%dagg02") PartyHasItem("%tutu_var%potn14")
        PartyGoldGT(499)~
      THEN REPLY @36
      DO ~TakePartyGold(500)    DestroyGold(500)
          TakePartyItemNum("%tutu_var%dagg02",1)     DestroyItem("%tutu_var%dagg02")
          TakePartyItemNum("%tutu_var%potn14",1)     DestroyItem("%tutu_var%potn14")
          GiveItemCreate("thdagg02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
END

IF ~~ THEN BEGIN THringFr
    SAY @39
    IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~PartyHasItem("%tutu_var%ring09") PartyHasItem("%tutu_var%ring06") PartyHasItem("%tutu_var%potn24")
PartyHasItem("%tutu_var%potn45")
        PartyGoldGT(3999)~
      THEN REPLY @40
      DO ~TakePartyGold(4000)      DestroyGold(4000)
          TakePartyItemNum("%tutu_var%ring09",1)   DestroyItem("%tutu_var%ring09")
          TakePartyItemNum("%tutu_var%ring06",1)   DestroyItem("%tutu_var%ring06")
          TakePartyItemNum("%tutu_var%potn24",1)   DestroyItem("%tutu_var%potn24")
          TakePartyItemNum("%tutu_var%potn45",1)   DestroyItem("%tutu_var%potn45")
          GiveItemCreate("thring01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
    IF ~PartyHasItem("%tutu_var%ring09") PartyHasItem("%tutu_var%ring07") PartyHasItem("%tutu_var%potn24")
PartyHasItem("%tutu_var%potn45")
        PartyGoldGT(3999)~
      THEN REPLY @41
      DO ~TakePartyGold(4000)      DestroyGold(4000)
          TakePartyItemNum("%tutu_var%ring09",1)   DestroyItem("%tutu_var%ring09")
          TakePartyItemNum("%tutu_var%ring07",1)   DestroyItem("%tutu_var%ring07")
          TakePartyItemNum("%tutu_var%potn24",1)   DestroyItem("%tutu_var%potn24")
          TakePartyItemNum("%tutu_var%potn45",1)   DestroyItem("%tutu_var%potn45")
          GiveItemCreate("thring02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
    IF ~PartyHasItem("%tutu_var%ring09") PartyHasItem("c!pp11") !PartyHasItem("%tutu_var%ring06") PartyHasItem("%tutu_var%potn24")
PartyHasItem("%tutu_var%potn45")
        PartyGoldGT(3999)~
      THEN REPLY @40
      DO ~TakePartyGold(4000)      DestroyGold(4000)
          TakePartyItemNum("%tutu_var%ring09",1)   DestroyItem("%tutu_var%ring09")
          TakePartyItemNum("c!pp11",1)   DestroyItem("c!pp11")
          TakePartyItemNum("%tutu_var%potn24",1)   DestroyItem("%tutu_var%potn24")
          TakePartyItemNum("%tutu_var%potn45",1)   DestroyItem("%tutu_var%potn45")
          GiveItemCreate("thring01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
    IF ~PartyHasItem("%tutu_var%ring09") PartyHasItem("cdpp12") !PartyHasItem("%tutu_var%ring07") !PartyHasItem("c!pp12") PartyHasItem("%tutu_var%potn24")
PartyHasItem("%tutu_var%potn45")
        PartyGoldGT(3999)~
      THEN REPLY @41
      DO ~TakePartyGold(4000)      DestroyGold(4000)
          TakePartyItemNum("%tutu_var%ring09",1)   DestroyItem("%tutu_var%ring09")
          TakePartyItemNum("cdpp12",1)   DestroyItem("cdpp12")
          TakePartyItemNum("%tutu_var%potn24",1)   DestroyItem("%tutu_var%potn24")
          TakePartyItemNum("%tutu_var%potn45",1)   DestroyItem("%tutu_var%potn45")
          GiveItemCreate("thring02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
    IF ~PartyHasItem("%tutu_var%ring09") PartyHasItem("cdpp11") !PartyHasItem("%tutu_var%ring06") !PartyHasItem("c!pp11") PartyHasItem("%tutu_var%potn24")
PartyHasItem("%tutu_var%potn45")
        PartyGoldGT(3999)~
      THEN REPLY @40
      DO ~TakePartyGold(4000)      DestroyGold(4000)
          TakePartyItemNum("%tutu_var%ring09",1)   DestroyItem("%tutu_var%ring09")
          TakePartyItemNum("cdpp11",1)   DestroyItem("cdpp11")
          TakePartyItemNum("%tutu_var%potn24",1)   DestroyItem("%tutu_var%potn24")
          TakePartyItemNum("%tutu_var%potn45",1)   DestroyItem("%tutu_var%potn45")
          GiveItemCreate("thring01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
    IF ~PartyHasItem("%tutu_var%ring09") PartyHasItem("c!pp12") !PartyHasItem("%tutu_var%ring07") PartyHasItem("%tutu_var%potn24")
PartyHasItem("%tutu_var%potn45")
        PartyGoldGT(3999)~
      THEN REPLY @41
      DO ~TakePartyGold(4000)      DestroyGold(4000)
          TakePartyItemNum("%tutu_var%ring09",1)   DestroyItem("%tutu_var%ring09")
          TakePartyItemNum("c!pp12",1)   DestroyItem("c!pp12")
          TakePartyItemNum("%tutu_var%potn24",1)   DestroyItem("%tutu_var%potn24")
          TakePartyItemNum("%tutu_var%potn45",1)   DestroyItem("%tutu_var%potn45")
          GiveItemCreate("thring02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
END

IF ~~ THEN BEGIN thbrac01
    SAY @42
    IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~ PartyHasItem("%tutu_var%brac09") PartyHasItem("%tutu_var%brac10") PartyHasItem("%tutu_var%brac02")
PartyHasItem("%tutu_var%potn24")
        PartyGoldGT(4999)~
      THEN REPLY @36
      DO ~TakePartyGold(5000)      DestroyGold(5000)
          TakePartyItemNum("%tutu_var%brac02",1)   DestroyItem("%tutu_var%brac02")
          TakePartyItemNum("%tutu_var%brac09",1)   DestroyItem("%tutu_var%brac09")
          TakePartyItemNum("%tutu_var%brac10",1)   DestroyItem("%tutu_var%brac10")
          TakePartyItemNum("%tutu_var%potn24",1)   DestroyItem("%tutu_var%potn24")
          GiveItemCreate("thbrac01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
END

IF ~~ THEN BEGIN thclck01
    SAY @43
    IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~ PartyHasItem("%tutu_var%clck01") PartyHasItem("%tutu_var%clck06") NumItemsPartyGT("%tutu_var%scrl90",1)
        PartyGoldGT(3999)~
      THEN REPLY @36
      DO ~TakePartyGold(4000)      DestroyGold(4000)
          TakePartyItemNum("%tutu_var%clck01",1)   DestroyItem("%tutu_var%clck01")
          TakePartyItemNum("%tutu_var%clck06",1)   DestroyItem("%tutu_var%clck06")
          TakePartyItemNum("%tutu_var%scrl90",2)   DestroyItem("%tutu_var%scrl90")
          GiveItemCreate("thclck01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
END

IF ~~ THEN BEGIN thclck02
    SAY @44
    IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~ PartyHasItem("%tutu_var%clck09") PartyHasItem("%tutu_var%clck10") PartyHasItem("%tutu_var%clck11")
PartyHasItem("%tutu_var%clck12")  PartyHasItem("%tutu_var%clck13")  PartyHasItem("%tutu_var%clck14")  PartyHasItem("%tutu_var%potn11")  PartyHasItem("%tutu_var%potn24")
        PartyGoldGT(4999)~
      THEN REPLY @36
      DO ~TakePartyGold(5000)      DestroyGold(5000)
          TakePartyItemNum("%tutu_var%clck09",1)   DestroyItem("%tutu_var%clck09")
          TakePartyItemNum("%tutu_var%clck10",1)   DestroyItem("%tutu_var%clck10")
          TakePartyItemNum("%tutu_var%clck11",1)   DestroyItem("%tutu_var%clck11")
          TakePartyItemNum("%tutu_var%clck12",1)   DestroyItem("%tutu_var%clck12")
          TakePartyItemNum("%tutu_var%clck13",1)   DestroyItem("%tutu_var%clck13")
          TakePartyItemNum("%tutu_var%clck14",1)   DestroyItem("%tutu_var%clck14")
          TakePartyItemNum("%tutu_var%potn11",1)   DestroyItem("%tutu_var%potn11")
          TakePartyItemNum("%tutu_var%potn24",1)   DestroyItem("%tutu_var%potn24")
          GiveItemCreate("thclck02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
END

IF ~~ THEN BEGIN thbelt01
    SAY @45
    IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~ PartyHasItem("%tutu_var%belt02") PartyHasItem("%tutu_var%belt03") PartyHasItem("%tutu_var%belt04")
PartyHasItem("%tutu_var%potn04")  PartyHasItem("%tutu_var%potn06")  PartyHasItem("%tutu_var%potn42")
        PartyGoldGT(4999)~
      THEN REPLY @36
      DO ~TakePartyGold(5000)      DestroyGold(5000)
          TakePartyItemNum("%tutu_var%belt02",1)   DestroyItem("%tutu_var%belt02")
          TakePartyItemNum("%tutu_var%belt03",1)   DestroyItem("%tutu_var%belt03")
          TakePartyItemNum("%tutu_var%belt04",1)   DestroyItem("%tutu_var%belt04")
          TakePartyItemNum("%tutu_var%potn04",1)   DestroyItem("%tutu_var%potn04")
          TakePartyItemNum("%tutu_var%potn06",1)   DestroyItem("%tutu_var%potn06")
          TakePartyItemNum("%tutu_var%potn42",1)   DestroyItem("%tutu_var%potn42")
          GiveItemCreate("thbelt01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
END

IF ~~ THEN BEGIN thsw1h01
    SAY @46
    IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~PartyHasItem("%tutu_var%SW1H10") PartyHasItem("%tutu_var%potn36") PartyHasItem("%tutu_var%misc45") NumItemsPartyGT("%tutu_var%scrl1i",1)
        PartyGoldGT(3999)~
      THEN REPLY @36
      DO ~TakePartyGold(4000)    DestroyGold(4000)
          TakePartyItemNum("%tutu_var%SW1H10",1)   DestroyItem("%tutu_var%SW1H10")
          TakePartyItemNum("%tutu_var%potn36",1)   DestroyItem("%tutu_var%potn36")
          TakePartyItemNum("%tutu_var%misc45",1)   DestroyItem("%tutu_var%misc45")
          TakePartyItemNum("%tutu_var%scrl1i",2)   DestroyItem("%tutu_var%scrl1i")
          GiveItemCreate("thsw1h01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT

END

IF ~~ THEN BEGIN thbow01
    SAY @47
    IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~PartyHasItem("%tutu_var%bow07") PartyHasItem("%tutu_var%wand03") PartyHasItem("%tutu_var%wand06") PartyHasItem("%tutu_var%wand07")
        PartyGoldGT(4999)~
      THEN REPLY @36
      DO ~TakePartyGold(5000)    DestroyGold(5000)
          TakePartyItemNum("%tutu_var%bow07",1)    DestroyItem("%tutu_var%bow07")
          TakePartyItemNum("%tutu_var%wand03",1)   DestroyItem("%tutu_var%wand03")
          TakePartyItemNum("%tutu_var%wand06",1)   DestroyItem("%tutu_var%wand06")
          TakePartyItemNum("%tutu_var%wand07",1)   DestroyItem("%tutu_var%wand07")
          GiveItemCreate("thbow01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
END

// I fucking love redundancy!!!
IF ~~ THEN BEGIN ring07
    SAY @48
    IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~NumItemsPartyGT("%tutu_var%ring06",1) NumItemsPartyGT("%tutu_var%misc36",1) PartyHasItem("%tutu_var%misc42")
        PartyGoldGT(3999)~
      THEN REPLY @36
      DO ~TakePartyGold(4000)      DestroyGold(4000)
          TakePartyItemNum("%tutu_var%ring06",2)   DestroyItem("%tutu_var%ring06")
          TakePartyItemNum("%tutu_var%misc36",2)   DestroyItem("%tutu_var%misc36")
          TakePartyItemNum("%tutu_var%misc42",1)   DestroyItem("%tutu_var%misc42")
          GiveItemCreate("%tutu_var%ring07",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
    IF ~NumItemsPartyLT("%tutu_var%ring06",2) NumItemsPartyLT("c!pp11",2) NumItemsPartyGT("cdpp11",1) NumItemsPartyGT("%tutu_var%misc36",1) PartyHasItem("%tutu_var%misc42")
        PartyGoldGT(3999)~
      THEN REPLY @36
      DO ~TakePartyGold(4000)      DestroyGold(4000)
          TakePartyItemNum("cdpp11",2)   DestroyItem("cdpp11")
          TakePartyItemNum("%tutu_var%misc36",2)   DestroyItem("%tutu_var%misc36")
          TakePartyItemNum("%tutu_var%misc42",1)   DestroyItem("%tutu_var%misc42")
          GiveItemCreate("%tutu_var%ring07",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
    IF ~NumItemsPartyLT("%tutu_var%ring06",2) NumItemsPartyLT("cdpp11",2) NumItemsPartyGT("c!pp11",1) NumItemsPartyGT("%tutu_var%misc36",1) PartyHasItem("%tutu_var%misc42")
        PartyGoldGT(3999)~
      THEN REPLY @36
      DO ~TakePartyGold(4000)      DestroyGold(4000)
          TakePartyItemNum("c!pp11",2)   DestroyItem("c!pp11")
          TakePartyItemNum("%tutu_var%misc36",2)   DestroyItem("%tutu_var%misc36")
          TakePartyItemNum("%tutu_var%misc42",1)   DestroyItem("%tutu_var%misc42")
          GiveItemCreate("%tutu_var%ring07",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
    IF ~NumItemsPartyLT("%tutu_var%ring06",2) NumItemsPartyLT("c!pp11",2) NumItemsPartyLT("cdpp11",2) PartyHasItem("cdpp11") PartyHasItem("c!pp11") NumItemsPartyGT("%tutu_var%misc36",1) PartyHasItem("%tutu_var%misc42")
        PartyGoldGT(3999)~
      THEN REPLY @36
      DO ~TakePartyGold(4000)      DestroyGold(4000)
          TakePartyItemNum("cdpp11",1)   DestroyItem("cdpp11")
          TakePartyItemNum("c!pp11",1)   DestroyItem("c!pp11")
          TakePartyItemNum("%tutu_var%misc36",2)   DestroyItem("%tutu_var%misc36")
          TakePartyItemNum("%tutu_var%misc42",1)   DestroyItem("%tutu_var%misc42")
          GiveItemCreate("%tutu_var%ring07",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
    IF ~NumItemsPartyLT("%tutu_var%ring06",2) NumItemsPartyLT("c!pp11",2) NumItemsPartyLT("cdpp11",2) PartyHasItem("%tutu_var%ring06") PartyHasItem("c!pp11") NumItemsPartyGT("%tutu_var%misc36",1) PartyHasItem("%tutu_var%misc42")
        PartyGoldGT(3999)~
      THEN REPLY @36
      DO ~TakePartyGold(4000)      DestroyGold(4000)
          TakePartyItemNum("%tutu_var%ring06",1)   DestroyItem("%tutu_var%ring06")
          TakePartyItemNum("c!pp11",1)   DestroyItem("c!pp11")
          TakePartyItemNum("%tutu_var%misc36",2)   DestroyItem("%tutu_var%misc36")
          TakePartyItemNum("%tutu_var%misc42",1)   DestroyItem("%tutu_var%misc42")
          GiveItemCreate("%tutu_var%ring07",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
    IF ~NumItemsPartyLT("%tutu_var%ring06",2) NumItemsPartyLT("c!pp11",2) NumItemsPartyLT("cdpp11",2) PartyHasItem("cdpp11") PartyHasItem("%tutu_var%ring06") NumItemsPartyGT("%tutu_var%misc36",1) PartyHasItem("%tutu_var%misc42")
        PartyGoldGT(3999)~
      THEN REPLY @36
      DO ~TakePartyGold(4000)      DestroyGold(4000)
          TakePartyItemNum("cdpp11",1)   DestroyItem("cdpp11")
          TakePartyItemNum("%tutu_var%ring06",1)   DestroyItem("%tutu_var%ring06")
          TakePartyItemNum("%tutu_var%misc36",2)   DestroyItem("%tutu_var%misc36")
          TakePartyItemNum("%tutu_var%misc42",1)   DestroyItem("%tutu_var%misc42")
          GiveItemCreate("%tutu_var%ring07",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
    IF ~NumItemsPartyLT("%tutu_var%ring06",2) NumItemsPartyGT("c!pp11",1) NumItemsPartyGT("cdpp11",1) NumItemsPartyGT("%tutu_var%misc36",1) PartyHasItem("%tutu_var%misc42")
        PartyGoldGT(3999)~
      THEN REPLY @36
      DO ~TakePartyGold(4000)      DestroyGold(4000)
          TakePartyItemNum("cdpp11",1)   DestroyItem("cdpp11")
          TakePartyItemNum("c!pp11",1)   DestroyItem("c!pp11")
          TakePartyItemNum("%tutu_var%misc36",2)   DestroyItem("%tutu_var%misc36")
          TakePartyItemNum("%tutu_var%misc42",1)   DestroyItem("%tutu_var%misc42")
          GiveItemCreate("%tutu_var%ring07",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
END

IF ~~ THEN BEGIN thboot01
    SAY @49
    IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~ PartyHasItem("%tutu_var%boot01") 
        PartyHasItem("%tutu_var%boot02")
        PartyHasItem("%tutu_var%potn14")
        PartyHasItem("%tutu_var%potn39")
        PartyGoldGT(4999)~
      THEN REPLY @36
      DO ~TakePartyGold(5000)    DestroyGold(5000)
          TakePartyItemNum("%tutu_var%boot01",1)   DestroyItem("%tutu_var%boot01")
          TakePartyItemNum("%tutu_var%boot02",1)   DestroyItem("%tutu_var%boot02")
          TakePartyItemNum("%tutu_var%potn14",1)   DestroyItem("%tutu_var%potn14")
          TakePartyItemNum("%tutu_var%potn39",1)   DestroyItem("%tutu_var%potn39")
          GiveItemCreate("thboot01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
    IF ~ PartyHasItem("%tutu_var%boot01") 
        PartyHasItem("boot02zh")
        PartyHasItem("%tutu_var%potn14")
        PartyHasItem("%tutu_var%potn39")
        PartyGoldGT(4999)~
      THEN REPLY @36
      DO ~TakePartyGold(5000)    DestroyGold(5000)
          TakePartyItemNum("%tutu_var%boot01",1)   DestroyItem("%tutu_var%boot01")
          TakePartyItemNum("boot02zh",1)           DestroyItem("boot02zh")
          TakePartyItemNum("%tutu_var%potn14",1)   DestroyItem("%tutu_var%potn14")
          TakePartyItemNum("%tutu_var%potn39",1)   DestroyItem("%tutu_var%potn39")
          GiveItemCreate("thboot01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
END

IF ~~ THEN BEGIN thamul01
    SAY @50
    IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~ PartyHasItem("%tutu_var%amul14") PartyHasItem("%tutu_var%amul15") PartyHasItem("%tutu_var%potn11")
        PartyGoldGT(4999)~
      THEN REPLY @36
      DO ~TakePartyGold(5000)      DestroyGold(5000)
          TakePartyItemNum("%tutu_var%amul14",1)   DestroyItem("%tutu_var%amul14")
          TakePartyItemNum("%tutu_var%amul15",1)   DestroyItem("%tutu_var%amul15")
          TakePartyItemNum("%tutu_var%potn11",1)   DestroyItem("%tutu_var%potn11")
          GiveItemCreate("thamul01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
    IF ~ PartyHasItem("c!pp7") PartyHasItem("%tutu_var%amul15") PartyHasItem("%tutu_var%potn11")
        PartyGoldGT(4999)~
      THEN REPLY @36
      DO ~TakePartyGold(5000)      DestroyGold(5000)
          TakePartyItemNum("c!pp7",1)   DestroyItem("c!pp7")
          TakePartyItemNum("%tutu_var%amul15",1)   DestroyItem("%tutu_var%amul15")
          TakePartyItemNum("%tutu_var%potn11",1)   DestroyItem("%tutu_var%potn11")
          GiveItemCreate("thamul01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
    IF ~ PartyHasItem("cdpp7") !PartyHasItem("c!pp7")
        PartyHasItem("%tutu_var%amul15") PartyHasItem("%tutu_var%potn11")
        PartyGoldGT(4999)~
      THEN REPLY @36
      DO ~TakePartyGold(5000)      DestroyGold(5000)
          TakePartyItemNum("cdpp7",1)   DestroyItem("cdpp7")
          TakePartyItemNum("%tutu_var%amul15",1)   DestroyItem("%tutu_var%amul15")
          TakePartyItemNum("%tutu_var%potn11",1)   DestroyItem("%tutu_var%potn11")
          GiveItemCreate("thamul01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
END

IF ~~ THEN BEGIN thhelm01
    SAY @51
    IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~ PartyHasItem("%tutu_var%helm03") PartyHasItem("%tutu_var%helm04") PartyHasItem("%tutu_var%scrl04")
PartyHasItem("%tutu_var%scrl05") PartyHasItem("%tutu_var%scrl06") PartyHasItem("%tutu_var%potn11")
        PartyGoldGT(4999)~
      THEN REPLY @36
      DO ~TakePartyGold(5000)      DestroyGold(5000)
          TakePartyItemNum("%tutu_var%helm03",1)   DestroyItem("%tutu_var%helm03")
          TakePartyItemNum("%tutu_var%helm04",1)   DestroyItem("%tutu_var%helm04")
          TakePartyItemNum("%tutu_var%scrl04",1)   DestroyItem("%tutu_var%scrl04")
          TakePartyItemNum("%tutu_var%scrl05",1)   DestroyItem("%tutu_var%scrl05")
          TakePartyItemNum("%tutu_var%scrl06",1)   DestroyItem("%tutu_var%scrl06")
          TakePartyItemNum("%tutu_var%potn11",1)   DestroyItem("%tutu_var%potn11")
          GiveItemCreate("thhelm01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
END

IF ~~ THEN BEGIN thclck03
    SAY @52
IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~ PartyHasItem("%tutu_var%clck02") PartyHasItem("%tutu_var%clck05") NumItemsPartyGT("%tutu_var%scrl67",1)
PartyHasItem("%tutu_var%potn34")
        PartyGoldGT(4999)~
      THEN REPLY @36
      DO ~TakePartyGold(5000)      DestroyGold(5000)
          TakePartyItemNum("%tutu_var%clck02",1)   DestroyItem("%tutu_var%clck02")
          TakePartyItemNum("%tutu_var%clck05",1)   DestroyItem("%tutu_var%clck05")
          TakePartyItemNum("%tutu_var%potn34",1)   DestroyItem("%tutu_var%potn34")
          TakePartyItemNum("%tutu_var%scrl67",2)   DestroyItem("%tutu_var%scrl67")
          GiveItemCreate("thclck03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
    IF ~ PartyHasItem("cdpp9") !PartyHasItem("%tutu_var%clck02") !PartyHasItem("c!pp9") PartyHasItem("%tutu_var%clck05") NumItemsPartyGT("%tutu_var%scrl67",1)
PartyHasItem("%tutu_var%potn34")
        PartyGoldGT(4999)~
      THEN REPLY @36
      DO ~TakePartyGold(5000)      DestroyGold(5000)
          TakePartyItemNum("cdpp9",1)   DestroyItem("cdpp9")
          TakePartyItemNum("%tutu_var%clck05",1)   DestroyItem("%tutu_var%clck05")
          TakePartyItemNum("%tutu_var%potn34",1)   DestroyItem("%tutu_var%potn34")
          TakePartyItemNum("%tutu_var%scrl67",2)   DestroyItem("%tutu_var%scrl67")
          GiveItemCreate("thclck03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
    IF ~ PartyHasItem("c!pp9") !PartyHasItem("%tutu_var%clck02") PartyHasItem("%tutu_var%clck05") NumItemsPartyGT("%tutu_var%scrl67",1)
PartyHasItem("%tutu_var%potn34")
        PartyGoldGT(4999)~
      THEN REPLY @36
      DO ~TakePartyGold(5000)      DestroyGold(5000)
          TakePartyItemNum("c!pp9",1)   DestroyItem("c!pp9")
          TakePartyItemNum("%tutu_var%clck05",1)   DestroyItem("%tutu_var%clck05")
          TakePartyItemNum("%tutu_var%potn34",1)   DestroyItem("%tutu_var%potn34")
          TakePartyItemNum("%tutu_var%scrl67",2)   DestroyItem("%tutu_var%scrl67")
          GiveItemCreate("thclck03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[330.230])~ EXIT
END

END //APPEND
