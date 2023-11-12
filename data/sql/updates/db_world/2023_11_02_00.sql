-- DB update 2023_10_31_02 -> 2023_11_02_00
-- Whelp, Alpha, Ambusher
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (16927,16929,16928);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(16927, 0, 0, 1, 2, 0, 100, 1, 0, 60, 0, 0, 0, 0, 11, 33896, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Stonescythe Whelp - Between 0-60% Health - Cast \'Desperate Defense\' (No Repeat)'),
(16927, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Stonescythe Whelp - Between 0-60% Health - Say Line 0 (No Repeat)'),
(16927, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Stonescythe Whelp - Between 0-15% Health - Flee For Assist (No Repeat)'),
(16929, 0, 0, 1, 2, 0, 100, 1, 0, 60, 0, 0, 0, 0, 11, 33896, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Stonescythe Alpha - Between 0-60% Health - Cast \'Desperate Defense\' (No Repeat)'),
(16929, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Stonescythe Alpha - Between 0-60% Health - Say Line 0 (No Repeat)'),
(16929, 0, 2, 0, 0, 0, 100, 0, 5000, 15000, 5000, 9000, 0, 0, 11, 33911, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Stonescythe Alpha - In Combat - Cast \'Tear Armor\''),
(16928, 0, 0, 1, 2, 0, 100, 1, 0, 60, 0, 0, 0, 0, 11, 33896, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Stonescythe Ambusher - Between 0-60% Health - Cast \'Desperate Defense\' (No Repeat)'),
(16928, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Stonescythe Ambusher - Between 0-60% Health - Say Line 0 (No Repeat)'),
(16928, 0, 2, 0, 9, 0, 100, 1, 0, 0, 0, 0, 0, 5, 11, 31819, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Stonescythe Ambusher - Within 0-5 Range - Cast \'Cheap Shot\' (No Repeat)'); -- Doesn't work

-- Stonescythe Alpha
DELETE FROM `spell_custom_attr` WHERE `spell_id`=33911;
INSERT INTO `spell_custom_attr` (`spell_id`, `attributes`) VALUES (33911, 4194304);

UPDATE `creature_template_addon` SET `auras` = '32732' WHERE (`entry` = 16929);

-- Stonescythe Ambusher
UPDATE `creature_template_addon` SET `bytes1` = 0, `auras` = '22766' WHERE (`entry` = 16928);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 16928;

DELETE FROM `creature` WHERE `id1` = 16928;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(61296, 16928, 0, 0, 530, 0, 0, 1, 1, 0, -646.982, 3491.79, 75.7053, 2.68565, 300, 0, 0, 5158, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(61297, 16928, 0, 0, 530, 0, 0, 1, 1, 0, -917.092, 3686.01, 81.4365, 2.59059, 300, 0, 0, 5158, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(61298, 16928, 0, 0, 530, 0, 0, 1, 1, 0, -1171.27, 3939.43, 150.498, 4.50381, 300, 0, 0, 5158, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(61299, 16928, 0, 0, 530, 0, 0, 1, 1, 0, -1007.62, 3493.44, 138.13, 5.63558, 300, 0, 0, 5158, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(61300, 16928, 0, 0, 530, 0, 0, 1, 1, 0, -883.902, 3815.24, 155.032, 0.115016, 300, 0, 0, 5158, 0, 2, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `creature_addon` WHERE `guid` IN (61296,61297,61298,61299,61300,58785); -- 58785 whelp
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(61296, 612960, 0, 0, 1, 0, 0, '22766'),
(61297, 612970, 0, 0, 1, 0, 0, '22766'),
(61298, 612980, 0, 0, 1, 0, 0, '22766'),
(61299, 612990, 0, 0, 1, 0, 0, '22766'),
(61300, 613000, 0, 0, 1, 0, 0, '22766');

DELETE FROM `waypoint_data` where `id` IN (612960,612970,612980,612990,613000);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(612960, 1, -646.982, 3491.79, 75.7053, 2.68565, 0, 0, 0, 100, 0),
(612960, 2, -668.039, 3500.24, 83.347, 2.76026, 0, 0, 0, 100, 0),
(612960, 3, -691.814, 3505.73, 88.9209, 2.95347, 0, 0, 0, 100, 0),
(612960, 4, -712.436, 3509.65, 93.4389, 2.95347, 0, 0, 0, 100, 0),
(612960, 5, -728.177, 3510.19, 99.1626, 3.10741, 0, 0, 0, 100, 0),
(612960, 6, -739.753, 3506.18, 101.257, 3.47497, 0, 0, 0, 100, 0),
(612960, 7, -754.195, 3498.53, 101.073, 3.62891, 0, 0, 0, 100, 0),
(612960, 8, -771.173, 3489.53, 98.5072, 3.62891, 0, 0, 0, 100, 0),
(612960, 9, -783.773, 3482.2, 98.8041, 3.74436, 0, 0, 0, 100, 0),
(612960, 10, -798.488, 3472.74, 98.3305, 3.5111, 0, 0, 0, 100, 0),
(612960, 11, -810.997, 3470.54, 99.2646, 3.23543, 0, 0, 0, 100, 0),
(612960, 12, -819.807, 3473.35, 105.601, 2.76419, 0, 0, 0, 100, 0),
(612960, 13, -825.789, 3476.92, 108.265, 2.60397, 0, 0, 0, 100, 0),
(612960, 14, -832.446, 3480.57, 106.476, 2.8498, 0, 0, 0, 100, 0),
(612960, 15, -845.251, 3484.42, 98.0031, 2.8498, 0, 0, 0, 100, 0),
(612960, 16, -857.586, 3488.13, 92.1053, 2.8498, 0, 0, 0, 100, 0),
(612960, 17, -867.073, 3490.97, 91.2551, 2.8498, 0, 0, 0, 100, 0),
(612960, 18, -879.246, 3494.93, 93.4994, 2.65423, 0, 0, 0, 100, 0),
(612960, 19, -891.564, 3501.5, 99.6467, 2.36835, 0, 0, 0, 100, 0),
(612960, 20, -895.8, 3512.32, 102.446, 1.91282, 0, 0, 0, 100, 0),
(612960, 21, -900.894, 3526.63, 104.568, 1.91282, 0, 0, 0, 100, 0),
(612960, 22, -905.444, 3538.58, 107.124, 2.07068, 0, 0, 0, 100, 0),
(612960, 23, -913.939, 3554.51, 110.207, 1.91517, 0, 0, 0, 100, 0),
(612960, 24, -918.065, 3567.2, 113.142, 1.47142, 0, 0, 0, 100, 0),
(612960, 25, -913.081, 3582.77, 113.535, 1.26093, 0, 0, 0, 100, 0),
(612960, 26, -909, 3597.29, 114.398, 1.49655, 0, 0, 0, 100, 0),
(612960, 27, -911.064, 3610.54, 115.513, 1.76516, 0, 0, 0, 100, 0),
(612960, 28, -909.191, 3597.19, 114.451, 4.85177, 0, 0, 0, 100, 0),
(612960, 29, -911.061, 3583.99, 113.314, 4.45907, 0, 0, 0, 100, 0),
(612960, 30, -916.545, 3568.66, 112.853, 4.49991, 0, 0, 0, 100, 0),
(612960, 31, -916.695, 3556.1, 111.374, 5.08896, 0, 0, 0, 100, 0),
(612960, 32, -908.226, 3538.8, 107.913, 5.20442, 0, 0, 0, 100, 0),
(612960, 33, -899.703, 3522.88, 104.055, 5.00885, 0, 0, 0, 100, 0),
(612960, 34, -896.88, 3506.31, 103.704, 4.73318, 0, 0, 0, 100, 0),
(612960, 35, -894.44, 3497.91, 102.107, 5.05912, 0, 0, 0, 100, 0),
(612960, 36, -885.017, 3484.73, 98.4122, 5.57041, 0, 0, 0, 100, 0),
(612960, 37, -863.667, 3482.61, 93.3591, 0.014506, 0, 0, 0, 100, 0),
(612960, 38, -844.454, 3482.89, 99.0078, 0.014506, 0, 0, 0, 100, 0),
(612960, 39, -832.537, 3481.04, 106.336, 5.90421, 0, 0, 0, 100, 0),
(612960, 40, -824.515, 3477.65, 108.571, 5.64502, 0, 0, 0, 100, 0),
(612960, 41, -815.554, 3473.65, 103.378, 6.15004, 0, 0, 0, 100, 0),
(612960, 42, -803.357, 3472.76, 98.7477, 0.182581, 0, 0, 0, 100, 0),
(612960, 43, -784.468, 3473.93, 96.4372, 0.378146, 0, 0, 0, 100, 0),
(612960, 44, -768.758, 3480.17, 96.074, 0.378146, 0, 0, 0, 100, 0),
(612960, 45, -753.228, 3489.36, 97.8841, 0.576066, 0, 0, 0, 100, 0),
(612960, 46, -737.613, 3499.51, 98.6957, 0.576066, 0, 0, 0, 100, 0),
(612960, 47, -722.23, 3506.11, 95.9942, 0.265048, 0, 0, 0, 100, 0),
(612960, 48, -703.12, 3507.79, 91.1768, 6.19245, 0, 0, 0, 100, 0),
(612960, 49, -680.422, 3500.71, 86.1103, 6.0872, 0, 0, 0, 100, 0),
(612970, 1, -917.092, 3686.01, 81.4365, 2.59059, 0, 0, 0, 100, 0),
(612970, 2, -926.008, 3691.49, 86.1768, 2.59059, 0, 0, 0, 100, 0),
(612970, 3, -933.728, 3696.71, 89.7997, 1.83033, 0, 0, 0, 100, 0),
(612970, 4, -934.313, 3704.21, 91.3807, 1.39914, 0, 0, 0, 100, 0),
(612970, 5, -932.019, 3715.04, 91.9301, 0.795957, 0, 0, 0, 100, 0),
(612970, 6, -921.444, 3720.72, 93.1835, 0.287019, 0, 0, 0, 100, 0),
(612970, 7, -906.368, 3721.87, 97.896, 0.076532, 0, 0, 0, 100, 0),
(612970, 8, -893.21, 3724.06, 102.036, 0.232041, 0, 0, 0, 100, 0),
(612970, 9, -882.035, 3727.16, 105.116, 0.38755, 0, 0, 0, 100, 0),
(612970, 10, -869.641, 3732.22, 107.19, 0.38755, 0, 0, 0, 100, 0),
(612970, 11, -859.388, 3736.41, 109.23, 0.38755, 0, 0, 0, 100, 0),
(612970, 12, -850.207, 3740.15, 111.46, 0.38755, 0, 0, 0, 100, 0),
(612970, 13, -839.475, 3744.53, 112.012, 0.38755, 0, 0, 0, 100, 0),
(612970, 14, -826.481, 3749.84, 113.451, 0.38755, 0, 0, 0, 100, 0),
(612970, 15, -816.921, 3754.14, 115.161, 0.806167, 0, 0, 0, 100, 0),
(612970, 16, -807.242, 3764.23, 116.341, 0.806167, 0, 0, 0, 100, 0),
(612970, 17, -796.339, 3775.59, 117.288, 0.806167, 0, 0, 0, 100, 0),
(612970, 18, -788.295, 3783.98, 117.129, 0.806167, 0, 0, 0, 100, 0),
(612970, 19, -781.162, 3790.01, 116.644, 0.702494, 0, 0, 0, 100, 0),
(612970, 20, -772.117, 3799.06, 114.005, 0.820304, 0, 0, 0, 100, 0),
(612970, 21, -755.429, 3809.49, 108.967, 0.671078, 0, 0, 0, 100, 0),
(612970, 22, -744.026, 3818.54, 104.665, 0.774751, 0, 0, 0, 100, 0),
(612970, 23, -731.607, 3830.87, 97.8091, 0.81245, 0, 0, 0, 100, 0),
(612970, 24, -717.024, 3846.79, 88.314, 0.852505, 0, 0, 0, 100, 0),
(612970, 25, -709.488, 3856.36, 82.2608, 1.04807, 0, 0, 0, 100, 0),
(612970, 26, -702.367, 3869.09, 75.628, 1.30961, 0, 0, 0, 100, 0),
(612970, 27, -702.185, 3876.08, 74.5738, 1.57115, 0, 0, 0, 100, 0),
(612970, 28, -703.119, 3868.82, 75.9491, 4.20223, 0, 0, 0, 100, 0),
(612970, 29, -710.263, 3856.05, 82.7032, 3.99174, 0, 0, 0, 100, 0),
(612970, 30, -718.97, 3846.13, 89.3042, 3.99174, 0, 0, 0, 100, 0),
(612970, 31, -732.561, 3830.38, 98.2744, 3.93676, 0, 0, 0, 100, 0),
(612970, 32, -743.495, 3817.96, 104.626, 3.72941, 0, 0, 0, 100, 0),
(612970, 33, -755.758, 3809.43, 109.05, 3.76868, 0, 0, 0, 100, 0),
(612970, 34, -772.583, 3799.18, 114.101, 3.97917, 0, 0, 0, 100, 0),
(612970, 35, -781.18, 3789.64, 116.687, 3.77183, 0, 0, 0, 100, 0),
(612970, 36, -788.836, 3783.5, 117.159, 3.92969, 0, 0, 0, 100, 0),
(612970, 37, -797.041, 3775.25, 117.334, 3.92969, 0, 0, 0, 100, 0),
(612970, 38, -809.382, 3762.84, 115.885, 3.92969, 0, 0, 0, 100, 0),
(612970, 39, -818.866, 3753.37, 114.997, 3.69171, 0, 0, 0, 100, 0),
(612970, 40, -827.107, 3749.16, 113.341, 3.53385, 0, 0, 0, 100, 0),
(612970, 41, -840.044, 3743.81, 112.177, 3.53385, 0, 0, 0, 100, 0),
(612970, 42, -849.196, 3740.02, 111.755, 3.53385, 0, 0, 0, 100, 0),
(612970, 43, -861.615, 3734.89, 108.818, 3.53385, 0, 0, 0, 100, 0),
(612970, 44, -867.534, 3732.44, 107.596, 3.53385, 0, 0, 0, 100, 0),
(612970, 45, -881.021, 3726.86, 105.494, 3.37677, 0, 0, 0, 100, 0),
(612970, 46, -894.091, 3723.73, 101.803, 3.37677, 0, 0, 0, 100, 0),
(612970, 47, -904.88, 3721.14, 98.4548, 3.21969, 0, 0, 0, 100, 0),
(612970, 48, -921.13, 3720.98, 93.2442, 3.74434, 0, 0, 0, 100, 0),
(612970, 49, -930.731, 3714.38, 92.0086, 4.31925, 0, 0, 0, 100, 0),
(612970, 50, -932.992, 3704.25, 91.3966, 4.63262, 0, 0, 0, 100, 0),
(612970, 51, -933.691, 3694.93, 89.5042, 5.75653, 0, 0, 0, 100, 0),
(612970, 52, -926.388, 3691.28, 86.3083, 5.84842, 0, 0, 0, 100, 0),
(612980, 1, -1171.27, 3939.43, 150.498, 1.30332, 0, 0, 0, 100, 0),
(612980, 2, -1166.02, 3956.71, 136.427, 1.27583, 0, 0, 0, 100, 0),
(612980, 3, -1158.21, 3973.53, 121.491, 1.04021, 0, 0, 0, 100, 0),
(612980, 4, -1149.89, 3984.79, 111.051, 0.715054, 0, 0, 0, 100, 0),
(612980, 5, -1140.19, 3994.7, 97.2502, 0.664788, 0, 0, 0, 100, 0),
(612980, 6, -1128.45, 4003.07, 88.6663, 0.349058, 0, 0, 0, 100, 0),
(612980, 7, -1101.68, 4010.49, 86.035, 0.113438, 0, 0, 0, 100, 0),
(612980, 8, -1080.82, 4012.87, 85.5085, 0.113438, 0, 0, 0, 100, 0),
(612980, 9, -1066.91, 4014.46, 84.7468, 0.113438, 0, 0, 0, 100, 0),
(612980, 10, -1044.37, 4018.45, 81.0537, 0.309003, 0, 0, 0, 100, 0),
(612980, 11, -1024.88, 4025.45, 80.5006, 0.506923, 0, 0, 0, 100, 0),
(612980, 12, -1009.73, 4033.96, 80.5216, 0.742543, 0, 0, 0, 100, 0),
(612980, 13, -1003.53, 4042.49, 80.3447, 1.25384, 0, 0, 0, 100, 0),
(612980, 14, -1001.17, 4052.08, 78.9287, 1.45176, 0, 0, 0, 100, 0),
(612980, 15, -1000.41, 4063.5, 76.2368, 1.53658, 0, 0, 0, 100, 0),
(612980, 16, -999.935, 4077.49, 79.0768, 1.53658, 0, 0, 0, 100, 0),
(612980, 17, -1000.68, 4089.08, 82.0382, 1.69445, 0, 0, 0, 100, 0),
(612980, 18, -1001.85, 4097.62, 82.7395, 1.96776, 0, 0, 0, 100, 0),
(612980, 19, -1008.28, 4110.47, 78.237, 1.9819, 0, 0, 0, 100, 0),
(612980, 20, -1012.14, 4119.34, 75.9806, 1.9819, 0, 0, 0, 100, 0),
(612980, 21, -1016.43, 4129.17, 75.8627, 1.9819, 0, 0, 0, 100, 0),
(612980, 22, -1020.39, 4140.74, 69.4817, 1.9819, 0, 0, 0, 100, 0),
(612980, 23, -1016.01, 4126.14, 76.4527, 5.13919, 0, 0, 0, 100, 0),
(612980, 24, -1011.08, 4115.3, 76.2955, 5.13919, 0, 0, 0, 100, 0),
(612980, 25, -1004.28, 4103.51, 81.3859, 5.257, 0, 0, 0, 100, 0),
(612980, 26, -1001.02, 4093.35, 82.7356, 4.82346, 0, 0, 0, 100, 0),
(612980, 27, -1001.55, 4082.92, 80.354, 4.59256, 0, 0, 0, 100, 0),
(612980, 28, -1003.41, 4071.94, 75.2321, 4.86823, 0, 0, 0, 100, 0),
(612980, 29, -1001.32, 4064.25, 75.9438, 5.37953, 0, 0, 0, 100, 0),
(612980, 30, -989.39, 4047.53, 79.3944, 5.1282, 0, 0, 0, 100, 0),
(612980, 31, -980.558, 4025.79, 81.9783, 4.94756, 0, 0, 0, 100, 0),
(612980, 32, -977.065, 4002.31, 88.5426, 4.82975, 0, 0, 0, 100, 0),
(612980, 33, -974.228, 3978.59, 99.2027, 4.85723, 0, 0, 0, 100, 0),
(612980, 34, -970.912, 3971.07, 102.227, 5.17061, 0, 0, 0, 100, 0),
(612980, 35, -967.702, 3957.48, 102.502, 4.38364, 0, 0, 0, 100, 0),
(612980, 36, -974.058, 3946.01, 106.935, 3.87235, 0, 0, 0, 100, 0),
(612980, 37, -980.45, 3940.36, 111.731, 3.66971, 0, 0, 0, 100, 0),
(612980, 38, -989.516, 3935.07, 120.163, 3.66971, 0, 0, 0, 100, 0),
(612980, 39, -995.008, 3930.67, 126.021, 3.93832, 0, 0, 0, 100, 0),
(612980, 40, -997.879, 3927.47, 128.684, 4.29175, 0, 0, 0, 100, 0),
(612980, 41, -1000.33, 3921.44, 134.4, 4.68288, 0, 0, 0, 100, 0),
(612980, 42, -999.42, 3913.46, 139.724, 5.30727, 0, 0, 0, 100, 0),
(612980, 43, -998.011, 3917.43, 137.387, 1.71407, 0, 0, 0, 100, 0),
(612980, 44, -998.665, 3926.39, 129.616, 1.04962, 0, 0, 0, 100, 0),
(612980, 45, -992.649, 3931.98, 124.028, 0.462931, 0, 0, 0, 100, 0),
(612980, 46, -986.607, 3935.47, 117.749, 0.580741, 0, 0, 0, 100, 0),
(612980, 47, -981.634, 3938.76, 113.149, 0.703263, 0, 0, 0, 100, 0),
(612980, 48, -975.973, 3943.61, 108.666, 0.861128, 0, 0, 0, 100, 0),
(612980, 49, -969.51, 3952.55, 103.319, 1.25933, 0, 0, 0, 100, 0),
(612980, 50, -968.161, 3961.29, 102.502, 1.61275, 0, 0, 0, 100, 0),
(612980, 51, -969.615, 3970.78, 102.338, 1.88607, 0, 0, 0, 100, 0),
(612980, 52, -975.678, 3991.27, 92.8655, 1.88607, 0, 0, 0, 100, 0),
(612980, 53, -980.84, 4007.98, 86.2619, 1.87822, 0, 0, 0, 100, 0),
(612980, 54, -986.136, 4024.66, 81.7252, 1.87822, 0, 0, 0, 100, 0),
(612980, 55, -991.431, 4041.34, 79.8279, 1.87822, 0, 0, 0, 100, 0),
(612980, 56, -994.564, 4053.15, 78.9212, 1.84052, 0, 0, 0, 100, 0),
(612980, 57, -998.657, 4066.08, 76.5678, 1.84052, 0, 0, 0, 100, 0),
(612980, 58, -999.878, 4073.4, 77.4052, 1.52243, 0, 0, 0, 100, 0),
(612980, 59, -1000.13, 4083.2, 80.9055, 1.67794, 0, 0, 0, 100, 0),
(612980, 60, -1000.63, 4091.78, 82.7437, 1.67794, 0, 0, 0, 100, 0),
(612980, 61, -1001.27, 4098.73, 82.6762, 1.95126, 0, 0, 0, 100, 0),
(612980, 62, -1005.52, 4107.78, 79.6517, 2.10913, 0, 0, 0, 100, 0),
(612980, 63, -1010.91, 4116.79, 75.8364, 2.10913, 0, 0, 0, 100, 0),
(612980, 64, -1014.49, 4122.8, 76.5666, 2.10913, 0, 0, 0, 100, 0),
(612980, 65, -1012.61, 4119.42, 76.2145, 5.12113, 0, 0, 0, 100, 0),
(612980, 66, -1006.81, 4108.53, 79.3584, 5.12113, 0, 0, 0, 100, 0),
(612980, 67, -1002.44, 4098.89, 82.6773, 4.88551, 0, 0, 0, 100, 0),
(612980, 68, -1001.48, 4089.98, 81.8943, 4.72764, 0, 0, 0, 100, 0),
(612980, 69, -1003.33, 4073.94, 75.61, 4.53208, 0, 0, 0, 100, 0),
(612980, 70, -1005.21, 4063.61, 75.7989, 4.53208, 0, 0, 0, 100, 0),
(612980, 71, -1008.12, 4050.77, 80.6235, 4.45433, 0, 0, 0, 100, 0),
(612980, 72, -1011.38, 4043.49, 81.8694, 3.98544, 0, 0, 0, 100, 0),
(612980, 73, -1033.8, 4026.31, 80.7237, 3.5519, 0, 0, 0, 100, 0),
(612980, 74, -1059.64, 4018.79, 83.6699, 3.37362, 0, 0, 0, 100, 0),
(612980, 75, -1096.66, 4013.92, 85.3866, 3.22046, 0, 0, 0, 100, 0),
(612980, 76, -1116.51, 4008.76, 86.4402, 3.4875, 0, 0, 0, 100, 0),
(612980, 77, -1134.47, 3999.1, 91.9523, 3.87863, 0, 0, 0, 100, 0),
(612980, 78, -1142.24, 3992.04, 100.821, 3.87863, 0, 0, 0, 100, 0),
(612980, 79, -1150.02, 3984.98, 110.912, 3.87863, 0, 0, 0, 100, 0),
(612980, 80, -1157.1, 3977.74, 119.184, 4.1166, 0, 0, 0, 100, 0),
(612980, 81, -1164.91, 3964.93, 129.009, 4.30981, 0, 0, 0, 100, 0),
(612980, 82, -1168.23, 3954, 139.558, 4.62319, 0, 0, 0, 100, 0),
(612990, 1, -1007.62, 3493.44, 138.13, 5.74161, 0, 0, 0, 100, 0),
(612990, 2, -1000.27, 3489.18, 130.611, 5.5052, 0, 0, 0, 100, 0),
(612990, 3, -988.201, 3477.29, 119.838, 5.5052, 0, 0, 0, 100, 0),
(612990, 4, -973.942, 3463.5, 109.558, 5.66306, 0, 0, 0, 100, 0),
(612990, 5, -964.907, 3458.24, 106.304, 5.85863, 0, 0, 0, 100, 0),
(612990, 6, -951.58, 3457.56, 104.184, 0.015266, 0, 0, 0, 100, 0),
(612990, 7, -925.92, 3457.08, 100.329, 6.26939, 0, 0, 0, 100, 0),
(612990, 8, -903.724, 3452.09, 95.4655, 6.06205, 0, 0, 0, 100, 0),
(612990, 9, -882.083, 3447.37, 93.7854, 6.14216, 0, 0, 0, 100, 0),
(612990, 10, -864.202, 3444.83, 92.9012, 6.14216, 0, 0, 0, 100, 0),
(612990, 11, -850.331, 3442.97, 93.7365, 6.25997, 0, 0, 0, 100, 0),
(612990, 12, -840.311, 3444.3, 97.1225, 0.100089, 0, 0, 0, 100, 0),
(612990, 13, -829.049, 3444.43, 97.5387, 0.623949, 0, 0, 0, 100, 0),
(612990, 14, -823.644, 3449.2, 101.677, 0.781815, 0, 0, 0, 100, 0),
(612990, 15, -819.174, 3453.64, 101.565, 0.781815, 0, 0, 0, 100, 0),
(612990, 16, -813.292, 3459.48, 97.6405, 0.781815, 0, 0, 0, 100, 0),
(612990, 17, -808.607, 3464.66, 97.5086, 0.934967, 0, 0, 0, 100, 0),
(612990, 18, -803.552, 3471.51, 98.2578, 0.934967, 0, 0, 0, 100, 0),
(612990, 19, -795.401, 3486.53, 101.875, 1.13917, 0, 0, 0, 100, 0),
(612990, 20, -793.861, 3496.49, 103.956, 1.60805, 0, 0, 0, 100, 0),
(612990, 21, -794.382, 3510.48, 106.993, 1.60805, 0, 0, 0, 100, 0),
(612990, 22, -795.167, 3523.75, 108.789, 1.68816, 0, 0, 0, 100, 0),
(612990, 23, -798.125, 3538.12, 111.565, 1.80597, 0, 0, 0, 100, 0),
(612990, 24, -800.802, 3554.68, 115.355, 1.68816, 0, 0, 0, 100, 0),
(612990, 25, -802.032, 3565.11, 118.057, 1.68816, 0, 0, 0, 100, 0),
(612990, 26, -801.783, 3581.47, 120.883, 1.4549, 0, 0, 0, 100, 0),
(612990, 27, -802.011, 3564.58, 117.938, 4.8871, 0, 0, 0, 100, 0),
(612990, 28, -800.145, 3554.25, 115.262, 4.89102, 0, 0, 0, 100, 0),
(612990, 29, -797.161, 3537.61, 111.41, 4.89102, 0, 0, 0, 100, 0),
(612990, 30, -794.568, 3523.24, 108.635, 4.73394, 0, 0, 0, 100, 0),
(612990, 31, -794.291, 3510.4, 106.971, 4.73394, 0, 0, 0, 100, 0),
(612990, 32, -793.952, 3494.69, 103.573, 4.63341, 0, 0, 0, 100, 0),
(612990, 33, -794.781, 3484.22, 100.959, 4.15903, 0, 0, 0, 100, 0),
(612990, 34, -808.911, 3464.4, 97.574, 3.9454, 0, 0, 0, 100, 0),
(612990, 35, -812.943, 3460.21, 97.9133, 3.9454, 0, 0, 0, 100, 0),
(612990, 36, -819.016, 3453.91, 101.435, 3.9454, 0, 0, 0, 100, 0),
(612990, 37, -823.898, 3448.85, 101.523, 3.9454, 0, 0, 0, 100, 0),
(612990, 38, -829.557, 3442.98, 96.3154, 2.94952, 0, 0, 0, 100, 0),
(612990, 39, -840.841, 3444.34, 97.0612, 3.22991, 0, 0, 0, 100, 0),
(612990, 40, -850.703, 3443.43, 93.8689, 2.91967, 0, 0, 0, 100, 0),
(612990, 41, -864.652, 3444.11, 92.7238, 2.93538, 0, 0, 0, 100, 0),
(612990, 42, -882.329, 3447.81, 93.886, 2.93538, 0, 0, 0, 100, 0),
(612990, 43, -903.432, 3452.22, 95.4664, 2.93538, 0, 0, 0, 100, 0),
(612990, 44, -926.852, 3457.08, 100.479, 3.06576, 0, 0, 0, 100, 0),
(612990, 45, -952.426, 3457.29, 104.25, 3.22127, 0, 0, 0, 100, 0),
(612990, 46, -964.028, 3457.69, 106.011, 2.77752, 0, 0, 0, 100, 0),
(612990, 47, -974.238, 3462.86, 109.309, 2.41309, 0, 0, 0, 100, 0),
(612990, 48, -987.943, 3477.91, 120.001, 2.41309, 0, 0, 0, 100, 0),
(613000, 1, -883.902, 3815.24, 155.032, 0.115016, 0, 0, 0, 100, 0),
(613000, 2, -866.321, 3819.42, 143.614, 0.363988, 0, 0, 0, 100, 0),
(613000, 3, -857.883, 3826.87, 134.224, 1.0732, 0, 0, 0, 100, 0),
(613000, 4, -852.887, 3836.06, 123.863, 0.757472, 0, 0, 0, 100, 0),
(613000, 5, -843.807, 3842.7, 116.465, 0.323932, 0, 0, 0, 100, 0),
(613000, 6, -827.218, 3848.27, 112.925, 0.323932, 0, 0, 0, 100, 0),
(613000, 7, -813.946, 3852.72, 111.301, 0.323932, 0, 0, 0, 100, 0),
(613000, 8, -797.357, 3858.29, 108.921, 0.323932, 0, 0, 0, 100, 0),
(613000, 9, -789.58, 3862.87, 106.204, 1.14625, 0, 0, 0, 100, 0),
(613000, 10, -786.217, 3877.37, 100.771, 1.53973, 0, 0, 0, 100, 0),
(613000, 11, -787.039, 3895.84, 94.8607, 1.89316, 0, 0, 0, 100, 0),
(613000, 12, -792.819, 3912.6, 93.5031, 1.90887, 0, 0, 0, 100, 0),
(613000, 13, -798.624, 3929.11, 92.1476, 1.90887, 0, 0, 0, 100, 0),
(613000, 14, -806.438, 3946.41, 91.2526, 2.02432, 0, 0, 0, 100, 0),
(613000, 15, -812.527, 3957.02, 90.634, 2.13977, 0, 0, 0, 100, 0),
(613000, 16, -821.648, 3969.31, 89.2225, 2.41545, 0, 0, 0, 100, 0),
(613000, 17, -831.029, 3978.54, 87.6796, 2.41545, 0, 0, 0, 100, 0),
(613000, 18, -840.806, 3985.38, 88.0529, 2.57096, 0, 0, 0, 100, 0),
(613000, 19, -864.536, 3998.61, 87.9035, 2.65107, 0, 0, 0, 100, 0),
(613000, 20, -881.942, 4010.37, 86.1201, 2.53561, 0, 0, 0, 100, 0),
(613000, 21, -896.456, 4019.34, 84.2886, 2.76888, 0, 0, 0, 100, 0),
(613000, 22, -909.495, 4024.44, 83.9085, 2.76888, 0, 0, 0, 100, 0),
(613000, 23, -930.28, 4027.95, 83.3102, 3.67052, 0, 0, 0, 100, 0),
(613000, 24, -942.952, 4019.18, 85.7441, 3.94384, 0, 0, 0, 100, 0),
(613000, 25, -951.01, 4004.82, 89.9901, 4.42843, 0, 0, 0, 100, 0),
(613000, 26, -957.652, 3980.42, 99.4742, 4.50697, 0, 0, 0, 100, 0),
(613000, 27, -962.654, 3955.51, 102.519, 4.86039, 0, 0, 0, 100, 0),
(613000, 28, -960.186, 3940.06, 109.491, 5.0159, 0, 0, 0, 100, 0),
(613000, 29, -954.745, 3932.73, 113.372, 5.35284, 0, 0, 0, 100, 0),
(613000, 30, -951.805, 3928.54, 113.254, 5.15728, 0, 0, 0, 100, 0),
(613000, 31, -947.94, 3920.43, 115.986, 5.15728, 0, 0, 0, 100, 0),
(613000, 32, -945.544, 3913.56, 120.594, 4.70017, 0, 0, 0, 100, 0),
(613000, 33, -947.432, 3906.96, 123.711, 4.14882, 0, 0, 0, 100, 0),
(613000, 34, -956.781, 3892.16, 125.741, 4.14882, 0, 0, 0, 100, 0),
(613000, 35, -964.283, 3883.54, 128.997, 4.14882, 0, 0, 0, 100, 0),
(613000, 36, -967.124, 3871.09, 136.986, 4.58236, 0, 0, 0, 100, 0),
(613000, 37, -963.066, 3859.67, 143.225, 5.20911, 0, 0, 0, 100, 0),
(613000, 38, -957.817, 3853.79, 146.29, 5.75339, 0, 0, 0, 100, 0),
(613000, 39, -949.102, 3852.52, 150.526, 0.229688, 0, 0, 0, 100, 0),
(613000, 40, -942.815, 3860.96, 153.78, 1.13211, 0, 0, 0, 100, 0),
(613000, 41, -937.82, 3872.37, 158.677, 1.09912, 0, 0, 0, 100, 0),
(613000, 42, -932.153, 3879.17, 160.452, 0.859578, 0, 0, 0, 100, 0),
(613000, 43, -926.192, 3884.25, 157.241, 0.272885, 0, 0, 0, 100, 0),
(613000, 44, -914.509, 3886.43, 149.865, 0.155075, 0, 0, 0, 100, 0),
(613000, 45, -909.079, 3891.92, 145.448, 1.04807, 0, 0, 0, 100, 0),
(613000, 46, -907.437, 3900.86, 139.699, 1.63477, 0, 0, 0, 100, 0),
(613000, 47, -908.43, 3905.46, 137.44, 2.48457, 0, 0, 0, 100, 0),
(613000, 48, -917.699, 3908.43, 133.434, 2.91339, 0, 0, 0, 100, 0),
(613000, 49, -907.672, 3905.26, 137.768, 4.97114, 0, 0, 0, 100, 0),
(613000, 50, -906.874, 3901.13, 139.86, 4.60043, 0, 0, 0, 100, 0),
(613000, 51, -908.488, 3892.11, 145.325, 4.32004, 0, 0, 0, 100, 0),
(613000, 52, -914.11, 3886.45, 149.706, 3.37442, 0, 0, 0, 100, 0),
(613000, 53, -926.398, 3884.14, 157.373, 3.7357, 0, 0, 0, 100, 0),
(613000, 54, -931.886, 3878.94, 160.606, 3.92891, 0, 0, 0, 100, 0),
(613000, 55, -937.467, 3872.28, 158.778, 4.28706, 0, 0, 0, 100, 0),
(613000, 56, -942.905, 3859.79, 153.531, 4.05143, 0, 0, 0, 100, 0),
(613000, 57, -949.055, 3852.01, 150.712, 3.13409, 0, 0, 0, 100, 0),
(613000, 58, -957.357, 3853.77, 146.434, 2.17669, 0, 0, 0, 100, 0),
(613000, 59, -962.5, 3860.28, 142.804, 1.9395, 0, 0, 0, 100, 0),
(613000, 60, -966.927, 3870.49, 137.149, 1.36223, 0, 0, 0, 100, 0),
(613000, 61, -963.771, 3883.5, 128.825, 0.88785, 0, 0, 0, 100, 0),
(613000, 62, -956.539, 3891.88, 125.746, 1.06692, 0, 0, 0, 100, 0),
(613000, 63, -947.525, 3906, 123.962, 1.29547, 0, 0, 0, 100, 0),
(613000, 64, -945.256, 3914.4, 120.144, 1.88452, 0, 0, 0, 100, 0),
(613000, 65, -947.702, 3920.96, 116.021, 2.0848, 0, 0, 0, 100, 0),
(613000, 66, -952.066, 3928.69, 113.149, 2.0848, 0, 0, 0, 100, 0),
(613000, 67, -954.686, 3932.67, 113.385, 2.24266, 0, 0, 0, 100, 0),
(613000, 68, -960.04, 3939.58, 109.774, 1.70545, 0, 0, 0, 100, 0),
(613000, 69, -961.993, 3956.69, 102.559, 1.39522, 0, 0, 0, 100, 0),
(613000, 70, -957.594, 3979.55, 99.9281, 1.3206, 0, 0, 0, 100, 0),
(613000, 71, -950.874, 4004.39, 90.1346, 1.00723, 0, 0, 0, 100, 0),
(613000, 72, -942.656, 4018.96, 85.8151, 0.618458, 0, 0, 0, 100, 0),
(613000, 73, -930.919, 4028.06, 83.2657, 6.15473, 0, 0, 0, 100, 0),
(613000, 74, -909.68, 4024.72, 83.859, 5.91911, 0, 0, 0, 100, 0),
(613000, 75, -896.129, 4019.38, 84.2688, 5.68113, 0, 0, 0, 100, 0),
(613000, 76, -881.342, 4009.85, 86.2724, 5.68113, 0, 0, 0, 100, 0),
(613000, 77, -864.288, 3998.72, 87.913, 5.8068, 0, 0, 0, 100, 0),
(613000, 78, -840.036, 3985.31, 88.0187, 5.65129, 0, 0, 0, 100, 0),
(613000, 79, -829.879, 3977.87, 87.6329, 5.47693, 0, 0, 0, 100, 0),
(613000, 80, -821.48, 3969.9, 89.1567, 5.39211, 0, 0, 0, 100, 0),
(613000, 81, -813.095, 3958.57, 90.5741, 5.23188, 0, 0, 0, 100, 0),
(613000, 82, -806.216, 3946.06, 91.2668, 5.07638, 0, 0, 0, 100, 0),
(613000, 83, -798.468, 3928.75, 92.2036, 5.03868, 0, 0, 0, 100, 0),
(613000, 84, -792.492, 3912.82, 93.4395, 5.11643, 0, 0, 0, 100, 0),
(613000, 85, -786.84, 3896.35, 94.6782, 4.76536, 0, 0, 0, 100, 0),
(613000, 86, -786.121, 3878.29, 100.502, 4.48968, 0, 0, 0, 100, 0),
(613000, 87, -788.124, 3863.61, 105.516, 3.70507, 0, 0, 0, 100, 0),
(613000, 88, -795.949, 3858.74, 108.592, 3.50479, 0, 0, 0, 100, 0),
(613000, 89, -814.243, 3852.41, 111.347, 3.50479, 0, 0, 0, 100, 0),
(613000, 90, -828.511, 3847.51, 113.164, 3.50479, 0, 0, 0, 100, 0),
(613000, 91, -844.763, 3841.84, 116.786, 3.698, 0, 0, 0, 100, 0),
(613000, 92, -851.874, 3836.83, 122.654, 4.04908, 0, 0, 0, 100, 0),
(613000, 93, -857.369, 3826.42, 134.113, 4.00981, 0, 0, 0, 100, 0),
(613000, 94, -866.727, 3819.13, 143.969, 3.57705, 0, 0, 0, 100, 0);