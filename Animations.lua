local PathShortcuts = require(game.ReplicatedStorage.ReplicatedModules.PathShortcuts)
local KnitPath = PathShortcuts.KnitPath
local TableUtil = require(KnitPath.TableUtil)
local Trove = require(KnitPath.Trove)
local OutputEvent = game.ReplicatedStorage.Remotes.Output
local defaultDeathAnims = {13623345732}--, 6673885066, 6674575862}

local module = {}
module.anims = {
	["DefaultAnims"] = {
		Action = {
			["Dash"] = 13583855249;
			["ForwardDash"] = 13583857057;
			["BackwardDash"] = 13583859419;
			["LeftDash"] = 13583862650;
			["RightDash"] = 13583863683;
			["DeathAnimation"] = 13583864638;
			["KnockbackLoop"] = 13583865959;
			["KnockbackEnd"] = 13583867022;
		};
		Movement = {
			["Run"] = 13583870789;
			["Walk"] = 13583871762;
			["TimeAccel"] = 13583876324;
			["Jump"] = 13583877622;
			["Fall"] = 13583879032;
			["Land"] = 13583880374;
			["Glide"] = 13583881723;
			["SummonedRun"] = 13583883148;
			["SummonedWalk"] = 13583884466;
			["LowHPRun"] = 13583885523;
			["LowHPWalk"] = 13583886806;
		};
		Idle = {
			["Idle"] = 13583888263;
			["LowHPIdle"] = 13583889421;
		};
	};
	["Casey"] = {
		Action = {
			["Bonk"] = 13583902764;
			["Swing"] = 13583904329;
			["PoseTransition"] = 13583905826;
			["PoseIdle"] = 13583907083;
			["Dash"] = 13583908457;
		};
		Movement = {
			["Run"] = 13583911038;
			["Walk"] = 13583912036;
		};
		Idle = {
			["SummonedIdle"] = 13583913337;
		};
	};
	["Anshen"] = {
		Movement = {
			["SummonedRun"] = 13583916322;
			["SummonedWalk"] = 13583917238;
		};
		Idle = {
			["SummonedIdle"] = 13583918561;
		};
	};
	["A_Sans"] = {
		Action = {
			["Bone Field"] = 13583921398;
		};
		Movement = {
			["Run"] = 13583922458;
			["Walk"] = 13583923545;
		};
		Idle = {
			["Idle"] = 13583925108;
		};
	};
	["Fightsabre"] = {
		Action = {		
			["Shoot"] = 13583935082;
			["Reload"] = 13583936528;
			["Kick"] = 13583937518;
			["PoseTransition"] = 13583939073;
			["PoseIdle"] = 13583940353;
			["Dash"] = 13583941633;
		};
		Movement = {
			["Jump"] = 13583943418;
		};
		Idle = {
			["Idle"] = 13583945262;
		};
	};
	["Gun"] = {
		Action =	{		
			["Shoot"] = 13583946735;
			["Reload"] = 13583948147;
			["Kick"] = 13583949423;
			["PoseIdle"] = 13583950644;
			["PoseTransition"] = 13583952272;
			["Dash"] = 13583953698;
			["Whip"] = 13583955200;
		};
		Movement = {
			["Jump"] = 13583956600;
		};
		Idle = {
			["Idle"] = 13583958242;
		};
	};
	["Hornet"] = {
		Action = {
			["Hegale"] = 13584010513;
			["Garama"] = 13584011693;
			["PoseTransition"] = 13584013278;
			["PoseIdle"] = 13584015301 ;
			["Edino"] = 13584016516;
			["AirDash"] = 13584017641;
			["Dash Strike"] = 13584018561;
			["m1"] = 13584019362;
		};
	};
	["Slayer Armor II"] = {
		Action = {
			["LMB-1"] = 13584022301;
			["LMB-2"] = 13584023425;
			["LMB-3"] = 13584024505;
			-- --
			["Equip"] = 13584025795;

		};
		Movement = {
			["SummonedWalk"] = 13584027949;
			["SummonedRun"] = 13584029002;
			["Walk"] = 13584030032;
			["Run"] = 13584032963;
		};
		Idle = {
			["SummonedIdle"] = 13584034516;
			["Idle"] = 13584035661;
		};
	};
	["D4C: Love Train"] = {
		Action = {
			["StandIdle"] = 13584060926;
			["LMB-1"] = 13584062173;
			["LMB-2"] = 13584063316;
			["LMB-3"] = 13584064396;
			["Summon"] = 13584065332;

			["LoveTrainStartup"] = 13584067924;

			["First Napkin Start"] = 13584069123; 
			["First Napkin Idle"] = 13584075256;
			["First Napkin"] = 13584076325; --8490294892;
			["First Napkin Victim"] = 13584077683; --8506949493;

			["Chop"] = 13584080045;

			["Dimension Hide"] = 13584082066;
			["Dimension Hide Exit"] = 13584086303;

			["Dimension Beatdown User"] = 13584087612; --8489040665
			["Dimension Beatdown Victim"] = 13584090871; --8489047814


			["Dash Camera"] = 13584092792;
			["Dash User"] = 13584093692;
			["Dash Clone"] = 13584094759;
			["Dash Victim"] = 13584095803;
			["Dash Victim Clone"] = 13584096737;

			["Gun Barrage"] = 13584098051;

			["Low Kick"] = 13584099285;

			["Severing Chokeslam Start"] = 13584100289;
			["Severing Chokeslam"] = 13584101425;
			["Severing Victim"] = 13584102701;
			["Chokeslammed"] = 13584103819;

			["Flag Slam"] = 13584104792;
			["Flag Slam Victim"] = nil;

			["PoseIdle"] = 13584108983;
			["PoseTransition"] = 13584109935;
		};
		Movement = {
			["Walk"] = 13584111030;
			["Run"] = 13584112410;
			["LoveTrainWalk"] = 13584113385;
			["LoveTrainRun"] = 13584114532;
		};
		Idle = {
			["Idle"] = 13584115579;
			["LoveTrainIdle"] = 13584116605;
		};
	};
	["Silver Chariot"] = {
		Action = {
			["LMB-1"] = 13584127366;
			["LMB-2"] = 13584128560;
			["LMB-3"] = 13584129804;
			["LMB-4"] = 13584131045;

			["Armor Off"] = 13584133443;

			["StandIdle1"] = 13584134617;
			["SummonAnim"] = 13584135837;
			["Rapier Thrusts"] = 13584137183; --Barrage

			["Skull Piercing Thrust"] = 13584140360; --Fall
			["GSuccess"] = 13584141684; --Stab

			["Instant Slice Hold"] = 13584142980; --stand infront
			["Instant Slice"] = 13584144003; -- Stab 2 :3

			["Ricochet Shot"] = 13584148693; --Shot

			["You're Lying!"] = 13584149963; --the grab move
		};
		Movement = {
			["Walk"] = 13584157210;
		};
		Idle = {
			["Idle"] = 13584158192;

		};
	};
	["Crazy Diamond"] = {
		Action = {
			["StandIdle"] = 13584165122;
			-- --
			["One Two Combination"] = 13584166444;
			-- --
			["Pressure Cutter Use"] = 13584167457;
			["Pressure Cutter Hit"] = 13584168500;
			["Pressure Cutter Victim"] = 13584169780;
			-- --
			["Deadeye Shot"] = 13584171209;
			-- --
			["Diamond Crusher"] = 13584277947;
			["Diamond Crusher Finisher"] = 13584278904;
			-- --
			["LMB-1"] = 13584279940;
			["LMB-2"] = 13584281302;
			["LMB-3"] = 13584282615;
			["LMB-4"] = 13584283782;
			-- --
			["Lightning Jabs"] = 13584284813;
			["Lightning Jabs Hit"] = 13584285764;
			["Lightning Jabs Victim"] = 13584286572;
			-- --
			["Restoration Uppercut"] = 13584288042;
			-- --
			["Rising Star"] = 13584289336;
			["Rising Star Victim"] = 13584290412;
			-- --
			["Under Pressure"] = 13584292219;
			-- --
			["PoseIdle"] = 13584293086;
			["PoseTransition"] = 13584294311;
		};
		Movement = {
			["Walk"] = 13584295819;
			["Run"] = 13584297252;
			-- --
			["SummonedWalk"] = 13584298419;
			["SummonedRun"] = 13584299493;
		};
		Idle = {
			["Idle"] = 13584301024;
		}
	};
	["Sakuya Izayoi"] = {
		Action = {
			["PoseTransition"] = 13584308488;
			["PoseIdle"] = 13584309480;
			["LMB-1"] = 13584311191;
			["LMB-2"] = 13584312239;
			["LMB-3"] = 13584313930;
		};
		Idle = {
			["Idle"] = 13584314957;
		};
	};
	["Killua"] = {
		Action = {
			["NoMercyKick"] = 13584328234;
			["NoMercyLightningPalm"] = 13584329398;
			["AirLightning"] = 13584330279;
			["GroundLightning"] = 13584331431;
			["Snake"] = 13584332495;
			["InstantDeath"] = 13584349275;
			["GrabHeart"] = 13584350529;
			["OnslaughtWindup"] = 13584352036;
			["OnslaughtDash"] = 13584353354;
			["OnslaughtBD"] = 13584354450;
			["OnslaughtVictim"] = 13584355433;
			["Godspeed"] = 13584356221;
			["TeleportLightning"] = 13584357411;
			["PoseIdle"] = 13584358384;
			["PoseTransition"] = 13584359274;
		};
		Movement = {
			["Run"] = 13584360513;
			["Walk"] = 13584363472;
		};
		Idle = {
			["Idle"] = 13584364395;
		};
	};
	["Planet Shaper"] = {
		Action = {
			["Chicxulub Asteroid"] = 13584372466,
			["LMB-1"] = 13584373779;
			["LMB-2"] = 13584374896;
			["LMB-3"] = 13584376252;
			["LMB-4"] = 13584379913;

			["StandIdle"] = 13584380799,
			["Earthquake"] = 13584381768;
			["Portal Pass"] = 13584382733;
			["Roar"] = 13584383791;
			["Grab"] = 13584384744;
			["PoseTransition"] = 13584385735,
			["PoseIdle"] = 13584387970,
			["SelfHeal"] = 13584389176;
			["TeamworkStart"] = 13584390433;
			["TeamworkUser"] = 13584393727;
			["TeamworkVictim"] = 13584395212;
			["Starstruck"] = 13584396538;
			["GateWarp"] = 13584398165;
		};
	},

	["PLANET // SHAPER"] = {
		Action = {
			["Chicxulub Asteroid"] = 13584372466,
			["LMB-1"] = 13584373779;
			["LMB-2"] = 13584374896;
			["LMB-3"] = 13584376252;
			["LMB-4"] = 13584379913;

			["StandIdle"] = 13584380799,
			["Earthquake"] = 13584381768;
			["Portal Pass"] = 13584382733;
			["Roar"] = 13584383791;
			["Grab"] = 13584384744;
			["PoseTransition"] = 13584385735,
			["PoseIdle"] = 13584387970,
			["SelfHeal"] = 13584389176;
			["TeamworkStart"] = 13584390433;
			["TeamworkUser"] = 13584393727;
			["TeamworkVictim"] = 13584395212;
			["Starstruck"] = 13584396538;
			["GateWarp"] = 13584398165;
		};
	},

	["Galizur"] = {
		Action = {
			["StandIdle"] = 13584407176;
			["LMB-1"] = 13584408118;
			["LMB-2"] = 13584409155;
			["LMB-3"] = 13584410359;
			["LMB-4"] = 13584411750;
			["Barrage"] = 13584413043;
			["HeavyPunch"] = 13584414454;
			["NeturalizationHeal"] = 13584415442;
			["Reality Overwrite"] = 13584416510;
			["Timestop"] = 13584417554;
			["SelfHealUser"] = 13584418442;
			["ThunderGod"] = 13584419887;
			["Strike"] = 13584420690;
			["SweepKick"] = 13584421987;
			["KnifeThrow"] = 13584422826;
		};
	};
	["Gaster"] = {
		Action = {
			["Summon"] = 13584430279;
			["Core"] = 13584431195;
			["OLDCore"] = 13584432104;
			["DeSummon"] = 13584433299;
			["SelfHeal"] = 13584434549;
			["AllyHeal"] = 13584435400;
			["Slash"] = 13584437383;
			["Bullets"] = 13584442126;
			["Bombs"] = 13584443105;
			["Block"] = 13584443986;
			["Laser"] = 13584444894;
			["Saw"] = 13584445947;
			["Pully"] = 13584446717;
			--["ForwardDash"] = ;
		};
		Movement = {
			["Walk"] = 13584448303;
		};
		Idle = {
			["Idle"] = 13584449339;
		};
	},
	["xChara"] = {
		Action = {
			["LMB-1"] = 13584456602,
			["LMB-2"] = 13584457548,
			["LMB-3"] = 13584458556,
			["Stab"] = 13584459785,

			--------- OLD -----------

			["HeavyHit"] = 13584460908,
			["FunnyStab"] = 13584461898,
			["Uppercut"] = 13584462878,
			["OLDM1"] = 13584465600,
			["OLDM2"] = 13584466807,
			["GroundSlam"] = 13584467798,
			["Heal"] = 13584468902;
		};
		Movement = {
			["Run"] = 13584470473;
			["Walk"] = 13584471434;
		};
		Idle = {
			["Idle"] = 13584472568;
		};
	};
	["The World: Over Heaven"] = {
		Action = {
			["StandIdle"] = 13584407176;
			["LMB-1"] = 13584408118;
			["LMB-2"] = 13584409155;
			["LMB-3"] = 13584410359;
			["LMB-4"] = 13584411750;
			["Barrage"] = 13584413043;
			["HeavyPunch"] = 13584414454;
			["NeturalizationHeal"] = 13584415442;
			["Reality Overwrite"] = 13584416510;
			["Timestop"] = 13584417554;
			["SelfHealUser"] = 13584418442;
			["ThunderGod"] = 13584419887;
			["Strike"] = 13584420690;
			["SweepKick"] = 13584421987;
			["KnifeThrow"] = 13584422826;
			["PoseTransition"] = 13584473909;
			["PoseIdle"] = 13584474753;
		};
		Movement = {
			["Walk"] = 13584475869;
			["Run"] = 13584476938;
		};
		Idle = {
			["Idle"] = 13584478262;
		};
	};
	["Dragon Sage"] = {
		Action = {
			["LElbow"] = 13584480365;
			["ThunderingLeap"] = 13584482391;
			["LMB-1"] = 13584483940;
			["LMB-2"] = 13584485071;
			["LMB-3"] = 13584486168;
			["LMB-4"] = 13584487125;
			["LMB-5"] = 13584488088;
			["ElectricSmite"] = 13584489094;
			["GrabAttempt"] = 13584490406;
		};
	};
	["Ardoth"] = {
		Action = {
			["LElbow"] = 13584496693;
			["ThunderingLeap"] = 13584497466;
			["LMB-1"] = 13584498540;
			["LMB-2"] = 13584499617;
			["LMB-3"] = 13584500765;
			["LMB-4"] = 13584502074;
			["LMB-5"] = 13584503249;
		};
	};
	["D4C"] = {
		Action = {
			["Gunshots"] = 13584517396;
			["Gunshot"] = 13584518426;
			["ReloadGun"] = 13584519489;
			["StandIdle"] = 13584520554;
			["LMB-1"] = 13584526620;
			["LMB-2"] = 13584527517;
			["LMB-3"] = 13584528378;
			["LMB-4"] = 13584529306;
			["StandOff-LMB-1"] = 13584530330;
			["StandOff-LMB-2"] = 13584531381;
			["StandOff-LMB-3"] = 13584532410;
			["StandOff-LMB-4"] = 13584533304;
			["Barrage"] = 13584534529;
			["HeavyPunch"] = 13584535636;
			["TwoArmPunch"] = 13584537017;
			["Uppercut"] = 13584537960;
			["D4CSlam"] = 13584538942;
			["Clone Bomb"] = 13584539758;
			["Dimension Hop"] = 13584540637;
			["Run"] = 13584541355;
			["Counter Startup"] = 13584542348;
			["Jumper-1"] = 13584543183;
			["Jumper-2"] = 13584544107;
			["Jumped"] = 13584545006;
		};
		Movement = {
			["Walk"] = 13584545859;
			["Run"] = 13584547004;

			["SummonedWalk"] = 13584547772
		};
		Idle = {
			["Idle"] = 13584548954;
		};
	};
	["Tusk"] = {
		Action = {
			["Barrage"] = 13584553424;
			["Strong Punch"] = 13584554170;
			["Heavy Punch"] = 13584554884;
			["Scratch"] = 13584555814;
			["Glide"] = 13584556725;
			["NailShot"] = 13584558122;
			["Tea"] = 13584559021;
			["ChargedNailShot"] = 13584559902;
			["Wormhole"] = 13584561802;
			["StandUp"] = 13584563177;
			["BallEquip"] = 13584564926;
			["BallCharge"] = 13584565810;
			["BallRelease"] = 13584567851;
			["Block"] = 13584568901;
			["Sit"] = 13584570032;
			["TuskEnter"] = 13584571140;
			["TuskExit"] = 13584572357;
			["Slam"] = 13584573240;
			["Determination"] = 13584574002;
		};
		Movement = {
			["Run"] = 13584574924;
			["Walk"] = 13584576221;
		};
		Idle = {
			["Idle"] = 13584577092;
			["ACT1Idle"] = 13584577938;
			["ACT2Idle"] = 13584579145;
			["ACT3Idle"] = 13584580417;
			["ACT4Idle"] = 13584581521;
		};
	};
	["Sol"] = {
		Action = {
			["StandIdle"] = 13590350563;
			["LMB-1"] = 13590352467;
			["LMB-2"] = 13590354392;
			["LMB-3"] = 13590356092;
			["LMB-4"] = 13590358034;
			["Barrage"] = 13590359879;
			["SolStarCombo"] = 13590361748;
			["BlackHole"]= 13590366335;
			["IntangiblePunch"] = 13590368918;
			["Forcefield"] = 13590372355;
			["Pose Transition Stand"] = 13590381825;
			["Pose Transition root"] = 13590383316;
			["Pose Idle Stand"] = 13590387607;
			["Pose Idle root"] = 13590389112;
		};
		Idle = {
			["Idle"] = 13590390811;
		};
	};
	["Nocturnus"] = {
		Action = {
			["StandIdle"] = 13590414513;
			["LMB-1"] = 13590416492;
			["LMB-2"] = 13590418965;
			["LMB-3"] = 13590422604;
			["LMB-4"] = 13590440486;
			["LeashSlash"] = 13590442533;
			["FlashSlash"] = 13590446283;
			["Stab"] = 13590447946;
			["Grab"] = 13590450090;
			["SwipeUp"] = 13590453280;
			["SwipeDown"] = 13590455861;
			["PoseIdle"] = 13590457567;
			["PoseTransition"] = 13590459356
		};
		Idle = {
			["Idle"] = 13590461116;
		};
	};
	["Demon Lord"] = {
		Action = {
			["DevilEyes"] = 13590463218;
		};
	};
	["Standless"] = {
		Action = {
			["BiteAttempt"] = 13590474650;
			["BiteSuccess"] = 13590476832;
			["BiteVictim"] = 13590478623;
			["StylishSweeps"] = 13590480209;
			["Taunt"] = 13590482006;
			["Dodge"] = 13590483805;
			["GrabAttempt"] = 13590487014;
			["AsphaltSuccess"]= 13590493446;
			["AsphaltVictim"] = 13590495310;
			["DropKick"] = 13590496921;
			["GunShots"] = 13590499405;
			["ForwardDash"] = 13590501378;
			["BackwardDash"] = 13590503118;
			["LeftDash"] = 13590507393;
			["RightDash"] = 13590509576;
			["PoseTransition"] = 13590511704;
			["Pose"] = 13590553981;
		};
		Idle = {
			["Idle"] = 13590557475;
		};
	};
	["WhiteSnake"] = {
		Action = {
			["StandIdle"] = 13590686143;
			["StrongPunch"] = 13590688190;
			["StandOffStrongPunch"] = 13590689654;
			["STANDOFFGunFire"] = 13590691478;
			["StandJump"] = 13590693222;
			["Spit"] = 13590694916;
			["Sleep"] = 13590696442;
			["LMB-1"] = 13590698168;
			["LMB-2"] = 13590699731;
			["LMB-3"] = 13590701530;
			["LMB-4"] = 13590703390;
			["StandOffBarrage"] = 13590708019;
			["StandOff-LMB-1"] = 13590710601;
			["StandOff-LMB-2"] = 13590712809;
			["StandOff-LMB-3"] = 13590714611;
			["StandOff-LMB-4"] = 13590716039;
			["SimplePunch"] = 13590717579;
			["SelfDonut"] = 13590718916;
			["RightPunch"] = 13590720111;
			["RemoteWalk"] = 13590721429;
			["Uppercut"] = 13590726859;
			["RemoteModeSleep"] = 13590728533;
			["RemoteIdle"] = 13590730061;
			["PunchBarrage"] = 13590735077;
			["Pose"] = 13590736380;
			["LegChop"] = 13590737770;
			["LeftPunch"] = 13590738903;
			["GunFire"] = 13590740439;
			["Donut"] = 13590741673;
			["DiscComboStarter"] = 13590743677;
			["Disc"] = 13590745876;
			["Count"] = 13590747578;
			["CommandDisc"] = 13590749625;
			["AttackPose"] = 13590750889;
			["ArmChop"] = 13590751902;
			["EyeJab"] = 13590752968;
			["PoseTransition"] = 13590756046;
			["PoseIdle"] = 13590757543;
		};
		Idle = {
			["Idle"] = 13590759225;
		};
	};
	["Q_WS"] = {
		Action = {
			["StandIdle"] = 13590767059;
			["LMB-1"] = 13590768919;
			["LMB-2"] = 13590770938;
			["LMB-3"] = 13590773415;
			["LMB-4"] = 13590774489;
			["PilotUserTransition"] = 13590776705;
			["PilotUserIdle"] = 13590778210;
			["PoseTransition"] = 13590779589;
			["PoseIdle"] = 13590781324;
			["Crucifixion"] = 13590782925;
			["Barrage"] = 13590784136;
			["AcidStrikes"] = 13590785764;
			["RemoteBarrageUser"] = 13590792888;
			["RemoteBarrage"] = 13590796080;
			["TargetSleep"] = 13590797538;
			["TargetSleeping"] = 13590798937;
			["IllusoryBlow"] = 13590800242;
			["DomineQuoVadis"] = 13590801821;
			["DomineQuoVadisPilot"] = 13590803559;
			["DirectOrder"] = 13590805279;
			["Hand Disc"] = 13590806862;
		};
		Idle = {
			["Idle"] = 13590808330;
		};
	};
	["C-Moon"] = {
		Action = {
			["PoseTransition"] = 13627635663;
			["PoseIdle"] = 13627637724;
			["StandIdle"] = 13627639965;
			["Gunshots"] = 13627641512;
			["Pose"] = 13627642790;
			["LMB-1"] = 13627644107;
			["LMB-2"] = 13627645266;
			["LMB-3"] = 13627646495;
			["LMB-4"] = 13627647992;
			["Barrage"] = 13627649640;
			["Counter"] = 13627651142;
			["OFFBarrage"] = 13627941385;
			["Chop"] = 13627942679;
			["Slam"] = 13627965866;
			["DiveKick"] = 13627953305;
			["StrongPunch"] = 13627968432;
			["CounterPunch"] = 13627970100;
			["Uppercut"] = 13627971833;
			["UppercutStandOff"] = 13627973422;
			["Jab"] = 13627974828;
			["Victim"] = 13627976492;
			["Victim2"] = 13627977759;
			["GroundSlam"] = 13627979189;
			["GroundSlam2"] = 13627980720;
			["AAAAA"] = 13627982033;
		};
		Idle = {
			["Idle"] = 13627983561;
		};
	};
	["T_CM"] = {
		Action = {
			["StandIdle"] = 13627988228;
			["LMB-1"] = 13627989980;
			["LMB-2"] = 13627991117;
			["LMB-3"] = 13627992705;
			["LMB-4"] = 13627994222;
			["PilotUserTransition"] = 13628004408;
			["PilotUserIdle"] = 13628005938;
			["PoseTransition"] = 13628007379;
			["PoseIdle"] = 13628008977;
			["Crucifixion"] = 13628010374;
			["Barrage"] = 13628011651;
			["AcidStrikes"] = 13628012700;
			["RemoteBarrageUser"] = 13628015147;
			["RemoteBarrage"] = 13628016528;
			["TargetSleep"] = 13628018052;
			["TargetSleeping"] = 13628019147;
			["IllusoryBlow"] = 13628020379;
			["DomineQuoVadis"] = 13628021675;
			["DomineQuoVadisPilot"] = 13628023187;

			["Gravitational Elimination"] = 13628024919;
			["Gravitational EliminationHit"] = 13628026391;
			["Gravitational Camera Attempt"] = 13628027599;
			["Gravitational Camera"] = 13628029403;
			["Gravitational Victim"] = 13628031003;
		};
	};
	["Made In Heaven"] = {
		Action = {
			["Pose"] = 13628050494;
			["PoseIdle"] = 13628051769;
			["EStandOff"] = 13628053047;
			["QuickJab"] = 13628054653;
			["StandIdle"] = 13628056417;
			["LMB-1"] = 13628061192;
			["LMB-2"] = 13628062410;
			["LMB-3"] = 13628065465;
			["LMB-4"] = 13628066855;
			["MiHChop"] = 13628068209;
			["Conuter"] = 13628069732;
			["BackDashKnives"] = 13628071562;
			["DownKnives"] = 13628073242;
			["StandOff-LMB-1"] = 13628075634;
			["StandOff-LMB-2"] = 13628078729;
			["StandOff-LMB-3"] = 13628080523;
			["StandOff-LMB-4"] = 10893498324;
			["PunchBarrage"] = 13628086455;
			["BurstBarrage"] = 13628088027;
			["RightPunch"] = 13628089822;
			["Roll"] = 13628091904;
			["SF"] = 13628093032;
		};
		Movement = {
			["TimeAccel"] = 13628094558;
			["Run"] = 13628095805;
			["Walk"] = 13628097124;
		};
		Idle = {
			["Idle"] = 13628098541;
		};
	};
	["T_MIH"] = {
		Action = {
			["StandOff-LMB-1"] = 13628104745;
			["StandOff-LMB-2"] = 13628106273;
			["StandOff-LMB-3"] = 13628107392;
			["StandOff-LMB-4"] = 13628109023;
			["StandIdle"] = 13628110711;
			["Behind You!"] = 13628114451;
		};
		Movement = {
			["TimeAccel"] = 13628116528;
			["Run"] = 13628117914;
			["Walk"] = 13628119050;
		};
		Idle = {
			["Idle"] = 13628120456;
		};
	};
	["DOG"] = {
		Action = {
			["Summon"] = 13628122562;
			["StrongPunch"] = 13628124146;
		};
	};
	["Shinigami"] = {
		Action = {
			["AttackPose"] = 13628132214;
			["BlashFire"] = 13628135830;
			["HealBarrage"] = 13628137200;
			["Chop"] = 13628139031;
			["HealOverwrite"] = 13628140236;
			["Kick"] = 13628141441;
			["StrongerStrongPunch"] = 13628143251;
			["Idle"] = 13628144739;
			["LeftPunch"] = 13628146055;
			["Overwrite"] = 13628147297;
			["Pose"] = 13628148599;
			["PunchBarrage"] = 13628150301;
			["RightPunch"] = 13628151829;
			["Roll"] = 13628152989;
			["SF"] = 13628154087;
			["Slam"] = 13628155353;
			["StandJump"] = 13628161893;
			["StrongPunch"] = 13628163188;
			["Timestop"] = 13628164330;
			["AttackPoseLooped"] = 13628165591;
			["AttackPoseTransition"] = 13628166761;
		};
	};
	["CakePlatinum"] = {
		Action = {
			["AttackPose"] = 13628171147;
			["BlashFire"] = 13628172797;
			["SelfHeal"] = 13628174254;
			["Idle"] = 13628175686;
			["LeftPunch"] = 13628177064;
			["Overwrite"] = 13628178407;
			["Pose"] = 13628179651;
			["PunchBarrage"] = 13628181024;
			["RightPunch"] = 13628182379;
			["Roll"] = 13628183754;
			["SF"] = 13628184841;
			["Slam"] = 13628186307;
			["StandJump"] = 13628187451;
			["StrongPunch"] = 13628188679;
			["Timestop"] = 13628190138;
			["AttackPoseLooped"] = 13628191616;
			["AttackPoseTransition"] = 13628192969;
		};
	};
	["AngelicPlatinum"] = {
		Action = {
			["AttackPose"] = 13628206345;
			["BlashFire"] = 13628207821;
			["Drill"] = 13628208988;
			["SelfHeal"] = 13628211135;
			["Idle"] = 13628212810;
			["LeftPunch"] = 13628214159;
			["Overwrite"] = 13628215663;
			["Pose"] = 13628216794;
			["PunchBarrage"] = 13628217861;
			["RightPunch"] = 13628219654;
			["Roll"] = 13628221161;
			["SF"] = 13628222614;
			["Slam"] = 13628223680;
			["StandJump"] = 13628225694;
			["StrongPunch"] = 13628227556;
			["Timestop"] = 13628228811;
			["animfly"] = 13628230246;
			["AttackPoseLooped"] = 13628231571;
			["AttackPoseTransition"] = 13628232885;
		};
	};
	["Gojo"] = {
		Action = {
			["TeleportationKick"] = 13628237755;
			["Air Palm"] = 13628238857;
			["TeleportLand"] = 13628240437;
			["KickStarter"] = 13628241846;
			["Hollow Purple"] = 13628243059;
			["AttackPose"] = 13628244180;
			["BlueAmplificationThrow"] = 13628245232;
			["Snap"]  = 13628246464;
			["DomainExpansion"] = 13628248531;
			["Pose"] = 13628249904;
			["LMB-1"] = 13628251410;
			["LMB-2"] = 13628253945;
			["LMB-3"] = 13628255353;
			["LMB-4"] = 13628256493;
			["AOE"] = 13628258306;
			["ReversalRed"] = 13628259976;--6495632757;
			["GrabAttempt"] = 13628261640;
			["Beatdown"] = 13628263210;
			["BeatdownVictim"] = 13628271874;
			["GrabFail"] = 13628273574;
			["DEActivate"] = 13628275050;
			["DECutscene"] = 13628276869;
			["DECutsceneVictim"] = 13628278351;
			["DECutsceneCamera"] = 13628280111;
		};
		Idle = {
			["Idle"] = 13628293696;
		};
	};
	["King Crimson"] = {
		Action = {
			["TakeOffShirt"] = 13628295926;
			["StandIdle"] = 13628297597;
			["TimeErase"] = 13628298817;
			["Barrage"] = 13628300236;
			["EyeJab"] = 13628301701;
			["LMB-1"] = 13628303294;
			["LMB-2"] = 13628305032;
			["LMB-3"] = 13628306497;
			["LMB-4"] = 13628307860;
			["ScalpelThrow"] = 13628309173;
			["Chop"] = 13628310832;
			["Donut"] = 13628312125;
			["Follow"] = 13628313438;
			["BurstBarrage"] = 13628315018;
			["DoppioSlam"] = 13628317019;
			["Pose"] = 13628318042;
			["PoseTransition"] = 13628319370;
		};
		Movement = {
			["Walk"] = 13628320593;
		};
		Idle = {
			["Idle"] = 13628321884;
		};
	};
	["The World"] = {
		Action = {
			["Barrage"] = 13628325410;
			["Donut"] = 13628327738;
			["StandIdle"] = 13628338177;
			["TS"] = 13628340047;
			["GrabThrow"] = 13628341458;
			["ThrowGrab"] = 13628363629;
			["Checkmate"] = 13628365189;
			["GroundSlam"] = 13628366561;
			["SignSlam"] = 13628368798;
			["WRY"] = 13628370327;
			["Kick"] = 13628372301;
			["TeleportPose"] = 13628373676;
			["LMB-1"] = 13628375037;
			["LMB-2"] = 13628376585;
			["LMB-3"] = 13628377819;
			["LMB-4"] = 13628379829;
			["AttackPose"] = 13628381387;
			["Tandem"] = 13628382634;
			["DashAttackPose"] = 13628383790;
			["Jab"] = 13628384945;
			["RoundhouseKick"] = 13628386966;
			["SlamPunch"] = 13628388355;
			["BloodSuckAttempt"] = 13628389857;
			["AerialChop"] = 13628391835;
			["JosephKnife"] = 13628393213;
			["Lunge"] = 13628394488;
			["RoadRoller"] = 13628396039;
			["RoadRollerAnim"] = 13628398073;
			["PoseTransitionStand"] = 13628399331;
			["PoseTransitionUser"] = 13628400813;
			["PoseIdle"] = 13628402278;
		};
		Idle = {
			["Idle"] = 13628403752;
		};
	};
	["Killer Queen"] = {
		Action = {
			["StandIdle"] = 13628412985;	
			["Barrage"] = 13628414365;
			["HeavyPunch"] = 13628415762;
			["Primary Bomb"] = 13628417692;
			["Yen Throw"] = 13628421317;
			["Detonate"] = 13628422900;
			["LMB"] = 13628424181;
			["LMB-1"] = 13628425825;
			["LMB-2"] = 13628427348;
			["LMB-3"] = 13628428869;
			["LMB-4"] = 13628430067;
			["Bubble Bomb"] = 13628432176;
			["Punch Bomb"] = 13628433605;
			["Uppercut"] = 13628435120;
			["Face Grab"] = 13628436434;
			["Third Bomb"] = 13628438257;
			["BTD Pose"] = 13628440139;
			["BTD Activate"] = 13628441860;
			["BTD Loop"] = 13628443066;
			["VPIdle"] = 13628444228;
			["VPDetonate"] = 13628445452;
			["Secondary Bomb"] = 13628446967;
			["Pose"] = 13628448465;
			["PoseTransition"] = 13628449817;
		};
		Idle = {
			["Idle"] = 13628451597;
		};
	};
	["Senator Armstrong"] = {
		Action = {

		};
		Movement = {

		};
		Idle = {

		};
	};
	["Phantom Queen"] = {
		Action = {
			["StandIdle"] = 13628412985;	
			["Barrage"] = 13628414365;
			["HeavyPunch"] = 13628415762;
			["Primary Bomb"] = 13628417692;
			["Yen Throw"] = 13628421317;
			["Detonate"] = 13628422900;
			["LMB"] = 13628424181;
			["LMB-1"] = 13628425825;
			["LMB-2"] = 13628427348;
			["LMB-3"] = 13628428869;
			["LMB-4"] = 13628430067;
			["Bubble Bomb"] = 13628432176;
			["Punch Bomb"] = 13628433605;
			["Uppercut"] = 13628435120;
			["Face Grab"] = 13628436434;
			["Third Bomb"] = 13628438257;
			["BTD Pose"] = 13628440139;
			["BTD Activate"] = 13628441860;
			["BTD Loop"] = 13628443066;
			["VPIdle"] = 13628444228;
			["VPDetonate"] = 13628445452;
			["Secondary Bomb"] = 13628446967;
			["Pose"] = 13628459228;
			["PoseTransition"] = 13628460649;
		};
	};
	["Creeper Queen"] = {
		Action = {
			["StandIdle"] = 13628412985;	
			["Barrage"] = 13628414365;
			["HeavyPunch"] = 13628415762;
			["Primary Bomb"] = 13628417692;
			["Yen Throw"] = 13628421317;
			["Detonate"] = 13628422900;
			["LMB"] = 13628424181;
			["LMB-1"] = 13628425825;
			["LMB-2"] = 13628427348;
			["LMB-3"] = 13628428869;
			["LMB-4"] = 13628430067;
			["Bubble Bomb"] = 13628432176;
			["Punch Bomb"] = 13628433605;
			["Uppercut"] = 13628435120;
			["Face Grab"] = 13628436434;
			["Third Bomb"] = 13628438257;
			["BTD Pose"] = 13628440139;
			["BTD Activate"] = 13628441860;
			["BTD Loop"] = 13628443066;
			["VPIdle"] = 13628444228;
			["VPDetonate"] = 13628445452;
			["Secondary Bomb"] = 13628446967;
			["Pose"] = 13628462363;
			["PoseTransition"] = 13628463837;
		};
	};
	["Uber Oni"] = {
		Action = {
			["Rampage"] = 13628466605;
			["DemonStep"] = 13628467942;
			["ConsumingFlames"] = 13628470262;
			["Misogi"] = 13628566698;
			["Flip1"] = 13628568402;
			["Flip2"] = 13628569545;
			["RisingDragon"] = 13628571234;
			["LegBreaker"] = 13628574813;
		};
	};
	["Star Platinum"] = {
		Action = {
			["Barrage"] = 13628577491;
			["HeavyPunch"] = 13628578769;
			["StandIdle"] = 13628580751;
			["StarFingerDrawIn"] = 13628582008;
			["AttackPoseTransition"] = 13628583204;
			["AttackPoseLooped"] = 13628586157; 
			["StarFingerCharge"] = 13628587657;
			["StarFingerFire"] = 13628589132;
			["Drink"] = 13628665647;
			["GunFire"] = 13628667172;
			["GroundSlam"] = 13628673427;
			["TandemGrab"] = 13628674679;
			["TandemBarrage"] = 13628675953;
			["GunFireWithoutArm"] = 13628677923;
			["CounterPose"] = 13628707995;
			["CounterPoseTransition"] = 13628708976;
			["StarSuck"] = 13628710263;
			["LMB-1"] = 13628711688;
			["LMB-2"] = 13628713110;
			["LMB-3"] = 13628714439;
			["LMB-4"] = 13628716140;
			["StarSucking"] = 13628717588;
			["Pose"] = 13628719273;
			["PoseTransition"] = 13628720598;
			["MetalRod"] = 13628721882;
			["KickBarrage"] = 13628723581;
			["Timestop"] = 13628725157;
			["GrabAttempt"] = 13628726675;
			["GrabSuccess"] = 13628728124;
			["GrabVictim"] = 13628729499;
		};
		Movement = {
			["Walk"] = 13628730908;
			["Run"] = 13628732187;

			["SummonedWalk"] = 13628733916;
			["SummonedRun"] = 13628736280;
		};
		Idle = {
			["Idle"] = 13628738202;
		};
	};
	["Star Platinum: The World"] = {
		Action = {
			["Barrage"] = 13628806541;
			["AttackPoseTransition"] = 13628832557;
			["AttackPoseLooped"] = 13628834359;
			["Timestop"] = 13628845124;
			["TimestopStandOn"] = 13628846972;
			["StandIdle"] = 13628858494;
			["HeavyPunch"] = 13628911076;
			["GroundSlam"] = 13628912367;
			["KickBarrage"] = 13628913536;
			["LMB-1"] = 13628915197;
			["LMB-2"] = 13628916437;
			["LMB-3"] = 13628917801;
			["LMB-4"] = 13628919543;
			["Pose"] = 13628921246;
			["PoseTransition"] = 13628954521;
			["Bearing"] = 13628955757;
			["JabDash"] = 13628957699;
			["Jab"] = 13628959451;
			["Crush"] = 13628960610;
			["Resolve"] = 13629001499;
		};
		Movement = {
			["Walk"] = 13629003778;
			["Run"] = 13629005639;

			["SummonedWalk"] = 13629007226;
			["SummonedRun"] = 13629009695;
		};
		Idle = {
			["Idle"] = 13629011258;
		};
	},
	["Inker"] = {
		Action = {
			["AttackPose"] = 13629031050;
			["AttackPoseTransition"] = 13629032338;
			["AttackPoseLooped"] = 13629033249;
			["Barrage"] = 13629035218;
			["HeavyPunch"] = 13629037118;
			["StandIdle"] = 13629042597;
			["LMB-1"] = 13629044036;
			["LMB-2"] = 13629045665;
			["LMB-3"] = 13629047259;
			["LMB-4"] = 13629048870;
			["Pose"] = 13629050419;
			["glide"] = 13629052644;
			["Timestop"] = 13629053970;
			["PoseTransition"] = 13629055497;
			["RMove"] = 13629056798;
			["Ultimate"] = 13629058242;
			["S-Summon"] = 13629059696;
			["S-Idle"] = 13629060949;
			["S-Move"] = 13629062593;
			["S-Roar"] = 13629064139;
			["S-Slash"] = 13629065236;
			["S-Desummon"] = 13629067440;
		};
	};
	["δ:for the DELTA"] = {
		Action = {
			["FreezePlayer"] = 13629078305;
			["OnKnees"] = 13629079837;
			["Shockwave"] = 13629081205;
			["StandIdle"] = 13629082753;
			["StandSummon"] = 13629083761;
			["TurnBackTime"] = 13629084893;
			["PoseStart"] = 13629086280;
			["PoseEnd"] = 13629087819;
			["PoseLoop"] = 13629089047;
		};
	};
	["DTWHV"] = {
		Action = {
			["StandIdle"] = 13629114028;
			["AttackPose"] = 13629114961;
			["Barrage"] = 13629118731;
			["Cutscene"] = 13629120358;
			["Gasoline"] = 13629121637;
			["Kick"] = 13629123187;
			["KnifeAnim"] = 13629124506;
			["UrgentTS"] = 13629125645;
			["Pose1"] = 13629127231;
			["GunFire"] = 13629128646;
			["Pose2"] = 13629130302;
			["PunchBarrage"] = 13629131564;
			["StandJump"] = 13629133191;
			["HeavyPunch"] = 13629134923;
			["Timestop"] = 13629136118;
			["Sit"] = 13629137650;
			["WireThrow"] = 13629139106;
			["HeavyMuda"] = 13629140421;
			["LMB-1"] = 13629141618;
			["LMB-2"] = 13629143289;
			["LMB-3"] = 13629144707;
			["LMB-4"] = 13629146354;
		};
	},
	["TWHV"] = {
		Action = {
			["StandIdle"] = 13629114028;
			["AttackPose"] = 13629114961;
			["Barrage"] = 13629118731;
			["Cutscene"] = 13629120358;
			["Gasoline"] = 13629121637;
			["Kick"] = 13629123187;
			["KnifeAnim"] = 13629124506;
			["UrgentTS"] = 13629125645;
			["Pose1"] = 13629127231;
			["GunFire"] = 13629128646;
			["Pose2"] = 13629130302;
			["PunchBarrage"] = 13629131564;
			["StandJump"] = 13629133191;
			["HeavyPunch"] = 13629134923;
			["Timestop"] = 13629136118;
			["Sit"] = 13629137650;
			["WireThrow"] = 13629139106;
			["HeavyMuda"] = 13629140421;
			["LMB-1"] = 13629141618;
			["LMB-2"] = 13629143289;
			["LMB-3"] = 13629144707;
			["LMB-4"] = 13629146354;
		};
		Idle = {
			["Idle"] = 13629150178;
		};
	},
	["Crystallized"] = {
		Action = {
			["Ability"] = 13629156773;
			["Barrage"] = 13629158365;
			["Block"] = 13629159755;
			["Dash"] = 13629161221;
			["StandIdle"] = 13629162954;
			["Summon"] = 13629164359;
			["Pose"] = 13629166235;
			["Slam"] = 13629167711;
			["StrongPunch"] = 13629169355;
			["Punch1"] = 13629171089;
			["Punch2"] = 13629172351;
			["RaiseCrystals"] = 13629173557;
			["CrystalDash"] = 13629174916;
			["StandJump"] = 13629176023;
		};
		Movement = {
			["Walk"] = 13629177606;
			["Run"] = 13629179006;
		};
	};
	["Nuclear Star"] = {
		Action = {
			["Ability"] = 13629156773;
			["Barrage"] = 13629158365;
			["Block"] = 13629159755;
			["Dash"] = 13629161221;
			["StandIdle"] = 13629162954;
			["Summon"] = 13629164359;
			["Pose"] = 13629166235;
			["Slam"] = 13629167711;
			["StrongPunch"] = 13629169355;
			["Punch1"] = 13629171089;
			["Punch2"] = 13629172351;
			["RaiseCrystals"] = 13629173557;
			["CrystalDash"] = 13629174916;
			["StandJump"] = 13629176023;
		};
		Movement = {
			["Walk"] = 13629177606;
			["Run"] = 13629179006;
		};
	};
	["Sans"] = {
		Action = {
			["Switch"] = 13629207954;
			["Bone Guard"] = 13629233283;
			["LMB-1"] = 13629235328;
			["LMB-2"] = 13629236594;
			["LMB-3"] = 13629238694;
			["LMB-4"] = 13629240144;
			["Teleport"] = 13629241909;
			["Bait"] = 13629243342;
			["BoneLaunch"] = 13629244900;
			["PoseTransition"] = 13629246411;
			["PoseIdle"] = 13629247474;
		};
		Movement = {
			["Walk"] = 13629261070;
			["Run"] = 13629274706;
		};
		Idle = {
			["Idle"] = 13629282575;
		};
	};
	["SINKING"] = {
		Action = {
			["StandIdle"] = 13629284138;
		};
	};
	["ShadowDio"] = {
		Action = {
			["Jab"] = 13629289248;
			["Block"] = 13629290417;
			["Crawl Jab"] = 13629291763;
			["Air High Kick"] = 13629292929;
			["High Kick"] = 13629294216;
			["Swipe"] = 13629313449;
			["Crawl Swipe"] = 13629321626;
			["Knife Barrage"] = 13629322923;
			["Stand Uppercut"] = 13629324697;
			["Timestop"] = 13629325961;
			["Uppercut"] = 13629328502;
			["Stand Punishment"] = 13629330260;
			["User Punishment"] = 13629332003;
			["Punishment Taunt"] = 13629333577;
			["Counter"] = 13629334707;
			["Crouch"] = 13629335850;
			["Space Ripper"] = 13629337096;
			["Blood Suck Attempt"] = 13629338780;
			["PoseTransition"] = 13629340014;
			["PoseIdle"] = 13629341128;
			["StandIdle"] = 13629350655;
			["Summon"] = 13629352308;
		};
		Movement = {
			["Walk"] = 13629354019;
			["Run"] = 13629355175;
			["CrouchWalk"] = 13629356433;
			["CrouchRun"] = 13629357977;
		};
		Idle = {
			["Idle"] = 13629359507;
		};
	};
	["Reaper"] = {
		Action = {
			["PoseTransition"] = 13629939846;
			["PoseIdle"] = 13629941365;
			["Dimension Rift"] = 13629944798;
			["Wither"] = 13629946727;
			["Point"] = 13629948454;
			["Soul Consumption"] = 13629950930;
			["Block"] = 13629952701;
			["Frenzy"] = 13629953908;
			["ForwardDash"] = 13629955995;
		};
		Movement = {
			["Run"] = 13629957525;
			["Walk"] = 13629958854;
		};
		Idle = {
			["Idle"] = 13629977298;
		};
	};
	["Gold Experience"] = {
		-- SHARED MOVES --
		Action = {
			["LMB-1"] = 13629981361;
			["LMB-2"] = 13629982848;
			["LMB-3"] = 13629984390;
			["LMB-4"] = 13629985665;
			["Barrage"] = 13629987078;
			["HeavyPunch"] = 13629988429;
			["HeavyKick"] = 13629989991;
			["StandIdle"] = 13630069465;
			-- GE MOVES --
			["RootsStance"] = 13630071425;
			["RootsRelease"] = 13630073452;
			-- --
			["CreateFrog"] = 13630075828;
			-- --
			["ConsAttacksUse"] = 13630077452;
			["ConsAttackCombo"] = 13630078928;
			["ConsAttackVictim"] = 13630080344;
			-- --
			["RestrainUse"] = 13630081728;
			["RestrainHit"] = 13630083081;
			["RestrainVictim"] = 13630084598;
			-- --
			["Vines"] = 13630086073;
			-- --
			["TreeSlam"] = 13630087269;
			-- --
			["Berserk Senses Startup"] = 13630088936;
			["Berserk Senses Hit"] = 13630090606;
			["Berserk Senses Camera"] = 13630091878;
			["Berserk Senses Victim"] = 13630093135;
			-- --
			["HealOther"] = 13630094683;
			["SelfHeal"] = 13630096326;
			-- --
			["PoseIdle"] = 13630098093;
			["PoseTransition"] = 13630099226;
		};
		Movement = {
			["Sit"] = 13630101114;
		};
		Idle = {
			["Idle"] = 13630102528;
		};
	};
	--[[["Golden Experience Requiem"] = {
		-- SHARED MOVES --
		Action = {
			["LMB-1"] = 10893997979;
			["LMB-2"] = 10893998833;
			["LMB-3"] = 10894002236;
			["LMB-4"] = 10894002817;
			["Barrage"] = 10894003339;
			["HeavyPunch"] = 10894003970;
			["HeavyKick"] = 10894004745;
			["StandIdle"] = 10894005307;
			-- GE MOVES --
			["RootsStance"] = 10894005753;
			["RootsRelease"] = 10894006355;
			-- --
			["CreateFrog"] = 10894006914;
			-- --
			["ConsAttacksUse"] = 10894007628;
			["ConsAttackCombo"] = 10894008416;
			["ConsAttackVictim"] = 10894009284;
			-- --
			["RestrainUse"] = 10894009983;
			["RestrainHit"] = 10894010842;
			["RestrainVictim"] = 10894011585;
			-- --
			["Vines"] = 10894012827;
			-- --
			["TreeSlam"] = 10894014185;
			-- --
			["Berserk Senses Startup"] = 10894015250;
			["Berserk Senses Hit"] = 10894016349;
			["Berserk Senses Camera"] = 10894017366;
			["Berserk Senses Victim"] = 10894018049;
			-- --
			["HealOther"] = 10894020132;
			["SelfHeal"] = 10894023112;
			-- --
			["PoseIdle"] = 10894025094;
			["PoseTransition"] = 10894028685;
		};
		Movement = {
			["Sit"] = 10894031721;
		};
		Idle = {
			["Idle"] = 10894032432;
		};
	};]]
	["Broly"] = {
		Action = {
			["PoseTransition"] = 13631053712;
			["Pose"] = 13631061080;
			["HeavyBlowAttempt"] = 13631062302;
			["HeavyBlowLoop"] = 13631063283;
			["ChargeLoop"] = 13631064462;
			["ChargeEnd"] = 13631065800;
			["EraserAttempt"] = 13631067252;
			["EraserBlow"] = 13631068268;
			["OmegastormWindup"] = 13631069442;
			["OmegastormLoop"] = 13631070708;
			["OmegastormEnd"] = 13631071935;
			["PulverizerAttempt"] = 13631073449;
			["Pulverizer"] = 13631074839;
			["GiganticBreath"] = 13631086522;
			["EraserBall"] = 13631087772;
			["PlanetCrusher"] = 13631088965;
		};
		Movement = {
			["Run"] = 13631090338;
			["Walk"] = 13631091765;
		};
		Idle = {
			["Idle"] = 13631093041;
		};
	};
	["Goku (Rewrite)"] = {
		Action = {
			["Kiai"] = 13631116057;
			["Kamehameha Start"] = 13631125113;
			["Kamehameha Loop"] = 13631126403;
			["Kamehameha Fire"] = 13631127430;
			["Kamehameha Max"] = 13631128703;
			["Kamehameha"] = 13631129716;
			["Transform"] = 13631131088;
			["Jajanken"] = 13631132106;
			["Instant Transmission"] = 13631133271;
			["Explosive Wave"] = 13631134738;
			["Senzu Bean"] = 13631135985;
			["Destructo Disc"] = 13631138669;
			["Solar Flare"] = 13631139861;
			["Dragon Throw Attempt"] = 13631140811;
			["Dragon Throw"] = 13631142080;
			["Meteor Smash Attempt"] = 13631143423;
			["Meteor Smash"] = 13631144892;
			["Gut Punch"] = 13631146514;
			["Transcendence"] = 13631148098;
			["Meteor Combination Attempt"] = 13631149459;
			["Meteor Combination"] = 13631150632;
			["Spirit Bomb Start"] = 13631151676;
			["Spirit Bomb Loop"] = 13631198807;
			["Spirit Bomb"] = 13631199935;
			["Godbind"] = 13631201871;
			["Grudgeless Strike"] = 13631203360;
			["Super God Fist"] = 13631204355;
			["Super God Shock Flash"] = 13631205283;
			["Celestial Whirlwind Pose"] = 13631206240;
			["Celestial Whirlwind"] = 13631207628;
			["Instinct Pose"] = 13631208691;
			["Instinct"] = 13631209671;
			["Autonomous Fist"] = 13631212170;
			["Unpolished Instinct"] = 13631213280;
		};
	};
	["zaihop"] = {
		Action = {
			["LMB-1"] = 13631215263;
			["LMB-2"] = 13631216731;
			["LMB-3"] = 13631217832;
			["LMB-4"] = 13631218933;
			-- --
			["Home Run"] = 13631229493;
			-- --
			["Ban Hammer"] = 13631230549;
			-- --
			["Shovel Slam"] = 13631231640;
			["Shovel Spin"] = 13631232476;
			["Shovel Gun"] = 13631233823;
			["Shovel Sinkhole"] = 13631235114;
			-- --
			["SS Startup"] = 13631236250;
			["SS Leap"] = 13631237425;
			["SS Spin Idle"] = 13631238424;
			["SS Finish"] = 13631239877;
			-- --
			["ForwardDash"] = 13631240828;
		};
		Movement = {
			["Run"] = 13631242054;
			["Walk"] = 13631242963;
		};
		Idle = {
			["Idle"] = 13631246921;
		};
	};
	["Candy Cutlass"] = {
		Action = {
			["LMB-1"] = 13631306043;
			["LMB-2"] = 13631318260;
			["LMB-3"] = 13631319096;
			["LMB-4"] = 13631320021;
			-- --
			["Sword Slashes"] = 13631321142;
			-- --
			["Second Degree Burn"] = 13631322434;
			-- --
			["Naughty List Attempt"] = 13631323656;
			["Naughty List Hit"] = 13631324744;
			["Naughty List Victim"] = 13631325835;
			["Naughty List Victim Kick"] = 13631327436;
			-- --
			["Ice Stampede"] = 13631327436;
			-- --
			["Christmas Spirit"] = 13631330800;
			-- --
			["Candy Spit"] = 13631332143;
			-- --
			["Insulin Spike Jab"] = 13631333304;
			["Insulin Spike Hit"] = 13631334283;
			["Insulin Spike Victim"] = 13631336524;
			["Insulin Spike Victim Knockback"] = 13631337928;
			-- --
			["PoseTransition"] = 13631339136;
			["PoseIdle"] = 13631340369;
		};
		
		
		Movement = {
			["Run"] = 13631341555;
			["Walk"] = 13631342904;
		};
		Idle = {
			["Idle"] = 13631343920;
		};
	};
	["Mero Mero"] = {
		Action = {
			["Eat Fruit"] = 13631350495;
			-- --
			["LMB-1"] = 13631351659;
			["LMB-2"] = 13631352611;
			["LMB-3"] = 13631353753;
			["LMB-4"] = 13631354485;
			-- --
			["Hardening Sin Start"] = 13631355639;
			["Hardening Sin Loop"] = 13631356533;
			-- --
			["Petrification Aroma"] = 13631358796;
			-- --
			["Grand Petrification Aroma"] = 13631360665;
			-- --
			["Pistol Kiss Aim"] = 13631361843;
			["Pistol Kiss Shoot"] = 13631362961;
			-- --
			["Heartbreaker Use"] = 13631364053;
			["Heartbreaker Hit"] = 13631365481;
			["Heartbreaker Victim"] = 13631366565;
			["Heartbreaker Victim KB"] = 13631367746;
			-- --
			["Easy Lover"] = 13631368901;
			-- --
			["Machine Gun Kiss"] = 13631374930;
		};
		Idle = {
			["Idle"] = 13631375896;
		};
	};
	["Weather Report"] = {
		Action = {
			["StandIdle"] = 13631384840;
			-- --
			["LMB-1"] = 13631385630;
			["LMB-2"] = 13631387191;
			["LMB-3"] = 13631388152;
			["LMB-4"] = 13631389156;
			-- --
			["Shock Barrage"] = 13631390223;
			["Shock Barrage Finisher"] = 13631391084;
			-- --
			["Combustive Heatwave"] = 13631391953;
			-- --
			["Lightning Strike Startup"] = 13631393805;
			["Lightning Strike Hit"] = 13631395103;
			["Lightning Strike Victim"] = 13631396152;
			["Lightning Strike Camera"] = 13631397516;
			-- --
			["Devils Rainbow"] = 13631398494;
			-- --
			["Jet Airplane"] = 13631399335;
			-- --
			["Cloud Suit"] = 13631400092;
			-- --
			["Heavy Weather"] = 13631401047;

		};
		Idle = {
			["Idle"] = 13631402272;
		};
	};
	["Brickbattle"] = {
		Action = {
			["Sample"] = 1;
			-- --
			["Hammer Slam"] = 13631410282;
			["Fire Rocket"] = 13631411456;
			["Place Bomb"] = 13631412571;
			["Build Wall"] = 13631413680;
			["Item Pull"] = 13631414766;
			["Equip Paint"] = 13631416068;
			["Fire Paint"] = 13631417068;
			["Slingshot Fling"] = 13631417914;
			["Throw Superball"] = 13631418892;
			["Monster Mash"] = 13631420155;
			-- --
			["LMB-1"] = 13631421404;
			["LMB-2"] = 13631422704;
			["LMB-3"] = 13631423711;
			["LMB-4"] = 13631424879;
		};
		Movement = {
			["Run"] = 13631425998;
			["Walk"] = 13631427689;
			["Jump"] = 13631429039;
			["Fall"] = 13631430016;
		};
		Idle = {
			["Idle"] = 13631431141;
		};
	};
	["Banisher"] = {
		Action = {
			["Shoot"] = 13631441108; --TODO
			["PoseIdle"] = 13631442201;
		};
		Idle = {
			["Idle"] = 13631443589;
		};
		Movement = {
			["Walk"] = 13631444764;
			["Run"] = 13631445722;

			["SummonedWalk"] = 13631446669
		}
	};
	["Stone Free"] = {
		Action = {
			["StandIdle"] = 13631464973;
			["Ora Kicks"] = 13631465890;

			["Spider Tack"] = 13631466730;
			["Pitcher Fly Throw"] = 13631467984;

			["Pitcher Fly Camera"] = 13631469320;
			["Pitcher Fly Hit"] = 13631470502;
			["Pitcher Fly Victim"] = 13631471710;

			["Cuff Bash"] = 13631473173;

			["Chin Crusher"] = 13631474300;

			["Meteor Strike"] = 13631475954;
			["Meteor Strike 2"] = 13631477183;

		};
		Idle = {
			["Idle"] = 13631478587;
		};
		Movement = {
			["Run"] = 13631480124;
			["Walk"] = 13631487463;
			["SummonedRun"] = 13631488306;
			["SummonedWalk"] = 13631489321;
		};
	};
}

