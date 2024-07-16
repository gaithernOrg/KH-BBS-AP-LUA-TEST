LUAGUI_NAME = "bbsAPDummyLocations"
LUAGUI_AUTH = "Gicu"
LUAGUI_DESC = "BBS FM AP Dummy Locations"

game_version = 1 --1 for 1.0.0.9 EGS, 2 for Steam
IsEpicGLVersion = 0x6107D4
IsSteamGLVersion = 0x6107B4
IsSteamJPVersion = 0x610534
can_execute = false

function version_choice(array, choice)
    a = array
    return a[choice]
end

function _OnInit()
    if ReadByte(IsEpicGLVersion) == 0xFF then
        game_version = 1
        ConsolePrint("EGS Version Detected")
        can_execute = true
    end
    if ReadByte(IsSteamGLVersion) == 0xFF then
        game_version = 2
        ConsolePrint("Steam Version Detected")
        can_execute = true
    end
    if can_execute then
    end
end

function _OnFrame()
    if can_execute then
        if ReadInt(version_choice({0x0, 0x81711F}, game_version)) ~= 0xFFFFFF00 then --Not on Title Screen
            if ReadInt(version_choice({0x0, 0x81711F}, game_version)) ~= 0xD0100 then
                if ReadInt(version_choice({0x0, 0x81711F}, game_version)) ~= 0x20100 or ReadInt(version_choice({0x0, 0x817123}, game_version)) ~= 0x100 or ReadShort(version_choice({0x0, 0x817127}, game_version)) ~= 0x100 then
                    if ReadByte(version_choice({0x0, 0x10F9F800}, game_version)) == 0x02 then--Terra
                        --Remove Cutscene Rewards
                        WriteInt(version_choice({0x0, 0x10F9F498}, game_version), 0x00000000)
                        WriteInt(version_choice({0x0, 0x10F9F468}, game_version), 0x00000000)
                        WriteInt(version_choice({0x0, 0x10F9F480}, game_version), 0x00000000)
                        --Remove Sticker Rewards
                        WriteInt(version_choice({0x0, 0xD75476}, game_version), 0x00000)
                        WriteInt(version_choice({0x0, 0xD7549E}, game_version), 0x00000)
                        WriteInt(version_choice({0x0, 0xD7542E}, game_version), 0x00000)
                        WriteInt(version_choice({0x0, 0xD754A6}, game_version), 0x00000)
                        WriteInt(version_choice({0x0, 0xD75446}, game_version), 0x00000)
                        WriteInt(version_choice({0x0, 0xD75496}, game_version), 0x00000)
                        WriteInt(version_choice({0x0, 0xD75436}, game_version), 0x00000)
                        WriteInt(version_choice({0x0, 0xD7546E}, game_version), 0x00000)
                        WriteInt(version_choice({0x0, 0xD7548E}, game_version), 0x00000)
                        WriteInt(version_choice({0x0, 0xD754AE}, game_version), 0x00000)
                        WriteInt(version_choice({0x0, 0xD7543E}, game_version), 0x00000)
                        WriteInt(version_choice({0x0, 0xD7544E}, game_version), 0x00000)
                        WriteInt(version_choice({0x0, 0xD7545E}, game_version), 0x00000)
                        WriteInt(version_choice({0x0, 0xD754BE}, game_version), 0x00000)
                        WriteInt(version_choice({0x0, 0xD75456}, game_version), 0x00000)
                        WriteInt(version_choice({0x0, 0xD75466}, game_version), 0x00000)
                        WriteInt(version_choice({0x0, 0xD7547E}, game_version), 0x00000)
                        WriteInt(version_choice({0x0, 0xD75486}, game_version), 0x00000)
                        WriteInt(version_choice({0x0, 0xD754C6}, game_version), 0x00000)
                        WriteInt(version_choice({0x0, 0xD754B6}, game_version), 0x00000)
                        --Remove Chest Rewards
                        WriteInt(version_choice({0x0, 0xD75616}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD755C6}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD755CE}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD755D6}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7560E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD755DE}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD755E6}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD755EE}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD755F6}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD755FE}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75606}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD754EE}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD754F6}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD754FE}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75506}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD756AE}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD756B6}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD756BE}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD756C6}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD756CE}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD756D6}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD756DE}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD756E6}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD756EE}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD756F6}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7570E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75726}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD756FE}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75706}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75716}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7571E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7555E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75566}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7556E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75576}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7557E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75586}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7558E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD755B6}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75596}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7559E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD755AE}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD755BE}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD755A6}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7550E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7554E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75516}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7551E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75526}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7552E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75536}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7553E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75546}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75556}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD758A6}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD758AE}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD758B6}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75886}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7588E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75896}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7589E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD757EE}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD757F6}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD757FE}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75806}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7580E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75816}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7581E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75826}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7587E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7582E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75836}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD757E6}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7583E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7586E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75876}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75846}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7584E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75856}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7585E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75866}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7572E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75736}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7573E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75746}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75656}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7565E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75666}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7566E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7563E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75646}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7564E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75686}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7569E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7568E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75696}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD756A6}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75676}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7567E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7574E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75786}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7578E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75796}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD757AE}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD757BE}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75756}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7575E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75766}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7576E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75776}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7577E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7579E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD757D6}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD757DE}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD757B6}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD757C6}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD757CE}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD757A6}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7561E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75626}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD7562E}, game_version), 0x0000000)
                        WriteInt(version_choice({0x0, 0xD75636}, game_version), 0x0000000)
                    end
                end
            end
        end
    end
end