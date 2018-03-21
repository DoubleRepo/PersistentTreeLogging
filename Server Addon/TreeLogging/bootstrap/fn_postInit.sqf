"TreeLogging PostInit started..." call ExileServer_TreeLogging_log;

FuckingWhen = getText (configFile >> "CfgPatches" >> "TreeLogging" >> "config" >> "FuckingWhen");
DamnTreeDebug = getText (configFile >> "CfgPatches" >> "TreeLogging" >> "config" >> "DamnTreeDebug");

[] call ExileServer_world_loadAllDatabaseTrees;

"TreeLogging PostInit finished..." call ExileServer_TreeLogging_log;