local anims = module.anims
local function loadCode(module)
	local standCode = require(module)
	for i,v in pairs(standCode) do
		--print(i,v)
		anims[i] = v
	end
end

for i,v in ipairs(script:GetChildren()) do
	--	print(v)
	local suc, fail = pcall(loadCode, v)
	if not suc then warn(fail, v) end
end

module.anims["Urzan"] = module.anims["Reaper"]
module.anims["Thug"] = module.anims["Standless"]
--module.anims["zaihop"] = module.anims["Reaper"]
module.anims["Futuristic Queen"] = module.anims["Killer Queen"]
module.anims["KCR"] = module.anims["King Crimson"]
module.anims["Party Starter"] = module.anims["The World: Over Heaven"]
module.anims["Cypher"] = module.anims["The World: Over Heaven"]
module.anims["ShadowLegs"] = module.anims["ShadowDio"]
module.anims["StarPlatinumOVA"] = module.anims["Star Platinum"]
--module.anims["Made On Christmas Eve"] = module.anims["Made In Heaven"]
module.anims["Noob"] = module.anims["The World: Over Heaven"]
module.anims["DJNoob"] = module.anims["The World: Over Heaven"]
module.anims["HSTWR"] = module.anims["STWR"]
module.anims["DTWHV"] = module.anims["TWHV"]
module.anims["Boa H"] = module.anims["Mero Mero"]
module.anims["Dio"] = module.anims["The World"]
module.anims["Gold Experience (Requiem)"] = module.anims["Gold Experience"]
module.anims["Golden Experience Requiem"] = module.anims["Gold Experience"]

