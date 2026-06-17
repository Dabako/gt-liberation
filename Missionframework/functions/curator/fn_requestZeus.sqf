/*
    File: fn_requestZeus.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2020-08-07
    Last Update: 2026-06-17
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Request Curator functionality from server.

    Parameter(s):
        _player - Player requesting Curator functionality [OBJECT, defaults to player]

    Returns:
        Function reached the end [BOOL]
*/

params [
    ["_player", player, [objNull]]
];

[format ["Client requesting zeus for %1 (limited: %2, isDedicated: %3)", name _player, KP_liberation_limited_zeus, isDedicated], "ZEUS"] call KPLIB_fnc_log;
[true, "KPLIB_createZeus", [_player, KP_liberation_limited_zeus]] remoteExecCall ["BIS_fnc_callScriptedEventHandler", 2];

true
