--------------------------------------------------------------
-- func: @shop
-- auth: forgottenandlost
-- desc: opens a custom shop anywhere in the world
--------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function onTrigger(player,page)
    if (page == 0 or page == nil) then
        player:PrintToPlayer( "1: Crystal Depot, 2: MogDonalds, 3:Tool Shop");
    elseif (page == 1) then
        local stock_1 =
        {
            4238,   5000,       -- HQ Fire Crystal
            4239,   5000,       -- HQ Ice Crystal
            4240,   5000,       -- HQ Wind Crystal
            4241,   5000,       -- HQ Earth Crystal
            4242,   5000,       -- HQ Lightning Crystal
            4243,   5000,       -- HQ Water Crystal
            4244,   5000,       -- HQ Light Crystal
            4245,   5000        -- HQ Dark Crystal
        };
        showShop(player, STATIC, stock_1);

    elseif ( page == 2) then -- Would you like fries with that?
        local stock_2 =
        {
            4271,   2499,       -- Rice Dumpling
            4381,   2100,       -- Meat Mithkabob
            4398,   2100,       -- Fish Mithkabob
            4457,   2100,       -- Eel Kabob
            5166,   2100,       -- Coeurl Sub Sandwich
            4355,   1450,       -- Salmon Sub Sandwich
            5686,   799,        -- Cheese Sandwich
            5561,   799,        -- Moogle Pie
            4270,   999,        -- Sweet Rice Cake
            5944,   2000,       -- Frontier Soda
            5932,   1600,       -- Kitron Juice
            4424,   1100,       -- Melon Juice
            4422,   499         -- Orange Juice
        };
        showShop(player, STATIC, stock_2);
	
		
	elseif (page == 3) then
        local stock_3 =
        {
            4181,	1000, 	--instant warp
			4182,	4000, 	--instant reraise
			17585,	10000,	--federation signet staff
			605,    499,     -- Pickaxe
            1021,   499,     -- Hatchet
            1020,   499,     -- Sickle
            4165,   1000,    -- Silent Oil
            4164,   1000,    -- Prism Powder
            5362,   2000,    -- Rainbow Powder
            5417,   9999,    -- Toolbag (Sanjaku-Tenugui)
            5319,   9999,    -- Toolbag (Shinobi-Tabi)
            5314,   5000,    -- Toolbag (Shihei)
            5867,   20000,   -- Toolbag (Inoshishinofuda)
            5868,   25000,   -- Toolbag (Shikanofuda)
            5869,   25000,   -- Toolbag (Chonofuda)
            1022,   5000     -- Thief's Tools
        };
        showShop(player, STATIC, stock_3);
		
		elseif (page == 4) then
        local stock_4 =
        {
            
			17330,	20,		--stone arrow
			17319,	30,		--bone arrow
			17332,	40,		--fang arrow
			17321,	50,		--silver arrow
			18155,	60,		--scorpion arrow
			18159,	70,		--demon arrow
			17336,	20,		--crossbow bolt
			18150,	30,		--blind bolt
			18148,	30,		--acid bolt
			18153,	40,		--holy bolt
			18151,	100,	--bloody bolt
			17337,	40,		--mythril bolt
        };
        showShop(player, STATIC, stock_4);
        player:PrintToPlayer( "Ammo shop: Welcome, Kupo!");
		
		elseif (page == 5) then
        local stock_5 =
        {
            12518,	30000,	--ranger
			14224,	30000,
			13971,	30000,
			12648,	30000,
			14099,	30000,
			12515,	30000,	--paladin
			12644,	30000,
			13967,	30000,
			14220,	30000,
			14095,	30000,
			12516,	30000,	--dark knight
			12645,	30000,
			13968,	30000,
			14221,	30000,
			14096,	30000,
			12511,	30000,	--warrior
			12638,	30000,
			13961,	30000,
			14214,	30000,
			14089,	30000,
			12512,	30000,	--monk
			12639,	30000,
			13962,	30000,
			14215,	30000,
			14090,	30000,
			12514,	30000,	--thief
			12643,	30000,
			13966,	30000,
			14219,	30000,
			14094,	30000,
			13855,	30000,	--white mage
			12640,	30000,
			13963,	30000,
			14216,	30000,
			14091,	30000,
			13856,	30000,	--black mage
			12641,	30000,
			13964,	30000,
			14217,	30000,
			14092,	30000,
			12513,	30000,	--red mage
			12642,	30000,
			13965,	30000,
			14218,	30000,
			14093,	30000,
			12517,	30000,	--beastmaster
			12646,	30000,
			13969,	30000,
			14222,	30000,
			14097,	30000,
			
	
        };
        showShop(player, STATIC, stock_5);
        player:PrintToPlayer( "AF shop: Welcome, Kupo!");
		
		elseif (page == 6) then
        local stock_6 =
        {
			13857,	30000,	--bard
			12647,	30000,
			13970,	30000,
			14223,	30000,
			14098,	30000,
			13868,	30000,	--samurai
			13781,	30000,
			13972,	30000,
			14225,	30000,
			14100,	30000,
			13869,	30000,	--ninja
			13782,	30000,
			13973,	30000,
			14226,	30000,
			14101,	30000,
			12519,	30000,	--dragoon
			12649,	30000,
			13974,	30000,
			14227,	30000,
			14102,	30000,
			12520,	30000,	--summoner
			12650,	30000,
			13975,	30000,
			14228,	30000,
			14103,	30000,
			15266,	30000,	--corsair
			14522,	30000,
			14929,	30000,
			15601,	30000,
			15685,	30000,
			15265,	30000,	--blue mage
			14521,	30000,
			14928,	30000,
			15600,	30000,
			15684,	30000,
			15267,	30000,	--puppetmaster
			14523,	30000,
			14930,	30000,
			15602,	30000,
			15686,	30000,
			16138,	30000,	--dancer
			14578,	30000,
			15002,	30000,
			15659,	30000,
			15746,	30000 
        };
        showShop(player, STATIC, stock_6);
		player:PrintToPlayer( "AF shop 2: Welcome, Kupo!");
		
	
		
    else
        player:PrintToPlayer( string.format( "Page %i not found.", page ) );
    end
end;