for i,v in pairs(module.anims) do
	--[[
	v["ForwardDash"] = 7033192923;
	v["BackwardDash"] = 7033193528;
	v["LeftDash"] = 7033192146;
	v["RightDash"] = 7033194203;
	--]] --OLD Anims ids just incase
	local dashes = {
		["ForwardDash"] = 10893571245;
		["BackwardDash"] = 10893573279;
		["LeftDash"] = 10893574264;
		["RightDash"] = 10893574867;
	}
	if not v.Movement then
		v.Movement = TableUtil.Copy(dashes)
	else
		v.Movement = TableUtil.Reconcile(v.Movement, dashes)
	end
	if v.Action then
		if not v.Action.Block then v.Action.Block = 10893575764 end
		if not v.Action.DeathAnim then v.Action.DeathAnim = 10893576215 end
	end
end


local adder = "rbxassetid://"
local AnimClone = Instance.new("Animation")
local function CreateAnims(AnimsTable)
	for stand, anims in pairs(AnimsTable) do
		for priority, anims2 in pairs(anims) do
			for name, id in pairs(anims2) do
				if type(id) == "table" or type(id) == "userdata" then continue end
				local anim = AnimClone:Clone()
				anim.Name = name
				anim.AnimationId = adder .. id
				AnimsTable[stand][priority][name] = anim
			end
		end
	end
