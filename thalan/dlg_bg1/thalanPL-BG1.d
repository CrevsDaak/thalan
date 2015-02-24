EXTEND_TOP THALAN 2 #1
  IF ~~ THEN REPLY @8 GOTO s#tal02
END

APPEND THALAN
IF ~~ THEN BEGIN s#tal02
  SAY @14
  IF ~~ THEN REPLY @12 GOTO s#tal03
  IF ~~ THEN REPLY @15 GOTO s#tal04
END

IF ~~ THEN BEGIN s#tal03 
  SAY @16 
  IF ~PartyHasItem("SW2H03")~ THEN REPLY @17 GOTO thsw2h01

  IF ~PartyHasItem("MISC75")~ THEN REPLY @18 GOTO thdagg01
  
  IF ~PartyHasItem("dagg02")~ THEN REPLY @19 GOTO thdagg02

  IF ~PartyHasItem("ring09")~ THEN REPLY @20 GOTO THringFr

  IF ~PartyHasItem("brac09")~ THEN REPLY @21 GOTO thbrac01
  IF ~PartyHasItem("brac10") !PartyHasItem("brac09")~ THEN REPLY @21 GOTO thbrac01
  
  IF ~PartyHasItem("clck06")~ THEN REPLY @22 GOTO thclck01

  IF ~PartyHasItem("clck09")~ THEN REPLY @23 GOTO thclck02
  IF ~PartyHasItem("clck10") !PartyHasItem("clck09")~ THEN REPLY @23 GOTO thclck02
  IF ~PartyHasItem("clck11") !PartyHasItem("clck09") !PartyHasItem("clck10")~ THEN REPLY @23 GOTO thclck02
  IF ~PartyHasItem("clck12") !PartyHasItem("clck09") !PartyHasItem("clck10") !PartyHasItem("clck11")~ THEN REPLY @23 GOTO thclck02
  IF ~PartyHasItem("clck13") !PartyHasItem("clck09") !PartyHasItem("clck10") !PartyHasItem("clck11") !PartyHasItem("clck12")~ THEN REPLY @23 GOTO thclck02
  IF ~PartyHasItem("clck14") !PartyHasItem("clck09") !PartyHasItem("clck10") !PartyHasItem("clck11") !PartyHasItem("clck12") !PartyHasItem("clck13")~ THEN REPLY @23 GOTO thclck02
  
  IF ~PartyHasItem("belt02")~ THEN REPLY @24 GOTO thbelt01
  IF ~PartyHasItem("belt03") !PartyHasItem("belt02")~ THEN REPLY @24 GOTO thbelt01
  IF ~PartyHasItem("belt04") !PartyHasItem("belt02") !PartyHasItem("belt03")~ THEN REPLY @24 GOTO thbelt01
  
  IF ~PartyHasItem("SW1H10")~ THEN REPLY @25 GOTO thsw1h01
  
  IF ~PartyHasItem("bow07")~ THEN REPLY @26 GOTO thbow01
  
  IF ~PartyHasItem("ring06")~ THEN REPLY @27 GOTO ring07
  
  IF ~PartyHasItem("boot02")~ THEN REPLY @28 GOTO thboot01
  
  IF ~PartyHasItem("amul15")~ THEN REPLY @29 GOTO thamul01
  
  IF ~PartyHasItem("helm03")~ THEN REPLY @30 GOTO thhelm01
  IF ~PartyHasItem("helm04") !PartyHasItem("helm03")~ THEN REPLY @30 GOTO thhelm01
            
  IF ~PartyHasItem("clck05")~ THEN REPLY @31 GOTO thclck03
  
  IF ~~ THEN REPLY @32 GOTO s#tal04
END

IF ~~ THEN BEGIN s#tal04 
  SAY @33 
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN thsw2h01
    SAY @34 
IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~PartyHasItem("SW2H03") NumItemsPartyGT("scrl5g",1) NumItemsPartyGT("scrl89",1)
        PartyGoldGT(2999)~
      THEN REPLY @36 
      DO ~CreateCreature("z!visual",[265.285],1) Wait(4) TakePartyGold(3000)
          TakePartyItemNum("SW2H03",1)    DestroyItem("SW2H03")
          TakePartyItemNum("scrl5g",2)    DestroyItem("scrl5g")
          TakePartyItemNum("scrl89",2)    DestroyItem("scrl89")
          GiveItemCreate("thsw2h01",Player1,1,1,1)~ EXIT
  END

IF ~~ THEN BEGIN thdagg01
    SAY @37
IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~PartyHasItem("MISC75") PartyHasItem("dagg03")  PartyHasItem("potn14")
PartyHasItem("potn32")    
        PartyGoldGT(3999)~     
      THEN REPLY @36 
      DO ~CreateCreature("z!visual",[265.285],1) Wait(4) TakePartyGold(4000)
          TakePartyItemNum("MISC75",1)     DestroyItem("MISC75")
          TakePartyItemNum("dagg03",1)     DestroyItem("dagg03")
          TakePartyItemNum("potn14",1)     DestroyItem("potn14")
          TakePartyItemNum("potn32",1)     DestroyItem("potn32")
          GiveItemCreate("thdagg01",Player1,1,1,1)~ EXIT
  END
  
IF ~~ THEN BEGIN thdagg02
    SAY @38
IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~PartyHasItem("dagg02") PartyHasItem("potn14") 
        PartyGoldGT(499)~     
      THEN REPLY @36 
      DO ~CreateCreature("z!visual",[265.285],1) Wait(4) TakePartyGold(500)
          TakePartyItemNum("dagg02",1)     DestroyItem("dagg02")
          TakePartyItemNum("potn14",1)     DestroyItem("potn14")
          GiveItemCreate("thdagg02",Player1,1,1,1)~ EXIT
  END

IF ~~ THEN BEGIN THringFr
    SAY @39
IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~PartyHasItem("ring09") PartyHasItem("ring06") PartyHasItem("potn24")
PartyHasItem("potn45")    
        PartyGoldGT(3999)~
      THEN REPLY @40
      DO ~CreateCreature("z!visual",[265.285],1) Wait(4) TakePartyGold(4000)
          TakePartyItemNum("ring09",1)   DestroyItem("ring09")
          TakePartyItemNum("ring06",1)   DestroyItem("ring06")
          TakePartyItemNum("potn24",1)   DestroyItem("potn24")
          TakePartyItemNum("potn45",1)   DestroyItem("potn45")
          GiveItemCreate("thring01",Player1,1,1,1)~ EXIT
    IF ~PartyHasItem("ring09") PartyHasItem("ring07") PartyHasItem("potn24")
PartyHasItem("potn45")    
        PartyGoldGT(3999)~
      THEN REPLY @41
      DO ~CreateCreature("z!visual",[265.285],1) Wait(4) TakePartyGold(4000)
          TakePartyItemNum("ring09",1)   DestroyItem("ring09")
          TakePartyItemNum("ring07",1)   DestroyItem("ring07")
          TakePartyItemNum("potn24",1)   DestroyItem("potn24")
          TakePartyItemNum("potn45",1)   DestroyItem("potn45")
          GiveItemCreate("thring02",Player1,1,1,1)~ EXIT
  END

IF ~~ THEN BEGIN thbrac01
    SAY @42
IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~ PartyHasItem("brac09") PartyHasItem("brac10") PartyHasItem("brac02") 
PartyHasItem("potn24")
        PartyGoldGT(4999)~
      THEN REPLY @36
      DO ~CreateCreature("z!visual",[265.285],1) Wait(4) TakePartyGold(5000)
          TakePartyItemNum("brac02",1)   DestroyItem("brac02")
          TakePartyItemNum("brac09",1)   DestroyItem("brac09")
          TakePartyItemNum("brac10",1)   DestroyItem("brac10")
          TakePartyItemNum("potn24",1)   DestroyItem("potn24")
          GiveItemCreate("thbrac01",Player1,1,1,1)~ EXIT
  END

IF ~~ THEN BEGIN thclck01
    SAY @43
IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~ PartyHasItem("clck01") PartyHasItem("clck06") NumItemsPartyGT("scrl90",1) 
        PartyGoldGT(3999)~
      THEN REPLY @36
      DO ~CreateCreature("z!visual",[265.285],1) Wait(4) TakePartyGold(4000)
          TakePartyItemNum("clck01",1)   DestroyItem("clck01")
          TakePartyItemNum("clck06",1)   DestroyItem("clck06")
          TakePartyItemNum("scrl90",2)   DestroyItem("scrl90")
          GiveItemCreate("thclck01",Player1,1,1,1)~ EXIT
  END

IF ~~ THEN BEGIN thclck02
    SAY @44
IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~ PartyHasItem("clck09") PartyHasItem("clck10") PartyHasItem("clck11")
PartyHasItem("clck12")	PartyHasItem("clck13")  PartyHasItem("clck14")  PartyHasItem("potn11")  PartyHasItem("potn24")
        PartyGoldGT(4999)~
      THEN REPLY @36
      DO ~CreateCreature("z!visual",[265.285],1) Wait(4) TakePartyGold(5000)
          TakePartyItemNum("clck09",1)   DestroyItem("clck09")
          TakePartyItemNum("clck10",1)   DestroyItem("clck10")
          TakePartyItemNum("clck11",1)   DestroyItem("clck11")
          TakePartyItemNum("clck12",1)   DestroyItem("clck12")
          TakePartyItemNum("clck13",1)   DestroyItem("clck13")
          TakePartyItemNum("clck14",1)   DestroyItem("clck14")
          TakePartyItemNum("potn11",1)   DestroyItem("potn11")
			 TakePartyItemNum("potn24",1)   DestroyItem("potn24")
          GiveItemCreate("thclck02",Player1,1,1,1)~ EXIT
  END

IF ~~ THEN BEGIN thbelt01
    SAY @45
IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~ PartyHasItem("belt02") PartyHasItem("belt03") PartyHasItem("belt04") 
PartyHasItem("potn04")  PartyHasItem("potn06")  PartyHasItem("potn42")
        PartyGoldGT(4999)~
      THEN REPLY @36
      DO ~CreateCreature("z!visual",[265.285],1) Wait(4) TakePartyGold(5000)
          TakePartyItemNum("belt02",1)   DestroyItem("belt02")
          TakePartyItemNum("belt03",1)   DestroyItem("belt03")
          TakePartyItemNum("belt04",1)   DestroyItem("belt04")
			 TakePartyItemNum("potn04",1)   DestroyItem("potn04")
			 TakePartyItemNum("potn06",1)   DestroyItem("potn06")
			 TakePartyItemNum("potn42",1)   DestroyItem("potn42")
          GiveItemCreate("thbelt01",Player1,1,1,1)~ EXIT
  END

IF ~~ THEN BEGIN thsw1h01
    SAY @46 
IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~PartyHasItem("SW1H10") PartyHasItem("potn36") PartyHasItem("misc45") NumItemsPartyGT("scrl1i",1) 
        PartyGoldGT(3999)~
      THEN REPLY @36 
      DO ~CreateCreature("z!visual",[265.285],1) Wait(4) TakePartyGold(4000)
          TakePartyItemNum("SW1H10",1)    DestroyItem("SW1H10")
			 TakePartyItemNum("potn36",1)   DestroyItem("potn36")
			 TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          TakePartyItemNum("scrl1i",2)   DestroyItem("scrl1i")
          GiveItemCreate("thsw1h01",Player1,1,1,1)~ EXIT
  END

IF ~~ THEN BEGIN thbow01
    SAY @47 
IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~PartyHasItem("bow07") PartyHasItem("wand03") PartyHasItem("wand06") PartyHasItem("wand07") 
        PartyGoldGT(4999)~
      THEN REPLY @36 
      DO ~CreateCreature("z!visual",[265.285],1) Wait(4) TakePartyGold(5000)
          TakePartyItemNum("bow07",1)    DestroyItem("bow07")
			 TakePartyItemNum("wand03",1)   DestroyItem("wand03")
			 TakePartyItemNum("wand06",1)   DestroyItem("wand06")
          TakePartyItemNum("wand07",1)   DestroyItem("wand07")
          GiveItemCreate("thbow01",Player1,1,1,1)~ EXIT
  END

