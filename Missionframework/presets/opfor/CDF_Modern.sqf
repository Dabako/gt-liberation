/*
    Needed Mods:
    - RHSAFRF
    - RHSUSAF
    - RHSGREF
    - RHSSAF 
    - CDF-GSFL https://steamcommunity.com/sharedfiles/filedetails/?id=2872102180

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "ACM_B_CDF_Regular_Officer";                            // Officer
opfor_squad_leader = "ACM_B_CDF_Regular_SquadLead";                     // Squad Leader
opfor_team_leader = "ACM_B_CDF_Regular_TeamLead";                       // Team Leader
opfor_sentry = "ACM_B_CDF_Regular_Rifleman_2";                          // Rifleman (Lite)
opfor_rifleman = "ACM_B_CDF_Regular_Rifleman";                          // Rifleman
opfor_rpg = "ACM_B_CDF_Regular_Rifleman_AT";                            // Rifleman (LAT)
opfor_grenadier = "ACM_B_CDF_Regular_Grenadier";                        // Grenadier
opfor_machinegunner = "ACM_B_CDF_Regular_MG";                           // Autorifleman
opfor_heavygunner = "ACM_B_CDF_Regular_MG";                             // Heavy Gunner
opfor_marksman = "ACM_B_CDF_Regular_Marksman";                          // Marksman
opfor_sharpshooter = "ACM_B_CDF_SF_MR";                                 // Sharpshooter
opfor_sniper = "ACM_B_CDF_Zizka_Sniper";                                // Sniper
opfor_at = "ACM_B_CDF_Regular_AntiTank_RPG";                            // AT Specialist
opfor_aa = "ACM_B_CDF_Regular_AntiAir";                                 // AA Specialist
opfor_medic = "ACM_B_CDF_Regular_CLS";                                  // Medic
opfor_engineer = "ACM_B_CDF_Regular_Engineer";                          // Engineer
opfor_paratrooper = "ACM_B_CDF_Zizka_Rifleman_2";                         // Paratrooper

// Enemy vehicles used by secondary objectives.
opfor_mrap = "ACM_B_CDF_Vehicle_m1151";                                 // UAZ
opfor_mrap_armed = "ACM_B_CDF_Vehicle_m1151_PKM";                       // UAZ (DShKM)
opfor_transport_helo = "ACM_B_CDF_Vehicle_Air_Mi8";                     // Mi-8MT
opfor_transport_truck = "ACM_B_CDF_Vehicle_Ural";                       // Ural
opfor_ammobox_transport = "ACM_B_CDF_Vehicle_Ural";                     // Ural (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "ACM_B_CDF_Vehicle_Ural_Fuel";                       // Kamaz 5350 (Fuel)
opfor_ammo_truck = "ACM_B_CDF_Vehicle_Gaz66_ammo";                      // Kamaz 5350 (Ammo)
opfor_fuel_container = "B_Slingload_01_Fuel_F";                         // Huron Fuel Container
opfor_ammo_container = "B_Slingload_01_Ammo_F";                         // Huron Ammo Container
opfor_flag = "FlagCarrierCDF";                                          // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [
    "rhsgref_cdf_b_ngd_squadleader",                                    // Team Leader
    "rhsgref_cdf_b_ngd_rifleman",
    "rhsgref_cdf_b_ngd_rifleman_ak74",
    "rhsgref_cdf_b_ngd_rifleman_lite",
    "rhsgref_cdf_b_ngd_rifleman_rpg75",
    "rhsgref_cdf_b_ngd_medic"
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
militia_vehicles = [
    "ACM_B_CDF_Vehicle_m1151_PKM",                                                 // M1151A1 (PKM)
    "ACM_B_CDF_Vehicle_UAZ_spg9"                                                   // UAZ (SPG-9)
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
opfor_vehicles = [
    "ACM_B_CDF_Vehicle_m113_m2_90",                                     // MT-LB LV
    "ACM_B_CDF_Vehicle_M1240_CROWS_M2",                                 // HMMWV (M2)
    "ACM_B_CDF_Vehicle_m1151_M2_Crows",                                 // MRAP (M2)
    "ACM_B_CDF_Vehicle_Ural_Zu23",                                      // Ural (ZU-23)
    "ACM_B_CDF_Vehicle_BTR80",                                          // BTR-80
    "ACM_B_CDF_Vehicle_BMD2K",                                          // BMD-2K 
    "ACM_B_CDF_Vehicle_BMD2M",                                          // BMD-2M 
    "ACM_B_CDF_Vehicle_BMD4MA",                                         // BMD-4M (A)
    "ACM_B_CDF_Vehicle_BMP1p",                                          // BMP-1P
    "ACM_B_CDF_Vehicle_BMP2D",                                          // BMP-2D
    "ACM_B_CDF_Vehicle_Nyx_cannon",                                     // Wiesel 2 MK20
    "ACM_B_CDF_Vehicle_Nyx_AT",                                         // Wiesel 2 ATGM
    "ACM_B_CDF_Vehicle_t80bv",                                          // T-80BV
    "ACM_B_CDF_Vehicle_t80uk",                                          // T-80UK
    "ACM_B_CDF_Vehicle_Nyx_AA"                                          // Wiesel 2 Ozelot
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
    "ACM_B_CDF_Vehicle_m1151_PKM",                                      // HMMWV (PKM)
    "ACM_B_CDF_Vehicle_UAZ_spg9",                                       // UAZ (SPG-9)
    "ACM_B_CDF_Vehicle_m113_m2_90",                                     // MT-LB LV
    "ACM_B_CDF_Vehicle_m113_m2_90",                                     // MT-LB LV
    "ACM_B_CDF_Vehicle_M1240_CROWS_M2",                                 // HMMWV (M2)
    "ACM_B_CDF_Vehicle_m1151_M2_Crows",                                 // MRAP (M2)
    "ACM_B_CDF_Vehicle_Ural_Zu23",                                      // Ural (ZU-23)
    "ACM_B_CDF_Vehicle_BTR80"                                           // BTR-80
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
    "ACM_B_CDF_Vehicle_m113_m2_90",                                     // MT-LB LV
    "ACM_B_CDF_Vehicle_M1240_CROWS_M2",                                 // HMMWV (M2)
    "ACM_B_CDF_Vehicle_m1151_M2_Crows",                                 // MRAP (M2)
    "ACM_B_CDF_Vehicle_Ural_Zu23",                                      // Ural (ZU-23)
    "ACM_B_CDF_Vehicle_BTR80",                                          // BTR-80
    "ACM_B_CDF_Vehicle_BMD2K",                                          // BMD-2K 
    "ACM_B_CDF_Vehicle_BMD2M",                                          // BMD-2M 
    "ACM_B_CDF_Vehicle_BMD4MA",                                         // BMD-4M (A)
    "ACM_B_CDF_Vehicle_BMP1p",                                          // BMP-1P
    "ACM_B_CDF_Vehicle_BMP2D",                                          // BMP-2D
    "ACM_B_CDF_Vehicle_Nyx_cannon",                                     // Wiesel 2 MK20
    "ACM_B_CDF_Vehicle_Nyx_AT",                                         // Wiesel 2 ATGM
    "ACM_B_CDF_Vehicle_t80bv",                                          // T-80BV
    "ACM_B_CDF_Vehicle_t80uk",                                          // T-80UK
    "ACM_B_CDF_Vehicle_Nyx_AA",                                         // Wiesel 2 Ozelot
    "ACM_B_CDF_Vehicle_Air_Mi24D",                                      // MI-24D
    "ACM_B_CDF_Vehicle_Air_Mi35",                                       // MI-24V
    "ACM_B_CDF_Vehicle_Air_Mi24G",                                      // MI-24G
    "ACM_B_CDF_Vehicle_Air_Mi17Sh"                                      // MI-8AMTSh

];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "ACM_B_CDF_Vehicle_m1151_PKM",                                      // HMMWV (PKM)
    "ACM_B_CDF_Vehicle_UAZ_spg9",                                       // UAZ (SPG-9)
    "ACM_B_CDF_Vehicle_m113_m2_90",                                     // MT-LB LV
    "ACM_B_CDF_Vehicle_m113_m2_90",                                     // MT-LB LV
    "ACM_B_CDF_Vehicle_M1240_CROWS_M2",                                 // HMMWV (M2)
    "ACM_B_CDF_Vehicle_m1151_M2_Crows",                                 // MRAP (M2)
    "ACM_B_CDF_Vehicle_Ural_Zu23",                                      // Ural (ZU-23)
    "ACM_B_CDF_Vehicle_BTR80",                                          // BTR-80
    "ACM_B_CDF_Vehicle_Air_Mi8"                                         // Mi-8MT
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
    "ACM_B_CDF_Vehicle_BTR80",                                          // BTR-80
    "ACM_B_CDF_Vehicle_m113_m2_90",                                     // MT-LB LV
    "ACM_B_CDF_Vehicle_BMP2D",                                          // BMP-2D
    "ACM_B_CDF_Vehicle_BMP1p",                                          // BMP-1P
    "ACM_B_CDF_Vehicle_BMD2M",                                          // BMD-2M
    "ACM_B_CDF_Vehicle_Air_Mi8",                                        // Mi-8
    "ACM_B_CDF_Vehicle_Air_Mi17Sh",                                      // Mi-8MT
    "ACM_B_CDF_Vehicle_Air_Mi24D",                                      // MI-24D
    "ACM_B_CDF_Vehicle_Air_Mi35",                                       // MI-24V
    "ACM_B_CDF_Vehicle_Air_Mi24G"                                       // MI-24G
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "ACM_B_CDF_Vehicle_Air_Mi24D",                                      // MI-24D
    "ACM_B_CDF_Vehicle_Air_Mi35",                                       // MI-24V
    "ACM_B_CDF_Vehicle_Air_Mi24G",                                      // MI-24G
    "ACM_B_CDF_Vehicle_Air_Mi17Sh",                                      // Mi-8MT
    "ACM_B_CDF_Vehicle_Air_Mi8"                                         // Mi-8MT
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
    "ACM_B_CDF_Vehicle_Air_Su25",                                       // Su-25
    "ACM_B_CDF_Vehicle_Air_Mig29_M"                                     // MIG-29MC3
];