end

--[[ 
function used to overwrite default stand anims with custom anims
for skins if necessary
--]]
local function modifyStats(stats, newStats)
	for priority, anims in pairs(newStats) do
		for name, id in pairs(anims) do
			stats[priority][name] = id
		end
	end
	return stats
end

local Converter = require(game.ReplicatedStorage.ReplicatedModules.Stands)
local Skins = require(game.ReplicatedStorage.ReplicatedModules.Skins)

-- give reskins custom anims if applicable
local isStudio = game:GetService("RunService"):IsStudio()
for stand, skins in pairs(Skins.Funcs.GetSkins()) do
	local DefaultAbility = Converter[tonumber(stand)]
	for id, name in pairs(skins) do
		if anims[name] and anims[name] ~= anims[DefaultAbility] then
			local stats = TableUtil.Copy(anims[DefaultAbility], true)
			anims[name] = TableUtil.Reconcile(anims[name], stats)
			if isStudio then
				--warn(name, "anims cloned and overwritten", DefaultAbility)
			end
		else
			anims[name] = anims[DefaultAbility]
			if isStudio then
				--warn(name, "anims not found, cloning default anims", DefaultAbility)
			end
		end
	end
end


function module.SearchAnim(AbilityName, Name)
	if not module.anims[AbilityName] then return end
	for priority, anims in pairs(module.anims[AbilityName]) do
		for name, anim in pairs(anims) do
			if name == Name then
				return anim, priority
			end
		end
	end
