-- CreateTable
CREATE TABLE "activity" (
    "id" UUID NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "description" VARCHAR,
    "characterlevelmin" INTEGER NOT NULL,
    "characterlevelmax" INTEGER NOT NULL,
    "skillid" UUID,
    "skillidrequiredvalue" INTEGER,
    "pvpchance" INTEGER NOT NULL,
    "racerestrictiontype" INTEGER NOT NULL,
    "raceid" UUID,
    "careerrestrictiontype" INTEGER NOT NULL,
    "careerid" UUID,
    "imageid" UUID,
    "imagebackgroundcolor" VARCHAR(10),
    "isdeleted" BOOLEAN NOT NULL,
    "notes" VARCHAR(3000),
    "gender" INTEGER,
    "singlebattleintroscript" VARCHAR,
    "groupbattleintroscript" VARCHAR,

    CONSTRAINT "activity_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "activityresult" (
    "id" UUID NOT NULL,
    "result" VARCHAR,
    "battleturns" VARCHAR,
    "cash" INTEGER NOT NULL,
    "experience" INTEGER NOT NULL,
    "health" INTEGER,
    "pvpwins" INTEGER,
    "pvplosses" INTEGER,
    "customitemid1" UUID,
    "customitemid2" UUID,
    "activityid" UUID NOT NULL,
    "featid" UUID,
    "skillid" UUID,
    "isnewskill" BOOLEAN,
    "resultscalculateddate" TIMESTAMP(6),
    "resultsallocateddate" TIMESTAMP(6),
    "characterid" UUID,
    "issuccess" BOOLEAN,
    "battleevents" VARCHAR,

    CONSTRAINT "activityresult_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "activityskillrequirements" (
    "activityskillrequirementid" SERIAL NOT NULL,
    "actiivityid" INTEGER NOT NULL,
    "skillid" INTEGER NOT NULL,

    CONSTRAINT "activityskillrequirements_pkey" PRIMARY KEY ("activityskillrequirementid")
);

-- CreateTable
CREATE TABLE "adventure" (
    "id" UUID NOT NULL,
    "name" VARCHAR(50),
    "activityid" UUID NOT NULL,
    "itemidrequired" UUID,
    "itemconsumedonsuccess" BOOLEAN NOT NULL,
    "gender" INTEGER,
    "introductionscript" VARCHAR(5000),
    "adventurechecktypeid" UUID NOT NULL,
    "fighttargettypeidcheck" UUID,
    "raceidfightcheck" UUID,
    "careeridfightcheck" UUID,
    "masknamefightcheck" VARCHAR(100),
    "levelfightcheck" INTEGER,
    "usecharacterimagefightcheck" BOOLEAN,
    "maskimagebgcolorfightcheck" VARCHAR(10),
    "imageidmaskfightcheck" UUID,
    "skillidcheck" UUID,
    "skillvaluecheck" INTEGER,
    "failurescript" VARCHAR(5000),
    "successscript" VARCHAR(5000),
    "itemidreward" UUID,
    "cashreward" INTEGER NOT NULL,
    "itemtypeiddrop" UUID,
    "itemdropany" BOOLEAN NOT NULL,
    "itemdroprelated" BOOLEAN NOT NULL,
    "itemdropkeywords" VARCHAR(100),
    "isdeleted" BOOLEAN NOT NULL,
    "featidreward" UUID,

    CONSTRAINT "adventure_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "attribute" (
    "attributeid" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,

    CONSTRAINT "attribute_pkey" PRIMARY KEY ("attributeid")
);

