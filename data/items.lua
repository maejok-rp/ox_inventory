return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['cola'] = {
		label = 'eCola',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with cola'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Mastercard',
		stack = false,
		weight = 10,
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	['iphone'] = {
		label = 'iPhone',
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone"
	},

	['electronickit'] = {
		label = 'Electronic Kit',
		weight = 100,
		stack = true,
		close = true,
		description = "If you've always wanted to build a robot you can maybe start here. Maybe you'll be the new Elon Musk?"
	},

	['weed_brick'] = {
		label = 'Weed Brick',
		weight = 1000,
		stack = true,
		close = true,
		description = "1KG Weed Brick to sell to large customers."
	},

	['driver_license'] = {
		label = 'Drivers License',
		weight = 0,
		stack = false,
		close = false,
		description = "Permit to show you can drive a vehicle"
	},

	['goldbar'] = {
		label = 'Gold Bar',
		weight = 7000,
		stack = true,
		close = true,
		description = "Looks pretty expensive to me"
	},

	['weed_purple-haze'] = {
		label = 'Purple Haze 2g',
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Purple Haze"
	},

	['filled_evidence_bag'] = {
		label = 'Evidence Bag',
		weight = 200,
		stack = false,
		close = false,
		description = "A filled evidence bag to see who committed the crime >:("
	},

	['radioscanner'] = {
		label = 'Radio Scanner',
		weight = 1000,
		stack = true,
		close = true,
		description = "With this you can get some police alerts. Not 100% effective however"
	},

	['metalscrap'] = {
		label = 'Metal Scrap',
		weight = 100,
		stack = true,
		close = false,
		description = "You can probably make something nice out of this"
	},

	['firework3'] = {
		label = 'WipeOut',
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks"
	},

	['empty_evidence_bag'] = {
		label = 'Empty Evidence Bag',
		weight = 0,
		stack = true,
		close = false,
		description = "Used a lot to keep DNA from blood, bullet shells and more"
	},

	['joint'] = {
		label = 'Joint',
		weight = 0,
		stack = true,
		close = true,
		description = "Sidney would be very proud at you"
	},

	['firework2'] = {
		label = 'Poppelers',
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks"
	},

	['10kgoldchain'] = {
		label = '10k Gold Chain',
		weight = 2000,
		stack = true,
		close = true,
		description = "10 carat golden chain"
	},

	['ifaks'] = {
		label = 'ifaks',
		weight = 200,
		stack = true,
		close = true,
		description = "ifaks for healing and a complete stress remover."
	},

	['thermite'] = {
		label = 'Thermite',
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd wish for everything to burn"
	},

	['tunerlaptop'] = {
		label = 'Tunerchip',
		weight = 2000,
		stack = false,
		close = true,
		description = "With this tunerchip you can get your car on steroids... If you know what you're doing"
	},

	['weed_og-kush'] = {
		label = 'OGKush 2g',
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g OG Kush"
	},

	['weed_ak47'] = {
		label = 'AK47 2g',
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g AK47"
	},

	['fitbit'] = {
		label = 'Fitbit',
		weight = 500,
		stack = false,
		close = true,
		description = "I like fitbit"
	},

	['xtcbaggy'] = {
		label = 'Bag of XTC',
		weight = 0,
		stack = true,
		close = true,
		description = "Pop those pills baby"
	},

	['jerry_can'] = {
		label = 'Jerrycan 20L',
		weight = 20000,
		stack = true,
		close = true,
		description = "A can full of Fuel"
	},

	['whiskey'] = {
		label = 'Whiskey',
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there"
	},

	['lawyerpass'] = {
		label = 'Lawyer Pass',
		weight = 0,
		stack = false,
		close = false,
		description = "Pass exclusive to lawyers to show they can represent a suspect"
	},

	['toaster'] = {
		label = 'Toaster',
		weight = 18000,
		stack = false,
		close = true,
		description = "Toast"
	},

	['casinochips'] = {
		label = 'Casino Chips',
		weight = 0,
		stack = true,
		close = false,
		description = "Chips For Casino Gambling"
	},

	['firework1'] = {
		label = '2Brothers',
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks"
	},

	['lighter'] = {
		label = 'Lighter',
		weight = 0,
		stack = true,
		close = true,
		description = "On new years eve a nice fire to stand next to"
	},

	['printerdocument'] = {
		label = 'Document',
		weight = 500,
		stack = false,
		close = true,
		description = "A nice document"
	},

	['pinger'] = {
		label = 'Pinger',
		weight = 1000,
		stack = true,
		close = true,
		description = "With a pinger and your phone you can send out your location"
	},

	['crack_baggy'] = {
		label = 'Bag of Crack',
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy faster"
	},

	['water_bottle'] = {
		label = 'Bottle of Water',
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there"
	},

	['antipatharia_coral'] = {
		label = 'Antipatharia',
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as black corals or thorn corals"
	},

	['aluminumoxide'] = {
		label = 'Aluminium Powder',
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with"
	},

	['diving_gear'] = {
		label = 'Diving Gear',
		weight = 30000,
		stack = false,
		close = true,
		description = "An oxygen tank and a rebreather"
	},

	['advancedrepairkit'] = {
		label = 'Advanced Repairkit',
		weight = 4000,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle"
	},

	['coffee'] = {
		label = 'Coffee',
		weight = 200,
		stack = true,
		close = true,
		description = "Pump 4 Caffeine"
	},

	['samsungphone'] = {
		label = 'Samsung S10',
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone"
	},

	['twerks_candy'] = {
		label = 'Twerks',
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O"
	},

	['security_card_02'] = {
		label = 'Security Card B',
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to"
	},

	['weed_skunk_seed'] = {
		label = 'Skunk Seed',
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Skunk"
	},

	['heavyarmor'] = {
		label = 'Heavy Armor',
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?"
	},

	['cryptostick'] = {
		label = 'Crypto Stick',
		weight = 200,
		stack = false,
		close = true,
		description = "Why would someone ever buy money that doesn't exist.. How many would it contain..?"
	},

	['repairkit'] = {
		label = 'Repairkit',
		weight = 2500,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle"
	},

	['labkey'] = {
		label = 'Key',
		weight = 500,
		stack = false,
		close = true,
		description = "Key for a lock...?"
	},

	['cleaningkit'] = {
		label = 'Cleaning Kit',
		weight = 250,
		stack = true,
		close = true,
		description = "A microfiber cloth with some soap will let your car sparkle again!"
	},

	['handcuffs'] = {
		label = 'Handcuffs',
		weight = 100,
		stack = true,
		close = true,
		description = "Comes in handy when people misbehave. Maybe it can be used for something else?"
	},

	['dendrogyra_coral'] = {
		label = 'Dendrogyra',
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as pillar coral"
	},

	['police_stormram'] = {
		label = 'Stormram',
		weight = 18000,
		stack = true,
		close = true,
		description = "A nice tool to break into doors"
	},

	['certificate'] = {
		label = 'Certificate',
		weight = 0,
		stack = true,
		close = true,
		description = "Certificate that proves you own certain stuff"
	},

	['rubber'] = {
		label = 'Rubber',
		weight = 100,
		stack = true,
		close = false,
		description = "Rubber, I believe you can make your own rubber ducky with it :D"
	},

	['sandwich'] = {
		label = 'Sandwich',
		weight = 200,
		stack = true,
		close = true,
		description = "Nice bread for your stomach"
	},

	['firstaid'] = {
		label = 'First Aid',
		weight = 2500,
		stack = true,
		close = true,
		description = "You can use this First Aid kit to get people back on their feet"
	},

	['firework4'] = {
		label = 'Weeping Willow',
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks"
	},

	['diving_fill'] = {
		label = 'Diving Tube',
		weight = 3000,
		stack = false,
		close = true,
		description = nil
	},

	['nitrous'] = {
		label = 'Nitrous',
		weight = 1000,
		stack = true,
		close = true,
		description = "Speed up, gas pedal! :D"
	},

	['painkillers'] = {
		label = 'Painkillers',
		weight = 0,
		stack = true,
		close = true,
		description = "For pain you can't stand anymore, take this pill that'd make you feel great again"
	},

	['oxy'] = {
		label = 'Prescription Oxy',
		weight = 0,
		stack = true,
		close = true,
		description = "The Label Has Been Ripped Off"
	},

	['coke_small_brick'] = {
		label = 'Coke Package',
		weight = 350,
		stack = false,
		close = true,
		description = "Small package of cocaine, mostly used for deals and takes a lot of space"
	},

	['weaponlicense'] = {
		label = 'Weapon License',
		weight = 0,
		stack = false,
		close = true,
		description = "Weapon License"
	},

	['weed_skunk'] = {
		label = 'Skunk 2g',
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Skunk"
	},

	['aluminum'] = {
		label = 'Aluminium',
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something"
	},

	['weed_white-widow_seed'] = {
		label = 'White Widow Seed',
		weight = 0,
		stack = true,
		close = false,
		description = "A weed seed of White Widow"
	},

	['gatecrack'] = {
		label = 'Gatecrack',
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to tear down some fences"
	},

	['weed_purple-haze_seed'] = {
		label = 'Purple Haze Seed',
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Purple Haze"
	},

	['moneybag'] = {
		label = 'Money Bag',
		weight = 0,
		stack = false,
		close = true,
		description = "A bag with cash"
	},

	['beer'] = {
		label = 'Beer',
		weight = 500,
		stack = true,
		close = true,
		description = "Nothing like a good cold beer!"
	},

	['drill'] = {
		label = 'Drill',
		weight = 20000,
		stack = true,
		close = false,
		description = "The real deal..."
	},

	['security_card_01'] = {
		label = 'Security Card A',
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to"
	},

	['copper'] = {
		label = 'Copper',
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something"
	},

	['diamond_ring'] = {
		label = 'Diamond Ring',
		weight = 1500,
		stack = true,
		close = true,
		description = "A diamond ring seems like the jackpot to me!"
	},

	['weed_og-kush_seed'] = {
		label = 'OGKush Seed',
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of OG Kush"
	},

	['glass'] = {
		label = 'Glass',
		weight = 100,
		stack = true,
		close = false,
		description = "It is very fragile, watch out"
	},

	['tablet'] = {
		label = 'Tablet',
		weight = 2000,
		stack = true,
		close = true,
		description = "Expensive tablet"
	},

	['empty_weed_bag'] = {
		label = 'Empty Weed Bag',
		weight = 0,
		stack = true,
		close = true,
		description = "A small empty bag"
	},

	['iron'] = {
		label = 'Iron',
		weight = 100,
		stack = true,
		close = false,
		description = "Handy piece of metal that you can probably use for something"
	},

	['snikkel_candy'] = {
		label = 'Snikkel',
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O"
	},

	['weed_amnesia_seed'] = {
		label = 'Amnesia Seed',
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Amnesia"
	},

	['stickynote'] = {
		label = 'Sticky note',
		weight = 0,
		stack = false,
		close = false,
		description = "Sometimes handy to remember something :)"
	},

	['microwave'] = {
		label = 'Microwave',
		weight = 46000,
		stack = false,
		close = true,
		description = "Microwave"
	},

	['steel'] = {
		label = 'Steel',
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something"
	},

	['vodka'] = {
		label = 'Vodka',
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there"
	},

	['plastic'] = {
		label = 'Plastic',
		weight = 100,
		stack = true,
		close = false,
		description = "RECYCLE! - Greta Thunberg 2019"
	},

	['armor'] = {
		label = 'Armor',
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?"
	},

	['tosti'] = {
		label = 'Grilled Cheese Sandwich',
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat"
	},

	['weed_nutrition'] = {
		label = 'Plant Fertilizer',
		weight = 2000,
		stack = true,
		close = true,
		description = "Plant nutrition"
	},

	['trojan_usb'] = {
		label = 'Trojan USB',
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems"
	},

	['weed_white-widow'] = {
		label = 'White Widow 2g',
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g White Widow"
	},

	['ironoxide'] = {
		label = 'Iron Powder',
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with."
	},

	['diamond'] = {
		label = 'Diamond',
		weight = 1000,
		stack = true,
		close = true,
		description = "A diamond seems like the jackpot to me!"
	},

	['id_card'] = {
		label = 'ID Card',
		weight = 0,
		stack = false,
		close = false,
		description = "A card containing all your information to identify yourself"
	},

	['screwdriverset'] = {
		label = 'Toolkit',
		weight = 1000,
		stack = true,
		close = false,
		description = "Very useful to screw... screws..."
	},

	['meth'] = {
		label = 'Meth',
		weight = 100,
		stack = true,
		close = true,
		description = "A baggie of Meth"
	},

	['advancedlockpick'] = {
		label = 'Advanced Lockpick',
		weight = 500,
		stack = true,
		close = true,
		description = "If you lose your keys a lot this is very useful... Also useful to open your beers"
	},

	['grape'] = {
		label = 'Grape',
		weight = 100,
		stack = true,
		close = false,
		description = "Mmmmh yummie, grapes"
	},

	['kurkakola'] = {
		label = 'Cola',
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there"
	},

	['small_tv'] = {
		label = 'Small TV',
		weight = 30000,
		stack = false,
		close = true,
		description = "TV"
	},

	['laptop'] = {
		label = 'Laptop',
		weight = 4000,
		stack = true,
		close = true,
		description = "Expensive laptop"
	},

	['rolling_paper'] = {
		label = 'Rolling Paper',
		weight = 0,
		stack = true,
		close = true,
		description = "Paper made specifically for encasing and smoking tobacco or cannabis."
	},

	['coke_brick'] = {
		label = 'Coke Brick',
		weight = 1000,
		stack = false,
		close = true,
		description = "Heavy package of cocaine, mostly used for deals and takes a lot of space"
	},

	['goldchain'] = {
		label = 'Golden Chain',
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden chain seems like the jackpot to me!"
	},

	['grapejuice'] = {
		label = 'Grape Juice',
		weight = 200,
		stack = true,
		close = false,
		description = "Grape juice is said to be healthy"
	},

	['markedbills'] = {
		label = 'Marked Money',
		weight = 1000,
		stack = false,
		close = true,
		description = "Money?"
	},

	['visa'] = {
		label = 'Visa Card',
		weight = 0,
		stack = false,
		close = false,
		description = "Visa can be used via ATM"
	},

	['cokebaggy'] = {
		label = 'Bag of Coke',
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy real quick"
	},

	['rolex'] = {
		label = 'Golden Watch',
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden watch seems like the jackpot to me!"
	},

	['weed_ak47_seed'] = {
		label = 'AK47 Seed',
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of AK47"
	},

	['harness'] = {
		label = 'Race Harness',
		weight = 1000,
		stack = false,
		close = true,
		description = "Racing Harness so no matter what you stay in the car"
	},

	['weed_amnesia'] = {
		label = 'Amnesia 2g',
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Amnesia"
	},

	['wine'] = {
		label = 'Wine',
		weight = 300,
		stack = true,
		close = false,
		description = "Some good wine to drink on a fine evening"
	},

	['walkstick'] = {
		label = 'Walking Stick',
		weight = 1000,
		stack = true,
		close = true,
		description = "Walking stick for ya'll grannies out there.. HAHA"
	},

	['binoculars'] = {
		label = 'Binoculars',
		weight = 600,
		stack = true,
		close = true,
		description = "Sneaky Breaky..."
	},
}