end

function module.GetAnims(Ability)
	if not module.anims[Ability] then return end
	local Anims = {}
	for priority, anims in pairs(module.anims[Ability]) do
		for name, anim in pairs(anims) do
			Anims[name] = {
				Animation = anim;
				Priority = priority;
			}
		end
	end
	return Anims
end

CreateAnims(module.anims)

local Anims = {}
local DashAnims = {
	"ForwardDash";
	"BackwardDash";
	"LeftDash";
	"RightDash";
}

module.loadAnims =  function(Ability, Humanoid)
	local Character = Humanoid.Parent
	Anims[Character] = {}
	Anims[Character][Ability] = {}
	if module.anims[Ability] and Humanoid:IsDescendantOf(workspace) then
		for priority, anims in pairs(module.anims[Ability]) do
			for name, anim in pairs(anims) do
				local animTrack = Humanoid:LoadAnimation(anim)
				animTrack.Priority = Enum.AnimationPriority[priority]
				Anims[Character][Ability][name] = animTrack
			end
		end
	else
		warn(Ability, "not found in anims table")
	end
end

module.playClient = function(Ability, AnimName, Priority, Speed, Humanoid, Server)
	if not Humanoid and Server then 
		if isStudio then
			warn("No Server Animation Humanoid found")
		end
		return 
	end
	local Character = Humanoid and (Humanoid.Parent or Humanoid:FindFirstAncestorOfClass("Model")) or game:GetService("Players").LocalPlayer.Character
	local anim
	local found = false
	if not Anims[Character] then
		Anims[Character] = {}
	end
	if not Anims[Character][Ability] then
		Anims[Character][Ability]= {}
	end
	if Anims[Character][Ability][AnimName] then
		anim = Anims[Character][Ability][AnimName]
		found = true
	end
	if not found then
		local hum = Humanoid or Character.Humanoid
		if not hum:IsDescendantOf(workspace) then warn("humanoid not descendant of workspace") return end
		local Animation, AnimPriority = module.SearchAnim(Ability, AnimName)
		if not Priority then
			Priority = AnimPriority
		end
		anim = hum:LoadAnimation(Animation)
		Anims[Character][Ability][AnimName] = anim
	end
	if Priority then
		anim.Priority = Priority
	end
	if table.find(DashAnims, AnimName) then
		Character:SetAttribute("Dashing", true)
		local Trove = Trove.new()
		Trove:Add(anim.Stopped:Connect(function()
			Character:SetAttribute("Dashing", false)
			Trove:Destroy()
		end))
	end
	anim:Play(nil, nil, Speed or 1)
	return anim
end

module.adjustAnimSpeed = function(Stand, Id, Speed, Humanoid)
	local char = Humanoid and Humanoid.Parent or game.Players.LocalPlayer.Character
	local anim
	local found = false
	if Anims[char] and Anims[char][Stand] and Anims[char][Stand][Id] then
		anim = Anims[char][Stand][Id]
		found = true
	end
	anim:AdjustSpeed(Speed or 1)
	return anim
end

module.stopClient = function(Stand, Id, Character, Server)
	local char = Character or game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
	--if not char then repeat wait() until game.Players.LocalPlayer.Character; char = game.Players.LocalPlayer.Character end
	local anim = Anims[char] and Anims[char][Stand] and Anims[char][Stand][Id]
	if anim then 
		if anim.IsPlaying then
			anim:Stop()
		end
	else
		if Server then
			for _, i in ipairs(char:FindFirstChildWhichIsA("Humanoid"):GetPlayingAnimationTracks()) do
				if i.Name == Stand .."-".. Id then
					i:Stop()
				end
			end
		else
			if isStudio then warn(debug.traceback("anim not found for stand"), Stand, Id) end
		end
	end
end


return module