IF ~~ THEN BEGIN ring07
    SAY @48
IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~NumItemsPartyGT("ring06",1) NumItemsPartyGT("misc36",1) PartyHasItem("misc42")
        PartyGoldGT(3999)~
      THEN REPLY @36
      DO ~CreateCreature("z!visual",[265.285],1) Wait(4) TakePartyGold(4000)
          TakePartyItemNum("ring06",2)   DestroyItem("ring06")
          TakePartyItemNum("misc36",2)   DestroyItem("misc36")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          GiveItemCreate("ring07",Player1,1,1,1)~ EXIT
  END

IF ~~ THEN BEGIN thboot01
    SAY @49 
IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~PartyHasItem("boot01") PartyHasItem("boot02") PartyHasItem("potn14") PartyHasItem("potn39") 
        PartyGoldGT(4999)~
      THEN REPLY @36 
      DO ~CreateCreature("z!visual",[265.285],1) Wait(4) TakePartyGold(5000)
          TakePartyItemNum("boot01",1)   DestroyItem("boot01")
			 TakePartyItemNum("boot02",1)   DestroyItem("boot02")
			 TakePartyItemNum("potn14",1)   DestroyItem("potn14")
          TakePartyItemNum("potn39",1)   DestroyItem("potn39")
          GiveItemCreate("thboot01",Player1,1,1,1)~ EXIT
  END

IF ~~ THEN BEGIN thamul01
    SAY @50
IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~ PartyHasItem("amul14") PartyHasItem("amul15") PartyHasItem("potn11")
        PartyGoldGT(4999)~
      THEN REPLY @36
      DO ~CreateCreature("z!visual",[265.285],1) Wait(4) TakePartyGold(5000)
          TakePartyItemNum("amul14",1)   DestroyItem("amul14")
          TakePartyItemNum("amul15",1)   DestroyItem("amul15")
          TakePartyItemNum("potn11",1)   DestroyItem("potn11")
          GiveItemCreate("thamul01",Player1,1,1,1)~ EXIT
  END

IF ~~ THEN BEGIN thhelm01
    SAY @51
IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~ PartyHasItem("helm03") PartyHasItem("helm04") PartyHasItem("scrl04")
PartyHasItem("scrl05") PartyHasItem("scrl06") PartyHasItem("potn11")
        PartyGoldGT(4999)~
      THEN REPLY @36
      DO ~CreateCreature("z!visual",[265.285],1) Wait(4) TakePartyGold(5000)
          TakePartyItemNum("helm03",1)   DestroyItem("helm03")
          TakePartyItemNum("helm04",1)   DestroyItem("helm04")
          TakePartyItemNum("scrl04",1)   DestroyItem("scrl04")
          TakePartyItemNum("scrl05",1)   DestroyItem("scrl05")
          TakePartyItemNum("scrl06",1)   DestroyItem("scrl06")
          TakePartyItemNum("potn11",1)   DestroyItem("potn11")
          GiveItemCreate("thhelm01",Player1,1,1,1)~ EXIT
  END

IF ~~ THEN BEGIN thclck03
    SAY @52
IF ~~ THEN REPLY @35 GOTO s#tal03
    IF ~ PartyHasItem("clck02") PartyHasItem("clck05") NumItemsPartyGT("scrl67",1) 
PartyHasItem("potn34")
        PartyGoldGT(4999)~
      THEN REPLY @36
      DO ~CreateCreature("z!visual",[265.285],1) Wait(4) TakePartyGold(5000)
          TakePartyItemNum("clck02",1)   DestroyItem("clck02")
          TakePartyItemNum("clck05",1)   DestroyItem("clck05")
          TakePartyItemNum("potn34",1)   DestroyItem("potn34")
          TakePartyItemNum("scrl67",2)   DestroyItem("scrl67")
          GiveItemCreate("thclck03",Player1,1,1,1)~ EXIT
  END



END 




















  
