#include "script_component.hpp"

/*
  Name: TFAR_fnc_sendPluginConfig

  Author: Dedmen
    transmitts all pluginsettings to plugin

  Arguments:
    None

  Return Value:
    None

  Example:
    call TFAR_fnc_sendPluginConfig;

  Public: Yes
*/


if !(missionNamespace getVariable ["TFAR_spectatorCanHearFriendlies",true]) then {
    ["minimumPluginVersion", 331] call TFAR_fnc_setPluginSetting; //Temporary until next plugin update. This is only needed when using non-default settings for spectators
} else {
    ["minimumPluginVersion", 327] call TFAR_fnc_setPluginSetting; //Keep this as first
};

["full_duplex",missionNamespace getVariable ["TFAR_fullDuplex",true]] call TFAR_fnc_setPluginSetting;
["addon_version",TFAR_ADDON_VERSION] call TFAR_fnc_setPluginSetting;
["serious_channelPassword",missionNamespace getVariable ["TFAR_Teamspeak_Channel_Password","123"]] call TFAR_fnc_setPluginSetting;
["serious_channelName",missionNamespace getVariable ["TFAR_Teamspeak_Channel_Name","TaskForceRadio"]] call TFAR_fnc_setPluginSetting;//#TODO wiki entry
["intercomVolume",missionNamespace getVariable ["TFAR_intercomVolume",0.3]] call TFAR_fnc_setPluginSetting;
["intercomDucking",missionNamespace getVariable ["TFAR_intercomDucking",0.2]] call TFAR_fnc_setPluginSetting;
["intercomEnabled",missionNamespace getVariable ["TFAR_enableIntercom",true]] call TFAR_fnc_setPluginSetting;
["pluginTimeout",missionNamespace getVariable ["TFAR_pluginTimeout",4]] call TFAR_fnc_setPluginSetting;
["spectatorNotHearEnemies",!(missionNamespace getVariable ["TFAR_spectatorCanHearEnemyUnits",false])] call TFAR_fnc_setPluginSetting;
["spectatorCanHearFriendlies",missionNamespace getVariable ["TFAR_spectatorCanHearFriendlies",true]] call TFAR_fnc_setPluginSetting;
["tangentReleaseDelay",missionNamespace getVariable ["TFAR_tangentReleaseDelay",0]] call TFAR_fnc_setPluginSetting;
["headsetLowered",missionNamespace getVariable [QGVAR(isHeadsetLowered),false]] call TFAR_fnc_setPluginSetting;
["moveWhileTabbedOut", missionNamespace getVariable ["TFAR_moveWhileTabbedOut", false]] call TFAR_fnc_setPluginSetting;
["objectInterceptionStrength", missionNamespace getVariable ["TFAR_objectInterceptionStrength", 400]] call TFAR_fnc_setPluginSetting;
["voiceCone", missionNamespace getVariable ["TFAR_voiceCone", true]] call TFAR_fnc_setPluginSetting;
["disableAutomaticMute", missionNamespace getVariable ["TFAR_disableAutoMute", false]] call TFAR_fnc_setPluginSetting;
["noAutomoveSpectator", missionNamespace getVariable ["TFAR_noAutomoveSpectator", true]] call TFAR_fnc_setPluginSetting;
["allowDebugging", missionNamespace getVariable ["TFAR_allowDebugging", false]] call TFAR_fnc_setPluginSetting;

//If you add things that player could change in Mission call this PFH or tell players in WIKI