-- CreateTable
CREATE TABLE "battlepool" (
    "id" UUID NOT NULL,
    "characterid" UUID NOT NULL,
    "groupid" UUID,
    "characterlevel" INTEGER NOT NULL,
    "battlelevel" DECIMAL(18,2) NOT NULL,
    "dateadded" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "battlepool_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "career" (
    "id" UUID NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "description" VARCHAR(1000),
    "gender" INTEGER,
    "isdeleted" BOOLEAN NOT NULL,
    "gameid" INTEGER NOT NULL,
    "itemid1" UUID,
    "itemid2" UUID,
    "skillid1" UUID,
    "skillid2" UUID,
    "featid1" UUID,
    "featid2" UUID,

    CONSTRAINT "career_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "careerfeat" (
    "id" UUID NOT NULL,
    "careerid" UUID NOT NULL,
    "featid" UUID NOT NULL,
    "sortorder" INTEGER NOT NULL,

    CONSTRAINT "careerfeat_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "careeritem" (
    "id" UUID NOT NULL,
    "careerid" UUID NOT NULL,
    "itemid" UUID NOT NULL,
    "sortorder" INTEGER NOT NULL,

    CONSTRAINT "careeritem_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "careerrace" (
    "id" UUID NOT NULL,
    "careerid" UUID NOT NULL,
    "raceid" UUID NOT NULL,
    "maleweight" INTEGER NOT NULL,
    "femaleweight" INTEGER NOT NULL,
    "malename" VARCHAR(255) NOT NULL,
    "femalename" VARCHAR(255) NOT NULL,
    "bio" VARCHAR(255) NOT NULL,
    "malebio" VARCHAR(255) NOT NULL,
    "femalebio" VARCHAR(50) NOT NULL,
    "flavortext" VARCHAR(255) NOT NULL,

    CONSTRAINT "careerrace_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "careerskill" (
    "id" UUID NOT NULL,
    "careerid" UUID NOT NULL,
    "skillid" UUID NOT NULL,
    "sortorder" INTEGER NOT NULL,

    CONSTRAINT "careerskill_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "character" (
    "id" UUID NOT NULL,
    "userid" UUID NOT NULL,
    "careerid" UUID NOT NULL,
    "raceid" UUID NOT NULL,
    "imageid" UUID NOT NULL,
    "levelid" UUID NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "experience" INTEGER NOT NULL,
    "gender" INTEGER NOT NULL,
    "health" INTEGER NOT NULL,
    "maxhealth" INTEGER NOT NULL,
    "biography" VARCHAR NOT NULL,
    "activityresult" VARCHAR,
    "isdeleted" BOOLEAN NOT NULL,
    "datecreated" TIMESTAMP(6) NOT NULL,
    "skillpoints" INTEGER NOT NULL,
    "activityresultid" UUID,
    "activityid" UUID,
    "pvpwins" INTEGER NOT NULL,
    "pvplosses" INTEGER NOT NULL,
    "pvprating" DOUBLE PRECISION NOT NULL,
    "isnpc" BOOLEAN NOT NULL,
    "groupid" UUID,
    "datelastactivityselected" TIMESTAMP(6) NOT NULL,
    "isretired" BOOLEAN NOT NULL,

    CONSTRAINT "character_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "characterattribute" (
    "characterattributeid" SERIAL NOT NULL,
    "characterid" INTEGER NOT NULL,
    "attributeid" INTEGER NOT NULL,
    "value" INTEGER NOT NULL,

    CONSTRAINT "characterattribute_pkey" PRIMARY KEY ("characterattributeid")
);

-- CreateTable
CREATE TABLE "characterfeat" (
    "id" UUID NOT NULL,
    "characterid" UUID NOT NULL,
    "featid" UUID NOT NULL,
    "rank" INTEGER NOT NULL,
    "isequipped" BOOLEAN NOT NULL,

    CONSTRAINT "characterfeat_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "charactergroup" (
    "id" UUID NOT NULL,
    "characterid" UUID NOT NULL,
    "groupid" UUID NOT NULL,

    CONSTRAINT "charactergroup_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "characterskill" (
    "id" UUID NOT NULL,
    "characterid" UUID NOT NULL,
    "skillid" UUID NOT NULL,
    "value" INTEGER NOT NULL,
    "freepointvalue" INTEGER NOT NULL,

    CONSTRAINT "characterskill_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "classactivity" (
    "classactivityid" SERIAL NOT NULL,
    "classid" INTEGER NOT NULL,
    "activityid" INTEGER NOT NULL,

    CONSTRAINT "classactivity_pkey" PRIMARY KEY ("classactivityid")
);

