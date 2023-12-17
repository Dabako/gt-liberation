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
    "CUP_B_CDF_Soldier_TL_FST",                                         // Team Leader
    "CUP_B_CDF_Militia_FST",                                            // Militia
    "CUP_B_CDF_Militia_FST",                                            // Militia
    "CUP_B_CDF_Militia_FST",                                            // Militia
    "CUP_B_CDF_Militia_FST",                                            // Militia
    "CUP_B_CDF_Militia_FST"                                             // Militia
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
militia_vehicles = [
    "CUP_B_UAZ_MG_CDF",                                                 // UAZ (DShKM)
    "CUP_B_UAZ_AGS30_CDF"                                               // UAZ (AGS-30)
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
opfor_vehicles = [
    "CUP_B_UAZ_MG_CDF",                                                 // UAZ (DShKM)
    "CUP_B_UAZ_AA_CDF",                                                 // UAZ (AA)
    "CUP_B_UAZ_AGS30_CDF",                                              // UAZ (AGS-30)
    "CUP_B_UAZ_SPG9_CDF",                                               // UAZ (SPG-9)
    "CUP_B_BTR60_CDF",                                                  // BTR-60PB
    "CUP_B_BTR60_CDF",                                                  // BTR-60PB
    "CUP_B_BTR60_CDF",                                                  // BTR-60PB
    "CUP_B_BTR80_CDF",                                                  // BTR-80
    "CUP_B_BTR80_CDF",                                                  // BTR-80
    "CUP_B_BTR80A_CDF",                                                 // BTR-80A
    "CUP_B_BMP2_CDF",                                                   // BMP-2
    "CUP_B_BMP2_CDF",                                                   // BMP-2
    "CUP_B_BMP2_CDF",                                                   // BMP-2
    "CUP_B_ZSU23_Afghan_CDF",                                           // ZSU-23-4 Afghanski
    "CUP_B_ZSU23_CDF",                                                  // ZSU-23-4
    "CUP_B_T72_CDF",                                                    // T-72
    "CUP_B_T72_CDF"                                                     // T-72
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
    "CUP_B_UAZ_MG_CDF",                                                 // UAZ (DShKM)
    "CUP_B_UAZ_AGS30_CDF",                                              // UAZ (AGS-30)
    "CUP_B_MTLB_pk_CDF",                                                // MT-LB LV
    "CUP_B_MTLB_pk_CDF",                                                // MT-LB LV
    "CUP_B_BRDM2_CDF",                                                  // BRDM-2
    "CUP_B_BRDM2_CDF",                                                  // BRDM-2
    "CUP_B_Ural_ZU23_CDF",                                              // Ural (ZU-23)
    "CUP_B_BTR60_CDF"                                                   // BTR-60PB
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
    "CUP_B_UAZ_MG_CDF",                                                 // UAZ (DShKM)
    "CUP_B_UAZ_AA_CDF",                                                 // UAZ (AA)
    "CUP_B_UAZ_AGS30_CDF",                                              // UAZ (AGS-30)
    "CUP_B_UAZ_SPG9_CDF",                                               // UAZ (SPG-9)
    "CUP_B_BTR60_CDF",                                                  // BTR-60PB
    "CUP_B_BTR60_CDF",                                                  // BTR-60PB
    "CUP_B_BTR60_CDF",                                                  // BTR-60PB
    "CUP_B_BTR80_CDF",                                                  // BTR-80
    "CUP_B_BTR80_CDF",                                                  // BTR-80
    "CUP_B_BTR80A_CDF",                                                 // BTR-80A
    "CUP_B_BMP2_CDF",                                                   // BMP-2
    "CUP_B_BMP2_CDF",                                                   // BMP-2
    "CUP_B_BMP2_CDF",                                                   // BMP-2
    "CUP_B_ZSU23_Afghan_CDF",                                           // ZSU-23-4 Afghanski
    "CUP_B_ZSU23_CDF",                                                  // ZSU-23-4
    "CUP_B_T72_CDF",                                                    // T-72
    "CUP_B_T72_CDF",                                                    // T-72
    "CUP_B_Mi24_D_Dynamic_CDF",                                         // Mi-24D
    "CUP_B_Mi24_D_Dynamic_CDF",                                         // Mi-24D
    "CUP_B_Mi24_D_Dynamic_CDF",                                         // Mi-24D
    "CUP_B_Mi17_CDF"                                                    // Mi-8MT
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "CUP_B_UAZ_MG_CDF",                                                 // UAZ (DShKM)
    "CUP_B_UAZ_AGS30_CDF",                                              // UAZ (AGS-30)
    "CUP_B_MTLB_pk_CDF",                                                // MT-LB LV
    "CUP_B_MTLB_pk_CDF",                                                // MT-LB LV
    "CUP_B_Ural_ZU23_CDF",                                              // Ural (ZU-23)
    "CUP_B_Ural_ZU23_CDF",                                              // Ural (ZU-23)
    "CUP_B_BTR60_CDF",                                                  // BTR-60PB
    "CUP_B_BTR60_CDF",                                                  // BTR-60PB
    "CUP_B_Mi17_CDF"                                                    // Mi-8MT
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
    "CUP_B_BTR60_CDF",                                                  // BTR-60PB
    "CUP_B_MTLB_pk_CDF",                                                // MT-LB LV
    "CUP_B_BMP2_CDF",                                                   // BMP-2
    "CUP_B_BTR80_CDF",                                                  // BTR-80
    "CUP_B_BTR80A_CDF",                                                 // BTR-80A
    "CUP_B_Mi24_D_Dynamic_CDF",                                         // Mi-24D
    "CUP_B_Mi17_CDF"                                                    // Mi-8MT
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "CUP_B_Mi24_D_Dynamic_CDF",                                         // Mi-24D
    "CUP_B_Mi17_CDF"                                                    // Mi-8MT
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
    "CUP_B_SU34_CDF",                                                   // Su-34
    "CUP_B_Su25_Dyn_CDF"                                                // Su-25 Frogfoot
];
