/*
  Warnings:

  - You are about to drop the `activityskillrequirements` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `attribute` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `careerfeat` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `careeritem` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `careerskill` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `characterattribute` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `classactivity` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `classattribute` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `condition` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `effectcondition` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `game` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `gameattribute` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `imagelibrary` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `itemclassrestriction` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `itemkeyword` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `racefeat` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `raceitem` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `raceskill` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `realm` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `role` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `round` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `usertracking` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "activityskillrequirements";

-- DropTable
DROP TABLE "attribute";

-- DropTable
DROP TABLE "careerfeat";

-- DropTable
DROP TABLE "careeritem";

-- DropTable
DROP TABLE "careerskill";

-- DropTable
DROP TABLE "characterattribute";

-- DropTable
DROP TABLE "classactivity";

-- DropTable
DROP TABLE "classattribute";

-- DropTable
DROP TABLE "condition";

-- DropTable
DROP TABLE "effectcondition";

-- DropTable
DROP TABLE "game";

-- DropTable
DROP TABLE "gameattribute";

-- DropTable
DROP TABLE "imagelibrary";

-- DropTable
DROP TABLE "itemclassrestriction";

-- DropTable
DROP TABLE "itemkeyword";

-- DropTable
DROP TABLE "racefeat";

-- DropTable
DROP TABLE "raceitem";

-- DropTable
DROP TABLE "raceskill";

-- DropTable
DROP TABLE "realm";

-- DropTable
DROP TABLE "role";

-- DropTable
DROP TABLE "round";

-- DropTable
DROP TABLE "usertracking";

-- AddForeignKey
ALTER TABLE "activity" ADD CONSTRAINT "activity_careerid_fkey" FOREIGN KEY ("careerid") REFERENCES "career"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "activity" ADD CONSTRAINT "activity_raceid_fkey" FOREIGN KEY ("raceid") REFERENCES "race"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "activity" ADD CONSTRAINT "activity_skillid_fkey" FOREIGN KEY ("skillid") REFERENCES "skill"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "activity" ADD CONSTRAINT "activity_imageid_fkey" FOREIGN KEY ("imageid") REFERENCES "image"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "activityresult" ADD CONSTRAINT "activityresult_characterid_fkey" FOREIGN KEY ("characterid") REFERENCES "character"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "activityresult" ADD CONSTRAINT "activityresult_featid_fkey" FOREIGN KEY ("featid") REFERENCES "feat"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "activityresult" ADD CONSTRAINT "activityresult_skillid_fkey" FOREIGN KEY ("skillid") REFERENCES "skill"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "adventure" ADD CONSTRAINT "adventure_adventurechecktypeid_fkey" FOREIGN KEY ("adventurechecktypeid") REFERENCES "adventurechecktype"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "battlepool" ADD CONSTRAINT "battlepool_characterid_fkey" FOREIGN KEY ("characterid") REFERENCES "character"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "battlepool" ADD CONSTRAINT "battlepool_groupid_fkey" FOREIGN KEY ("groupid") REFERENCES "group"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "careerrace" ADD CONSTRAINT "careerrace_careerid_fkey" FOREIGN KEY ("careerid") REFERENCES "career"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "careerrace" ADD CONSTRAINT "careerrace_raceid_fkey" FOREIGN KEY ("raceid") REFERENCES "race"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "character" ADD CONSTRAINT "character_activityid_fkey" FOREIGN KEY ("activityid") REFERENCES "activity"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "character" ADD CONSTRAINT "character_careerid_fkey" FOREIGN KEY ("careerid") REFERENCES "career"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "character" ADD CONSTRAINT "character_raceid_fkey" FOREIGN KEY ("raceid") REFERENCES "race"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "character" ADD CONSTRAINT "character_levelid_fkey" FOREIGN KEY ("levelid") REFERENCES "characterlevel"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "character" ADD CONSTRAINT "character_imageid_fkey" FOREIGN KEY ("imageid") REFERENCES "image"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "characterfeat" ADD CONSTRAINT "characterfeat_characterid_fkey" FOREIGN KEY ("characterid") REFERENCES "character"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "characterfeat" ADD CONSTRAINT "characterfeat_featid_fkey" FOREIGN KEY ("featid") REFERENCES "feat"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "charactergroup" ADD CONSTRAINT "charactergroup_characterid_fkey" FOREIGN KEY ("characterid") REFERENCES "character"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "charactergroup" ADD CONSTRAINT "charactergroup_groupid_fkey" FOREIGN KEY ("groupid") REFERENCES "group"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "characterskill" ADD CONSTRAINT "characterskill_characterid_fkey" FOREIGN KEY ("characterid") REFERENCES "character"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "characterskill" ADD CONSTRAINT "characterskill_skillid_fkey" FOREIGN KEY ("skillid") REFERENCES "skill"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "customitem" ADD CONSTRAINT "customitem_itemid_fkey" FOREIGN KEY ("itemid") REFERENCES "item"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "effect" ADD CONSTRAINT "effect_effectdurationtypeid_fkey" FOREIGN KEY ("effectdurationtypeid") REFERENCES "effectdurationtype"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "feat" ADD CONSTRAINT "feat_careerid_fkey" FOREIGN KEY ("careerid") REFERENCES "career"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "feat" ADD CONSTRAINT "feat_featcastmodeid_fkey" FOREIGN KEY ("featcastmodeid") REFERENCES "featcastmode"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "feat" ADD CONSTRAINT "feat_featreactiveeventinitiatorid_fkey" FOREIGN KEY ("featreactiveeventinitiatorid") REFERENCES "featreactiveeventinitiator"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "feat" ADD CONSTRAINT "feat_featspecialmechanicid_fkey" FOREIGN KEY ("featspecialmechanicid") REFERENCES "featspecialmechanic"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "forumpost" ADD CONSTRAINT "forumpost_forumthreadid_fkey" FOREIGN KEY ("forumthreadid") REFERENCES "forumthread"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "forumthread" ADD CONSTRAINT "forumthread_forumcategoryid_fkey" FOREIGN KEY ("forumcategoryid") REFERENCES "forumcategory"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "item" ADD CONSTRAINT "item_careerid_fkey" FOREIGN KEY ("careerid") REFERENCES "career"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "item" ADD CONSTRAINT "item_featid_fkey" FOREIGN KEY ("featid") REFERENCES "feat"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "item" ADD CONSTRAINT "item_itemtypeid_fkey" FOREIGN KEY ("itemtypeid") REFERENCES "itemtype"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "item" ADD CONSTRAINT "item_imageid_fkey" FOREIGN KEY ("imageid") REFERENCES "image"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "skill" ADD CONSTRAINT "skill_careerid_fkey" FOREIGN KEY ("careerid") REFERENCES "career"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "useritem" ADD CONSTRAINT "useritem_characterid_fkey" FOREIGN KEY ("characterid") REFERENCES "character"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "useritem" ADD CONSTRAINT "useritem_customitemid_fkey" FOREIGN KEY ("customitemid") REFERENCES "customitem"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "useritem" ADD CONSTRAINT "useritem_itemslotid_fkey" FOREIGN KEY ("itemslotid") REFERENCES "itemslot"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "careeradventure" ADD CONSTRAINT "careeradventure_adventureid_fkey" FOREIGN KEY ("adventureid") REFERENCES "adventure"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "careeradventure" ADD CONSTRAINT "careeradventure_careerid_fkey" FOREIGN KEY ("careerid") REFERENCES "career"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "characterforhire" ADD CONSTRAINT "characterforhire_careerraceid_fkey" FOREIGN KEY ("careerraceid") REFERENCES "careerrace"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "effectskillbonus" ADD CONSTRAINT "effectskillbonus_effectid_fkey" FOREIGN KEY ("effectid") REFERENCES "effect"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "effectskillbonus" ADD CONSTRAINT "effectskillbonus_skillid_fkey" FOREIGN KEY ("skillid") REFERENCES "skill"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "effectspecialmechaniccombo" ADD CONSTRAINT "effectspecialmechaniccombo_effectid_fkey" FOREIGN KEY ("effectid") REFERENCES "effect"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "effectspecialmechaniccombo" ADD CONSTRAINT "effectspecialmechaniccombo_effectspecialmechanicid_fkey" FOREIGN KEY ("effectspecialmechanicid") REFERENCES "effectspecialmechanic"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "image" ADD CONSTRAINT "image_careerid_fkey" FOREIGN KEY ("careerid") REFERENCES "career"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "image" ADD CONSTRAINT "image_genderid_fkey" FOREIGN KEY ("genderid") REFERENCES "gender"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "image" ADD CONSTRAINT "image_raceid_fkey" FOREIGN KEY ("raceid") REFERENCES "race"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "image" ADD CONSTRAINT "image_imagecategoryid_fkey" FOREIGN KEY ("imagecategoryid") REFERENCES "imagecategory"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "itemequippableinslot" ADD CONSTRAINT "itemequippableinslot_itemid_fkey" FOREIGN KEY ("itemid") REFERENCES "item"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "itemequippableinslot" ADD CONSTRAINT "itemequippableinslot_itemslotid_fkey" FOREIGN KEY ("itemslotid") REFERENCES "itemslot"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "itemskillbonus" ADD CONSTRAINT "itemskillbonus_itemid_fkey" FOREIGN KEY ("itemid") REFERENCES "item"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "itemskillbonus" ADD CONSTRAINT "itemskillbonus_skillid_fkey" FOREIGN KEY ("skillid") REFERENCES "skill"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "phrasevariation" ADD CONSTRAINT "phrasevariation_phraseid_fkey" FOREIGN KEY ("phraseid") REFERENCES "phrase"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "phrasevariationterm" ADD CONSTRAINT "phrasevariationterm_phraseid_fkey" FOREIGN KEY ("phraseid") REFERENCES "phrase"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "phrasevariationterm" ADD CONSTRAINT "phrasevariationterm_phrasevariationid_fkey" FOREIGN KEY ("phrasevariationid") REFERENCES "phrasevariation"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "raceadventure" ADD CONSTRAINT "raceadventure_adventureid_fkey" FOREIGN KEY ("adventureid") REFERENCES "adventure"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "raceadventure" ADD CONSTRAINT "raceadventure_raceid_fkey" FOREIGN KEY ("raceid") REFERENCES "race"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