-- CreateTable
CREATE TABLE "classattribute" (
    "classattributeid" SERIAL NOT NULL,
    "classid" INTEGER NOT NULL,
    "attributeid" INTEGER NOT NULL,
    "defaultrank" INTEGER NOT NULL,

    CONSTRAINT "classattribute_pkey" PRIMARY KEY ("classattributeid")
);

-- CreateTable
CREATE TABLE "condition" (
    "conditionid" SERIAL NOT NULL,
    "name" VARCHAR(255),

    CONSTRAINT "condition_pkey" PRIMARY KEY ("conditionid")
);

-- CreateTable
CREATE TABLE "customitem" (
    "id" UUID NOT NULL,
    "itemid" UUID NOT NULL,
    "name" VARCHAR(255),
    "description" VARCHAR(3000),
    "flavortext" VARCHAR(3000),
    "notrade" BOOLEAN NOT NULL,

    CONSTRAINT "customitem_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "effect" (
    "id" UUID NOT NULL,
    "name" VARCHAR(50),
    "effectdurationtypeid" UUID,
    "duration" INTEGER,
    "attackmodifier" INTEGER NOT NULL,
    "attackkeyword" VARCHAR(255),
    "defensemodifier" INTEGER NOT NULL,
    "defensekeyword" VARCHAR(255),
    "damagehealing" INTEGER NOT NULL,
    "armormodifier" INTEGER NOT NULL,
    "weapondamagemodifier" INTEGER NOT NULL,
    "isdeleted" BOOLEAN NOT NULL,

    CONSTRAINT "effect_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "effectcondition" (
    "effectconditionid" SERIAL NOT NULL,
    "effectid" INTEGER NOT NULL,
    "conditionid" INTEGER NOT NULL,

    CONSTRAINT "effectcondition_pkey" PRIMARY KEY ("effectconditionid")
);

-- CreateTable
CREATE TABLE "feat" (
    "id" UUID NOT NULL,
    "name" VARCHAR(255),
    "description" VARCHAR(255),
    "featcastmodeid" UUID,
    "reactiveevent" VARCHAR(255),
    "featreactiveeventinitiatorid" UUID,
    "cooldown" INTEGER NOT NULL,
    "skillid" UUID,
    "skillrequiredvalue" INTEGER,
    "featspecialmechanicid" UUID,
    "cashprize" INTEGER NOT NULL,
    "feattargettypeidtarget1" UUID,
    "gendertarget1" INTEGER,
    "damagehealingtarget1" INTEGER NOT NULL,
    "racerestrictiontypetarget1" INTEGER NOT NULL,
    "raceidtarget1" UUID,
    "careerrestrictiontypetarget1" INTEGER NOT NULL,
    "careeridtarget1" UUID,
    "effectidtarget1" UUID,
    "feattargettypeidtarget2" UUID,
    "gendertarget2" INTEGER,
    "damagehealingtarget2" INTEGER NOT NULL,
    "racerestrictiontypetarget2" INTEGER NOT NULL,
    "raceidtarget2" UUID,
    "careerrestrictiontypetarget2" INTEGER NOT NULL,
    "careeridtarget2" UUID,
    "effectidtarget2" UUID,
    "target1onlyscript" VARCHAR NOT NULL,
    "target2onlyscript" VARCHAR NOT NULL,
    "successscript" VARCHAR NOT NULL,
    "failurescript" VARCHAR NOT NULL,
    "isdeleted" BOOLEAN NOT NULL,
    "imageid" UUID,
    "racerestrictiontype" INTEGER,
    "raceid" UUID,
    "careerrestrictiontype" INTEGER,
    "careerid" UUID,
    "gender" INTEGER,
    "level" INTEGER NOT NULL,

    CONSTRAINT "feat_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "forumcategory" (
    "id" UUID NOT NULL,
    "cssclass" VARCHAR(50),
    "title" VARCHAR(200),
    "creationdate" TIMESTAMP(6) NOT NULL,
    "isdeleted" BOOLEAN NOT NULL,
    "displaypriority" INTEGER,
    "islocked" BOOLEAN NOT NULL,

    CONSTRAINT "forumcategory_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "forumpost" (
    "id" UUID NOT NULL,
    "userid" UUID NOT NULL,
    "forumthreadid" UUID NOT NULL,
    "content" VARCHAR(5000),
    "creationdate" TIMESTAMP(6) NOT NULL,
    "isdeleted" BOOLEAN NOT NULL,

    CONSTRAINT "forumpost_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "forumthread" (
    "id" UUID NOT NULL,
    "userid" UUID NOT NULL,
    "forumcategoryid" UUID NOT NULL,
    "content" VARCHAR(5000),
    "islocked" BOOLEAN NOT NULL,
    "issticky" BOOLEAN NOT NULL,
    "creationdate" TIMESTAMP(6) NOT NULL,
    "isdeleted" BOOLEAN NOT NULL,
    "title" VARCHAR(200),

    CONSTRAINT "forumthread_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "game" (
    "gameid" SERIAL NOT NULL,
    "name" INTEGER NOT NULL,
    "description" VARCHAR(1000),
    "playercharactermax" INTEGER NOT NULL,
    "datecreated" TIMESTAMP(6) NOT NULL,
    "playerlabel" VARCHAR(255) NOT NULL,
    "characterlabel" VARCHAR(255) NOT NULL,
    "levellabel" VARCHAR(255) NOT NULL,
    "cashlabel" VARCHAR(255) NOT NULL,
    "healthlabel" VARCHAR(255) NOT NULL,
    "attributelabel" VARCHAR(255) NOT NULL,
    "featlabel" VARCHAR(255) NOT NULL,
    "skilllabel" VARCHAR(255) NOT NULL,
    "activitylabel" VARCHAR(255) NOT NULL,

    CONSTRAINT "game_pkey" PRIMARY KEY ("gameid")
);

