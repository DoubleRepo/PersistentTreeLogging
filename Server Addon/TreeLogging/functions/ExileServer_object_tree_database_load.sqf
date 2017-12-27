/**
 * ExileServer_object_tree_database_load
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_treeID", "_data", "_position", "_Tree", "_SelectTree"];
_treeID = _this;
_data = format ["loadTree:%1", _treeID] call ExileServer_system_database_query_selectSingle;
_position = [_data select 0, _data select 1, _data select 2];
(nearestTerrainObjects [_position, [], 1, false, true]) params [["_tree", objNull, [objNull]]];
diag_log format ["Hiding Tree %1", _tree];
_tree hideObjectGlobal true;
true
