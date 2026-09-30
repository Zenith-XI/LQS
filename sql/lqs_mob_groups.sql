-- ---------------------------------------------------------------------------
-- LQS mob groups
-- ---------------------------------------------------------------------------
-- Questpack mobs are dynamic entities spawned from a mob_groups row via
-- `base = { zoneId, groupId }`. Upstream moved open-world zone mobs out of SQL
-- into data/zones/<zone>/mobs.yaml (2026-08-20), but insertDynamicEntity still
-- reads mob_groups/mob_pools, so the rows LQS depends on are restored here.
-- Values are taken verbatim from the SQL immediately before that move.
--
-- REPLACE INTO keeps this safe to re-apply on every dbtool update.
-- Load it by listing LQS/sql in modules/init.txt.
-- ---------------------------------------------------------------------------

-- Pools
REPLACE INTO `mob_pools` VALUES (362,'Battering_Ram','Battering_Ram',108,0x0000580100000000000000000000000000000000,1,1,7,320,100,0,1,0,0,0,0,0,821,129,0,0,0,0,0,208,208,0,35);
REPLACE INTO `mob_pools` VALUES (578,'Bull_Dhalmel','Bull_Dhalmel',95,0x00004C0100000000000000000000000000000000,1,1,12,240,100,0,0,0,1,0,0,0,419,131,0,0,0,0,0,80,80,1,37);
REPLACE INTO `mob_pools` VALUES (1965,'Hoarder_Hare','Hoarder_Hare',106,0x00000C0100000000000000000000000000000000,1,1,7,240,100,0,0,0,1,0,0,0,216,129,0,0,0,0,0,206,206,0,11);
REPLACE INTO `mob_pools` VALUES (2015,'Hurricane_Wyvern','Hurricane_Wyvern',235,0x00008E0100000000000000000000000000000000,1,1,7,240,100,0,1,0,1,0,0,0,7569,1155,0,0,0,0,0,266,266,1,32);

-- Groups (source zone -> quest that uses the group)
REPLACE INTO `mob_groups` VALUES (30,362,102,'Battering_Ram',600,0,236,500,0,0,NULL);     -- La Theine Plateau -> Rambling Around
REPLACE INTO `mob_groups` VALUES (16,578,118,'Bull_Dhalmel',300,0,385,0,0,0,NULL);        -- Buburimu Peninsula -> Neck and Neck
REPLACE INTO `mob_groups` VALUES (9,1965,191,'Hoarder_Hare',300,0,309,0,0,0,NULL);        -- Dangruf Wadi -> That's All Folks
REPLACE INTO `mob_groups` VALUES (21,2015,205,'Hurricane_Wyvern',300,0,1340,0,0,0,NULL);  -- Ifrit's Cauldron -> Here Be Dragons