-- CreateTable
CREATE TABLE "gameattribute" (
    "gameattribtureid" SERIAL NOT NULL,
    "gameid" INTEGER NOT NULL,
    "attributeid" INTEGER NOT NULL,
    "name" INTEGER NOT NULL,
    "abbreviation" INTEGER NOT NULL,

    CONSTRAINT "gameattribute_pkey" PRIMARY KEY ("gameattribtureid")
);

-- CreateTable
CREATE TABLE "gender" (
    "id" UUID NOT NULL,
    "name" VARCHAR(50),

    CONSTRAINT "gender_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "group" (
    "id" UUID NOT NULL,
    "startdatetime" TIMESTAMP(6) NOT NULL,
    "enddatetime" TIMESTAMP(6),
    "duration" DECIMAL(18,0) NOT NULL,
    "wins" INTEGER NOT NULL,
    "losses" INTEGER NOT NULL,
    "runtimes" INTEGER NOT NULL,

    CONSTRAINT "group_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "item" (
    "id" UUID NOT NULL,
    "name" VARCHAR(255),
    "itemtypeid" UUID NOT NULL,
    "characterlevel" INTEGER NOT NULL,
    "flavortext" VARCHAR(3000),
    "description" TEXT,
    "healing" INTEGER NOT NULL,
    "armor" INTEGER NOT NULL,
    "attack" INTEGER NOT NULL,
    "attackkeyword" VARCHAR(25),
    "damage" INTEGER NOT NULL,
    "damagevariance" DOUBLE PRECISION NOT NULL,
    "hitscript" VARCHAR(100),
    "critscript" VARCHAR(100),
    "missscript" VARCHAR(100),
    "defense" INTEGER NOT NULL,
    "defensekeyword" VARCHAR(50),
    "defendscript" VARCHAR(100),
    "isdeleted" BOOLEAN NOT NULL,
    "imageid" UUID,
    "imagebackgroundcolor" VARCHAR(10),
    "notes" VARCHAR(3000),
    "racerestrictiontype" INTEGER NOT NULL,
    "raceid" UUID,
    "careerrestrictiontype" INTEGER NOT NULL,
    "careerid" UUID,
    "notrade" BOOLEAN NOT NULL,
    "featid" UUID,
    "notradeafterequip" BOOLEAN NOT NULL,
    "isvisibleininventory" BOOLEAN NOT NULL,

    CONSTRAINT "item_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "itemclassrestriction" (
    "itemclassrestrictionid" SERIAL NOT NULL,
    "itemid" INTEGER NOT NULL,
    "classid" INTEGER NOT NULL,

    CONSTRAINT "itemclassrestriction_pkey" PRIMARY KEY ("itemclassrestrictionid")
);

