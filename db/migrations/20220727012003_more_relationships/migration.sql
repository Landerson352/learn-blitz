-- AddForeignKey
ALTER TABLE "activityresult" ADD CONSTRAINT "activityresult_customitemid1_fkey" FOREIGN KEY ("customitemid1") REFERENCES "customitem"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "activityresult" ADD CONSTRAINT "activityresult_customitemid2_fkey" FOREIGN KEY ("customitemid2") REFERENCES "customitem"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "adventure" ADD CONSTRAINT "adventure_careeridfightcheck_fkey" FOREIGN KEY ("careeridfightcheck") REFERENCES "career"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "adventure" ADD CONSTRAINT "adventure_featidreward_fkey" FOREIGN KEY ("featidreward") REFERENCES "feat"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "adventure" ADD CONSTRAINT "adventure_itemidrequired_fkey" FOREIGN KEY ("itemidrequired") REFERENCES "item"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "adventure" ADD CONSTRAINT "adventure_itemidreward_fkey" FOREIGN KEY ("itemidreward") REFERENCES "item"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "adventure" ADD CONSTRAINT "adventure_itemtypeiddrop_fkey" FOREIGN KEY ("itemtypeiddrop") REFERENCES "itemtype"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "adventure" ADD CONSTRAINT "adventure_raceidfightcheck_fkey" FOREIGN KEY ("raceidfightcheck") REFERENCES "race"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "adventure" ADD CONSTRAINT "adventure_skillidcheck_fkey" FOREIGN KEY ("skillidcheck") REFERENCES "skill"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "adventure" ADD CONSTRAINT "adventure_fighttargettypeidcheck_fkey" FOREIGN KEY ("fighttargettypeidcheck") REFERENCES "fighttargettype"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "adventure" ADD CONSTRAINT "adventure_imageidmaskfightcheck_fkey" FOREIGN KEY ("imageidmaskfightcheck") REFERENCES "image"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "career" ADD CONSTRAINT "career_featid1_fkey" FOREIGN KEY ("featid1") REFERENCES "feat"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "career" ADD CONSTRAINT "career_featid2_fkey" FOREIGN KEY ("featid2") REFERENCES "feat"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "career" ADD CONSTRAINT "career_itemid1_fkey" FOREIGN KEY ("itemid1") REFERENCES "item"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "career" ADD CONSTRAINT "career_itemid2_fkey" FOREIGN KEY ("itemid2") REFERENCES "item"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "career" ADD CONSTRAINT "career_skillid1_fkey" FOREIGN KEY ("skillid1") REFERENCES "skill"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "career" ADD CONSTRAINT "career_skillid2_fkey" FOREIGN KEY ("skillid2") REFERENCES "skill"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "feat" ADD CONSTRAINT "feat_careeridtarget1_fkey" FOREIGN KEY ("careeridtarget1") REFERENCES "career"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "feat" ADD CONSTRAINT "feat_careeridtarget2_fkey" FOREIGN KEY ("careeridtarget2") REFERENCES "career"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "feat" ADD CONSTRAINT "feat_effectidtarget1_fkey" FOREIGN KEY ("effectidtarget1") REFERENCES "effect"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "feat" ADD CONSTRAINT "feat_effectidtarget2_fkey" FOREIGN KEY ("effectidtarget2") REFERENCES "effect"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "feat" ADD CONSTRAINT "feat_raceidtarget1_fkey" FOREIGN KEY ("raceidtarget1") REFERENCES "race"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "feat" ADD CONSTRAINT "feat_raceidtarget2_fkey" FOREIGN KEY ("raceidtarget2") REFERENCES "race"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "feat" ADD CONSTRAINT "feat_feattargettypeidtarget1_fkey" FOREIGN KEY ("feattargettypeidtarget1") REFERENCES "feattargettype"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "feat" ADD CONSTRAINT "feat_feattargettypeidtarget2_fkey" FOREIGN KEY ("feattargettypeidtarget2") REFERENCES "feattargettype"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "race" ADD CONSTRAINT "race_featid1_fkey" FOREIGN KEY ("featid1") REFERENCES "feat"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "race" ADD CONSTRAINT "race_featid2_fkey" FOREIGN KEY ("featid2") REFERENCES "feat"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "race" ADD CONSTRAINT "race_itemid1_fkey" FOREIGN KEY ("itemid1") REFERENCES "item"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "race" ADD CONSTRAINT "race_itemid2_fkey" FOREIGN KEY ("itemid2") REFERENCES "item"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "race" ADD CONSTRAINT "race_skillid1_fkey" FOREIGN KEY ("skillid1") REFERENCES "skill"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "race" ADD CONSTRAINT "race_skillid2_fkey" FOREIGN KEY ("skillid2") REFERENCES "skill"("id") ON DELETE SET NULL ON UPDATE CASCADE;