-- CreateTable
CREATE TABLE "itemkeyword" (
    "itemkeywordid" SERIAL NOT NULL,
    "itemid" INTEGER NOT NULL,
    "keyword" VARCHAR(255) NOT NULL,

    CONSTRAINT "itemkeyword_pkey" PRIMARY KEY ("itemkeywordid")
);

-- CreateTable
CREATE TABLE "itemslot" (
    "id" UUID NOT NULL,
    "name" VARCHAR(255),

    CONSTRAINT "itemslot_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "itemtype" (
    "id" UUID NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    "isdeleted" BOOLEAN NOT NULL,

    CONSTRAINT "itemtype_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "race" (
    "id" UUID NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "isdeleted" BOOLEAN NOT NULL,
    "itemid1" UUID,
    "itemid2" UUID,
    "skillid1" UUID,
    "skillid2" UUID,
    "featid1" UUID,
    "featid2" UUID,

    CONSTRAINT "race_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "racefeat" (
    "id" UUID NOT NULL,
    "raceid" UUID NOT NULL,
    "featid" UUID NOT NULL,
    "sortorder" INTEGER NOT NULL,

    CONSTRAINT "racefeat_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "raceitem" (
    "id" UUID NOT NULL,
    "raceid" UUID NOT NULL,
    "itemid" UUID NOT NULL,
    "sortorder" INTEGER NOT NULL,

    CONSTRAINT "raceitem_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "raceskill" (
    "id" UUID NOT NULL,
    "raceid" UUID NOT NULL,
    "skillid" UUID NOT NULL,
    "sortorder" INTEGER NOT NULL,

    CONSTRAINT "raceskill_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "realm" (
    "realmid" SERIAL NOT NULL,
    "gameid" INTEGER NOT NULL,
    "name" VARCHAR(500) NOT NULL,
    "description" VARCHAR(1000),
    "playermax" INTEGER NOT NULL,

    CONSTRAINT "realm_pkey" PRIMARY KEY ("realmid")
);

-- CreateTable
CREATE TABLE "role" (
    "roleid" SERIAL NOT NULL,
    "name" VARCHAR(50) NOT NULL,

    CONSTRAINT "role_pkey" PRIMARY KEY ("roleid")
);

-- CreateTable
CREATE TABLE "round" (
    "roundid" SERIAL NOT NULL,
    "gameid" INTEGER NOT NULL,
    "time" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "round_pkey" PRIMARY KEY ("roundid")
);

-- CreateTable
CREATE TABLE "runtime" (
    "id" UUID NOT NULL,
    "time" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "runtime_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "skill" (
    "id" UUID NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "learningscript" VARCHAR NOT NULL,
    "gameid" INTEGER NOT NULL,
    "isdeleted" BOOLEAN NOT NULL,
    "careerid" UUID,
    "description" VARCHAR(255),

    CONSTRAINT "skill_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "useritem" (
    "id" UUID NOT NULL,
    "userid" UUID NOT NULL,
    "customitemid" UUID NOT NULL,
    "characterid" UUID,
    "itemslotid" UUID,
    "itemslotvariation" INTEGER,

    CONSTRAINT "useritem_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "usertracking" (
    "usertrackingid" SERIAL NOT NULL,
    "userid" INTEGER NOT NULL,
    "playerid" INTEGER,
    "gameid" INTEGER,
    "realmid" INTEGER,
    "dateloggedin" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "usertracking_pkey" PRIMARY KEY ("usertrackingid")
);

-- CreateTable
CREATE TABLE "adventurechecktype" (
    "id" UUID NOT NULL,
    "name" VARCHAR(50) NOT NULL,

    CONSTRAINT "adventurechecktype_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "careeradventure" (
    "id" UUID NOT NULL,
    "careerid" UUID NOT NULL,
    "adventureid" UUID NOT NULL,

    CONSTRAINT "careeradventure_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "characterforhire" (
    "id" UUID NOT NULL,
    "userid" UUID NOT NULL,
    "careerraceid" UUID NOT NULL,
    "gender" INTEGER NOT NULL,
    "expirationdate" TIMESTAMP(6) NOT NULL,
    "ishired" BOOLEAN NOT NULL,

    CONSTRAINT "characterforhire_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "characterlevel" (
    "id" UUID NOT NULL,
    "level" INTEGER NOT NULL,
    "maxexperience" INTEGER NOT NULL,

    CONSTRAINT "characterlevel_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "effectdurationtype" (
    "id" UUID NOT NULL,
    "name" VARCHAR(255),

    CONSTRAINT "effectdurationtype_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "effectskillbonus" (
    "id" UUID NOT NULL,
    "effectid" UUID NOT NULL,
    "skillid" UUID NOT NULL,
    "bonus" INTEGER NOT NULL,

    CONSTRAINT "effectskillbonus_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "effectspecialmechanic" (
    "id" UUID NOT NULL,
    "name" VARCHAR(255),

    CONSTRAINT "effectspecialmechanic_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "effectspecialmechaniccombo" (
    "id" UUID NOT NULL,
    "effectid" UUID NOT NULL,
    "effectspecialmechanicid" UUID NOT NULL,

    CONSTRAINT "effectspecialmechaniccombo_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "featcastmode" (
    "id" UUID NOT NULL,
    "name" VARCHAR(255),

    CONSTRAINT "featcastmode_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "featreactiveeventinitiator" (
    "id" UUID NOT NULL,
    "name" VARCHAR(255),

    CONSTRAINT "featreactiveeventinitiator_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "featspecialmechanic" (
    "id" UUID NOT NULL,
    "name" VARCHAR(255),

    CONSTRAINT "featspecialmechanic_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "feattargettype" (
    "id" UUID NOT NULL,
    "name" VARCHAR(255),

    CONSTRAINT "feattargettype_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "fighttargettype" (
    "id" UUID NOT NULL,
    "name" VARCHAR(50) NOT NULL,

    CONSTRAINT "fighttargettype_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "image" (
    "id" UUID NOT NULL,
    "imagecategoryid" UUID NOT NULL,
    "filename" VARCHAR(50) NOT NULL,
    "isdeleted" BOOLEAN NOT NULL,
    "raceid" UUID,
    "careerid" UUID,
    "genderid" UUID,
    "gender" INTEGER,

    CONSTRAINT "image_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "imagecategory" (
    "id" UUID NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    "isdeleted" BOOLEAN NOT NULL,

    CONSTRAINT "imagecategory_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "imagelibrary" (
    "id" UUID NOT NULL,
    "imageid" UUID NOT NULL,
    "backgroundcolor" VARCHAR(10) NOT NULL,
    "sourceid" UUID NOT NULL,

    CONSTRAINT "imagelibrary_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "itemequippableinslot" (
    "id" UUID NOT NULL,
    "itemid" UUID NOT NULL,
    "itemslotid" UUID NOT NULL,

    CONSTRAINT "itemequippableinslot_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "itemskillbonus" (
    "id" UUID NOT NULL,
    "itemid" UUID NOT NULL,
    "skillid" UUID NOT NULL,
    "bonus" INTEGER NOT NULL,

    CONSTRAINT "itemskillbonus_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "phrase" (
    "id" UUID NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    "isdeleted" BOOLEAN NOT NULL,

    CONSTRAINT "phrase_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "phrasevariation" (
    "id" UUID NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    "phraseid" UUID NOT NULL,

    CONSTRAINT "phrasevariation_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "phrasevariationterm" (
    "id" UUID NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "phrasevariationid" UUID,
    "phraseid" UUID NOT NULL,

    CONSTRAINT "phrasevariationterm_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "raceadventure" (
    "id" UUID NOT NULL,
    "raceid" UUID NOT NULL,
    "adventureid" UUID NOT NULL,

    CONSTRAINT "raceadventure_pkey" PRIMARY KEY ("id")
);
