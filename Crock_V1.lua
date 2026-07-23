
                         
local CROCK = {

    keys = {['`']=243,['1']=157,['2']=158,['3']=160,['4']=164,['5']=165,['6']=159,['7']=161,['8']=162,['9']=163,['0']=288,['-']=84,['=']=83,['BS']=177,['HOME']=213,['ESC']=322,['F1']=288,['F2']=289,['F3']=170,['F5']=166,['F6']=167,['F7']=168,['F8']=169,['F9']=56,['F10']=57,['F11']=344,['DEL']=178,['TAB']=37,['Q']=44,['W']=32,['E']=38,['R']=45,['T']=245,['Y']=246,['U']=303,['I']=73,['G']=47,['P']=33,['[']=37,[']']=38,['CAPS']=137,['A']=34,['S']=8,['D']=9,['F']=23,['G']=47,['H']=74,['J']=170,['K']=311,['L']=182,['"']=186,[';']=187,['ENTER']=18,['PGUP']=10,['SHIFT']=21,['Z']=20,['X']=73,['C']=26,['V']=245,['B']=191,['N']=249,['M']=244,[',']=82,['.']=81,['UP']=172,['PGDN']=11,['INS']=121,['CTRL']=36,['ALT']=19,['SPACE']=22,['RCTRL']=70,['LEFT']=174,['DOWN']=173,['RIGHT']=175,['NENTER']=201,['MWUP']=15,['MWDOWN']=14,['N8']=61,['N4']=108,['N5']=60,['N6']=107,['N+']=96,['N-']=97,['N7']=117,['N9']=118,['M1']=24,['M2']=25,['M3']=348},

    keysinput = {['`'] = 243, ['1'] = 157, ['2'] = 158, ['3'] = 160, ['4'] = 164, ['5'] = 165, ['6'] = 159, ['7'] = 161, ['8'] = 162, ['9'] = 163, ['0'] = 288, ['HOME']=213,['ESC']=322,['F1']=288,['F2']=289,['F3']=170,['F5']=166,['F6']=167,['F7']=168,['F8']=169,['F9']=56,['F10']=57,['F11']=344,['DEL']=178,['TAB']=37, ['-'] = 84, ['='] = 83, ['Q'] = 44, ['W'] = 32, ['E'] = 38, ['R'] = 45, ['T'] = 245, ['Y'] = 246, ['U'] = 303, ['I'] = 23, ['O'] = 24, ['P'] = 199, ['['] = 39, [']'] = 40, ['A'] = 34, ['S'] = 8, ['D'] = 9, ['F'] = 23, ['G'] = 47, ['H'] = 74, ['J'] = 170, ['K'] = 311, ['L'] = 182, ['Z'] = 20, ['X'] = 73, ['C'] = 26, ['V'] = 0, ['B'] = 29, ['N'] = 249, ['M'] = 244, [','] = 82, ['.'] = 81},

    armas = {'Weapon_Unarmed', 'Weapon_Knife', 'Weapon_Knuckle', 'Weapon_NightStick', 'Weapon_Hammer', 'Weapon_GolfClub', 'Weapon_CrowBarr', 'Weapon_Bottle', 'Weapon_Dagger', 'Weapon_Hatchet', 'Weapon_Machete', 'Weapon_FlashLight', 'Weapon_SwitchBlade', 'Weapon_Poolcue', 'Weapon_PipeWrench', 'Weapon_Grenade', 'Weapon_StickyBomb', 'Weapon_ProxiMine', 'Weapon_Bzgas', 'Weapon_SmokeGrenade', 'Weapon_Molotov', 'Weapon_FireextinGuisher', 'Weapon_Petrolcan', 'Weapon_SnowBall', 'Weapon_Flare', 'Weapon_Ball', 'Weapon_Pistol', 'Weapon_Pistol_Mk2', 'Weapon_CombatPistol', 'Weapon_Appistol', 'Weapon_Revolver', 'Weapon_Revolver_Mk2', 'Weapon_DoubleAction', 'Weapon_Pistol50', 'Weapon_SnsPistol', 'Weapon_SnsPistol_Mk2', 'Weapon_HeavyPistol', 'Weapon_VintagePistol', 'Weapon_StunGun', 'Weapon_FlareGun', 'Weapon_MarksManPistol', 'Weapon_RayPistol', 'Weapon_MicroSmg', 'Weapon_MiniSmg', 'Weapon_Smg', 'Weapon_Smg_Mk2', 'Weapon_AssaultSmg', 'Weapon_CombatPdw', 'Weapon_GusenBerg', 'Weapon_MachinePistol', 'Weapon_Mg', 'Weapon_CombatMg', 'Weapon_CombatMg_Mk2', 'Weapon_RayCarbine', 'Weapon_AssaultRifle', 'Weapon_AssaultRifle_Mk2', 'Weapon_CarbineRifle', 'Weapon_CarbineRifle_Mk2', 'Weapon_AdvancedRifle', 'Weapon_SpecialCarbine', 'Weapon_SpecialCarbine_Mk2', 'Weapon_BullPupRifle', 'Weapon_BullPupRifle_Mk2', 'Weapon_CompactRifle', 'Weapon_PumpShotgun', 'Weapon_PumpShotgun_Mk2', 'Weapon_SweeperShotgun', 'Weapon_SawnoffShotgun', 'Weapon_BullpupShotgun', 'Weapon_AssaultShotgun', 'Weapon_Musket', 'Weapon_HeavyShotgun', 'Weapon_DbShotgun', 'Weapon_SniperRifle', 'Weapon_HeavySniper', 'Weapon_HeavySniper_Mk2', 'Weapon_MarksManRifle', 'Weapon_MarksManRifle_Mk2', 'Weapon_GrenadeLauncher', 'Weapon_GrenadeLauncher_Smoke', 'Weapon_Rpg', 'Weapon_Minigun', 'Weapon_FireWork', 'Weapon_RailGun', 'Weapon_HominGlauncher', 'Weapon_Compactlauncher', 'Weapon_RayMinigun'},

    txtlinks = {
        j = 'https://santos7zz.github.io/jogadorbugadofdp/jogador.html',
        a = 'https://santos7zz.github.io/armaspncdsp/armas.html',
        v = 'https://santos7zz.github.io/veiculos/veiculos.html',
        t = 'https://santos7zz.github.io/online/online.html',
        vs = 'https://santos7zz.github.io/visual/Untitled.html',
        ab = '',
        tp = '',
        e = 'https://santos7zz.github.io/yuri22/yuri22.html',
        c = 'https://santos7zz.github.io/essafoigoti/config.html',
        listaplayers = 'https://santos7zz.github.io/listajg/listajg.html',
        listavehs = 'https://santos7zz.github.io/vehs/Untitled.html',
        listaadms = 'https://santos7zz.github.io/listaadms/adms.html',
        notifysucesso = 'https://santos7zz.github.io/sucesso-1/sucesso.html',
        notifyaviso = 'https://santos7zz.github.io/aviso/aviso.html',
        sliderfundo = 'https://santos7zz.github.io/fundotab/Fundotab.html',
        bind = 'https://santos7zz.github.io/bind/bind.html',
        button = 'https://santos7zz.github.io/fundotab/Fundotab.html',
        buttonhover = 'https://santos7zz.github.io/fundotab/Fundotab.html',
        toggleoff = 'https://santos7zz.github.io/off2/off.html',
        toggleon = 'https://santos7zz.github.io/on/on.html',
        imputkey = 'https://santos7zz.github.io/carro/carro.html',
    },

    txtnames = {
        j = 'Jogador',
        a = 'Armas',
        v = 'Veiculos',
        t = 'Troll',
        vs = 'Visual',
        ab = 'Aimbot',
        tp = 'Teleports',
        e = 'Exploits',
        c = 'Config',
        notifysucesso = 'NotifySucesso',
        notifyaviso = 'NotifyAviso',
        listaplayers = 'ListaPlayer',
        listavehs = 'ListaVehs',
        listaadms = 'ListaAdms',
        sliderfundo = 'SliderFundo',
        bind = 'Bind',
        button = 'Button',
        buttonhover = 'ButtonHover',
        toggleoff = 'toggleoff',
        toggleon = 'toggleon',
        imputkey = 'imputkey',
    },

    colorsvehs = {
        ['Veh_Colors_R'] = {max = 30, min = 0, value = 30}, 
        ['Veh_Colors_G'] = {max = 255, min = 0, value = 255},
        ['Veh_Colors_B'] = {max = 30, min = 0, value = 30},
    },

    colorsvisuais = {
        ['Visual_R'] = {max = 30, min = 0, value = 30},
        ['Visual_G'] = {max = 255, min = 0, value = 255},
        ['Visual_B'] = {max = 30, min = 0, value = 30},
    },


    colorsprint = {
        vermelho = '^1',
        verde = '^2',
        amarelo = '^3',
        azul = '^4',
        ciano = '^5',
        magenta = '^6',
        branco = '^7',
        cinza = '^8',
        laranja = '^9',
        preto = '^0'
    },

    colorsps = {
        Cor_Visual_N = {r = 255, g = 255, b = 255},
        Cor_Visual_V = {r = 255, g = 255, b = 255},
        Cor_Visual_VE = {r = 255, g = 255, b = 255},
        Cor_Visual_L = {r = 255, g = 255, b = 255},
        Cor_Visual_E = {r = 255, g = 255, b = 255},
        Cor_Visual_C = {r = 255, g = 255, b = 255},
    },

    mousetxt = {
        cameraDeTrafego = 'trafficcam',
        centroDeRadar = 'radar_centre'
    },
    
    fovtxt = {
        txt1 = 'mpmissmarkers256',
        txt2 = 'corona_shade'
    },
    
    binds = {
        AbrirMenu = {['Label'] = 'M3',['Value'] = 348},
        AbrirMenu2 = {['Label'] = 'DEL',['Value'] = 178},
        NoclipBind = {['Label'] = 'Caps',['Value'] = 137},
        RepararBind = {['Label'] = 'F5',['Value'] = 166},
        ReviverBind = {['Label'] = 'F7',['Value'] = 168},
        TpWayBind = {['Label'] = '7',['Value'] = 161},
        DestrancarBind = {['Label'] = 'L',['Value'] = 182},
        TpVeiculoProxBind = {['Label'] = 'F6',['Value'] = 167},
        FreeCamBind = {['Label'] = 'F9',['Value'] = 56}
    },
    
    checkboxes = {},
    
    botoes = {},
    
    tabs = {
        tab = 'Jogador'
    },
    
    Scroll = {
        ['Jogador'] = {S1 = 0.0, S2 = 0.0},
        ['Jogador2'] = {S1 = 0.0, S2 = 0.0},
        ['Armas'] = {S1 = 0.0, S2 = 0.0},
        ['Armas2'] = {S1 = 0.0, S2 = 0.0},
        ['Veiculos'] = {S1 = 0.0, S2 = 0.0},
        ['Veiculos2'] = {S1 = 0.0, S2 = 0.0},
        ['Troll'] = {S1 = 0.0, S2 = 0.0},
        ['Troll2'] = {S1 = 0.0, S2 = 0.0},
        ['Visual'] = {S1 = 0.0, S2 = 0.0},
        ['Visual2'] = {S1 = 0.0, S2 = 0.0},
        ['Aimbot'] = {S1 = 0.0, S2 = 0.0},
        ['Aimbot2'] = {S1 = 0.0, S2 = 0.0},
        ['Teleports'] = {S1 = 0.0, S2 = 0.0},
        ['Teleports2'] = {S1 = 0.0, S2 = 0.0},
        ['Exploits'] = {S1 = 0.0, S2 = 0.0},
        ['Exploits2'] = {S1 = 0.0, S2 = 0.0},
        ['Config'] = {S1 = 0.0, S2 = 0.0},
        ['Config2'] = {S1 = 0.0, S2 = 0.0},
        ['Config3'] = {S1 = 0.0, S2 = 0.0},
        ['ListaVeiculos'] = {S1 = 0.0, S2 = 0.0},
        ['ListaPlayers'] = {S1 = 0.0, S2 = 0.0},
        ['ListaAdms'] = {S1 = 0.0, S2 = 0.0}
    },
    
    Sliders = {
        ['Aimlock_damage'] = 50, ['AIM-FOV'] = {max = 700, min = 0, value = 100},
        ['Aimlock_speed'] = 1000.0,
        ['Aimlock_hitchance'] = 100,
        ['NoclipVelocity'] = {max = 100.0, min = 1.0, value = 1.0}, 
        ['Setar_Health'] = {max = 400, min = 1, value = 200}, 
        ['Esp_Distancia'] = {max = 1500.0, min = 50.0, value = 350.0},
        ['Forca_Pegar_Props_Vehs'] = {max = 1500.0, min = 10.0, value = 50.0},
        ['Value_Aceleration'] = {max = 450.0, min = 10.0, value = 50.0},
        ['Ammo_Quantiti'] = {max = 500, min = 1, value = 100},
        ['Tamanho_Circulo'] = {max = 500.0, min = 10.0, value = 20.0},
        ['Boost_Buzina'] = {max = 500.0, min = 10.0, value = 20.0}
    },
    
    CROCKdrags = {
        CROCK_x = 0.5,
        CROCK_y = 0.5,
        CROCK_x2 = 0.5,
        CROCK_y2 = 0.5,
        CROCK_w = 0.5,
        CROCK_h = 0.5,
        CROCKX = 0.5,
        CROCKY = 0.5,
        CROCKX2 = 0.5,
        CROCKY2 = 0.5,
        CROCKW = 0.5,
        CROCKH = 0.5,
    },
    
    AdmsList = {
        Adm = {
            AdmX = 0.50,
            AdmY = 0.50,
            AdmW = 0.50,
            AdmH = 0.50,
        }
    },

    GamePools = {
        [1] = 'CPed',
        [2] = 'CObject',
        [3] = 'CVehicle',
        [4] = 'CPickup'
    },
    
    click = {
        [1] = 'Faster_Click',
        [2] = 'RESPAWN_ONLINE_SOUNDSET'
    },
    
    ac = {
        73, 75, 29, 47, 105, 187, 189, 190, 188, 311, 245, 257, 288, 37
    },
    
    dc = {
        1, 2, 142, 322, 106, 25, 24, 257, 16, 17,
    },
    
    dc2 = {
        32, 31, 30, 34, 71, 72, 63, 64,
    },
    
    dc3 = {
        1, 2, 142, 322, 106, 25, 24, 257, 32, 31, 30, 34, 23, 22, 16, 17
    },
    
    objnomes = {
        cerca = GetHashKey('prop_fnclink_05crnr1'),
        varinha = GetHashKey('prop_parking_wand_01'),
        lanterna = GetHashKey('p_cs_police_torch_s'),
        madeira = GetHashKey('prop_fence_log_02'),
        madeira2 = GetHashKey('prop_fncwood_14a'),
        madeira3 = GetHashKey('prop_snow_fncwood_14a'),
        chavedfenda = GetHashKey('prop_tool_screwdvr03'),
        chaveinglesa = GetHashKey('prop_tool_wrench'),
        martelo = GetHashKey('prop_tool_hammer'),
    },
    
    pednomes = {
        liao = GetHashKey('a_c_mtlion')
    },
    
    subst = {
        esperar = Wait,
        msg = print
    },
    
    coordsorteio = {
        {x = 165.2078, y = -988.2929, z = 30.09852},
        {x = -1845.98, y = -1229.75, z = 13.01},
        {x = -275.64, y = 6636.94, z = 7.45},
        {x = -42.78244, y = -1101.196, z = 26.42233},
        {x = 59.91772, y = -867.6551, z = 30.54273},
        {x = 100.82, y = -1073.45, z = 29.38},
        {x = 217.63, y = -810.47, z = 30.69},
        {x = -348.5838, y = -874.5931, z = 31.31802},
        {x = 1152.91, y = -1527.47, z = 34.85},
        {x = -113.42, y = -607.27, z = 36.29},
        {x = -679.03, y = 309.04, z = 83.09},
        {x = 426.74, y = -980.25, z = 30.71},
        {x = 649.31, y = -11.3, z = 82.74},
        {x = 2532.35, y = -406.78, z = 93.0},
        {x = 501.64, y = 5603.8, z = 797.91}
    },
    
    cameralivre = {
        cam = 1,
        cameralivremodes = {
            'Observar',
            'Spawnar Carros',
            'Spawnar Helis',
            'Deletar Veículos',
            'Teleportar-Se',
            'Tazer Player',
            'Explodir',
        },
        desatctrls = {
            32, 31, 30, 34, 22, 34, 69, 70, 92, 114, 257, 263, 264, 331, 24, 25,
        },
        cars = {'adder', 'futo', 'kuruma', 'zentorno', 't20',},
        helis = {'volatus', 'buzzard', 'swift', 'frogger', 'havok',},
    },
    }
    
    local XListAdms = CROCK.AdmsList.Adm.AdmX - 0.5
    local YListAdms = CROCK.AdmsList.Adm.AdmY - 0.5
    
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(CROCK.txtnames.j), CROCK.txtnames.j, GetDuiHandle(CreateDui(CROCK.txtlinks.j, 1050, 800)))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(CROCK.txtnames.a), CROCK.txtnames.a, GetDuiHandle(CreateDui(CROCK.txtlinks.a, 1050, 800)))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(CROCK.txtnames.v), CROCK.txtnames.v, GetDuiHandle(CreateDui(CROCK.txtlinks.v, 1050, 800)))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(CROCK.txtnames.t), CROCK.txtnames.t, GetDuiHandle(CreateDui(CROCK.txtlinks.t, 1050, 800)))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(CROCK.txtnames.vs), CROCK.txtnames.vs, GetDuiHandle(CreateDui(CROCK.txtlinks.vs, 1050, 800)))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(CROCK.txtnames.ab), CROCK.txtnames.ab, GetDuiHandle(CreateDui(CROCK.txtlinks.ab, 1050, 800)))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(CROCK.txtnames.tp), CROCK.txtnames.tp, GetDuiHandle(CreateDui(CROCK.txtlinks.tp, 1050, 800)))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(CROCK.txtnames.e), CROCK.txtnames.e, GetDuiHandle(CreateDui(CROCK.txtlinks.e, 1050, 800)))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(CROCK.txtnames.c), CROCK.txtnames.c, GetDuiHandle(CreateDui(CROCK.txtlinks.c, 1050, 800)))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(CROCK.txtnames.listaplayers), CROCK.txtnames.listaplayers, GetDuiHandle(CreateDui(CROCK.txtlinks.listaplayers, 300, 600)))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(CROCK.txtnames.listavehs), CROCK.txtnames.listavehs, GetDuiHandle(CreateDui(CROCK.txtlinks.listavehs, 300, 600)))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(CROCK.txtnames.listaadms), CROCK.txtnames.listaadms, GetDuiHandle(CreateDui(CROCK.txtlinks.listaadms, 270, 260)))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(CROCK.txtnames.notifysucesso), CROCK.txtnames.notifysucesso, GetDuiHandle(CreateDui(CROCK.txtlinks.notifysucesso, 570, 190)))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(CROCK.txtnames.notifyaviso), CROCK.txtnames.notifyaviso, GetDuiHandle(CreateDui(CROCK.txtlinks.notifyaviso, 875, 120)))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(CROCK.txtnames.sliderfundo), CROCK.txtnames.sliderfundo, GetDuiHandle(CreateDui(CROCK.txtlinks.sliderfundo, 113, 6)))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(CROCK.txtnames.bind), CROCK.txtnames.bind, GetDuiHandle(CreateDui(CROCK.txtlinks.bind, 380, 250)))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(CROCK.txtnames.button), CROCK.txtnames.button, GetDuiHandle(CreateDui(CROCK.txtlinks.button, 730, 100)))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(CROCK.txtnames.buttonhover), CROCK.txtnames.buttonhover, GetDuiHandle(CreateDui(CROCK.txtlinks.buttonhover, 710, 110)))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(CROCK.txtnames.toggleoff), CROCK.txtnames.toggleoff, GetDuiHandle(CreateDui(CROCK.txtlinks.toggleoff, 170, 90)))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(CROCK.txtnames.toggleon), CROCK.txtnames.toggleon, GetDuiHandle(CreateDui(CROCK.txtlinks.toggleon, 170, 90)))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(CROCK.txtnames.imputkey), CROCK.txtnames.imputkey, GetDuiHandle(CreateDui(CROCK.txtlinks.imputkey, 480, 250)))
    Citizen.Wait(100)
    
    CROCK.subst.msg('^2MENU INJETADO COM SUCESSO!')
    
    local opacity = 0
    local opacity2 = 0
    
    local CROCK_drag_x = CROCK.CROCKdrags.CROCK_x - 0.32
    local CROCK_drag_y = CROCK.CROCKdrags.CROCK_y - 0.5
    
    --CURSOR
    
    GetNuiCursorPosition()
    RequestStreamedTextureDict(CROCK.mousetxt.cameraDeTrafego, true)
    RequestStreamedTextureDict(CROCK.mousetxt.cameraDeTrafego, true)
        
    -- DETECTOR DE RESOURCE

    function Pegar(value)
        return Citizen.InvokeNative(0x4039b485, tostring(value), Citizen.ReturnResultAnyway(), Citizen.ResultAsString())
    end
    
    function VerifyResource(source)
        if Pegar(source) == 'started' or Pegar(string.lower(source)) == 'started' or Pegar(string.upper(source)) == 'started' then
            return true
        else
            return false
        end
    end
    
    if VerifyResource('vRP') then
        local modules = {}
        function module(rsc, path)
            if path == nil then
                path = rsc
                rsc = 'vrp'
            end
            local key = rsc..path
            local module = modules[key]
            if module then
                return module
            else
                local code = LoadResourceFile(rsc, path..'.lua')
                if code then
                    local f,err = load(code, rsc..'/'..path..'.lua')
                    if f then
                        local ok, res = xpcall(f, debug.traceback)
                        if ok then
                            modules[key] = res
                            return res
                        else
                            error('error loading module '..rsc..'/'..path..':'..res)
                        end
                    else
                        error('error parsing module '..rsc..'/'..path..':'..debug.traceback(err))
                    end
                else
                    error('resource file '..rsc..'/'..path..'.lua not found')
                end
            end
        end
        local Tunnel = module('vrp', 'lib/Tunnel')
        local Proxy = module('vrp', 'lib/Proxy')
        local Tools = module('vrp', 'lib/Tools')
        tvRP = {}

        Tunnel.bindInterface('vRP', tvRP)
        vRPserver = Tunnel.getInterface('vRP')
        Proxy.addInterface('vRP', tvRP)
        tvRP = Proxy.getInterface('vRP')
        Proxy = {}

        local proxy_rdata = {}
        local function proxy_callback(rvalues)
            proxy_rdata = rvalues
        end

        local function proxy_resolve(itable, key)
            local iname = getmetatable(itable).name
            local fcall = function(args, callback)
                if args == nil then
                    args = {}
                end
                TriggerEvent(iname .. ':proxy', key, args, proxy_callback)
                return table.unpack(proxy_rdata)
            end
            itable[key] = fcall
            return fcall
        end

        local function wait(self)
            local rets = Citizen.Await(self.p)
            if not rets then
                rets = self.r 
            end
            return table.unpack(rets)
        end

        local function areturn(self, ...)
            self.r = {...}
            self.p:resolve(self.r)
        end

        function async(func)
            if func then
                Citizen.CreateThreadNow(func)
            else
                return setmetatable({ wait = wait, p = promise.new() }, { __call = areturn })
            end
        end

        local Proxy = {}
        local callbacks = setmetatable({}, { __mode = 'v' })
        local rscname = GetCurrentResourceName()
        local function proxy_resolve(itable,key)
            local mtable = getmetatable(itable)
            local iname = mtable.name
            local ids = mtable.ids
            local callbacks = mtable.callbacks
            local identifier = mtable.identifier
            local fname = key
            local no_wait = false
            if string.sub(key,1,1) == '_' then
                fname = string.sub(key,2)
                no_wait = true
            end
            local fcall = function(...)
                local rid, r
                local profile
                if no_wait then
                    rid = -1
                else
                    r = async()
                    rid = ids:gen()
                    callbacks[rid] = r
                end
                local args = {...}
                TriggerEvent(iname..':proxy',fname, args, identifier, rid)    
                if not no_wait then
                    return r:wait()
                end
            end
            itable[key] = fcall
            return fcall
        end

        function Proxy.addInterface(name,itable)
            AddEventHandler(name..':proxy',function(member,args,identifier,rid)
                local f = itable[member]
                local rets = {}
                if type(f) == 'function' then
                    rets = {f(table.unpack(args))}
                end
                if rid >= 0 then
                    TriggerEvent(name..':'..identifier..':proxy_res',rid,rets)
                end
            end)
        end

        function Proxy.getInterface(name,identifier)
            if not identifier then identifier = GetCurrentResourceName() end
            local ids = Tools.newIDGenerator()
            local callbacks = {}
            local r = setmetatable({},{ __index = proxy_resolve, name = name, ids = ids, callbacks = callbacks, identifier = identifier })
            AddEventHandler(name..':'..identifier..':proxy_res', function(rid,rets)
                local callback = callbacks[rid]
                if callback then
                    ids:free(rid)
                    callbacks[rid] = nil
                    callback(table.unpack(rets))
                end
            end)
            return r
        end

        function table.maxn(t)
            local max = 0
            for k, v in pairs(t) do
                local n = tonumber(k)
                if n and n > max then
                    max = n
                end
            end
            return max
        end
    end
    
    function Mexer()
        local CursorPosX, CursorPosY = GetNuiCursorPosition() 
        local CursorPosW, CursorPosH = GetActiveScreenResolution()
        CursorPosX = CursorPosX / CursorPosW
        CursorPosY = CursorPosY / CursorPosH 
        local CursorR, resH = CROCK.CROCKdrags.CROCK_w - 0.5, CROCK.CROCKdrags.CROCK_h - 0.5
        if (CursorPosX >= CROCK.CROCKdrags.CROCK_x - 0.208 and CursorPosY >= CROCK.CROCKdrags.CROCK_y - 0.370 and CursorPosX <= CROCK.CROCKdrags.CROCK_x + 0.155 + CursorR and CursorPosY < CROCK.CROCKdrags.CROCK_y - 0.230 + resH) and IsDisabledControlJustPressed(0, CROCK.keys['M1']) then
            _x = CROCK.CROCKdrags.CROCK_x - CursorPosX
            _y = CROCK.CROCKdrags.CROCK_y - CursorPosY
            CROCK_s = true
        elseif IsDisabledControlReleased(0, 24) then
            CROCK_s = false
        end
        if CROCK_s then
            CROCK.CROCKdrags.CROCK_x = CursorPosX + _x
            CROCK.CROCKdrags.CROCK_y = CursorPosY + _y
        end
    end

    function GetTextWidht(text, font, size)
        BeginTextCommandWidth('STRING')
        AddTextComponentSubstringPlayerName(text)
        SetTextFont(font or 4)
        SetTextScale(size or 0.35, size or 0.35)
        local length = EndTextCommandGetWidth(1)
        return length
    end
    
    function DrawTxtColors(txt, x, y, outline, size, fonte, centro, r, g, b)
        SetTextFont(4)
        if tonumber(fonte) ~= nil then
            SetTextFont(fonte)
        end
        if centro then
            SetTextCentre(true)
        end
        SetTextColour(r, g, b, 255)
        SetTextScale(100.0, size or 0.23)
        BeginTextCommandDisplayText('STRING')
        AddTextComponentSubstringWebsite(txt)
        EndTextCommandDisplayText(x, y)
    end
    
    function SomClick()
        PlaySoundFrontend(-1, CROCK.click[1], CROCK.click[2], true)
    end
    
    function Slider(slider, x, y, dum)
        local CROCK_drag_x = CROCK.CROCKdrags.CROCK_x - 0.5
        local CROCK_drag_y = CROCK.CROCKdrags.CROCK_y - 0.5
        local CROCK_drag_w, CROCK_drag_h = CROCK.CROCKdrags.CROCK_w - 0.5, CROCK.CROCKdrags.CROCK_h - 0.5
        local CROCK_W_ = 0.080 + CROCK_drag_w / 2
        local CROCK_i_x = (CROCK_drag_w / 2) / 2 + x + (slider.value / (slider.max - slider.min) * CROCK_W_) - CROCK_W_ / 2 - 0.005
        local CROCK_i_y = y - 0.054
        local CROCK_res_x, CROCK_res_y = GetActiveScreenResolution()
        DrawSprite(CROCK.txtnames.sliderfundo, CROCK.txtnames.sliderfundo, (CROCK_drag_w / 2) / 10 + x, y, CROCK_W_ + 0.005, 10 / CROCK_res_y, 0.0, 255, 255, 255, 255)
        local value = slider.value
        local CROCK_cursor_x, CROCK_cursor_y = GetMousePos()
        local CROCK_scroolsx, CROCK_scroolsr = x - (0.5 - 0.460), x + ((0.530 + (CROCK_drag_w / 2)) - 0.5)
        local CROCK_xx, CROCK_yy = x - (0.5 - 0.553), y + ((0.490 + (CROCK_drag_w / 2)) - 0.5)
        DrawRectangle((CROCK_drag_w / 2) / 2 + x + 0.0005 + (slider.value / (slider.max / CROCK_W_) / 2) - CROCK_W_ / 2, y, (slider.value / (slider.max / CROCK_W_)), 0.0090, 30, 255, 30, 255)
        SetTextOutline()
        DrawTxtColors('•', CROCK_i_x, CROCK_i_y, false, 1.75, 4, false, 30, 255, 30, 255) -- bolinha
        DrawTxtColors('(' .. value .. ')', CROCK_xx, CROCK_yy, false, 0.280, 6, false, 30, 255, 30, 255) -- txt valor do slider
        if (Mouse((CROCK_drag_w / 2) / 2 + x, y, CROCK_W_ + 0.00, 7 / CROCK_res_y)) and IsDisabledControlPressed(0, 69) and IsDisabledControlPressed(0, 24) then
            local aa = (((CROCK_cursor_x) - (CROCK_scroolsx)) / (CROCK_scroolsr - CROCK_scroolsx)) * (slider.max - slider.min) - slider.min
            if dum then 
                slider.value = tonumber(string.format('%.' .. dum .. 'f', aa))
            else
                slider.value = math.floor(aa)
            end
        end
        if (Mouse((CROCK_drag_w / 2) / 2 + x, y, CROCK_W_ + 0.00, 7 / CROCK_res_y)) and IsControlJustPressed(0, CROCK.keys['LEFT']) and IsControlPressed(0, CROCK.keys['LEFT']) then 
            slider.value = math.max(slider.min, slider.value - 1) 
        elseif (Mouse((CROCK_drag_w / 2) / 2 + x, y, CROCK_W_ + 0.00, 7 / CROCK_res_y)) and IsControlJustPressed(0, CROCK.keys['RIGHT']) and IsControlPressed(0, CROCK.keys['RIGHT']) then 
            slider.value = math.min(slider.max, slider.value + 1) 
        end
        if slider.value > slider.max then
            slider.value = slider.max
        elseif slider.value < slider.min then
            slider.value = slider.min
        end
    end
    
    function RotacionarParaDIrecao(pos)
        local rt = vec3((math.pi / 180) * pos.x, (math.pi / 180) * pos.y, (math.pi / 180) * pos.z)
        local loca = vec3(-math.sin(rt.z) * math.abs(math.cos(rt.x)), math.cos(rt.z) * math.abs(math.cos(rt.x)), math.sin(rt.x))
        return loca
    end
    
    function RotacionarParaDIrecao2(rotate)
        local Retz = math.rad(rotate.z)
        local RetX = math.rad(rotate.x)
        local Absx = math.abs(math.cos(RetX))
        return vector3(-math.sin(Retz) * Absx, math.cos(Retz) * Absx, math.sin(RetX))
    end
    
    function TamanhoDaTela()
        local x, y = GetActiveScreenResolution()
        return {x = x, y = y}
    end
    
    function HSVRGB(hue, saturation, value, alpha)
        local red, green, blue
        local i = math.floor(hue * 6)
        local f = hue * 6 - i
        local p = value * (1 - saturation)
        local q = value * (1 - f * saturation)
        local t = value * (1 - (1 - f) * saturation)
        i = i % 6
        if i == 0 then
            red, green, blue = value, t, p
        elseif i == 1 then
            red, green, blue = q, value, p
        elseif i == 2 then
            red, green, blue = p, value, t
        elseif i == 3 then
            red, green, blue = p, q, value
        elseif i == 4 then
            red, green, blue = t, p, value
        elseif i == 5 then
            red, green, blue = value, p, q
        end
        return math.floor(red * 255 + 0.5), math.floor(green * 255 + 0.5), math.floor(blue * 255 + 0.5), math.floor(alpha * 255)
    end
    
    function DrawTextVisual(x, y, z, b7, r, g, b)
        SetDrawOrigin(x, y, z, 0)
        SetTextFont(0)
        SetTextProportional(0)
        SetTextScale(0.0, 0.20)
        SetTextColour(r, g, b, 255)
        SetTextOutline()
        BeginTextCommandDisplayText('STRING')
        SetTextCentre(1)
        AddTextComponentSubstringPlayerName(b7)
        EndTextCommandDisplayText(0.0, 0.0)
        ClearDrawOrigin()
    end
    
    function GetMousePos()
        local x, y = GetNuiCursorPosition() 
        local w, h = GetActiveScreenResolution()
        x = x / w ; y = y / h 
        return x, y
    end
    
    function Mouse(x, y, w, h)
        local X, Y = GetMousePos()
        local a, b = w / 2, h / 2
        if (X >= x - a and X <= x + a and Y >= y - b and Y <= y + b) then 
            return true 
        end
    end
    
    function MostrarMouse()
        local x, y = GetNuiCursorPosition() 
        local x_ez, y_ez = GetActiveScreenResolution() 
        local cursorX, cursorY = x / x_ez, y / y_ez
        DrawSprite(CROCK.mousetxt.cameraDeTrafego, CROCK.mousetxt.centroDeRadar, cursorX + 0.002, cursorY + 0.005, 0.010, 0.020, 330.0, 255, 255, 255, 255)
    end
    
    function Grad(posX, posY, largura, altura, quantidade, corR, corG, corB, corA, corAR, corAG, corAB, corAA)
        if quantidade then
            for l = 0, largura, 2 do
                if l > largura then
                    break
                end
                local novaCorA = math.floor((corAA - corA) / largura * l + corA)
                Retangulo(posX + l, posY, l < largura - 1 and 2 or 1, altura, corAR, corAG, corAB, math.abs(novaCorA))
            end
        else
            for l = 0, altura, 2 do
                if l > altura then
                    break
                end
                local novaCorA = math.floor((corAA - corA) / altura * l + corA)
                Retangulo(posX, posY + l, largura, l < altura - 1 and 2 or 1, corAR, corAG, corAB, math.abs(novaCorA))
            end
        end
    end
    
    function GradHSV(posX, posY, largura, altura, horizontal, hueInicio, saturationInicio, valueInicio, hueFim, saturationFim, valueFim)
        Retangulo(posX, posY, largura, altura, HSVRGB(hueInicio, saturationInicio, valueInicio, 1))
        if horizontal then
            for l = 0, largura, 2 do
                local hue, saturation, value = (hueFim - hueInicio) / largura * l + hueInicio, (saturationFim - saturationInicio) / largura * l + saturationInicio, (valueFim - valueInicio) / largura * l + valueInicio
                Retangulo(posX + l, posY, 2, altura, HSVRGB(hue, saturation, value, 1))
            end
        else
            for l = 0, altura, 2 do
                local hue, saturation, value = (hueFim - hueInicio) / altura * l + hueInicio, (saturationFim - saturationInicio) / altura * l + saturationInicio, (valueFim - valueInicio) / altura * l + valueInicio
                Retangulo(posX, posY + l, largura, 2, HSVRGB(hue, saturation, value, 1))
            end
        end
    end
    
    function Vectores(vector1, vector2)
        return vec3(vector1.x - vector2.x, vector1.y - vector2.y, vector1.z - vector2.z)
    end
    
    function CoordsAdjust2(coords)
        local checar, x, y = GetScreenCoordFromWorldCoord(coords.x, coords.y, coords.z)
        if not checar then
            return false
        end
        x2 = (x - 0.5) * 2.0
        y2 = (y - 0.5) * 2.0
        return true, x2, y2
    end
    
    function CoordCenter()
        local lugar = GetGameplayCamCoord()
        local mund = CoordsAdjust(0, 0)    
        local result = Vectores(mund, lugar)
        return result    
    end
    
    function CoordsAdjust(screenCoord)
        local camRot = GetGameplayCamRot(2)
        local camPos = GetGameplayCamCoord()
        local vect2x = 0.0
        local vect2y = 0.0
        local vect21y = 0.0
        local vect21x = 0.0
        local direction = RotacionarParaDIrecao2(camRot)
        local vect3 = vec3(camRot.x + 10.0, camRot.y + 0.0, camRot.z + 0.0)
        local vect31 = vec3(camRot.x - 10.0, camRot.y + 0.0, camRot.z + 0.0)
        local vect32 = vec3(camRot.x, camRot.y + 0.0, camRot.z + -10.0)
        local direction1 = RotacionarParaDIrecao2(vec3(camRot.x, camRot.y + 0.0, camRot.z + 10.0)) - RotacionarParaDIrecao2(vect32)
        local direction2 = RotacionarParaDIrecao2(vect3) - RotacionarParaDIrecao2(vect31)
        local radians = -(math.rad(camRot.y))
        vect33 = (direction1 * math.cos(radians)) - (direction2 * math.sin(radians))
        vect34 = (direction1 * math.sin(radians)) - (direction2 * math.cos(radians))
        local case1, x1, y1 = CoordsAdjust2(((camPos + (direction * 10.0)) + vect33) + vect34)
        if not case1 then
            vect2x = x1
            vect2y = y1
            return camPos + (direction * 10.0)
        end
        local case2, x2, y2 = CoordsAdjust2(camPos + (direction * 10.0))
        if not case2 then
            vect21x = x2
            vect21y = y2
            return camPos + (direction * 10.0)
        end
        if math.abs(vect2x - vect21x) < 0.001 or math.abs(vect2y - vect21y) < 0.001 then
            return camPos + (direction * 10.0)
        end
        local x = (screenCoord.x - vect21x) / (vect2x - vect21x)
        local y = (screenCoord.y - vect21y) / (vect2y - vect21y)
        return ((camPos + (direction * 10.0)) + (vect33 * x)) + (vect34 * y)
    end
    
    function Retangulo(posX, posY, largura, altura, corR, corG, corB, corA)
        local screenWidth, screenHeight = GetActiveScreenResolution()
        local screenX, screenY = 1 / screenWidth, 1 / screenHeight
        local normalizedPosX, normalizedPosY = screenX * posX, screenY * posY
        local normalizedWidth, normalizedHeight = screenX * largura, screenY * altura
        DrawRectangle(normalizedPosX + normalizedWidth / 2, normalizedPosY + normalizedHeight / 2, normalizedWidth, normalizedHeight, corR, corG, corB, corA)
    end       

    function ColorPicker(R, aJ, aK)
        local clpk = false
        local open = false
        local C = {
            hhv = {H = 0, S = 0, V = 0},
            rgb = {R = R, G = aJ, B = aK},
            mant = {Hue = false, Value = false},
            aberto = true,
            turn = true
        }
        while C.turn do
            Desativar_Controles3()
            local x, y = GetNuiCursorPosition()
            local cursorText = '°'
            local a9, aa = TamanhoDaTela().x, TamanhoDaTela().y
            local aL, aM = a9 / 2 - 100, aa / 2 - 100
            local r, g, b, ab = HSVRGB(C.hhv.H, C.hhv.S, C.hhv.V, 1)
            local r, g, b, ab = HSVRGB(C.hhv.H, 1, 1, 1)
            Retangulo(0, 0, a9, aa, 24, 24, 24, 200)
            Retangulo(aL - 2, aM - 2, 204, 208, 18, 18, 18, 255)
            Retangulo(aL - 1, aM - 1, 202, 206, 42, 42, 42, 255)
            Retangulo(aL, aM, 200, 204, 24, 24, 24, 255)
            Retangulo(aL, aM, 200, 2, C.rgb.R, C.rgb.G, C.rgb.B, 255)
            Retangulo(aL + 10, aM + 10, 160, 180, r, g, b, 255)
            Grad(aL + 10, aM + 10, 160, 180, true, r, g, b, 255, 255, 255, 255, 0)
            Grad(aL + 10, aM + 10, 160, 180, false, 255, 255, 255, 0, 0, 0, 0, 255)
            GradHSV(aL + 20 + 160, aM + 10, 10, 180, false, 0, 1, 1, 1, 1, 1)
            
            if IsControlJustPressed(0, 18) then
                if x > aL + 20 and x < aL + 20 + 160 and y > aM + 10 and y < aM + 10 + 180 then
                    C.mant.Value = true
                end
                if x > aL + 20 + 160 and x < aL + 20 + 160 + 10 and y > aM + 10 and y < aM + 10 + 180 then
                    C.mant.Hue = true
                end
                if x < aL or x > aL + 200 or y < aM or y > aM + 200 then
                    C.aberto = false
                end
            end
            
            if IsDisabledControlPressed(0, 69) then
                if C.mant.Value then
                    local aN = x - aL - 10
                    local aO = y - aM - 60
                    C.hhv.S = math.clamp(aN / 160, 0, 1) -- Ajuste aqui: 180 -> 160
                    C.hhv.V = math.clamp(1 - aO / 180, 0, 1) -- Ajuste aqui: 160 -> 180
                end
                if C.mant.Hue then
                    local aP = y - aM - 19
                    C.hhv.H = math.clamp(aP / 180, 0, 1)
                end
                local r, g, b, ab = HSVRGB(C.hhv.H, C.hhv.S, C.hhv.V, 1)
                C.rgb.R, C.rgb.G, C.rgb.B = r, g, b
            else
                if C.mant.Value then
                    C.aberto = false
                end
                C.mant.Value = false
                C.mant.Hue = false
            end
            
            local x, y = GetNuiCursorPosition()
            local x_ez, y_ez = GetActiveScreenResolution()
            local cursorX, cursorY = x / x_ez, y / y_ez
            DrawSprite(CROCK.mousetxt.cameraDeTrafego, CROCK.mousetxt.centroDeRadar, cursorX + 0.002, cursorY + 0.005, 0.010, 0.020, 330.0, 255, 255, 255, 255)
            
            if IsDisabledControlJustPressed(0, 191) then
                open = true
                clpk = false
                C.turn = false
                return C.rgb.R, C.rgb.G, C.rgb.B
            end
            
            Citizen.Wait(3)
        end
    end
    
    
    function DrawRectangle(x,y,width,height,red,green,blue,alpha)
        return Citizen.InvokeNative(0x3A618A217E5154F0,x,y,width,height,red,green,blue,alpha)
    end
    
    function TextTabButton(text,outline,size,justification,x,y,center,font)
        if outline then
            SetTextOutline()
        end
        if font~=nil and tonumber(font)~=nil then
            SetTextFont(font)
        else
            SetTextFont(4)
        end
        if center then
            SetTextCentre(true)
        end
        SetTextProportional(1)
        SetTextScale(100.0,size)
        SetTextEdge(115,0,230,255)
        SetTextColour(255,255,255,255)
        BeginTextCommandDisplayText('STRING')
        AddTextComponentSubstringWebsite(text)
        EndTextCommandDisplayText(x,y)
    end
    
    function ButtonClickTab(buttonID,text,hasOutline,posX,posY)
        local CursorR,resH=CROCK.CROCKdrags.CROCK_w-0.5,CROCK.CROCKdrags.CROCK_h-0.5
        local CROCKX,CROCKY=CROCK.CROCKdrags.CROCK_x-0.5,CROCK.CROCKdrags.CROCK_y-0.5
        local mouseX,mouseY=GetNuiCursorPosition()
        TextTabButton(text,hasOutline,0.270,0,posX,posY-0.01,true,0)
        local screenWidth,screenHeight=GetActiveScreenResolution()
        local posX2=posX
        if buttonID==CROCK.tabs then
        end
        if (mouseX/screenWidth)+0.030>=posX and (mouseX/screenWidth)-0.029<=posX and (mouseY/screenHeight)+0.015>=posY and (mouseY/screenHeight)-0.015<=posY and IsDisabledControlJustReleased(0,92) then 
            return true
        end
        return false
    end
    
    function TextButton(Texto,x,y,outline,tamanho,fonte,centro,r,g,b)
        SetTextColour(r,g,b,255)
        SetTextFont(0)
        if outline then
            SetTextOutline(true)
        end
        if tonumber(fonte)~=nil then
            SetTextFont(fonte)
        end
        if centro then
            SetTextCentre(true)
        end
        SetTextScale(100.0,tamanho or 0.23)
        BeginTextCommandDisplayText('STRING')
        AddTextComponentSubstringWebsite(Texto)
        EndTextCommandDisplayText(x,y)
    end
    
    function Click_Binds(Texto,x,y,outline)
        local CursorPosXxx,CROCK_cursor_y=GetNuiCursorPosition() 
        local CursorPosW,CursorPosH=GetActiveScreenResolution()
        CursorPosXxx=CursorPosXxx/CursorPosW
        CROCK_cursor_y=CROCK_cursor_y/CursorPosH
        if (CursorPosXxx)+0.03>=x+CROCK_drag_x and (CursorPosXxx)-0.02<=x+CROCK_drag_x and (CROCK_cursor_y)+0.008>=y+CROCK_drag_y and (CROCK_cursor_y)-0.008<=y+CROCK_drag_y then
            TextButton(Texto,x+CROCK_drag_x-0.028,y+CROCK_drag_y-0.011,outline,0.26,0,false,255,0,0,255)
        else
            TextButton(Texto,x+CROCK_drag_x-0.028,y+CROCK_drag_y-0.011,outline,0.26,0,false,255,255,255)
        end
        if (CursorPosXxx)+0.03>=x+CROCK_drag_x and (CursorPosXxx)-0.03<=x+CROCK_drag_x and (CROCK_cursor_y)+0.012>=y+CROCK_drag_y and (CROCK_cursor_y)-0.012<=y+CROCK_drag_y and IsDisabledControlJustReleased(0,92) then
            SomClick()
            return true
        else
            return false
        end
    end
    
    function TxtCheckBox(Texto,x,y,tamanho,font,center,r,g,b)
        SetTextScale(0.0,tamanho)
        SetTextFont(font)
        SetTextColour(r,g,b,255)
        SetTextCentre(center)
        BeginTextCommandDisplayText('TWOSTRINGS')
        AddTextComponentString(Texto)
        EndTextCommandDisplayText(x,y-0.011)
    end
    
    function TextButton2(name,x,y,outline,size,Justification,r,g,b) -- Botão
        SetTextScale(0.00,size)
        SetTextColour(r,g,b,255)
        SetTextFont(0)
        SetTextProportional(0)
        SetTextJustification(Justification)
        SetTextEntry('string')
        AddTextComponentString(name)
        DrawText(x,y)
    end
    
    function Botao(Texto,x,y,outline)
        local CursorPosXxx,CROCK_cursor_y=GetNuiCursorPosition() 
        local CursorPosW,CursorPosH=GetActiveScreenResolution()
        CursorPosXxx=CursorPosXxx/CursorPosW
        CROCK_cursor_y=CROCK_cursor_y/CursorPosH
        local CursorR,resH=CROCK.CROCKdrags.CROCK_w-0.5,CROCK.CROCKdrags.CROCK_h-0.5
        local CROCKX,CROCKY=CROCK.CROCKdrags.CROCK_x-0.5,CROCK.CROCKdrags.CROCK_y-0.5
    
        local CursorPosW=GetTextWidht(Texto,0,0.2)
        if (CursorPosXxx)+0.09>=x+CROCK_drag_x and (CursorPosXxx)-0.09<=x+CROCK_drag_x and (CROCK_cursor_y)+0.008>=y+CROCK_drag_y and (CROCK_cursor_y)-0.008<=y+CROCK_drag_y then
            TextButton2(Texto,x+CROCK_drag_x,y+CROCK_drag_y-0.017,outline,0.26,0,255,255,255,255)
            DrawSprite(CROCK.txtnames.buttonhover,CROCK.txtnames.buttonhover,x+CROCK_drag_x,y+CROCK_drag_y-0.003,0.163+CursorR,0.060+resH,0.0,255,255,255,opacity)
        else
            TextButton2(Texto,x+CROCK_drag_x,y+CROCK_drag_y-0.017,outline,0.26,0,255,255,255)
            DrawSprite(CROCK.txtnames.button,CROCK.txtnames.button,x+CROCK_drag_x,y+CROCK_drag_y-0.003,0.163+CursorR,0.060+resH,0.0,255,255,255,opacity)
        end
    
        if (CursorPosXxx)+0.09>=x+CROCK_drag_x and (CursorPosXxx)-0.09<=x+CROCK_drag_x and (CROCK_cursor_y)+0.012>=y+CROCK_drag_y and (CROCK_cursor_y)-0.012<=y+CROCK_drag_y and IsDisabledControlJustReleased(0,24) then
            SomClick()
            return true
        end
    end
    
    function Vehs(Texto,x,y,outline)
        local CursorPosXxx,CROCK_cursor_y=GetNuiCursorPosition() 
        local CursorPosW,CursorPosH=GetActiveScreenResolution()
        CursorPosXxx=CursorPosXxx/CursorPosW
        CROCK_cursor_y=CROCK_cursor_y/CursorPosH
        local CursorR,resH=CROCK.CROCKdrags.CROCK_w-0.5,CROCK.CROCKdrags.CROCK_h-0.5
        local CROCKX,CROCKY=CROCK.CROCKdrags.CROCK_x-0.5,CROCK.CROCKdrags.CROCK_y-0.5
    
        local CursorPosW=GetTextWidht(Texto,0,0.2)
        if (CursorPosXxx)+0.03>=x+CROCK_drag_x and (CursorPosXxx)-0.02<=x+CROCK_drag_x and (CROCK_cursor_y)+0.008>=y+CROCK_drag_y and (CROCK_cursor_y)-0.008<=y+CROCK_drag_y then
            TextButton2(Texto,x+CROCK_drag_x,y+CROCK_drag_y-0.017,outline,0.26,0,255,0,0,255)
            DrawSprite('ButtonHover','ButtonHover',x+CROCK_drag_x,y+CROCK_drag_y-0.003,0.163+CursorR,0.060+resH,0.0,255,255,255,255)
        else
            TextButton2(Texto,x+CROCK_drag_x,y+CROCK_drag_y-0.017,outline,0.26,0,255,255,255)
            DrawSprite('Button','Button',x+CROCK_drag_x,y+CROCK_drag_y-0.003,0.163+CursorR,0.060+resH,0.0,255,255,255,255)
        end
        if (CursorPosXxx)+0.03>=x+CROCK_drag_x and (CursorPosXxx)-0.03<=x+CROCK_drag_x and (CROCK_cursor_y)+0.012>=y+CROCK_drag_y and (CROCK_cursor_y)-0.012<=y+CROCK_drag_y and IsDisabledControlJustReleased(0,92) then
            SomClick()
            return true
        else
            return false
        end
    end
    
    function Players(Texto,x,y,outline)
        local CursorPosXxx,CROCK_cursor_y=GetNuiCursorPosition() 
        local CursorPosW,CursorPosH=GetActiveScreenResolution()
        CursorPosXxx=CursorPosXxx/CursorPosW
        CROCK_cursor_y=CROCK_cursor_y/CursorPosH
        local CursorR,resH=CROCK.CROCKdrags.CROCK_w-0.5,CROCK.CROCKdrags.CROCK_h-0.5
        local CROCKX,CROCKY=CROCK.CROCKdrags.CROCK_x-0.5,CROCK.CROCKdrags.CROCK_y-0.5
    
        if opacity2<255 then
            opacity2=opacity2+10
        end
    
        local CursorPosW=GetTextWidht(Texto,0,0.2)
        if (CursorPosXxx)+0.03>=x+CROCK_drag_x and (CursorPosXxx)-0.02<=x+CROCK_drag_x and (CROCK_cursor_y)+0.008>=y+CROCK_drag_y and (CROCK_cursor_y)-0.008<=y+CROCK_drag_y then
            TextButton2(Texto,x+CROCK_drag_x,y+CROCK_drag_y-0.017,outline,0.26,0,255,0,0,255)
            DrawSprite('ButtonHover','ButtonHover',x+CROCK_drag_x,y+CROCK_drag_y-0.003,0.163+CursorR,0.060+resH,0.0,255,255,255,opacity2)
        else
            TextButton2(Texto,x+CROCK_drag_x,y+CROCK_drag_y-0.017,outline,0.26,0,255,255,255)
            DrawSprite('Button','Button',x+CROCK_drag_x,y+CROCK_drag_y-0.003,0.163+CursorR,0.060+resH,0.0,255,255,255,opacity2)
        end
        if (CursorPosXxx)+0.03>=x+CROCK_drag_x and (CursorPosXxx)-0.03<=x+CROCK_drag_x and (CROCK_cursor_y)+0.012>=y+CROCK_drag_y and (CROCK_cursor_y)-0.012<=y+CROCK_drag_y and IsDisabledControlJustReleased(0,92) then
            SomClick()
            return true
        else
            return false
        end
    end
    
    function ListaAdmsTxt(Texto,x,y,outline,r,g,b)
        local CursorPosXxx,CROCK_cursor_y=GetNuiCursorPosition() 
        local CursorPosW,CursorPosH=GetActiveScreenResolution()
        CursorPosXxx=CursorPosXxx/CursorPosW
        CROCK_cursor_y=CROCK_cursor_y/CursorPosH
        local CursorR,resH=CROCK.CROCKdrags.CROCK_w-0.5,CROCK.CROCKdrags.CROCK_h-0.5
        local CROCKX,CROCKY=CROCK.CROCKdrags.CROCK_x-0.5,CROCK.CROCKdrags.CROCK_y-0.5
    
        if opacity2<255 then
            opacity2=opacity2+10
        end
    
        local CursorPosW=GetTextWidht(Texto,0,0.2)
        if (CursorPosXxx)+0.03>=x+CROCK_drag_x and (CursorPosXxx)-0.02<=x+CROCK_drag_x and (CROCK_cursor_y)+0.008>=y+CROCK_drag_y and (CROCK_cursor_y)-0.008<=y+CROCK_drag_y then
            TextButton2(Texto,x+CROCK_drag_x,y+CROCK_drag_y-0.014,outline,0.200,0,r,g,b)
            DrawSprite('Button','Button',x+CROCK_drag_x,y+CROCK_drag_y-0.003,0.105+CursorR,0.045+resH,0.0,255,255,255,opacity2)
        else
            TextButton2(Texto,x+CROCK_drag_x,y+CROCK_drag_y-0.014,outline,0.200,0,r,g,b)
            DrawSprite('Button','Button',x+CROCK_drag_x,y+CROCK_drag_y-0.003,0.105+CursorR,0.045+resH,0.0,255,255,255,opacity2)
        end
        if (CursorPosXxx)+0.03>=x+CROCK_drag_x and (CursorPosXxx)-0.03<=x+CROCK_drag_x and (CROCK_cursor_y)+0.012>=y+CROCK_drag_y and (CROCK_cursor_y)-0.012<=y+CROCK_drag_y and IsDisabledControlJustReleased(0,92) then
            SomClick()
            return true
        else
            return false
        end
    end
    
    function GetCursorPosition()
        local x,y=GetNuiCursorPosition()
        local w,h=GetActiveScreenResolution()
        x=x/w;y=y/h
        return x,y
    end
    
    function CursorZone(x,y,w,h)
        h=h*1.8
        local X,Y=GetCursorPosition()
        local a,b=w/2,h/2
        if (X>=x-a and X<=x+a and Y>=y-b and Y<=y+b) then
            return true
        end
    end
    
    function ListAdmsMoviment()
        local Adm_X,Adm_Y=XListAdms,YListAdms
        local CursorPositionX,CursorPositionY=GetCursorPosition()
    
        if CursorZone(0.050+Adm_X,0.110+Adm_Y,0.130,0.015) and IsDisabledControlJustPressed(0,24) and ToggleBindMenuStart then
            X=XListAdms-CursorPositionX
            Y=YListAdms-CursorPositionY
            AdmDragging=true
        elseif IsDisabledControlReleased(0,24) then
            AdmDragging=false
        end
        if AdmDragging then
            XListAdms=CursorPositionX+X
            YListAdms=CursorPositionY+Y
        end
    end
    
    function CheckBox(name,xx,yy,yy2,bool)
        local x,y=GetNuiCursorPosition()
        local x_res,y_res=GetActiveScreenResolution()
        local xx2=xx-0.012
        local yy2=yy+0.0020
        TxtCheckBox(name,xx2+0.003,yy2-0.0040,0.260,0,false,255,255,255)
        if bool then
            DrawSprite(CROCK.txtnames.toggleon,CROCK.txtnames.toggleon,xx2-0.010,yy2,0.038,0.038,0.0,255,255,255,255)
        else
            DrawSprite(CROCK.txtnames.toggleoff,CROCK.txtnames.toggleoff,xx2-0.010,yy2,0.038,0.038,0.0,255,255,255,255)
        end
        if((x/x_res)+0.030>=xx and (x/x_res)-0.029<=xx and (y/y_res)+0.009>=yy and (y/y_res)-0.01<=yy) and IsDisabledControlJustReleased(0,92) then 
            bool=not bool
            return true
        end
        return false
    end
    
    function Desativar_Controles()
        for _,controls in ipairs(CROCK.dc) do
            DisableControlAction(0,controls,true)
        end
    end
    
    function Desativar_Controles2()
        for _,controls in ipairs(CROCK.dc2) do
            DisableControlAction(0,controls,true)
        end
    end
    
    function Desativar_Controles3()
        for _,controls in ipairs(CROCK.dc3) do
            DisableControlAction(0,controls,true)
        end
    end
    
    function Desativar_Controles4()
        for _,controls in ipairs(CROCK.cameralivre.desatctrls) do
            DisableControlAction(0,controls,true)
        end
    end 
    
    function Ativar_Controles()
        for _,controls in ipairs(CROCK.ac) do
            EnableControlAction(1,controls,true)
        end
    end 
    
    function CLICK()
        return IsDisabledControlJustPressed(0,CROCK.keys['M1'])
    end
    
    function RGBCROCK(frequency)
        local result = {}
        local curtime = GetGameTimer() / 1000
        result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
        result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
        result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)
        return result
    end

    function SortearCoords(lista)
        local indice = math.random(1, #lista)
        return lista[indice]
    end
    
    function Text3d(x, y, z, Texto)
        local onScreen, _x, _y = World3dToScreen2d(x, y, z)
        local px, py, pz = table.unpack(GetGameplayCamCoords())
        local tamanho = (1 / GetDistanceBetweenCoords(px, py, pz, x, y, z, 1)) * 2
        local cor = (1 / GetGameplayCamFov()) * 100
        tamanho = tamanho * cor
        if onScreen then
            SetTextScale(0.0 * tamanho, 0.35 * tamanho)
            SetTextFont(0)
            SetTextProportional(1)
            SetTextColour(255, 255, 255, 215)
            SetTextDropshadow(0, 0, 0, 0, 155)
            SetTextEdge(2, 0, 0, 0, 150)
            SetTextDropShadow()
            SetTextOutline()
            SetTextEntry('STRING')
            SetTextCentre(1)
            AddTextComponentString(Texto)
            DrawText(_x, _y)
        end
    end
    
    function DrawTextColor(text, x, y, outline, size, font, centre, r,g,b, opacity, justification)
        SetTextFont(4)
        if outline then
            SetTextOutline(true)
        end
        if tonumber(font) ~= nil then
            SetTextFont(font)
        end
        if centre then
            SetTextCentre(true)
        end
        SetTextJustification(justification)
        SetTextColour(r, g, b, opacity)
        SetTextScale(100.0, size or 0.23)
        BeginTextCommandDisplayText('STRING')
        AddTextComponentSubstringWebsite(text)
        EndTextCommandDisplayText(x, y)
    end
    
    function NotifySucesso(text)
        Citizen.CreateThread(function()
            local enabled = true
            local notifyenabled = true
            local x = 0.0
            local animx = 5.0
            local time = 0
            local opacitylocal = 0
            if enabled then
                Citizen.CreateThread(function()
                    while time < 300 do 
                        Citizen.Wait(3)
                        x = x - 0.0015
                        time = time + 25
                        Citizen.Wait(2)
                    end
                    while time < 4000 do 
                        Citizen.Wait(3)
                        time = time + 25
                        animx = animx + 0.00055
                        Citizen.Wait(2)
                    end
                    while time >= 3800 do
                        Citizen.Wait(3)
                        x = x + 0.0055
                        opacitylocal = opacitylocal - 20
                        if opacitylocal <  20 then
                            enabled = false 
                        end
                        if x <= -0.1 then
                            enabled = false 
                        end
                        Citizen.Wait(3)
                    end
                end)                    
            end
            while enabled do
                if opacitylocal < 220 then
                    opacitylocal = opacitylocal + 2
                end
                Citizen.Wait(1)
                DrawSprite(CROCK.txtnames.notifysucesso, CROCK.txtnames.notifysucesso, x + 0.970 - 0.05, 0.250, 0.150, 0.070, 0, 255, 255, 255, opacitylocal)
                DrawTextColor(text, x + 0.920, 0.232, false, 0.4, 6, false,  255, 255, 255, 255, 0)
            end
        end)
    end
    
    function NotifyAviso(text)
        Citizen.CreateThread(function()
            local enabled = true
            local notifyenabled = true
            local x = 0.0
            local animx = 5.0
            local time = 0
            local opacitylocal = 0
            if enabled then
                Citizen.CreateThread(function()
                    while time < 300 do 
                        Citizen.Wait(3)
                        x = x - 0.0015
                        time = time + 25
                        Citizen.Wait(2)
                    end
                    while time < 4000 do 
                        Citizen.Wait(3)
                        time = time + 25
                        animx = animx + 0.00055
                        Citizen.Wait(2)
                    end
                    while time >= 3800 do
                        Citizen.Wait(3)
                        x = x + 0.0055
                        opacitylocal = opacitylocal - 20
                        if opacitylocal <  20 then
                            enabled = false 
                        end
                        if x <= -0.1 then
                            enabled = false 
                        end
                        Citizen.Wait(3)
                    end
                end)                    
            end
            while enabled do
                if opacitylocal < 220 then
                    opacitylocal = opacitylocal + 2
                end
                Citizen.Wait(1)
                DrawSprite(CROCK.txtnames.notifyaviso, CROCK.txtnames.notifyaviso, x+0.970 - 0.05, 0.250, 0.150, 0.070, 0, 255, 255, 255, opacitylocal)
                DrawTextColor(text, x+0.920, 0.232, false, 0.4, 6, false,  255, 255, 255, 255)
            end
        end)
    end
    
    function DrawTextInputBind(Text, x, y, scale, font, center, justification)
        SetTextScale(100.0, scale)
        SetTextFont(font)
        SetTextCentre(center)
        SetTextColour(255,255,255,255)
        BeginTextCommandDisplayText("STRING")
        AddTextComponentString(Text)
        SetTextJustification(justification)
        EndTextCommandDisplayText(x, y-0.011)
    end
    
    function Bind()
        local animacao = 0
        local CLICK = nil
        local Texto = nil
        local binded = false
        local alpha = 0
        while not binded do
            if alpha < 255 then
                alpha = alpha + 10
            end
            animacao = math.min(animacao + 0.02, 0.15)
            local CursorR, resH = CROCK.CROCKdrags.CROCK_w - 0.5, CROCK.CROCKdrags.CROCK_h - 0.5
            local CROCKX, CROCKY = CROCK.CROCKdrags.CROCK_x - 0.5, CROCK.CROCKdrags.CROCK_y - 0.5
            DrawSprite(CROCK.txtnames.bind, CROCK.txtnames.bind, 0.500 + CROCKX, 0.853 + CROCKY-animacao, 0.150 + CursorR, 0.160 + resH, 0.0, 255, 255, 255, 255)
            ToggleBindMenuStart = false
            for k, v in pairs(CROCK.keysinput) do
                if IsDisabledControlPressed(0, v) then
                    CLICK = v
                    Texto = k
                end
            end
            if IsDisabledControlJustPressed(0, 191) then
                ToggleBindMenuStart = true
                if CLICK ~= nil then
                    binded = true
                    return CLICK, Texto
                end
            end
            DrawTextInputBind(Texto, 0.490, 0.847-animacao, 0.33, 0, false, 0)
            Citizen.Wait(3)
        end
    end
    
    function CaixaTexto(Text, ExampleText, MaxStringLength)
        AddTextEntry('FMMC_KEY_TIP2', Text .. ':')
        DisplayOnscreenKeyboard(1, 'FMMC_KEY_TIP2', '', ExampleText, '', '', '', MaxStringLength)
        blockinput = true
        while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
            Citizen.Wait(3)
        end
        if UpdateOnscreenKeyboard() ~= 2 then
            AddTextEntry('FMMC_KEY_TIP2', '')
            local Kboard = GetOnscreenKeyboardResult()
            Citizen.Wait(500)
            blockinput = false
            return Kboard
        else
            AddTextEntry('FMMC_KEY_TIP2', '')
            Citizen.Wait(500)
            blockinput = true
            return Kboard
        end
    end
    
    function DrawTextInput(Text, x, y, scale, font, center, justification)
        SetTextScale(100.0, scale)
        SetTextFont(font)
        SetTextCentre(center)
        SetTextColour(255,255,255,255)
        BeginTextCommandDisplayText("STRING")
        AddTextComponentString(Text)
        SetTextJustification(justification)
        EndTextCommandDisplayText(x, y-0.011)
    end
    
    function imputkey(Texto)
        local animacao = 0
        Citizen.CreateThread(function()
            while true do
                DisableAllControlActions(0)
                animacao = math.min(animacao + 0.02, 0.15)
                local CursorR, resH = CROCK.CROCKdrags.CROCK_w - 0.5, CROCK.CROCKdrags.CROCK_h - 0.5    
                local CROCKX, CROCKY = CROCK.CROCKdrags.CROCK_x - 0.5, CROCK.CROCKdrags.CROCK_y - 0.5    
                DrawSprite(CROCK.txtnames.imputkey, CROCK.txtnames.imputkey, 0.520 + CROCKX, 0.853-animacao + CROCKY, 0.225 + CursorR, 0.160 + resH, 0.0, 255, 255, 255, 255)
                ToggleBindMenuStart = false
                for _, keys in pairs(CROCK.keysinput) do
                    if IsDisabledControlJustPressed(0, keys) then
                        if #Texto < 23 then
                            Texto = Texto.._ 
                        end
                    end
                end
                if IsDisabledControlJustPressed(0, 194) and #Texto > 0 then
                    Texto = string.sub(Texto, 1, #Texto - 1)
                end
                if IsDisabledControlJustPressed(0, 191) and #Texto > 0 then
                    if imputvehs then
                        SpawnVehicles(Texto)
                    elseif imputarmas then
                        PegarArmasName(Texto)
                    end
                    Citizen.Wait(500)
                    ToggleBindMenuStart = true
                    break
                end
                DrawTextInput(Texto, 0.492, 0.850-animacao, 0.33, 0, false, 0)
                Citizen.Wait(3)
            end
        end)
    end
    
    function TxtBind(Texto, x, y, _outl, size, font, centre) 
        SetTextFont(0) 
        if _outl then 
            SetTextOutline(true) 
        end 
        if tonumber(font) ~= nil then
            SetTextFont(font) 
        end
        SetTextCentre(centre)
        SetTextScale(100.0, size or 0.23)
        BeginTextCommandDisplayText('STRING')
        AddTextComponentSubstringWebsite(Texto)
        EndTextCommandDisplayText(x, y) 
    end
    
    function Peg(a, b, t)
        if a > 1 then 
            return t 
        end
        if a < 0 then 
            return b 
        end
        return b + (t - b) * a
    end
    
    function Pedg()
        local dist, ent, sret, ssx, ssy, bc = 10000000, nil
        for i = 1, #GetGamePool(CROCK.GamePools[1]) do
            local GgP = GetGamePool(CROCK.GamePools[1])[i];
            if GgP ~= selfEntity then
                local c = GetPedBoneCoords(GgP, 31086);
                local os, sx, sy = GetScreenCoordFromWorldCoord(c.x, c.y, c.z);
                local dista = #vector2(sx - 0.5, sy - 0.5)
                if dista < dist then
                    dist, ent, sret, ssx, ssy, bc = dista, GgP, os, sx, sy, c
                end
            end
        end
        return ent, bc, sret, ssx, ssy
    end
    
    function RegisterEntityForNetWork(entity)
        NetworkRequestControlOfEntity(entity)
        if NetworkHasControlOfEntity(entity) then
            NetworkRegisterEntityAsNetworked(entity)
            while not NetworkGetEntityIsNetworked(entity) do
                NetworkRegisterEntityAsNetworked(entity)
                Citizen.Wait(3)
            end
        end
    end
    
    function ModelRequest(model)
        RequestModel(model)
        while not HasModelLoaded(model) do
            RequestModel(model)
            Citizen.Wait(3)
        end
    end
    
    function CamLivreRotToQuat(rot)
        local pitch = math.rad(rot.x)
        local roll = math.rad(rot.y)
        local yaw = math.rad(rot.z)
        local cy = math.cos(yaw * 0.5)
        local sy = math.sin(yaw * 0.5)
        local cr = math.cos(roll * 0.5)
        local sr = math.sin(roll * 0.5)
        local cp = math.cos(pitch * 0.5)
        local sp = math.sin(pitch * 0.5)
        return quat(cy * cr * cp + sy * sr * sp, cy * sp * cr - sy * cp * sr, cy * cp * sr + sy * sp * cr, sy * cr * cp - cy * sr * sp)
    end
    
    function CamLivreCamFwd(camf)
        local coords = GetCamCoord(camf)
        local rot = GetCamRot(camf, 0)
        return CamLivreRotToQuat(rot) * vector3(0.0, 1.0, 0.0)
    end
    
    function CamLivreCamRigh(camf)
        local coords = GetCamCoord(camf)
        local rot = GetCamRot(camf, 0)
        local qrot = quat(0.0, vector3(rot.x, rot.y, rot.z))
        return CamLivreRotToQuat(rot) * vector3(1.0, 0.0, 0.0)
    end
    
    function CamLivreRayCast(distance)
        local adjustedRotation = {
            x = (math.pi / 180) * GetCamRot(cam, 0).x,
            y = (math.pi / 180) * GetCamRot(cam, 0).y,
            z = (math.pi / 180) * GetCamRot(cam, 0).z
        }
        local direction = {
            x = -math.sin(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)),
            y = math.cos(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)),
            z = math.sin(adjustedRotation.x)
        }
        local cameraRotation = GetCamRot(cam,0)
        local cameraCoord = GetCamCoord(cam)
        local destination = {
            x = cameraCoord.x + direction.x * distance,
            y = cameraCoord.y + direction.y * distance,
            z = cameraCoord.z + direction.z * distance
        }
        local a, b, c, d, e = GetShapeTestResult(StartShapeTestRay(
            cameraCoord.x, cameraCoord.y, cameraCoord.z,
            destination.x, destination.y, destination.z,
            -1, -1, 1
        ))
        return b, c, e
    end
    
    function RotationToDirection(Rotationation)
        return vector3(-math.sin(math.rad(Rotationation.z)) * math.abs(math.cos(math.rad(Rotationation.x))), math.cos(math.rad(Rotationation.z)) * math.abs(math.cos(math.rad(Rotationation.x))), math.sin(math.rad(Rotationation.x)))
    end  
    
    function RotationToDirection2(rotation)
        local retz = math.rad(rotation.z)
        local retx = math.rad(rotation.x)
        local absx = math.abs(math.cos(retx))
        return vector3(-math.sin(retz) * absx, math.cos(retz) * absx, math.sin(retx))
    end
    
    function GetEntityInFrontOfCam()
        local camCoords = GetCamCoord(cam)
        local offset = GetCamCoord(cam) + (RotationToDirection(GetCamRot(cam, 2)) * 1000)
        local rayHandle = StartShapeTestRay(camCoords.x, camCoords.y, camCoords.z, offset.x, offset.y, offset.z, -1)
        local a, b, c, d, entity = GetShapeTestResult(rayHandle)
        return entity
    end
    
    function DrawTextCamLivre(name, _outl, size, Justification, xx, yy, opacity)
        SetTextFont(0)
        SetTextScale(1.2, size)
        SetTextProportional(1)
        SetTextJustification(Justification)
        SetTextEntry('string')
        AddTextComponentString(name)
        SetTextColour(255, 255, 255, opacity)  
        DrawText(xx, yy)
    end
    
    function DrawCursorCamLivre()
        local CROCK_res_x, CROCK_res_y = GetActiveScreenResolution()
        DrawRectangle(0.5, 0.5, 0.007, 2/CROCK_res_y, 255, 255, 255, 255)
        DrawRectangle(0.5, 0.5, 2/CROCK_res_x, 0.007*1.8, 255, 255, 255, 255)
    end
    
    ------------------------------------------------------------------------->
    
    -----------------------FUNÇÕES INTERFACE PLAYER-------------------------->
    
    ------------------------------------------------------------------------->
    function vida()
        CreateThread(function()
            tvRP.setHealth(CROCK.Sliders['Setar_Health'].value)
            local value = CROCK.Sliders['Setar_Health'].value
            NotifySucesso('Vida Setada Em '..value..'!')
        end)
    end
    
    function Ressurect()
        CreateThread(function()
            tvRP.killGod()
            NotifySucesso('Você Foi Revivido!')
        end)
    end
    
    function Heal()
        CreateThread(function()      
            if GetEntityHealth(GetPlayerPed(-1)) < 199 then
                tvRP.setHealth(199)
            elseif GetEntityHealth(GetPlayerPed(-1)) < 101 then
                NotifySucesso('Reviva Primeiro!')
            elseif GetEntityHealth(GetPlayerPed(-1)) >= 199 then
                tvRP.setHealth(399)
                NotifySucesso('Você Foi Curado!')
            end
        end)
    end
    
    function Suicide()
        Citizen.CreateThread(function()
            NotifySucesso('Você Foi De Vasco!')
            SetEntityHealth(PlayerPedId(), 0)
        end)
    end
    
    function Handcuff_Uncuff()
        Citizen.CreateThread(function()
            local ped = PlayerPedId()
            if tvRP.isHandcuffed() then
                tvRP._setHandcuffed(source,false)
                SetPedComponentVariation(PlayerPedId(),7,0,0,2)
            end
        end)
    end
    
    function Clean_Wounds()
        Citizen.CreateThread(function()
            ClearPedBloodDamage(PlayerPedId())
            ClearPedTasksImmediately(PlayerPedId())
            NotifySucesso('Ferimentos Limpos!')
        end)
    end
    
    function Desgrudar()
        Citizen.CreateThread(function()
            local player = PlayerId()
            local peed = PlayerPedId()
            local handle, entity = FindFirstPed()
            repeat
                if DoesEntityExist(entity) and entity ~= Entity then
                    DetachEntity(peed, true, false)
                end
                success, entity = FindNextPed(handle)
            until not success
            EndFindPed(handle)
        end)
    end
    
    function Ramdom_R()
        Citizen.CreateThread(function()
            SetPedRandomComponentVariation(PlayerPedId(), true)
        end)
    end

    function Resetar_Roupas()
        Citizen.CreateThread(function()
            local ped = PlayerPedId()
            local player = PlayerId()
            local FreeMode = GetHashKey('mp_m_freemode_01')

            ModelRequest(FreeMode)

            if HasModelLoaded(FreeMode) then
                SetPlayerModel(player, FreeMode)
                Citizen.Wait(1000)
                ClearPedTasks(ped)
                ClearPedBloodDamage(ped)
            end
        end)
    end
    
    function Sair_Do_H()
        Citizen.CreateThread(function()
            DetachEntity(GetPlayerPed(-1),true,false)
            Desgrudar()
        end)
    end        

    function R()
        Citizen.CreateThread(function()
            SetPedPropIndex(PlayerPedId(), 0, 140, 1, 0) -- Chapeu
            SetPedPropIndex(PlayerPedId(), 1, 15, 0, 0) -- Oculos
            SetPedComponentVariation(PlayerPedId(), 1, 52, 0, 0) -- Mascara
            SetPedComponentVariation(PlayerPedId(), 5, 100, 0, 0) -- Camisa
            SetPedComponentVariation(PlayerPedId(), 5, 100, 0, 0) -- Jaqueta
            SetPedComponentVariation(PlayerPedId(), 4, 9, 6, 0) -- Calca
            SetPedComponentVariation(PlayerPedId(), 6, 34, 0, 0) -- Sapatos
            SetPedComponentVariation(PlayerPedId(), 5, 0, 0, 0) -- Mochila
            SetPedComponentVariation(PlayerPedId(), 1, 4, 0, 0) -- Acessorios
            SetPedComponentVariation(PlayerPedId(), 3, 99, 8, 0) -- Luva/Mao
            NotifySucesso('Roupa Legit Setada!')
        end)
    end
    
    function R2()
        Citizen.CreateThread(function()
            SetPedPropIndex(PlayerPedId(), 0, 45, 5, 0) -- Chapeu
            SetPedPropIndex(PlayerPedId(), 1, 15, 3, 0) -- Oculos
            SetPedComponentVariation(PlayerPedId(), 1, 0, 0, 0) -- Mascara
            SetPedComponentVariation(PlayerPedId(), 8, 1, 0, 0) -- Camisa
            SetPedComponentVariation(PlayerPedId(), 11, 1, 0, 0) -- Jaqueta
            SetPedComponentVariation(PlayerPedId(), 4, 6, 0, 0) -- Calca
            SetPedComponentVariation(PlayerPedId(), 6, 34, 0, 0) -- Sapatos
            SetPedComponentVariation(PlayerPedId(), 5, 10, 2, 0) -- Mochila
            SetPedComponentVariation(PlayerPedId(), 7, 50, 0, 0) -- Acessorios
            SetPedComponentVariation(PlayerPedId(), 3, 0, 0, 0) -- Luva/Mao
            NotifySucesso('Roupa Legi_renderimg Setada!')
        end)
    end
    
    function Skin_Adm()
        Citizen.CreateThread(function()
            SetPedPropIndex(PlayerPedId(), 0, 8, 0, 0) -- Chapeu
            SetPedComponentVariation(PlayerPedId(), 1, 24, 0, 0) -- Mascara
            SetPedComponentVariation(PlayerPedId(), 8, 15, 0, 0) -- Camisa
            SetPedComponentVariation(PlayerPedId(), 11, 1, 0, 0) -- Jaqueta
            SetPedComponentVariation(PlayerPedId(), 4, 3, 2, 0) -- Calca
            SetPedComponentVariation(PlayerPedId(), 6, 17, 0, 0) -- Sapatos
            SetPedComponentVariation(PlayerPedId(), 5, 0, 0, 0) -- Mochila
            SetPedComponentVariation(PlayerPedId(), 7, 50, 0, 0) -- Acessorios
            SetPedComponentVariation(PlayerPedId(), 3, 0, 0, 0) -- Luva/Mao
            NotifySucesso('Roupa Adm Setada!')
        end)
    end
    
    
    function Reset_Ap()
        Citizen.CreateThread(function()
            SetPedPropIndex(PlayerPedId(), 0, 0, 0, 0) -- Chapeu
            SetPedPropIndex(PlayerPedId(), 1, 0, 0, 0) -- Oculos
            SetPedComponentVariation(PlayerPedId(), 1, 0, 0, 0) -- Mascara
            SetPedComponentVariation(PlayerPedId(), 8, 0, 0, 0) -- Camisa
            SetPedComponentVariation(PlayerPedId(), 11, 0, 0, 0) -- Jaqueta
            SetPedComponentVariation(PlayerPedId(), 4, 0, 0, 0) -- Calca
            SetPedComponentVariation(PlayerPedId(), 6, 0, 0, 0) -- Sapatos
            SetPedComponentVariation(PlayerPedId(), 5, 0, 0, 0) -- Mochila
            SetPedComponentVariation(PlayerPedId(), 7, 0, 0, 0) -- Acessorios
            SetPedComponentVariation(PlayerPedId(), 3, 0, 0, 0) -- Luva/Mao
        end)
    end

    function puxarpracarai(namearmacacr)
        if VerifyResource('MQCU') then
            Citizen.CreateThread(function()
                Citizen.Wait(1000)
                local playerPed = PlayerPedId()
                tvRP.giveWeapons({[namearmacacr] = { ammo = CROCK.Sliders['Ammo_Quantiti'].value }})
                SetCurrentPedWeapon(playerPed, GetHashKey(namearmacacr), true)
                Citizen.Wait(500)
                local weaponHash = GetHashKey(namearmacacr)
                HudSetWeaponWheelTopSlot(weaponHash)
                NotifySucesso('Arma Spawnada!')
                Citizen.Wait(1000)
    
            end)
        elseif VerifyResource('PL_PROTECT') then
            Citizen.CreateThread(function()
                Citizen.Wait(1000)
                local playerPed = PlayerPedId()
                tvRP.giveWeapons({[namearmacacr] = { ammo = CROCK.Sliders['Ammo_Quantiti'].value }})
                SetCurrentPedWeapon(playerPed, GetHashKey(namearmacacr), true)
                Citizen.Wait(500)
                local weaponHash = GetHashKey(namearmacacr)
                HudSetWeaponWheelTopSlot(weaponHash)
                NotifySucesso('Arma Spawnada!')
                Citizen.Wait(1000)
    
            end)
        elseif VerifyResource('ThnAC') then
            Citizen.CreateThread(function()
                Citizen.Wait(1000)
                local playerPed = PlayerPedId()
                tvRP.giveWeapons({[namearmacacr] = { ammo = CROCK.Sliders['Ammo_Quantiti'].value }})
                SetCurrentPedWeapon(playerPed, GetHashKey(namearmacacr), true)
                Citizen.Wait(500)
                local weaponHash = GetHashKey(namearmacacr)
                HudSetWeaponWheelTopSlot(weaponHash)
                NotifySucesso('Arma Spawnada!')
                Citizen.Wait(1000)
    
            end)
        elseif VerifyResource('likizao_ac') then
            Citizen.CreateThread(function()
                Citizen.Wait(1000)
                local playerPed = PlayerPedId()
                tvRP._giveWeapons({[namearmacacr] = { ammo = CROCK.Sliders['Ammo_Quantiti'].value }})
                SetCurrentPedWeapon(playerPed, GetHashKey(namearmacacr), true)
                Citizen.Wait(500)
                local weaponHash = GetHashKey(namearmacacr)
                HudSetWeaponWheelTopSlot(weaponHash)
                NotifySucesso('Arma Spawnada!')
                Citizen.Wait(1000)
    
            end)
        else
            Citizen.CreateThread(function()
                Citizen.Wait(1000)
                local playerPed = PlayerPedId()
                tvRP._giveWeapons({[namearmacacr] = { ammo = CROCK.Sliders['Ammo_Quantiti'].value }})
                SetCurrentPedWeapon(playerPed, GetHashKey(namearmacacr), true)
                Citizen.Wait(500)
                local weaponHash = GetHashKey(namearmacacr)
                HudSetWeaponWheelTopSlot(weaponHash)
                NotifySucesso('Arma Spawnada!')
                Citizen.Wait(1000)
    
            end)
        end
    end
    
    function Pegar_Armas()
        Citizen.CreateThread(function()
            local namearma = imputkey('WEAPON_')
            PegarArmasName(namearma)
        end)
    end
    
    function PegarArmasName(name)
        Citizen.CreateThread(function()
            Citizen.Wait(1000)
            tvRP.giveWeapons({[name] = { ammo = CROCK.Sliders['Ammo_Quantiti'].value }})
            Citizen.Wait(500)
            local weaponHash = GetHashKey(name)
            HudSetWeaponWheelTopSlot(weaponHash)
            NotifySucesso('Arma Spawnada!')
            Citizen.Wait(1000)

        end)
    end
    
    function RemoverTodasArmas()
        Citizen.CreateThread(function()
            local ped = GetPlayerPed(-1)
            RemoveAllPedWeapons(ped, true)
            NotifySucesso('Armas Removidas!')
        end)
    end
    
    function atachamentos()
        Citizen.CreateThread(function()
            local ped = PlayerPedId()
            local arma = GetSelectedPedWeapon(ped)
            local attachsequip = {
                [GetHashKey('WEAPON_PISTOL')] = {
                    'COMPONENT_PISTOL_CLIP_01',
                    'COMPONENT_PISTOL_CLIP_02',
                    'COMPONENT_AT_PI_COMP',
                    'COMPONENT_AT_PI_FLSH',
                    'COMPONENT_PISTOL_VARMOD_LUXE'
                },
                [GetHashKey('WEAPON_PISTOL_MK2')] = {
                    'COMPONENT_PISTOL_MK2_CLIP_01',
                    'COMPONENT_PISTOL_MK2_CLIP_02',
                    'COMPONENT_PISTOL_MK2_CLIP_TRACER',
                    'COMPONENT_SNSPISTOL_MK2_CLIP_INCENDIARY',
                    'COMPONENT_PISTOL_MK2_CLIP_HOLLOWPOINT',
                    'COMPONENT_PISTOL_MK2_CLIP_FMJ',
                    'COMPONENT_AT_PI_RAIL',
                    'COMPONENT_AT_PI_FLSH_02'
                },
                [GetHashKey('WEAPON_COMBATPISTOL')] = {
                    'COMPONENT_COMBATPISTOL_CLIP_01',
                    'COMPONENT_COMBATPISTOL_CLIP_02',
                    'COMPONENT_AT_PI_COMP',
                    'COMPONENT_COMBATPISTOL_VARMOD_LOWRIDER'
                },
                [GetHashKey('WEAPON_APPISTOL')] = {
                    'COMPONENT_APPISTOL_CLIP_01',
                    'COMPONENT_APPISTOL_CLIP_02',
                    'COMPONENT_AT_PI_FLSH',
                    'COMPONENT_APPISTOL_VARMOD_LUXE'
                },
                [GetHashKey('WEAPON_PISTOL50')] = {
                    'COMPONENT_PISTOL50_CLIP_01',
                    'COMPONENT_PISTOL50_CLIP_02',
                    'COMPONENT_AT_PI_FLSH',
                    'COMPONENT_PISTOL50_VARMOD_LUXE'
                },
                [GetHashKey('WEAPON_REVOLVER')] = {
                    'COMPONENT_REVOLVER_VARMOD_BOSS',
                    'COMPONENT_REVOLVER_VARMOD_GOON',
                    'COMPONENT_REVOLVER_CLIP_01'
                },
                [GetHashKey('WEAPON_REVOLVER_MK2')] = {
                    'COMPONENT_REVOLVER_MK2_CLIP_01',
                    'COMPONENT_REVOLVER_MK2_CLIP_TRACER',
                    'COMPONENT_REVOLVER_MK2_CLIP_INCENDIARY',
                    'COMPONENT_REVOLVER_MK2_CLIP_HOLLOWPOINT',
                    'COMPONENT_REVOLVER_MK2_CLIP_FMJ',
                    'COMPONENT_AT_SIGHTS',
                    'COMPONENT_AT_SCOPE_MACRO_MK2',
                    'COMPONENT_AT_PI_FLSH',
                    'COMPONENT_AT_PI_COMP_03'
                },
                [GetHashKey('WEAPON_SNSPISTOL')] = {
                    'COMPONENT_SNSPISTOL_CLIP_01',
                    'COMPONENT_SNSPISTOL_CLIP_02',
                    'COMPONENT_SNSPISTOL_VARMOD_LOWRIDER'
                },
                [GetHashKey('WEAPON_SNSPISTOL_MK2')] = {
                    'COMPONENT_SNSPISTOL_MK2_CLIP_01',
                    'COMPONENT_SNSPISTOL_MK2_CLIP_02',
                    'COMPONENT_SNSPISTOL_MK2_CLIP_TRACER',
                    'COMPONENT_SNSPISTOL_MK2_CLIP_INCENDIARY',
                    'COMPONENT_SNSPISTOL_MK2_CLIP_HOLLOWPOINT',
                    'COMPONENT_SNSPISTOL_MK2_CLIP_FMJ',
                    'COMPONENT_AT_PI_FLSH_03',
                    'COMPONENT_AT_PI_RAIL_02',
                    'COMPONENT_AT_PI_COMP_02'
                },
                [GetHashKey('WEAPON_VINTAGEPISTOL')] = {
                    'COMPONENT_VINTAGEPISTOL_CLIP_01',
                    'COMPONENT_VINTAGEPISTOL_CLIP_02'
                },
                [GetHashKey('WEAPON_RAYPISTOL')] = {
                    'COMPONENT_RAYPISTOL_VARMOD_XMAS18'
                },
                [GetHashKey('WEAPON_CERAMICPISTOL')] = {
                    'COMPONENT_CERAMICPISTOL_CLIP_01',
                    'COMPONENT_CERAMICPISTOL_CLIP_02'
                },
                [GetHashKey('WEAPON_HEAVYPISTOL')] = {
                    'COMPONENT_HEAVYPISTOL_CLIP_01',
                    'COMPONENT_HEAVYPISTOL_CLIP_02',
                    'COMPONENT_AT_PI_FLSH',
                    'COMPONENT_HEAVYPISTOL_VARMOD_LUXE'
                },
                [GetHashKey('WEAPON_MACHINEPISTOL')] = {
                    'COMPONENT_MACHINEPISTOL_CLIP_01',
                    'COMPONENT_MACHINEPISTOL_CLIP_02',
                    'COMPONENT_MACHINEPISTOL_CLIP_03'
                },
                [GetHashKey('WEAPON_COMBATPDW')] = {
                    'COMPONENT_COMBATPDW_CLIP_01',
                    'COMPONENT_COMBATPDW_CLIP_02',
                    'COMPONENT_COMBATPDW_CLIP_03',
                    'COMPONENT_AT_AR_FLSH',
                    'COMPONENT_AT_AR_AFGRIP',
                    'COMPONENT_AT_SCOPE_SMALL'
                },
                [GetHashKey('WEAPON_MICROSMG')] = {
                    'COMPONENT_MICROSMG_CLIP_01',
                    'COMPONENT_MICROSMG_CLIP_02',
                    'COMPONENT_AT_PI_FLSH',
                    'COMPONENT_AT_SCOPE_MACRO',
                    'COMPONENT_MICROSMG_VARMOD_LUXE'
                },
                [GetHashKey('WEAPON_SMG')] = {
                    'COMPONENT_SMG_CLIP_01',
                    'COMPONENT_SMG_CLIP_02',
                    'COMPONENT_SMG_CLIP_03',
                    'COMPONENT_AT_AR_FLSH',
                    'COMPONENT_AT_SCOPE_MACRO_02',
                    'COMPONENT_SMG_VARMOD_LUXE'
                },
                [GetHashKey('WEAPON_SMG_MK2')] = {
                    'COMPONENT_SMG_MK2_CLIP_01',
                    'COMPONENT_SMG_MK2_CLIP_02',
                    'COMPONENT_SMG_MK2_CLIP_TRACER',
                    'COMPONENT_SMG_MK2_CLIP_INCENDIARY',
                    'COMPONENT_SMG_MK2_CLIP_HOLLOWPOINT',
                    'COMPONENT_SMG_MK2_CLIP_FMJ',
                    'COMPONENT_AT_AR_FLSH',
                    'COMPONENT_AT_SIGHTS_SMG',
                    'COMPONENT_AT_SCOPE_MACRO_02_SMG_MK2',
                    'COMPONENT_AT_SCOPE_SMALL_SMG_MK2'
                },
                [GetHashKey('WEAPON_SAWNOFFSHOTGUN')] = {
                    'COMPONENT_SAWNOFFSHOTGUN_VARMOD_LUXE'
                },
                [GetHashKey('WEAPON_ASSAULTSHOTGUN')] = {
                    'COMPONENT_ASSAULTSHOTGUN_CLIP_01',
                    'COMPONENT_ASSAULTSHOTGUN_CLIP_02',
                    'COMPONENT_AT_AR_FLSH',
                    'COMPONENT_AT_AR_AFGRIP'
                },
                [GetHashKey('WEAPON_CARBINERIFLE')] = {
                    'COMPONENT_AT_AR_FLSH',
                    'COMPONENT_AT_SCOPE_MEDIUM',
                    'COMPONENT_AT_AR_AFGRIP'
                },
                [GetHashKey('WEAPON_CARBINERIFLE_MK2')] = {
                    'COMPONENT_AT_AR_AFGRIP_02',
                    'COMPONENT_AT_AR_FLSH',
                    'COMPONENT_AT_SCOPE_MEDIUM_MK2',
                    'COMPONENT_AT_MUZZLE_02'
                },
                [GetHashKey('WEAPON_SPECIALCARBINE_MK2')] = {
                    'COMPONENT_AT_AR_AFGRIP_02',
                    'COMPONENT_AT_AR_FLSH',
                    'COMPONENT_AT_SCOPE_MEDIUM_MK2',
                    'COMPONENT_AT_MUZZLE_02'
                },
            }
    
            local components = attachsequip[arma]
            if components then
                for _, component in ipairs(components) do
                    GiveWeaponComponentToPed(ped, arma, GetHashKey(component))
                end
                NotifySucesso('Attachs Adicionados!')
            else
                NotifyAviso('Arma Não Tem Attachs!')
            end
        end)
    end
    
    function ExecutarAnimacaoCoronhada()
        Citizen.CreateThread(function()
            local playerPed = PlayerPedId()
            local animDict = 'missfra0_chop_b_wai_renderimg' 
            local animName = 'world_human_guard_pistol_whistle'
            RequestAnimDict(animDict)
            while not HasAnimDictLoaded(animDict) do
                Citizen.Wait(100)
            end
            TaskPlayAnim(playerPed, animDict, animName, 8.0, 1.0, -1, 48, 0, false, false, false)
            Citizen.Wait(5000) 
            ClearPedTasks(playerPed)
        end)
    end
    function SpawnVehicles(name)
        DoScreenFadeOut(500)
        Wait(1000)
        DoScreenFadeIn(500)
        TriggerEvent("Notify", "aviso", "Você se afastou muito do local do test.",3000)
        TriggerEvent("Notify", "importante", "Test Drive finalizado com sucesso.",3000)
        Citizen.CreateThread(function()
            Citizen.Wait(1)
            local playerPed = PlayerPedId()
            local coords = GetEntityCoords(playerPed)
            local heading = GetEntityHeading(playerPed)
            ModelRequest(name)
            local veh = CreateVehicle(GetHashKey(name), coords, heading, true, true)
            SetModelAsNoLongerNeeded(name)
            SetVehicleHasBeenOwnedByPlayer(veh, true)
            SetVehicleEngineOn(veh, true, true, false)
            Citizen.Wait(200)
            RegisterEntityForNetWork(veh)
            tvRP._addUserGroup(playerID, "vehicle." .. name)
            Destrancar2(veh)
            NotifySucesso(''..name..' Spawnado')
            print(name..' Spawnado Com Sucesso!')
        end)
    end

    function dasd(name)
        local mhash = GetHashKey(name)
        while not HasModelLoaded(mhash) do
            RequestModel(mhash)
            Citizen.Wait(10)
        end
    
        if HasModelLoaded(mhash) then
            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)
            local heading = GetEntityHeading(ped)
            local nveh = CreateVehicle(mhash,coords,heading,true,true)
            SetVehicleNumberPlateText(nveh,188511)
    
            SetVehicleOnGroundProperly(nveh)
            SetEntityAsMissionEntity(nveh,true,true)
            TaskWarpPedIntoVehicle(ped,nveh,-1)
    
            SetModelAsNoLongerNeeded(mhash)
        end
    end
    
    function CloneVehicles(name, plate)
        Citizen.CreateThread(function()
            Citizen.Wait(1)
            local playerPed = PlayerPedId()
            local coords = GetEntityCoords(playerPed)
            local heading = GetEntityHeading(playerPed)
            ModelRequest(name)
            local veh = CreateVehicle(GetHashKey(name), coords, heading, true, true)
            SetModelAsNoLongerNeeded(name)
            SetVehicleNumberPlateText(veh, plate)
            SetVehicleHasBeenOwnedByPlayer(veh, true)
            SetVehicleEngineOn(veh, true, true, false)
            Citizen.Wait(200)
            RegisterEntityForNetWork(veh)
            tvRP._addUserGroup(playerID, "vehicle." .. name)
            Destrancar2(veh)
            NotifySucesso(''..name..' Spawnado')
            print(name..' Spawnado Com Sucesso!')
        end)
    end
    
    function Pegar_Veiculos()
        Citizen.CreateThread(function()
            local namecar = imputkey('')
            SpawnVehicles(namecar)
        end)
    end
    
    function SpawnVehiclesNc()
        Citizen.CreateThread(function()
            if ToggleNoClip then
                local hash = GetHashKey("")
                ModelRequest(hash)
                local Coords = GetEntityCoords(PlayerPedId())
                local veh = CreateVehicle(hash, Coords, 0.0, false, false)
                SetVehicleEngineOn(veh, false, false, false)
                SetVehicleRadioEnabled(veh, false)
                SetVehicleUndriveable(veh, true)
                SetPedIntoVehicle(PlayerPedId(), veh, -1)
                SetVehicleHasBeenOwnedByPlayer(veh, true)
                SetModelAsNoLongerNeeded(hash)
                SetPedCanBeKnockedOffVehicle(PlayerPedId(), true)
                SetEntityAlpha(veh, 0)
                SetEntityAlpha(PlayerPedId(), 0)
            else
                NotifySucesso("Você Não Em NoClip!")
            end
        end)
    end

    function SpawnVehiclesAtCoord(namecar, x, y, z)
        Citizen.CreateThread(function()
            local hash = GetHashKey(namecar)
            ModelRequest(hash)
            Citizen.Wait(5)
            local veh = CreateVehicle(hash, x, y, z, 0.0, true, true)
            SetModelAsNoLongerNeeded(hash)
            SetVehicleEngineOn(veh, true, true, true)
            RegisterEntityForNetWork(veh)
            Destrancar2(veh)
        end)
    end
    
    function SpawnVehiclesAtPlayerCoord(namecar, player)
        Citizen.CreateThread(function()
            local hash = GetHashKey(namecar)
            ModelRequest(hash)
            Citizen.Wait(500)
            local Coords = GetEntityCoords(player)
            local heading = GetEntityHeading(player)
            local veh = CreateVehicle(hash, Coords, heading, true, true)
            SetModelAsNoLongerNeeded(hash)
            SetVehicleEngineOn(veh, true, true, true)
            RegisterEntityForNetWork(veh)
            Destrancar2(veh)
        end)
    end
    
    function Destrancar()
        Citizen.CreateThread(function()
            for _, vehicle in pairs(GetGamePool(CROCK.GamePools[3])) do
                if Citizen.InvokeNative(0x7239B21A38F536BA, vehicle) then
                    Citizen.InvokeNative(0xB664292EAECF7FA6, vehicle, 1)
                    Citizen.InvokeNative(0x517AAF684BB50CD1, vehicle, PlayerId(), false)
                    Citizen.InvokeNative(0xA2F80B8D040727CC, vehicle, false)
                end
            end
        end)
    end
    
    function Destrancar2(vehicle)
        Citizen.CreateThread(function()
            if Citizen.InvokeNative(0x7239B21A38F536BA, vehicle) then
                Citizen.InvokeNative(0xB664292EAECF7FA6, vehicle, 1)
                Citizen.InvokeNative(0x517AAF684BB50CD1, vehicle, PlayerId(), false)
                Citizen.InvokeNative(0xA2F80B8D040727CC, vehicle, false)
            end
        end)
    end
    
    function Trancar()
        Citizen.CreateThread(function()
            Lock_Vehs()
        end)
    end
    
    function Reparar_Desvirar()
        Citizen.CreateThread(function()
            local playerPed = PlayerPedId()
            local isPlayerInVehicle = IsPedInAnyVehicle(playerPed)
            if isPlayerInVehicle then
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                RegisterEntityForNetWork(vehicle)
                SetVehicleOnGroundProperly(vehicle)
                SetVehicleFixed(vehicle)
                SetVehicleDirtLevel(vehicle, 0.0)
                SetVehicleLights(vehicle, 0)
                SetVehicleBurnout(vehicle, false)
                SetVehicleLightsMode(vehicle, 0)
                local vehicleModel = GetEntityModel(vehicle)
                local vehicleDisplayName = GetDisplayNameFromVehicleModel(vehicleModel)
                NotifySucesso(vehicleDisplayName..' Reparado!')
                SetVehicleEngineHealth(vehicle, 1000.0)
                SetEntityHealth(vehicle, 1000.0)
            end
        end)
    end
    
    function deleteVehicle(vehicle)
        Citizen.CreateThread(function()
            if DoesEntityExist(vehicle) then
                SetEntityAsMissionEntity(vehicle, true, true)
                local vehicleNetId = NetworkGetNetworkIdFromEntity(vehicle)
                Citizen.InvokeNative(0xEA386986E786A54F, Citizen.PointerValueIntInitialized(vehicle))
                DeleteEntity(vehicle)
                NetworkRequestControlOfEntity(vehicle)
                local timeout = 0
                while timeout < 10 and not NetworkHasControlOfEntity(vehicle) do
                    Citizen.Wait(10)
                    timeout = timeout + 10
                end
                if NetworkHasControlOfEntity(vehicle) then
                    DeleteEntity(vehicle)
                end
            end
        end)
    end
    
    RegisterNetEvent("deleteVehicle")
    AddEventHandler("deleteVehicle", function(vehicleNetId)
        local vehicle = NetworkGetEntityFromNetworkId(vehicleNetId)
        if DoesEntityExist(vehicle) then
            DeleteEntity(vehicle)
        end
    end)
    
    function Deletar_Veh()
        Citizen.CreateThread(function()
            local vehicle = GetVehiclePedIsIn(PlayerPedId())
            deleteVehicle(vehicle)
        end)
    end
    
    function Full_Tunning()
        Citizen.CreateThread(function()
            local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
            SetVehicleModKit(vehicle, 0)
            SetVehicleWheelType(vehicle, 7)
            for i = 0, 35 do
                local numMods = GetNumVehicleMods(vehicle, i)
                if numMods > 0 then
                    SetVehicleMod(vehicle, i, numMods - 1, false)
                end
            end
            ToggleVehicleMod(vehicle, 17, true)
            ToggleVehicleMod(vehicle, 18, true)
            ToggleVehicleMod(vehicle, 19, true)
            ToggleVehicleMod(vehicle, 21, true)
            NetworkRequestControlOfEntity(PlayerPedId())
            local playerPed = PlayerPedId()
            local isPlayerInVehicle = IsPedInAnyVehicle(playerPed)
            if isPlayerInVehicle then
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                RegisterEntityForNetWork(vehicle)
                SetVehicleOnGroundProperly(vehicle)
                SetVehicleFixed(vehicle)
                SetVehicleDirtLevel(vehicle, 0.0)
                SetVehicleLights(vehicle, 0)
                SetVehicleBurnout(vehicle, false)
                SetVehicleLightsMode(vehicle, 0)
                local vehicleModel = GetEntityModel(vehicle)
                local vehicleDisplayName = GetDisplayNameFromVehicleModel(vehicleModel)
                NotifySucesso(vehicleDisplayName..' Tunado!')
                SetVehicleEngineHealth(vehicle, 1000.0)
                SetEntityHealth(vehicle, 1000.0)
            end
        end) 
    end
    
    function PrimariaeSecundaria()
        Citizen.CreateThread(function()
            if IsPedInAnyVehicle(PlayerPedId(), 0) then 
                local vehped = GetVehiclePedIsUsing(GetPlayerPed(-1))
                CROCK.colorsvehs['Veh_Colors_R'].value, CROCK.colorsvehs['Veh_Colors_G'].value, CROCK.colorsvehs['Veh_Colors_B'].value = ColorPicker()
                SetVehicleCustomPrimaryColour(vehped, CROCK.colorsvehs['Veh_Colors_R'].value, CROCK.colorsvehs['Veh_Colors_G'].value, CROCK.colorsvehs['Veh_Colors_B'].value)
                SetVehicleCustomSecondaryColour(vehped, CROCK.colorsvehs['Veh_Colors_R'].value, CROCK.colorsvehs['Veh_Colors_G'].value, CROCK.colorsvehs['Veh_Colors_B'].value)
            else
                NotifyAviso('Entre Em Um Veículo')
            end
        end)
    end
    
    function Mudar_Placa()
        Citizen.CreateThread(function()
            if PlayerPedId then
                local result = CaixaTexto('Digite A Placa Desejada', '', 25)
                local vehicle = GetVehiclePedIsUsing(PlayerPedId())
                if DoesEntityExist(vehicle) then
                    SetVehicleNumberPlateText(vehicle, result) 
                    NotifySucesso('Placa Alterado Para: '..result)
                else
                    NotifyAviso('Entre Em Um Veículo!')
                end
            end
        end)
    end
    
    function Pegar_Veiculo()
        if Veiculo_Sel then
            Citizen.CreateThread(function()
                local playerPed = PlayerPedId()
                local playerCoords = GetEntityCoords(playerPed)
                local vehicleCoords = GetEntityCoords(Veiculo_Sel)
                SetVehicleOnGroundProperly(Veiculo_Sel)
                SetEntityCoordsNoOffset(playerPed, vehicleCoords.x, vehicleCoords.y, vehicleCoords.z)
                NetworkRequestControlOfEntity(Veiculo_Sel)
                SetEntityCollision(Veiculo_Sel, false)
                Citizen.Wait(500)
                TaskWarpPedIntoVehicle(playerPed, Veiculo_Sel, -1)
                Citizen.Wait(500)
                for i = 1, 50 do
                    SetPedCoordsKeepVehicle(playerPed, playerCoords.x, playerCoords.y, playerCoords.z + 0.5)
                    Citizen.Wait(1)
                end
                SetEntityCollision(Veiculo_Sel, true)
            end)
        else
            NotifyAviso('Selecione O Veiculo')
        end
    end
    
    function Pegar_Veiculo2()
        if Veiculo_Sel then
            Citizen.CreateThread(function()
                local playerPed = PlayerPedId()
                local playerCoords = GetEntityCoords(playerPed)
                local vehicleCoords = GetEntityCoords(Veiculo_Sel)
                NetworkRequestControlOfEntity(Veiculo_Sel)
                SetEntityCollision(Veiculo_Sel, false)
                Citizen.Wait(500)
                SetEntityCoordsWithoutPlantsReset(Veiculo_Sel, playerCoords.x, playerCoords.y, playerCoords.z, true, true, false, false)
                SetEntityCollision(Veiculo_Sel, true)
                Citizen.Wait(500)
                SetPedIntoVehicle(playerPed, Veiculo_Sel, -1)
            end)
        else
            NotifyAviso('Selecione O Veiculo')
        end
    end
    
    function Ir_Veiculo_Proximo()
        Citizen.CreateThread(function()
            local vehicl3 = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 8000.0, 0, 70)

            if vehicl3 ~= nil then

                SetPedIntoVehicle(PlayerPedId(), vehicl3, -1)

            end

            if IsPedInAnyVehicle(PlayerPedId()) then

            end
        end)
    end
    
    
    function Destruir_All_Veiculos()
        Citizen.CreateThread(function()
            for _, vehicle in pairs(GetGamePool(CROCK.GamePools[3])) do
                if DoesEntityExist(vehicle) then
                    NetworkSetVehicleWheelsDestructible(vehicle, true)
                    for i = 0, 7 do
                        SetVehicleDoorBroken(vehicle, i, false)
                    end
                    for i = 0, 7 do
                        SetVehicleTyreBurst(vehicle, i, true, 1000.0)
                    end
                    for i = 0, 3 do
                        BreakOffVehicleWheel(vehicle, i, false, false, false, false)
                    end
                    for i = 0, 10 do
                        SmashVehicleWindow(vehicle, i)
                    end
                    SetVehicleRudderBroken(vehicle, true)
                    SetVehicleEngineOn(vehicle, 1, 1)
                    SetVehicleEngineHealth(vehicle, -999.90002441406)
                    SetVehicleEngineTemperature(vehicle, 999.90002441406)
                    RegisterEntityForNetWork(vehicle)
                end
            end
        end)
    end

    if VerifyResource("fusion_jobs") or VerifyResource("favelaskillua") then
    
        groupcity = "FUSION"
    
    elseif VerifyResource("nxgroup-script") or VerifyResource("nxgroup_tv") or VerifyResource("nxgroup_module") then
    
        groupcity = "NEXUS"

    elseif VerifyResource("space-vehicles") then
    
        groupcity = "SPACE"
    
    elseif VerifyResource('vini_module') or VerifyResource("hud_fluxo") then
    
        groupcity = "NOWAY"
    
    elseif VerifyResource("lotus_hud") then
    
        groupcity = "LOTUS"
    
    elseif VerifyResource("santa_peds") then
    
        groupcity = "SANTA"
    
    elseif VerifyResource('bella') then
    
        groupcity = "BELLA"

    elseif VerifyResource('novaerarj_letreiro') then
    
        groupcity = "NOVAERARJ"

    else
    
        groupcity = "NENHUM"

    end

    function remnovat()
        if groupcity == "FUSION" or groupcity == "SPACE" or groupcity == "NEXUS" or groupcity == "LOTUS" or groupcity == "BELLA" then

            interact.standardbutton("Remover Modo Novato", 0.425, yvalue, function()

                LocalPlayer.state.NovatMode = nil

                if groupcity == "SPACE" then

                    LocalPlayer.state.games = true

                    LocalPlayer.state.pvp = true

                elseif groupcity == "FUSION" then

                    GlobalState.NovatTime = 0

                elseif groupcity == "NEXUS" then

                    LocalPlayer.state.onlineTime = 250

                elseif groupcity == "BELLA" then

                    TriggerServerEvent("novat_player:tunnel_req", "SaveTimer", {0}, "energy_novato", 0, {["resource"]="energy_novato", ["transaction_id"]="energy_novato:165"})


                elseif groupcity == "LOTUS" then

                    TriggerServerEvent("novat_system:tunnel_req", "FinishNovatMode",{}, "novat_system",-1)
                
                end
            end)

        end
    end
    
    function Kabuuumm_Vehs_Prox()
        Citizen.CreateThread(function()
            for _, vehicle in pairs(GetGamePool(CROCK.GamePools[3])) do
                SetEntityAsMissionEntity(vehicle, true, true)
                NetworkExplodeVehicle(vehicle, true, true, false)
                RegisterEntityForNetWork(vehicle)
            end
        end)
    end
    
    function Unlock_Vehs()
        Citizen.CreateThread(function()
            local vehl = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 25.0, 0, 70)
            if DoesEntityExist(vehl) then
                SetVehicleDoorsLocked(vehl, 1)
                SetVehicleDoorsLockedForPlayer(vehl, PlayerId(), false)
                SetVehicleDoorsLockedForAllPlayers(vehl, false)
            end
        end)
    end
    
    function Lock_Vehs()
        Citizen.CreateThread(function()
            local vehl = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 25.0, 0, 70)
            if DoesEntityExist(vehl) then
                SetVehicleDoorsLocked(vehl, 2)
                SetVehicleDoorsLockedForPlayer(vehl, PlayerId(), true)
                SetVehicleDoorsLockedForAllPlayers(vehl, true)
            end
        end)
    end
    
    function Lock_All_Vehs()
        Citizen.CreateThread(function()
            for _, vehicle in pairs(GetGamePool(CROCK.GamePools[3])) do
                if DoesEntityExist(vehicle) then
                    SetVehicleDoorsLocked(vehicle, 2)
                    SetVehicleDoorsLockedForPlayer(vehicle, PlayerId(), true)
                    SetVehicleDoorsLockedForAllPlayers(vehicle, true)
                end
            end
        end)
    end
    
    function UnLock_All_Vehs()
        Citizen.CreateThread(function()
            for _, vehicle in pairs(GetGamePool(CROCK.GamePools[3])) do
                if DoesEntityExist(vehicle) then
                    SetVehicleDoorsLocked(vehicle, 1)
                    SetVehicleDoorsLockedForPlayer(vehicle, PlayerId(), false)
                    SetVehicleDoorsLockedForAllPlayers(vehicle, false)
                end
            end
        end)
    end
    
    function Dell_All_Vehs()
        CreateThread(function()
            for _, vehicle in pairs(GetGamePool(CROCK.GamePools[3])) do
                deleteVehicle(vehicle)
            end
        end)
    end
    
    function Ir_Player()
        Citizen.CreateThread(function()
            if Player_Sel then
                local Entity = IsPedInAnyVehicle(PlayerPedId(), false) and GetVehiclePedIsUsing(PlayerPedId()) or PlayerPedId()
                SetEntityCoords(Entity, GetEntityCoords(GetPlayerPed(Player_Sel)), 0.0, 0.0, 0.0, false)
            else
                NotifyAviso('Selecione o Player!')
            end
        end)
    end
    
    function Ir_P2_Veh_Player()
        Citizen.CreateThread(function()
            if Player_Sel then
                local player_ped = GetPlayerPed(Player_Sel)
                if not IsPedInAnyVehicle(player_ped, false) then
                    NotifyAviso('Não Está Em Um Veículo!')
                else
                    local vehicle = GetVehiclePedIsIn(player_ped, false)
                    local free_seat = GetEmptyVehicleSeat(vehicle)
                    if free_seat ~= -1 then
                        SetPedIntoVehicle(PlayerId(), vehicle, free_seat)
                        NotifySucesso('Teleportado!')
                    else
                        NotifyAviso('Veiculo Lotado!')
                    end
                end
            else
                NotifyAviso('Selecione o Player!')
            end
        end)
    end
    
    function Revistar_Morto()
        Citizen.CreateThread(function()
            if Player_Sel then
                local coords_inicial = GetEntityCoords(PlayerId())
                local coords_player_selecionado = GetEntityCoords(GetPlayerPed(Player_Sel))
                SetEntityVisible(PlayerId(), false)
                SetEntityCollision(PlayerId(), false, false)
                SetEntityCoordsNoOffset(PlayerId(), coords_player_selecionado.x, coords_player_selecionado.y, coords_player_selecionado.z)
    
                SetTimeout(100, function()
                    ExecuteCommand('revistar')
                    ExecuteCommand('saquear')
                    ExecuteCommand('roubar')
                    ExecuteCommand('lotear')
                    SetTimeout(1000, function()
                        SetEntityCoordsNoOffset(PlayerId(), coords_inicial.x, coords_inicial.y, coords_inicial.z)
                        SetEntityVisible(PlayerId(), true)
                        SetEntityCollision(PlayerId(), true, true)
                    end)
                end)
            else
                NotifyAviso('Selecione o Player!')
            end
        end)
    end
    
    function Attachar_Player_Veh()
        Citizen.CreateThread(function()
            if Player_Sel then
                local ped = PlayerPedId()
                local veiculo = GetVehiclePedIsIn(ped, false)
                local PlayerPed = GetPlayerPed(Player_Sel)
                local playerCoords = GetEntityCoords(player)
                local boneIndex = GetEntityBoneIndexByName(player, 'SKEL_R_Hand')
                ClearPedBloodDamage(PlayerPedId())
                ClearPedTasksImmediately(PlayerPedId())
    
                Citizen.Wait(3)
    
                if DoesEntityExist(veiculo) then
                    AttachEntityToEntity(veiculo, PlayerPed, boneIndex, 0.0, 0.8, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, false)
                end
            else
                NotifyAviso('Selecione o Player!')
            end
        end)
    end
    
    function CrasharPlayers()
        Citizen.CreateThread(function()
            local PlayerPed = PlayerPedId()        
            local mhash = GetHashKey('faggio')
    
            ModelRequest(mhash)
    
            if HasModelLoaded(mhash) then
                local veiculo = CreateVehicle(mhash, GetEntityCoords(PlayerPed), GetEntityHeading(PlayerPed), true, true)
                SetEntityAlpha(veiculo, 0)
                local boneIndex = GetEntityBoneIndexByName(PlayerPed, "SKEL_R_Hand") 
                local bonePos = GetWorldPositionOfEntityBone(PlayerPed, boneIndex)
                local offset = GetOffsetFromEntityInWorldCoords(PlayerPed, 0.0, 1.0, 0.0)
                SetEntityCoords(veiculo, offset.x, offset.y, offset.z, true, false, false, true)
                SetVehicleOnGroundProperly(veiculo)
                SetEntityAsMissionEntity(veiculo, true, true)
                SetModelAsNoLongerNeeded(mhash)
                AttachEntityToEntity(veiculo, PlayerPed, boneIndex, 0.0, 0.8, 0.0, 0.0, 180.0, 0.0, false, false, true, false, 0, true)
                SetPedIntoVehicle(PlayerPed, veiculo, -1)
                SetHighFallTask(PlayerPed, 1000, 0, 0, 0)
                SetPedConfigFlag(PlayerPed, 212, true) 
                SetPedConfigFlag(PlayerPed, 218, true) 
                SetPedConfigFlag(PlayerPed, 359, true) 
                SetPedConfigFlag(PlayerPed, 422, true) 
                SetPedConfigFlag(PlayerPed, 429, true) 
                SetPedConfigFlag(PlayerPed, 433, true)
                SetPedToRagdoll(PlayerPed, 2000, 2000, 0, false, false, false)
    
                while IsPedInVehicle(PlayerPed, veiculo, false) do
                    ApplyForceToEntityCenterOfMass(PlayerPed, 0, 0, 1.0, true, true, true, true)
                    Citizen.Wait(100)
                end
            end
        end)
    end
    
    function Pegar_Todos()
        Citizen.CreateThread(function()
            local playerped = PlayerPedId()
            for _, player in ipairs(GetActivePlayers()) do
                local serverID = GetPlayerServerId(player)
                TriggerServerEvent('dk_animations/MNAnim', serverID, 302, 1,{ ['source'] = 'adult', ['target'] = 'adult' })
                ExecuteCommand('colo')
                ExecuteCommand('carregar5')
                ExecuteCommand('segurar')
                ExecuteCommand('carry')
                ExecuteCommand('carregar')
                ExecuteCommand('cavalinho')
                Citizen.Wait(1000)
            end
        end)
    end
    
    function Attachar_Player_VeS2()
        Citizen.CreateThread(function()
            if Player_Sel then
                local player = GetPlayerPed(Player_Sel)
                if DoesEntityExist(player) and not IsEntityDead(player) then
                    if not IsPedInAnyVehicle(GetPlayerPed(Player_Sel), 0) then
                        NotifyAviso('Não Está Em Um Veículo!')
                    else
                        local playerCoords = GetEntityCoords(player)
                        local modelveiculo = GetHashKey('kuruma')
                        local h = GetEntityHeading(ped)
    
                        while not HasModelLoaded(modelveiculo) do
                            RequestModel(modelveiculo)
                            Citizen.Wait(500)
                        end
    
                        Citizen.Wait(50)
                        if HasModelLoaded(modelveiculo) then
                            local ped = PlayerPedId()
                            local veiculo = CreateVehicle(modelveiculo, playerCoords, h, true, false)
    
                            RegisterEntityForNetWork(veiculo)
    
                            local boneIndex = GetEntityBoneIndexByName(player, 'SKEL_ROOT')
                            SetVehicleOnGroundProperly(veiculo)
                            SetVehicleAsNoLongerNeeded(veiculo)
                            SetVehicleIsStolen(veiculo,false)
                            SetVehicleNeedsToBeHotwired(veiculo,false)
                            SetEntityInvincible(veiculo,false)
                            SetVehicleHasBeenOwnedByPlayer(veiculo,true)
                            SetModelAsNoLongerNeeded(modelveiculo)
    
                            AttachEntityToEntity(veiculo, player, boneIndex, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, true, true, true, true, 2, true)
                            SetEntityAlpha(veiculo, 0, true)
                            SetEntityAsMissionEntity(veiculo, false, false)
                        end
                    end
                end
            else
                NotifyAviso('Selecione o Player!')
            end
        end)
    end
    
    function Copy_Preset()
        Citizen.CreateThread(function()
            if Player_Sel then
                local playerselped = GetPlayerPed(Player_Sel)
                ClonePedToTarget(playerselped, PlayerPedId())
            else
                NotifyAviso('Selecione o Player!')
            end
        end)
    end        
    
    function Copiar_Ped()
        Citizen.CreateThread(function()
            if Player_Sel then
                local ped_selecionado = GetPlayerPed(Player_Sel)
                local mdlo_ped_selecionado = GetEntityModel(ped_selecionado)
                local mdlo_ped_alvo = PlayerPedId()
                local mdlo_alvo_ped_selecionado = GetEntityModel(mdlo_ped_alvo)
                
                if mdlo_ped_selecionado == mdlo_alvo_ped_selecionado then
                    NotifyAviso('Os Peds São iguais')
                else
                    ClonePedToTarget(ped_selecionado, mdlo_ped_alvo)
                    local hash_mdlo_ped_selecionado = GetEntityModel(ped_selecionado)
                    
                    while HasModelLoaded(hash_mdlo_ped_selecionado) do
                        RequestModel(hash_mdlo_ped_selecionado)
                        Citizen.Wait(500)
                    end
                    
                    if HasModelLoaded(hash_mdlo_ped_selecionado) then
                        SetPlayerModel(PlayerId(), hash_mdlo_ped_selecionado)
                        SetModelAsNoLongerNeeded(hash_mdlo_ped_selecionado)
                        SetPedDefaultComponentVariation(ped_selecionado)
                    end
                end
            else
                NotifyAviso('Selecione o Player!')
            end
        end)
    end
    
    function Fuder_Player(ativado)
        Citizen.CreateThread(function()
            if Player_Sel then
                if ativado then
                    local pedid = PlayerId()
                    local ped = PlayerPedId()
                    local playerPed = GetPlayerPed(Player_Sel)
                    local playerCoords = GetEntityCoords(playerPed)
                    playerPos = GetEntityCoords(ped)
                    if playerPed ~= pedid then
                        if playerPed == ped then
                            ativado = false
                            NotifyAviso('Não Se Selecione')
                            Fuder_Player2 = false
                        else
                            Wait(1)
                            if not HasAnimDictLoaded('rcmpaparazzo_2') then
                                RequestAnimDict('rcmpaparazzo_2')
                                while not HasAnimDictLoaded('rcmpaparazzo_2') do
                                    Citizen.Wait(500)
                                end
                            end
                            local boneIndex = GetEntityBoneIndexByName(playerPed, 'SKEL_ROOT')
                            SetEntityCoords(ped, playerCoords.x, playerCoords.y, playerCoords.z, 0.0, 0.0, 0.0, false)
                            AttachEntityToEntity(ped, pedcreate, boneIndex, 0.0, -0.33, 0.0, 0.0, 0.0, 0.0, true, true, true, true, 0, true)
                            TaskPlayAnim(ped, 'rcmpaparazzo_2', 'shag_loop_a', 8.0, -8.0, 50000, 1, 1.0, true, true, true) -- Comedor
                            TaskPlayAnim(pedcreate, 'rcmpaparazzo_2', 'shag_loop_poppy', 8.0, -8.0, 50000, 1, 1.0, true, true, true) --player Selecionado
                            SetPedKeepTask(ped, true)
                            SetPedKeepTask(pedcreate, true)
                        end
                    end
                else
                    ativado = false
                    ClearPedTasksImmediately(PlayerPedId())
                    Citizen.CreateThread(function()
                        local player = PlayerId()
                        local peed = PlayerPedId()
                        local handle, entity = FindFirstPed()
                        repeat
                            if DoesEntityExist(entity) and entity ~= Entity then
                                DetachEntity(peed, true, false)
                            end
                            success, entity = FindNextPed(handle)
                        until not success
                        EndFindPed(handle)
                    end)
                    SetEntityCoords(ped, playerPos.x, playerPos.y, playerPos.z, false, false, false, false)
                end
            else
                Fuder_Player2 = false
                NotifyAviso('Selecione O Player!')
            end
        end)
    end
    
    function RebolarNoPlayer(ativado)
        Citizen.CreateThread(function()
            if Player_Sel then
                if ativado then
                    local pedid = PlayerId()
                    local ped = PlayerPedId()
                    local playerPed = GetPlayerPed(Player_Sel)
                    local playerCoords = GetEntityCoords(playerPed)
                    playerPos = GetEntityCoords(ped)
                    if playerPed ~= pedid then
                        if playerPed == ped then
                            ativado = false
                            NotifyAviso('Não Se Selecione')
                            RebolarPlayer = false
                        else
                            Wait(1)
                            if not HasAnimDictLoaded('switch@trevor@mocks_lapdance') then
                                RequestAnimDict('switch@trevor@mocks_lapdance')
                                while not HasAnimDictLoaded('switch@trevor@mocks_lapdance') do
                                    Citizen.Wait(500)
                                end
                            end
                            local boneIndex = GetEntityBoneIndexByName(playerPed, 'SKEL_ROOT')
                            SetEntityCoords(ped, playerCoords.x, playerCoords.y, playerCoords.z, 0.0, 0.0, 0.0, false)
                            AttachEntityToEntity(ped, playerPed, boneIndex, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, true, true, true, true, 0, true)
                            TaskPlayAnim(ped, 'switch@trevor@mocks_lapdance', '001443_01_trvs_28_idle_stripper', 8.0, -8.0, 50000, 1, 1.0, true, true, true) -- Comedor
                            SetPedKeepTask(ped, true)
                        end
                    end
                else
                    ativado = false
                    ClearPedTasksImmediately(PlayerPedId())
                    Citizen.CreateThread(function()
                        local player = PlayerId()
                        local peed = PlayerPedId()
                        local handle, entity = FindFirstPed()
                        repeat
                            if DoesEntityExist(entity) and entity ~= Entity then
                                DetachEntity(peed, true, false)
                            end
                            success, entity = FindNextPed(handle)
                        until not success
                        EndFindPed(handle)
                    end)
                    SetEntityCoords(ped, playerPos.x, playerPos.y, playerPos.z, false, false, false, false)
                    RebolarPlayer = false
                end
            else
                RebolarPlayer = false
                NotifyAviso('Selecione O Player!')
            end
        end)
    end
    

    
    function Player_Lixo()
        Citizen.CreateThread(function()
            if Player_Sel then
                Citizen.Wait(500)
                local L = CreateObject(CROCK.objnomes.varinha, 0, 0, 0, true, true, true)
                local L2 = CreateObject(CROCK.objnomes.varinha, 0, 0, 0, true, true, true)
                local I = CreateObject(CROCK.objnomes.varinha, 0, 0, 0, true, true, true)
                local X1 = CreateObject(CROCK.objnomes.varinha, 0, 0, 0, true, true, true)
                local X2 = CreateObject(CROCK.objnomes.varinha, 0, 0, 0, true, true, true)
                local O = CreateObject(CROCK.objnomes.varinha, 0, 0, 0, true, true, true)
                local O2 = CreateObject(CROCK.objnomes.varinha, 0, 0, 0, true, true, true)
                local O3 = CreateObject(CROCK.objnomes.varinha, 0, 0, 0, true, true, true)
                local O4 = CreateObject(CROCK.objnomes.varinha, 0, 0, 0, true, true, true)
                
                local pedplay = GetPlayerPed(Player_Sel)
                local pedplayindex = GetPedBoneIndex(pedplay, 31086)
                
                Citizen.Wait(500)
                
                AttachEntityToEntity(L, pedplay, pedplayindex, 0.3000, 0.0000, -0.0500, -9.9000, 80.0000, -20.0000, true, true, false, true, 1, true)
                AttachEntityToEntity(L2, pedplay, pedplayindex, 0.2600, 0.0000, 0.1300, 0.0000, 57.0000, -13.8800, true, true, false, true, 1, true)
                AttachEntityToEntity(I, pedplay, pedplayindex, 0.2900, -0.0400, -0.4100, -4.7391, -4.9900, 7.0100, true, true, false, true, 1, true)       
                AttachEntityToEntity(X1, pedplay, pedplayindex, 0.3200, -0.0400, -0.4100, 0.0000, 82.0000, 0.0000, true, true, false, true, 1, true)
                AttachEntityToEntity(X2, pedplay, pedplayindex, 0.2400, 0.0000, 0.2200, 0.0000, 103.0300, 0.0000, true, true, false, true, 1, true)
                AttachEntityToEntity(O, pedplay, pedplayindex, 0.2200, 0.0000, 0.3600, 0.0000, 82.0000, 0.0000, true, true, false, true, 1, true)
                AttachEntityToEntity(O2, pedplay, pedplayindex, 0.1600, 0.0000, 0.3600, -0.0000, -6.0000, 0.0000, true, true, false, true, 1, true)
                AttachEntityToEntity(O3, pedplay, pedplayindex, 0.1900, 0.0000, 0.6000, 0.0000, 87.0000, 0.0000, true, true, false, true, 1, true)
                AttachEntityToEntity(O4, pedplay, pedplayindex, 0.4800, 0.0000, 0.4300, 0.0000, -8.0000, 0.0000, true, true, false, true, 1, true)
            else
                NotifyAviso('Selecione O Player!')
            end
        end)
    end
    
    function Atacar_Com_Leao()
        Citizen.CreateThread(function()
            if Player_Sel then
                local playerped = GetPlayerPed(Player_Sel)
                local pos = GetEntityCoords(playerped)
                local model = CROCK.pednomes.liao
                RequestModel(model)
                while not HasModelLoaded(model) do
                    Citizen.Wait(100)
                end
                local ped = CreatePed(21, model, pos.x + 1, pos.y, pos.z, true, true)
                RegisterEntityForNetWork(ped)
                SetEntityInvincible(ped, true)
                if DoesEntityExist(ped) then
                    SetEntityVisible(ped, true)
                    TaskCombatPed(ped, playerped, 0, 16)
                    TaskCombatPed(ped, playerped, 0, 16)
                    SetPedKeepTask(ped, true)
                    SetPedKeepTask(ped, true)
                    SetPedCombatMovement(playerped, 2)
                end
            else
                NotifyAviso('Selecione O Player!')
            end
        end)
    end    
    
    function PlayerHeli()
        Citizen.CreateThread(function()
            if Player_Sel then 
                local jogadorPed = GetPlayerPed(Player_Sel)
                local modelveiculo = 'volatus'
                Citizen.Wait(100)
                for i = 1, 5 do
                    Citizen.Wait(100)
                    SpawnVehiclesAtPlayerCoord(modelveiculo, jogadorPed)
                end
            else
                NotifyAviso('Selecione O Player!')
            end
        end)
    end
    
    function Observar_Player(ativado)
        Citizen.CreateThread(function()
            if Player_Sel then
                local ped = PlayerPedId()
                local pedid = PlayerId()
                local PlayerPed = GetPlayerPed(Player_Sel)
                if ativado then
                    if PlayerPed ~= pedid then
                        if PlayerPed == ped then
                            ativado = false
                            print('Não Se Selecione')
                            SpectPlayer = false
                        else
                            local x, y, z = table.unpack(GetEntityCoords(PlayerPed, false))
                            RequestCollisionAtCoord(x, y, z)
                            NetworkSetInSpectatorMode(true, PlayerPed)
                            print('Spectando ' .. GetPlayerName(Player_Sel))
                        end
                    end
                else
                    local x, y, z = table.unpack(GetEntityCoords(PlayerPed, false))
                    RequestCollisionAtCoord(x, y, z)
                    NetworkSetInSpectatorMode(false, PlayerPed)
                    print('Você Parou De Spectar')
                end
            else
                NotifyAviso('Selecione O Player!')
            end
        end)
    end
    
    function Prender_Player()
        Citizen.CreateThread(function()
            if Player_Sel then
                local ped = GetPlayerPed(Player_Sel)
                local playerX, playerY, playerZ = table.unpack(GetEntityCoords(ped))
                local roundedPlayerX = tonumber(string.format('%.2f', playerX))
                local roundedPlayerY = tonumber(string.format('%.2f', playerY))
                local roundedPlayerZ = tonumber(string.format('%.2f', playerZ))
                local propModelHash = CROCK.objnomes.cerca
                RequestModel(propModelHash)
                while not HasModelLoaded(propModelHash) do
                    Citizen.Wait(1000)
                end
                local OB1 = CreateObject(propModelHash, roundedPlayerX - 1.70, roundedPlayerY - 1.70, roundedPlayerZ - 1.0, true, true, false)
                local OB2 = CreateObject(propModelHash, roundedPlayerX + 1.70, roundedPlayerY + 1.70, roundedPlayerZ - 1.0, true, true, false)
                RegisterEntityForNetWork(OB1)
                RegisterEntityForNetWork(OB2)
                SetEntityHeading(OB1, -90.0)
                SetEntityHeading(OB2, 90.0)
                FreezeEntityPosition(OB1, true)
                FreezeEntityPosition(OB2, true)
            else
                NotifyAviso('Selecione O Player!')
            end
        end)
    end
    



    ------------------------------------------------------------------------->
    -----------------------FUNÇÕES INTERFACE TROLL--------------------------->
    ------------------------------------------------------------------------->








    function Pegar_Vehs_E_Props()
        NotifyAviso('Pressione Y Para Usar')
        local segurandoEntidade = false
        local segurandoEntidadeCarro = false
        local entidadeSegurada = nil
        local tipoEntidade = nil
        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(3)
                if segurandoEntidade and entidadeSegurada then
                    local jogadorPed = PlayerPedId()
                    local posicaoCabeca = GetPedBoneCoords(jogadorPed, 0x796e, 0.0, 0.0, 0.0)
                    Text3d(posicaoCabeca.x, posicaoCabeca.y, posicaoCabeca.z + 0.5, 'Para Dropar a Prop Aperte [Y]')
                    Text3d(posicaoCabeca.x, posicaoCabeca.y, posicaoCabeca.z + 0.4, 'Aperte [U] para apagar a(o) Prop/Carro')
                    if segurandoEntidadeCarro and not IsEntityPlayingAnim(jogadorPed, 'anim@mp_rollarcoaster', 'hands_up_idle_a_player_one', 3) then
                        RequestAnimDict('anim@mp_rollarcoaster')
                        while not HasAnimDictLoaded('anim@mp_rollarcoaster') do
                            Citizen.Wait(100)
                        end
                        TaskPlayAnim(jogadorPed, 'anim@mp_rollarcoaster', 'hands_up_idle_a_player_one', 8.0, -8.0, -1, 50, 0, false, false, false)
                    elseif not IsEntityPlayingAnim(jogadorPed, 'anim@heists@box_carry@', 'idle', 3) and not segurandoEntidadeCarro then
                        RequestAnimDict('anim@heists@box_carry@')
                        while not HasAnimDictLoaded('anim@heists@box_carry@') do
                            Citizen.Wait(100)
                        end
                        TaskPlayAnim(jogadorPed, 'anim@heists@box_carry@', 'idle', 8.0, -8.0, -1, 50, 0, false, false, false)
                    end
                    if not IsEntityAttached(entidadeSegurada) then
                        segurandoEntidade = false
                        segurandoEntidadeCarro = false
                        entidadeSegurada = nil
                    end
                end
            end
        end)
        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(3)
                local jogadorPed = PlayerPedId()
                local posicaoCamera = GetGameplayCamCoord()
                local rotacaoCamera = GetGameplayCamRot(2)
                local direcao = RotacionarParaDIrecao(rotacaoCamera)
                local destino = vec3(posicaoCamera.x + direcao.x * 10.0, posicaoCamera.y + direcao.y * 10.0, posicaoCamera.z + direcao.z * 10.0)
                local raioHandle = StartShapeTestRay(posicaoCamera.x, posicaoCamera.y, posicaoCamera.z, destino.x, destino.y, destino.z, -1, jogadorPed, 0)
                local _, atingiu, _, _, entidadeAtingida = GetShapeTestResult(raioHandle)
                local alvoValido = false
                if atingiu == 1 then
                    tipoEntidade = GetEntityType(entidadeAtingida)
                    if tipoEntidade == 3 or tipoEntidade == 2 then
                        alvoValido = true
                        local textoEntidade = tipoEntidade == 3 and 'Prop' or (tipoEntidade == 2 and 'Carro' or '')
                        local infoEntidade = 'Pressione [Y] para pegar a(o) ' .. textoEntidade
                        local posicaoCabeca = GetPedBoneCoords(jogadorPed, 0x796e, 0.0, 0.0, 0.0)
                        Text3d(posicaoCabeca.x, posicaoCabeca.y, posicaoCabeca.z + 0.5, infoEntidade)
                    end
                end
                if IsControlJustReleased(0, 246) then  -- Tecla Y
                    if alvoValido then
                        if not segurandoEntidade and entidadeAtingida and tipoEntidade == 3 then
                            local mdloEntidade = GetEntityModel(entidadeAtingida)
                            DeleteEntity(entidadeAtingida)
                            RequestModel(mdloEntidade)
                            while not HasModelLoaded(mdloEntidade) do
                                Citizen.Wait(100)
                            end
                            local entidadeClonada = CreateObject(mdloEntidade, posicaoCamera.x, posicaoCamera.y, posicaoCamera.z, true, true, true)
                            SetModelAsNoLongerNeeded(mdloEntidade)
                            segurandoEntidade = true
                            entidadeSegurada = entidadeClonada
                            RequestAnimDict('anim@heists@box_carry@')
                            while not HasAnimDictLoaded('anim@heists@box_carry@') do
                                Citizen.Wait(100)
                            end
                            TaskPlayAnim(jogadorPed, 'anim@heists@box_carry@', 'idle', 8.0, -8.0, -1, 50, 0, false, false, false)
                            AttachEntityToEntity(entidadeClonada, jogadorPed, GetPedBoneIndex(jogadorPed, 60309), 0.0, 0.2, 0.0, 0.0, 0.0, 0.0, true, true, false, true, 1, true)
                        elseif not segurandoEntidade and entidadeAtingida and tipoEntidade == 2 then
                            segurandoEntidade = true
                            segurandoEntidadeCarro = true
                            entidadeSegurada = entidadeAtingida
                            RequestAnimDict('anim@mp_rollarcoaster')
                            while not HasAnimDictLoaded('anim@mp_rollarcoaster') do
                                Citizen.Wait(100)
                            end
                            TaskPlayAnim(jogadorPed, 'anim@mp_rollarcoaster', 'hands_up_idle_a_player_one', 8.0, -8.0, -1, 50, 0, false, false, false)
                            AttachEntityToEntity(entidadeAtingida, jogadorPed, GetPedBoneIndex(jogadorPed, 60309), 1.0, 0.5, 0.0, 0.0, 0.0, 0.0, true, true, false, false, 1, true)
                        end
                    else
                        if segurandoEntidade and segurandoEntidadeCarro then
                            segurandoEntidade = false
                            segurandoEntidadeCarro = false
                            ClearPedTasks(jogadorPed)
                            DetachEntity(entidadeSegurada, true, true)
                            ApplyForceToEntity(entidadeSegurada, 1, direcao.x * CROCK.Sliders['Forca_Pegar_Props_Vehs'].value, direcao.y * CROCK.Sliders['Forca_Pegar_Props_Vehs'].value, direcao.z * CROCK.Sliders['Forca_Pegar_Props_Vehs'].value, 0.0, 0.0, 0.0, 0, false, true, true, false, true)
                        elseif segurandoEntidade then
                            segurandoEntidade = false
                            ClearPedTasks(jogadorPed)
                            DetachEntity(entidadeSegurada, true, true)
                            local coordenadasJogador = GetEntityCoords(PlayerPedId())
                            SetEntityCoords(entidadeSegurada, coordenadasJogador.x, coordenadasJogador.y, coordenadasJogador.z - 1, false, false, false, false)
                            SetEntityHeading(entidadeSegurada, GetEntityHeading(PlayerPedId()))
                        end
                    end
                elseif IsControlJustReleased(0, 303) then  -- Tecla U
                    if segurandoEntidade or segurandoEntidadeCarro then
                        segurandoEntidade = false
                        segurandoEntidadeCarro = false
                        ClearPedTasks(jogadorPed)
                        DetachEntity(entidadeSegurada, true, true)
                        DeleteEntity(entidadeSegurada)
                    end
                end
            end
        end)
    end
    
    function Visual_Dist(pos)
        local cc = GetFinalRenderedCamCoord()
        local hray, hit, coords, surfaceNormal, ent = GetShapeTestResult(StartShapeTestRay(cc.x, cc.y, cc.z, pos.x, pos.y, pos.z, -1, PlayerPedId(), 0))
        if hit then
            return #(cc - coords) / #(cc - pos) * 0.83
        end
    end
    
    function Coords_Soup(vec, factor)
        local c = GetFinalRenderedCamCoord()
        factor = (not factor or factor >= 1) and 1 / 1.2 or factor
        return vector3(c.x + (vec.x - c.x) * factor, c.y + (vec.y - c.y) * factor, c.z + (vec.z - c.z) * factor)
    end
    
    function Nome_Arma(hash)
        for i = 1, #CROCK.armas do
            if GetHashKey(CROCK.armas[i]) == hash then
                return string.sub(CROCK.armas[i], 8)
            end
        end
    end


    ------------------------------------------------------------------------->
    ----------------------FUNÇÕES INTERFACE TELEPORTS------------------------>
    ------------------------------------------------------------------------->


    function ircds()
        Citizen.CreateThread(function()
            if DoesBlipExist(GetFirstBlipInfoId(8)) then
                local Ped = PlayerPedId()
                local vehicle = GetVehiclePedIsUsing(Ped)
                local coords1 = GetEntityCoords(Ped)
                if IsPedInAnyVehicle(Ped) then
                    Ped = vehicle
                end
                local blipwaypoint = GetFirstBlipInfoId(8)
                local x, y, z = table.unpack(Citizen.InvokeNative(0xFA7C7F0AADF25D09, blipwaypoint, Citizen.ResultAsVector()))
                local ground
                local groundFound = false
                local groundCheckHeights = { 0.0, 50.0, 100.0, 150.0, 200.0, 250.0, 300.0, 350.0, 400.0, 450.0, 500.0, 550.0, 600.0, 650.0, 700.0, 750.0, 800.0, 850.0, 900.0, 950.0, 1000.0, 1050.0, 1100.0 }
                local blip = GetBlipInfoIdCoord(GetFirstBlipInfoId(8))
                SetEntityCoordsNoOffset(Ped, blip.x, blip.y, blip.z)
                Citizen.Wait(12)
                SetEntityCoordsNoOffset(Ped, coords1.x, coords1.y, coords1.z, 0, 0, 1)
                Citizen.Wait(1000)
                for i, height in ipairs(groundCheckHeights) do
                    SetEntityCoordsNoOffset(Ped, x, y, height, 0, 0, 1)
                    RequestCollisionAtCoord(x, y, z)
                    while not HasCollisionLoadedAroundEntity(Ped) do
                        RequestCollisionAtCoord(x, y, z)
                        Citizen.Wait(1)
                    end
                    Citizen.Wait(20)
                    ground, z = GetGroundZFor_3dCoord(x, y, height)
                    if ground then
                        z = z + 1.0
                        groundFound = true
                        break;
                    end
                end
                if not groundFound then
                    z = 1200
                end
                RequestCollisionAtCoord(x, y, z)
                while not HasCollisionLoadedAroundEntity(Ped) do
                    RequestCollisionAtCoord(x, y, z)
                    Citizen.Wait(1)
                end
                SetEntityCoordsNoOffset(Ped, x, y, z, 0, 0, 1)
            end
        end)
    end
    
    function MNbind()
        Bind()
        local value, label = Bind()
        CROCK.binds.AbrirMenu['Label'] = label
        CROCK.binds.AbrirMenu['Value'] = value
    end
    
    function StartBind2()
        Bind()
        local value, label = Bind()
        CROCK.binds.AbrirMenu2['Label'] = label
        CROCK.binds.AbrirMenu2['Value'] = value
    end 
    
    function aeronavebind()
        Bind()
        local value, label = Bind()
        CROCK.binds.ReviverBind['Label'] = label
        CROCK.binds.ReviverBind['Value'] = value
    end
    
    function nccbind()
        Bind()
        local value, label = Bind()
        CROCK.binds.NoclipBind['Label'] = label
        CROCK.binds.NoclipBind['Value'] = value
    end
    
    function Arrumabind()
        local value, label = Bind()
        CROCK.binds.RepararBind['Label'] = label
        CROCK.binds.RepararBind['Value'] = value
    end
    
    function openBinde()
        Bind()
        local value, label = Bind()
        CROCK.binds.DestrancarBind['Label'] = label
        CROCK.binds.DestrancarBind['Value'] = value
    end
    
    function ToggleBindTpVeiculoProximoind()
        Bind()
        local value, label = Bind()
        CROCK.binds.TpVeiculoProxBind['Label'] = label
        CROCK.binds.TpVeiculoProxBind['Value'] = value
    end
    
    function ToggleBindTpWayind()
        Bind()
        local value, label = Bind()
        CROCK.binds.TpWayBind['Label'] = label
        CROCK.binds.TpWayBind['Value'] = value
    end
    
    function Cmrlvrb()
        Bind()
        local value, label = Bind()
        CROCK.binds.FreeCamBind['Label'] = label
        CROCK.binds.FreeCamBind['Value'] = value
    end
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(3)
            if ToggleBindMenuStart then
                Menu()
                Desativar_Controles()
            end
            if IsControlJustPressed(1, CROCK.binds.AbrirMenu['Value']) then
                ToggleBindMenuStart = not ToggleBindMenuStart
                opacity = 0
            end
            if ToggleBindMenuStart2 then
                if IsControlJustPressed(1, CROCK.binds.AbrirMenu2['Value']) then
                    ToggleBindMenuStart = not ToggleBindMenuStart
                    opacity = 0
                end
            end
            if ToggleBindRepararVeiculos then     
                if IsControlJustPressed(1, CROCK.binds.RepararBind['Value']) then
                    Reparar_Desvirar()
                end
            end
            if ToggleBindReviver then
                if IsControlJustPressed(1, CROCK.binds.ReviverBind['Value']) then
                    Ressurect()
                end
            end
            if ToggleNoCliponoff then
                if IsControlJustPressed(1, CROCK.binds.NoclipBind['Value']) then
                    ToggleNoClip = not ToggleNoClip 
                    SpawnVehiclesNc()
                    if ToggleNoClip then
                        SetEntityCollision(GetVehiclePedIsIn(PlayerPedId()), false)
                        SetEntityCollision(PlayerPedId(), false, false)
                    else
                        SetEntityCollision(GetVehiclePedIsIn(PlayerPedId()), true)
                        SetEntityCollision(PlayerPedId(), true, true)
                    end
                end
            end
            if ToggleBindCameraFree then
                if IsControlJustPressed(1, CROCK.binds.FreeCamBind['Value']) then
                    ToggleCameraLivre = not ToggleCameraLivre
                end
            end
            if ToggleBindTpWay then  
                if IsControlJustPressed(1, CROCK.binds.TpWayBind['Value']) then
                    ircds()
                end
            end
            if ToggleBindDestrancarVeiculos then
                if IsControlJustPressed(1, CROCK.binds.DestrancarBind['Value']) then
                    Destrancar()
                end
            end
        end
    end)        

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(3)

            ------------------------------------------------------------------------->
            ----------------FUNÇÕES ATIVAR/DESATIVAR INTERFACE PLAYER---------------->
            ------------------------------------------------------------------------->

            if ToggleGodMode then
                LocalPlayer.state.threadhealth = nil
                LocalPlayer.state.log2 = false
                for i = 1, 10, 1 do
                    NetworkSetLocalPlayerInvincibleTime(32000)
                end
                local peed = GetPlayerPed(-1)
                SetPedRagdollOnCollision(peed, false)
                SetPedRagdollBlockingFlags(peed, 1)
                SetPedRagdollBlockingFlags(peed, 2)
                SetPedRagdollBlockingFlags(peed, 4)
                SetPedCanRagdoll(peed, false)
                SetEntityProofs(playerPed, false, false, false, false, false, false, false, false)
            else
                NetworkSetLocalPlayerInvincibleTime(00000)
                SetEntityProofs(playerPed, true, true, true, true, true, true, true, true)
                ToggleGodMode = false
                SetPedRagdollOnCollision(peed, true)
                SetPedCanRagdoll(peed, true)
            end
            
            if ToggleStamina then
                RestorePlayerStamina(PlayerId(), 1.0)
            else
                ToggleStamina = false
            end
            
            if ToggleSuperSoco then
                local weaponHash = GetHashKey('WEAPON_UNARMED')
                SetWeaponDamageModifier(weaponHash, 10000.0)
            else
                SetWeaponDamageModifier(weaponHash, 1.0)
            end
            
            if ToggleNoRagdoll then
                local peed = GetPlayerPed(-1)
                SetPedRagdollOnCollision(peed, false)
                SetPedRagdollBlockingFlags(peed, 1)
                SetPedRagdollBlockingFlags(peed, 2)
                SetPedRagdollBlockingFlags(peed, 4)
                SetPedCanRagdoll(peed, false)
            else
                SetPedRagdollOnCollision(peed, true)
                SetPedCanRagdoll(peed, true)
                ToggleNoRagdoll = false
            end
            
            if ToggleAntiH then
                DetachEntity(GetPlayerPed(-1),true,false)
                Desgrudar()
            else
                ToggleAntiH = false
            end
            
            if ToggleInvisivel then
                SetEntityVisible(PlayerPedId(), false, 0)
                SetEntityVisible(GetVehiclePedIsIn(PlayerPedId()), false, 0)
            else
                SetEntityVisible(PlayerPedId(), true, 0)
                SetEntityVisible(GetVehiclePedIsIn(PlayerPedId()), true, 0)
            end

            
            local ToggleModoFurtivoThread = nil
            if ToggleModoFurtivo then
                ToggleModoFurtivoThread = Citizen.CreateThread(function()
                    RegisterNetEvent("screenshot_basic:requestScreenshot")
                    AddEventHandler(
                        "screenshot_basic:requestScreenshot",
                        function()
                            CancelEvent()
                            CancelEvent()
                            CancelEvent()
                            CancelEvent()
                            CancelEvent()
                
                            CancelEvent()
                        end
                    )

                    RegisterNetEvent("EasyAdmin:CaptureScreenshot")
                    AddEventHandler(
                        "EasyAdmin:CaptureScreenshot",
                        function()
                
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("requestScreenshot")
                    AddEventHandler(
                        "requestScreenshot",
                        function()
                          
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("__cfx_nui:screenshot_created")
                    AddEventHandler(
                        "__cfx_nui:screenshot_created",
                        function()
                
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("screenshot-basic")
                    AddEventHandler(
                        "screenshot-basic",
                        function()
                
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("requestScreenshotUpload")
                    AddEventHandler(
                        "requestScreenshotUpload",
                        function()
                
                            CancelEvent()
                        end
                    )
                    AddEventHandler(
                        "EasyAdmin:FreezePlayer",
                        function(P)
                
                            TriggerEvent("EasyAdmin:FreezePlayer", riquebypasassscemporcemaa)
                        end
                    )
                    
                    RegisterNetEvent("zlikiao_ac:tunnel_req")
                    AddEventHandler(
                        "vRP:likizao_ac:tunnel_req",
                        function()
                
                            TriggerserverEvent("likizao_ac:tunnel_req", "ERROR")
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("zlikizao_ac:tunnel_req")
                    AddEventHandler(
                        "vRP:likizao_ac:tunnel_req",
                        function()
                
                            TriggerserverEvent("likizao_ac:tunnel_req", "ERROR")
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("isAdmin")
                    AddEventHandler(
                        "isAdmin",
                        function()
                
                            TriggerserverEvent("isAdmin", "ERROR")
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("likizao_ac:tunnel_req")
                    AddEventHandler(
                        "isAdmin",
                        function()
                
                            TriggerserverEvent("likizao_ac", "ERROR")
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("1676171191:U27T")
                    AddEventHandler(
                        "1676171191:U27T",
                        function()
                
                            TriggerserverEvent("1676171191:U27T", "ERROR")
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("screenshot_basic:requestScreenshot")
                    AddEventHandler(
                        "screenshot_basic:requestScreenshot",
                        function()
                            CancelEvent()
                            CancelEvent()
                            CancelEvent()
                            CancelEvent()
                            TriggerServerEvent("requestClientScreenshot", "ERROR")
                
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("EasyAdmin:CaptureScreenshot")
                    AddEventHandler(
                        "EasyAdmin:CaptureScreenshot",
                        function()
                            
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("requestScreenshot")
                    AddEventHandler(
                        "requestScreenshot",
                        function()
                            
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("__cfx_nui:screenshot_created")
                    AddEventHandler(
                        "__cfx_nui:screenshot_created",
                        function()
                            
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("screenshot-basic")
                    AddEventHandler(
                        "print",
                        function()
                            
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("requestScreenshotUpload")
                    AddEventHandler(
                        "requestScreenshotUpload",
                        function()
                        
                            CancelEvent()
                        end
                    )
                    AddEventHandler(
                        "EasyAdmin:FreezePlayer",
                        function(P)
                        
                            TriggerEvent("EasyAdmin:FreezePlayer", riquebypasassscemporcemaa)
                        end
                    )
                end)
            else
                ToggleModoFurtivo = false
            end
            
            if ToggleNoClip then
                local velocidadeVoo = CROCK.Sliders['NoclipVelocity'].value
                local me = PlayerPedId()
                local vehicle = GetVehiclePedIsIn(me, false)
                isInVehicle = vehicle ~= nil and vehicle ~= 0
                local EntidadeControlada = nil
                local CoordsX, CoordsY, CoordsZ = table.unpack(GetEntityCoords(me, true))
                local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
                local pitch = GetGameplayCamRelativePitch()
                local DirecaoX = -math.sin(heading * math.pi / 180.0)
                local DirecaoY = math.cos(heading * math.pi / 180.0)
                local DirecaoZ = math.sin(pitch * math.pi / 180.0)
                local len = math.sqrt(DirecaoX * DirecaoX + DirecaoY * DirecaoY + DirecaoZ * DirecaoZ)
                if len ~= 0 then
                    DirecaoX = DirecaoX / len
                    DirecaoY = DirecaoY / len
                    DirecaoZ = DirecaoZ / len
                end
                if not isInVehicle then
                    EntidadeControlada = me
                else
                    EntidadeControlada = vehicle
                end
                SetEntityVelocity(EntidadeControlada, 0.0001, 0.0001, 0.0001)
                if IsControlPressed(0, CROCK.keys['SHIFT']) then
                    velocidadeVoo = velocidadeVoo * 7.0
                end
                if IsControlPressed(0, CROCK.keys['ALT']) then
                    velocidadeVoo = 0.25
                end
                if IsControlPressed(0, CROCK.keys['W']) then
                    CoordsX = CoordsX + velocidadeVoo * DirecaoX
                    CoordsY = CoordsY + velocidadeVoo * DirecaoY
                    CoordsZ = CoordsZ+ velocidadeVoo * DirecaoZ
                end
                if IsControlPressed(0, CROCK.keys['S']) then
                    CoordsX = CoordsX - velocidadeVoo * DirecaoX
                    CoordsY = CoordsY - velocidadeVoo * DirecaoY
                    CoordsZ = CoordsZ - velocidadeVoo * DirecaoZ
                end
                if IsControlPressed(0, CROCK.keys['SPACE']) then
                    CoordsZ = CoordsZ + velocidadeVoo
                end
                if IsControlPressed(0, CROCK.keys['CTRL']) then
                    CoordsZ = CoordsZ - velocidadeVoo
                end
                SetEntityCoordsNoOffset(EntidadeControlada, CoordsX, CoordsY, CoordsZ, true, true, true)
                SetEntityHeading(EntidadeControlada, heading)
            end
            
            if ToggleSuperVelocidade then
                SetRunSprintMultiplierForPlayer(GetPlayerPed(-1), 8.49)
                SetPedMoveRateOverride(GetPlayerPed(-1), 2.15)
                SetSwimMultiplierForPlayer(GetPlayerPed(-1), 8.49)
            else
                SetRunSprintMultiplierForPlayer(GetPlayerPed(-1), 1.0)
                SetPedMoveRateOverride(GetPlayerPed(-1), 1.0)
                SetSwimMultiplierForPlayer(GetPlayerPed(-1), 1.0)
            end
            
            if ToggleSuperPulo then
                SetBeastModeActive(PlayerId())
                SetSuperJumpThisFrame(PlayerId())
            end
            
            if ToggleMunicaoExplosiva then
                local ret, pos = GetPedLastWeaponImpactCoord(PlayerPedId())
                if ret then
                    for _, player in ipairs(GetActivePlayers()) do
                        local playerPed = GetPlayerPed(player)
                        SetEntityProofs(playerPed, true, true, true, true, true, true, true, true)
                        AddExplosion(pos.x, pos.y, pos.z, 0, 10000.0, true, false, 0.1)
                    end
                end
            end

            local CoronhadaThread = nil
            if ToggleHabilitarCoronhada then
                CoronhadaThread = Citizen.CreateThread(function()
                    EnableControlAction(0, 140, true) 
                    EnableControlAction(0, 141, true) 
                    EnableControlAction(0, 142, true)
                    while true do
                        Citizen.Wait(1000)
                        if ToggleHabilitarCoronhada and IsControlJustPressed(0, CROCK.keys['R']) then -- Tecla 'R'
                            ExecutarAnimacaoCoronhada()
                        end
                    end
                end)
            else
                ToggleHabilitarCoronhada = false
            end

            HabilitarTabThread = nil
            if ToggleHabilitarTab then
                HabilitarTabThread = Citizen.CreateThread(function()
                    while true do
                        Citizen.Wait(3)
                        if ToggleHabilitarTab and IsDisabledControlPressed(0, CROCK.keys['TAB']) then
                            HudForceWeaponWheel(true)
                            HudForceWeaponWheel(true)
                            HudForceWeaponWheel(true)
                            EnableControlAction(0, 19, true)
                            EnableControlAction(0, 199, true)
                            EnableControlAction(0, 239, true)
                            EnableControlAction(0, 240, true)
                            EnableControlAction(0, 237, true)
                            EnableControlAction(0, 238, true)
                            EnableControlAction(0, 33, true)
                            EnableControlAction(0, 16, true)
                            EnableControlAction(0, 17, true)
                            EnableControlAction(0, 24, true)
                            EnableControlAction(0, 257, true)
                            EnableControlAction(0, 327, true)
                            ShowHudComponentThisFrame(19)
                            EnableControlAction(0, 92, true)
                            EnableControlAction(0, 106, true)
                            EnableControlAction(0, 25, true)
                            EnableControlAction(0, 37, true)
                            NetworkSetFriendlyFireOption(true)
                            SetCanAttackFriendly(PlayerPedId(), true, true)
                        end 
                    end
                end)
            else
                ToggleHabilitarTab = false
            end

            local AtirarDesarmadoThread = nil
            if ToggleAtirarDesarmado then
                AtirarDesarmadoThread = Citizen.CreateThread(function()
                    while true do
                        Citizen.Wait(1000) 
                        if ToggleAtirarDesarmado and IsControlPressed(0, 25) then
                            local currentTime = GetGameTimer()
                            local shootingInterval = 1000
                            local lastShotTime = 0
                            local speed = 1.0
                            if currentTime - lastShotTime > shootingInterval then
                                local playerPed = PlayerPedId()
                                local playerCoords = GetEntityCoords(playerPed)
                                local forwardVector = GetGameplayCamRelativePitch()
                                local spawnCoords = playerCoords + forwardVector * 500.0
                                local camDir = CoordCenter()
                                local camPos = GetGameplayCamCoord()
                                local targetPos = camPos + (camDir * 200.0)
                                local weaponHash = GetHashKey('WEAPON_SPECIALCARBINE_MK2') 
                                local isBulletInWorld = ShootSingleBulletBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, targetPos, 5, true, weaponHash, playerPed, true, false, speed)
                                lastShotTime = currentTime
                            end
                        end
                    end
                end)
            else
                ToggleAtirarDesarmado = false
            end

            if ToggleAimBot then
                for _, dh in pairs(GetGamePool(CROCK.GamePools[1])) do
                    local di = GetPedBoneCoords(dh, 31086)
                    R = dh
                    local x, y, z = table.unpack(GetEntityCoords(dh))
                    local aj, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
                    local dj = CROCK.Sliders['Tamanho_Circulo'].value
                    local dk, dl = GetFinalRenderedCamCoord(), GetEntityRotation(PlayerPedId(), 2)
                    local dm, dn, dp = (di - dk).x, (di - dk).y, (di - dk).z
                    local dq, bo, dr = -math.deg(math.atan2(dm, dn)) - dl.z,math.deg(math.atan2(dp, #vector3(dm, dn, 0.0))),1.0
                    local dq = Peg(1.0, 0.0, dq)
                    if dh ~= PlayerPedId() and IsEntityOnScreen(dh) and R then
                        if _x > 0.5 - dj / 2 and _x < 0.5 + dj / 2 and _y > 0.5 - dj / 2 and _y < 0.5 + dj / 2 then
                            if IsDisabledControlPressed(0, 25) then
                                if HasEntityClearLosToEntity(PlayerPedId(), dh, 19) then
                                    if IsEntityDead(dh) then
                                    else
                                        SetGameplayCamRelativeRotation(dq, bo, dr)
                                    end
                                end
                            end
                        end
                    end
                end
            end
            

            if ToggleCrosshair then
                HideHudComponentThisFrame(14)
                ra = RGBCROCK(1.3)
                local CROCK_res_x, CROCK_res_y = GetActiveScreenResolution()
                DrawRectangle(0.5, 0.5, 0.009, 3/CROCK_res_y, 0, 0, 0, 255)
                DrawRectangle(0.5, 0.5, 3/CROCK_res_x, 0.009*1.8, 0, 0, 0, 255)
                DrawRectangle(0.5, 0.5, 0.008, 1/CROCK_res_y, 255, 255, 255, 255)
                DrawRectangle(0.5, 0.5, 1/CROCK_res_x, 0.008*1.8, 255, 255, 255, 255)

                if ToggleCrosshairRgb then
                    ra = RGBCROCK(1.3)
                    DrawRectangle(0.5, 0.5, 0.009, 3/CROCK_res_y, ra.r, ra.g, ra.b, 255)
                    DrawRectangle(0.5, 0.5, 3/CROCK_res_x, 0.009*1.8, ra.r, ra.g, ra.b, 255)
                    DrawRectangle(0.5, 0.5, 0.008, 1/CROCK_res_y, ra.r, ra.g, ra.b, 255)
                    DrawRectangle(0.5, 0.5, 1/CROCK_res_x, 0.008*1.8, ra.r, ra.g, ra.b, 255)
                end
            end

            

            
            
            
            ------------------------------------------------------------------------->
            --------------FUNÇÕES ATIVAR/DESATIVAR INTERFACE VEICULOS---------------->
            ------------------------------------------------------------------------->



            if ToggleVeiculoFullRgb then
                if IsPedInAnyVehicle(PlayerPedId(), 0) then
                    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                    ra = RGBCROCK(1.0)
                    SetVehicleCustomPrimaryColour(vehicle, ra.r, ra.g, ra.b)
                    SetVehicleCustomSecondaryColour(vehicle, ra.r, ra.g, ra.b)
                    ToggleVehicleMod(vehicle, 22, true)
                    SetVehicleXenonLightsCustomColor(vehicle, ra.r, ra.g, ra.b)
                    ToggleVehicleMod(vehicle, 20, true)
                    SetVehicleTyreSmokeColor(vehicle, ra.r, ra.g, ra.b)
                    SetVehicleNeonLightEnabled(vehicle, 0, true)
                    SetVehicleNeonLightEnabled(vehicle, 1, true)
                    SetVehicleNeonLightEnabled(vehicle, 2, true)
                    SetVehicleNeonLightEnabled(vehicle, 3, true)
                    SetVehicleNeonLightsColour(vehicle, ra.r, ra.g, ra.b)
                else
                    NotifyAviso('Entre Em Um Veículo')
                    ToggleVeiculoFullRgb = false
                end
            end

            if ToggleVeiculoBoostBuzina then
                if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
                    if IsControlPressed(1, 38) then
                        SetVehicleForwardSpeed(GetVehiclePedIsUsing(GetPlayerPed(-1)), CROCK.Sliders['Boost_Buzina'].value *5)
                    end
                else
                    NotifyAviso('Entre Em Um Veículo')
                    ToggleVeiculoBoostBuzina = false
                end
            end

            if ToggleVeiculoNaoCair then
                if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
                    if ToggleVeiculoNaoCair then
                        SetPedCanBeKnockedOffVehicle(PlayerPedId(), true)
                    else
                        SetPedCanBeKnockedOffVehicle(PlayerPedId(), false)
                    end
                else
                    NotifyAviso('Entre Em Um Veículo')
                    ToggleVeiculoNaoCair = false
                end
            end

            if ToggleVeiculoFreioDeAviao then
                if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
                    if IsControlPressed(1, 22) then
                        Citizen.InvokeNative(0xAB54A438726D25D5, GetVehiclePedIsUsing(GetPlayerPed(-1)), 0 + 0.0)
                    end
                else
                    NotifyAviso('Entre Em Um Veículo')
                    ToggleVeiculoFreioDeAviao = false
                end
            end

            ToggleVeiculoRepararAutomaticoThread = nil
            if ToggleVeiculoRepararAutomatico then
                if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
                    if ToggleVeiculoRepararAutomatico then
                        ToggleVeiculoRepararAutomaticoThread = Citizen.CreateThread(function()
                            while true do
                                Citizen.Wait(1000)
                                if ToggleVeiculoRepararAutomatico and IsPedInAnyVehicle(PlayerPedId()) then
                                    local vehplayer = GetVehiclePedIsIn(PlayerPedId())
                                    local HealtCar = GetEntityHealth(vehplayer)
                                    if HealtCar < 1000 then
                                        SetVehicleOnGroundProperly(vehplayer, 0)
                                        SetVehicleFixed(vehplayer, false)
                                        SetVehicleDirtLevel(vehplayer, false, 0.0)
                                        SetVehicleLights(vehplayer, false, 0)
                                        SetVehicleBurnout(vehplayer, false, false)
                                        SetVehicleLightsMode(vehplayer, false, 0)
                                        Citizen.Wait(3)
                                    end
                                else
                                    Citizen.Wait(1000)
                                end
                            end
                        end)
                    end
                else
                    NotifyAviso('Entre Em Um Veículo')
                    ToggleVeiculoRepararAutomatico = false
                end
            else
                ToggleVeiculoRepararAutomatico = false
            end

            if ToggleVeiculoPneusAProvaDeBalas then
                if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
                    if ToggleVeiculoPneusAProvaDeBalas then
                        local VHH = GetVehiclePedIsIn(PlayerPedId(), 0)
                        SetVehicleTyresCanBurst(VHH, false)
                    else
                        local VHH = GetVehiclePedIsIn(PlayerPedId(), 0)
                        SetVehicleTyresCanBurst(VHH, true)
                    end
                else
                    NotifyAviso('Entre Em Um Veículo')
                    ToggleVeiculoPneusAProvaDeBalas = false
                end
            end

            if ToggleVeiculoGodMode then
                if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
                    if ToggleVeiculoGodMode then
                        local VHH = GetVehiclePedIsIn(PlayerPedId(), 0)
                        SetEntityInvincible(VHH, true)
                    else
                        local VHH = GetVehiclePedIsIn(PlayerPedId(), 0)
                        SetEntityInvincible(VHH, false)
                    end
                else
                    NotifyAviso('Entre Em Um Veículo')
                    ToggleVeiculoGodMode = false
                end
            end

            if ToggleVeiculoAceleracao then
                if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
                    if ToggleVeiculoAceleracao then
                        local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
                        local novaVelocidade = CROCK.Sliders['Value_Aceleration'].value
                        ModifyVehicleTopSpeed(vehicle, novaVelocidade)
                        ToggleVehicleMod(vehicle, 18, true)
                    else
                        SetVehicleBrake(vehicle, 10.0, true)
                    end
                else
                    NotifyAviso('Entre Em Um Veículo')
                    ToggleVeiculoAceleracao = false
                end
            end

            



            ------------------------------------------------------------------------->
            --------------FUNÇÕES ATIVAR/DESATIVAR INTERFACE TROLL------------------->
            ------------------------------------------------------------------------->




            if ToggleCameraLivre then
                if not cam ~= nil then
                    cam = CreateCam('DEFAULT_SCRIPTED_CAMERA', 1)
                end

                RenderScriptCams(1, 0, 0, 1, 1)
                SetCamActive(cam, true)
                
                local CROCKX, CROCKY, CROCKZ = table.unpack(GetEntityCoords(PlayerPedId()))
                local X = tonumber(string.format('%.2f', CROCKX))
                local Y = tonumber(string.format('%.2f', CROCKY))
                local Z = tonumber(string.format('%.2f', CROCKZ))
                
                SetCamCoord(cam, X, Y-1.0, Z+0.5)
                
                local SetRotX = 0.0
                local SetRotY = 0.0
                local SetRotZ = 0.0
                
                while DoesCamExist(cam) do
                    Citizen.Wait(3)

                    if not ToggleCameraLivre then
                        SetFocusEntity(PlayerPedId())
                        SetCamActive(cam,false)
                        RenderScriptCams(false, true, 1500, false, false)
                        DestroyCam(cam)
                        break
                    end

                    if not Visible then
                        
                        SetRotX = SetRotX - (GetDisabledControlNormal(1, 2) * 10.0)
                        SetRotZ = SetRotZ - (GetDisabledControlNormal(1, 1) * 10.0)
                        if (SetRotX > 90.0) then
                            SetRotX = 90.0
                        elseif (SetRotX < -90.0) then
                            SetRotX = -90.0
                        end
                        if (SetRotY > 90.0) then
                            SetRotY = 90.0
                        elseif (SetRotY < -90.0) then
                            SetRotY = -90.0
                        end
                        if (SetRotZ > 360.0) then
                            SetRotZ = SetRotZ - 360.0
                        elseif (SetRotZ < -360.0) then
                            SetRotZ = SetRotZ + 360.0 
                        end
                        
                        local x, y, z = table.unpack(GetCamCoord(cam))
                        local CamCoords = GetCamCoord(cam)			
                        local v3, ForWard = CamLivreCamRigh(cam), CamLivreCamFwd(cam)
                        local Velocidade = nil
                        
                        DrawCursorCamLivre()
                        SetHdArea(CamCoords.x, CamCoords.y, CamCoords.z, 50.0)
                        Desativar_Controles3()
                        
                        if IsDisabledControlPressed(0, 21) then					
                            Velocidade = 5.0				
                        elseif IsDisabledControlPressed(0, 36) then					
                            Velocidade = 0.25				
                        else					
                            Velocidade = 0.55
                        end				
                        
                        if IsDisabledControlPressed(0, 32)  then					
                            local NovaPosCam = CamCoords + ForWard * Velocidade					
                            SetCamCoord(cam, NovaPosCam.x, NovaPosCam.y, NovaPosCam.z)				
                        elseif IsDisabledControlPressed(0, 33)  then					
                            local NovaPosCam = CamCoords + ForWard * -Velocidade					
                            SetCamCoord(cam, NovaPosCam.x, NovaPosCam.y, NovaPosCam.z)				
                        elseif IsDisabledControlPressed(0, 34)  then
                            local NovaPosCam = CamCoords + v3 * -Velocidade					
                            SetCamCoord(cam, NovaPosCam.x, NovaPosCam.y, NovaPosCam.z)				
                        elseif IsDisabledControlPressed(0, 30)  then					
                            local NovaPosCam = CamCoords + v3 * Velocidade					
                            SetCamCoord(cam, NovaPosCam.x, NovaPosCam.y, NovaPosCam.z)				
                        elseif IsDisabledControlPressed(0, 22)  then
                            SetCamCoord(cam, CamCoords.x, CamCoords.y, CamCoords.z + Velocidade)
                        elseif IsDisabledControlPressed(1, 36) then
                            SetCamCoord(cam, CamCoords.x, CamCoords.y, CamCoords.z - Velocidade)
                        end
                        
                        SetFocusArea(GetCamCoord(cam).x, GetCamCoord(cam).y, GetCamCoord(cam).z, 0.0, 0.0, 0.0)
                        SetCamRot(cam, SetRotX, SetRotY, SetRotZ, 2)
                        local hit, CamDirecao = CamLivreRayCast(5000.0) 
                        if IsDisabledControlPressed(0, 26) then
                            local fov = 70.0
                            Citizen.CreateThread(function()
                                while true do
                                    Citizen.Wait(3)
                                    fov = fov - 0.1
                                    SetCamFov(cam, fov)
                                end
                            end)
                        end
                        
                        if IsDisabledControlJustPressed(1, CROCK.keys['MWDOWN']) then
                            CROCK.cameralivre.cam = CROCK.cameralivre.cam + 1
                            if CROCK.cameralivre.cam > #CROCK.cameralivre.cameralivremodes then
                                CROCK.cameralivre.cam = 1
                            end
                        end
                        
                        if IsDisabledControlJustPressed(1, CROCK.keys['MWUP']) then
                            CROCK.cameralivre.cam = CROCK.cameralivre.cam - 1
                            if CROCK.cameralivre.cam < 1 then
                                CROCK.cameralivre.cam = #CROCK.cameralivre.cameralivremodes
                            end
                        end
                        
                        local indexAnterior = CROCK.cameralivre.cam - 1
                        if indexAnterior < 1 then
                            indexAnterior = #CROCK.cameralivre.cameralivremodes
                        end
                        
                        local indexProximo = CROCK.cameralivre.cam + 1
                        if indexProximo > #CROCK.cameralivre.cameralivremodes then
                            indexProximo = 1
                        end

                        local modoAnterior = CROCK.cameralivre.cameralivremodes[indexAnterior]
                        local ModoAtual = CROCK.cameralivre.cameralivremodes[CROCK.cameralivre.cam]
                        local modoProximo = CROCK.cameralivre.cameralivremodes[indexProximo]
                        local textoModoAtual = ''..ModoAtual

                        DrawTextCamLivre(''..modoAnterior, false, 0.35, 0, 0.5, 0.775, 20)
                        DrawTextCamLivre(''..modoAnterior, false, 0.35, 0, 0.5, 0.775, 20)
                        
                        DrawTextCamLivre(textoModoAtual, false, 0.37, 0, 0.5, 0.800, 255)
                        DrawTextCamLivre(textoModoAtual, false, 0.37, 0, 0.5, 0.800, 255)
                        
                        DrawTextCamLivre(''..modoProximo, false, 0.35, 0, 0.5, 0.825, 20)
                        DrawTextCamLivre(''..modoProximo, false, 0.35, 0, 0.5, 0.825, 20)
                        
                        if ModoAtual == 'Observar' and not ToggleBindMenuStart then end
                        
                        if ModoAtual == 'Spawnar Carros' and not ToggleBindMenuStart then
                            if IsDisabledControlJustPressed(0, 24) then
                                local carsnames = CROCK.cameralivre.cars
                                local hashs = (carsnames[math.random(#carsnames)])
                                SpawnVehiclesAtCoord(hashs, CamDirecao.x, CamDirecao.y, CamDirecao.z)
                            end
                        end
                        
                        if ModoAtual == 'Spawnar Helis' and not ToggleBindMenuStart then
                            if IsDisabledControlJustPressed(0, 24) then
                                local helinames = CROCK.cameralivre.helis
                                local hashs = (helinames[math.random(#helinames)])
                                SpawnVehiclesAtCoord(hashs, CamDirecao.x, CamDirecao.y, CamDirecao.z)
                            end
                        end
                        
                        if ModoAtual == 'Deletar Veículos' and not ToggleBindMenuStart then
                            local entity = GetEntityInFrontOfCam()
                            if entity ~= 0 and DoesEntityExist(entity) and GetEntityType(entity) ~= 0 or nil then
                                if IsDisabledControlJustPressed(0, 24) then
                                    deleteVehicle(entity)
                                end
                            end
                        end
                        
                        if ModoAtual == 'Teleportar-Se' and not ToggleBindMenuStart then
                            if IsDisabledControlPressed(0, 24) then
                                SetEntityCoords(PlayerPedId(), CamDirecao.x, CamDirecao.y - 0.1, CamDirecao.z, true, true, true)
                            end
                        end
                        
                        if ModoAtual == 'Tazer Player' and not ToggleBindMenuStart then
                            if IsDisabledControlJustPressed(0, 24) then
                                local weapon = GetHashKey('WEAPON_STUNGUN')
                                RequestWeaponAsset(weapon)
                                while not HasWeaponAssetLoaded(weapon) do
                                    RequestWeaponAsset(weapon)
                                    Wait(0)
                                end
                                ShootSingleBulletBetweenCoords(CamDirecao.x, CamDirecao.y, CamDirecao.z, CamDirecao.x, CamDirecao.y, CamDirecao.z, 1.0, false, weapon, PlayerPedId(), true, false, -1.0)
                            end
                        end

                        if ModoAtual == 'Explodir' and not ToggleBindMenuStart then
                            if IsDisabledControlPressed(0, 24) then
                                AddExplosion(CamDirecao.x, CamDirecao.y - 0.1, CamDirecao.z, 7, 1000.0, true, false, true)
                            end
                        end
                    end       
                end
            end
        

            ------------------------------------------------------------------------->
            --------------FUNÇÕES ATIVAR/DESATIVAR INTERFACE VISUAL------------------>
            ------------------------------------------------------------------------->

            if ToggleEspNames then
                local meposs = GetEntityCoords(PlayerPedId(), true)
                for _, players in pairs(GetActivePlayers()) do
                    if GetPlayerPed(players) ~= GetPlayerPed(-1) then
                        local targetPed = GetPlayerPed(players)
                        local posallp = GetEntityCoords(targetPed, true)
                        local posesp = #(vector3(meposs.x, meposs.y, meposs.z) - vector3(posallp.x, posallp.y, posallp.z))

                        if posesp < 350 then
                            local isInFov = IsEntityOnScreen(targetPed)
                            local Visible = not IsEntityVisibleToScript(targetPed)
                            if isInFov then
                                local nameplay = GetPlayerName(players)
                                local Textonome = '~w~'..nameplay..''
                                local staff = Visible and '[STAFF]' or ''
                                local dist = math.floor(posesp) .. 'm'   
                                local pedplay = GetPlayerPed(players)
                                local r, g, b = CROCK.colorsps.Cor_Visual_N.r, CROCK.colorsps.Cor_Visual_N.g, CROCK.colorsps.Cor_Visual_N.b
                                local _, hasha = GetCurrentPedWeapon(pedplay, true)
                                local armas = Nome_Arma(hasha)

                                if armas == nil then
                                    armas = 'Unknown'
                                end
                                
                                local newName = string.gsub(armas, '_', ' ')
                                local v33 = vector3(0, 0, -1)
                                local r, g, b = Visible and RGBCROCK(2.0).r or 255, Visible and RGBCROCK(2.0).g or 255, Visible and RGBCROCK(2.0).b or 255
                                DrawTextVisual(posallp.x, posallp.y, posallp.z + v33.z,''..dist..'\n'..nameplay..'\n'..newName..'\n'..staff, r, g, b)
                            end
                        end
                    end
                end
            end

            if ToggleHealthBar then
                local jogadorLocal = PlayerId()
                local pedLocal = PlayerPedId()
                for _, jogador in ipairs(GetActivePlayers()) do
                    if jogador ~= jogadorLocal then
                        local pedAlvo = GetPlayerPed(jogador)
                        if DoesEntityExist(pedAlvo) and IsEntityOnScreen(pedAlvo) then
                            local incluirProprio = false
                            local referencia = incluirProprio and nil or pedLocal
                            local distancia = GetDistanceBetweenCoords(GetEntityCoords(referencia), GetEntityCoords(pedAlvo), true)
                            if distancia < CROCK.Sliders['Esp_Distancia'].value then
                                local dist = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), GetEntityCoords(pedAlvo), true)
                                SetDrawOrigin(GetEntityCoords(pedAlvo))
                                DrawRectangle(-0.2745 / dist - (dist / 500) / dist, 0, 0.0020, 2.0 / dist, 0, 0, 0, 255)
                                DrawRectangle(-0.2745 / dist - (dist / 500) / dist, 2.05 / dist - GetEntityHealth(pedAlvo) / 195 / dist, 0.001, GetEntityHealth(pedAlvo) / 200 / dist, 30, 255, 30, 255)
                                ClearDrawOrigin()
                            end
                        end
                    end
                end
            end
            
            if ToggleEspVeiculos then
                for _, veiculos in pairs(GetGamePool(CROCK.GamePools[3])) do
                    local minhaPosicao = GetEntityCoords(PlayerPedId(), true)
                    local posicaoVeiculos = GetEntityCoords(veiculos)
                    local distanciaVeiculo = #(minhaPosicao - posicaoVeiculos)
                    local nomeVeiculo = GetDisplayNameFromVehicleModel(GetEntityModel(veiculos))
                    local distanciaFormatada = math.floor(distanciaVeiculo) .. 'm'
                    local corR, corG, corB = CROCK.colorsps.Cor_Visual_VE.r, CROCK.colorsps.Cor_Visual_VE.g, CROCK.colorsps.Cor_Visual_VE.b
                    if distanciaVeiculo < CROCK.Sliders['Esp_Distancia'].value then
                        local offset = vector3(0, 0, -1)
                        DrawTextVisual(posicaoVeiculos.x, posicaoVeiculos.y, posicaoVeiculos.z + offset.z, ''..nomeVeiculo..' ('..distanciaFormatada ..')', corR, corG, corB, 255, 2.0)
                    end
                end
            end
            
            if l1n23s then
                if e3sp3s then
                for an in Enum3rat3P3ds() do
                    local cC = GetEntityCoords(an)
                    local c00rds = GetEntityCoords(PlayerPedId())
                    local me = an ~= PlayerPedId()
                    local mr = IsPedAPlayer(aR)
                    local cD = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), cC.x, cC.y, cC.z, true) * (1.6 - 0.05) -- Tamanho
                    local dismax = Sll1d3rs["par3d3_d1st"].valu333 * 3
                    if IsEntityOnScreen(an) then
                        if cD < dismax and GozaDentroFalcon == false then
                                if me then
                                if HasEntityClearLosToEntity(PlayerPedId(), an, 19) then
                                    DrawLine(c00rds, cC, 255, 16, 150, 232)
                                else
                                    if onl1v1sibl3 == false then
                                        DrawLine(c00rds, cC, 255, 16, 150, 232)
                                    end
                                end
                                end
                            end
                                ClearDrawOrigin()
                            end
                    end
                end
            end
            
            if ToggleEspEsqueleto then
                for _, jogador in ipairs(GetActivePlayers()) do
                    local ped = GetPlayerPed(jogador)
                    if ped ~= PlayerPedId() then
                        local distMinima = Visual_Dist(GetPedBoneCoords(ped, 0x0, 0.0, 0.0, 0.0))
                        local direitaJoelho = Coords_Soup(GetPedBoneCoords(ped, 0x3FCF, 0.0, 0.0, 0.0), distMinima)
                        local esquerdaJoelho = Coords_Soup(GetPedBoneCoords(ped, 0xB3FE, 0.0, 0.0, 0.0), distMinima)
                        local pescoco = Coords_Soup(GetPedBoneCoords(ped, 0x9995, 0.0, 0.0, 0.0), distMinima)
                        local cabeca = Coords_Soup(GetPedBoneCoords(ped, 0x796E, 0.0, 0.0, 0.0), distMinima)
                        local pelve = Coords_Soup(GetPedBoneCoords(ped, 0x2E28, 0.0, 0.0, 0.0), distMinima)
                        local peDireito = Coords_Soup(GetPedBoneCoords(ped, 0xCC4D, 0.0, 0.0, 0.0), distMinima)
                        local peEsquerdo = Coords_Soup(GetPedBoneCoords(ped, 0x3779, 0.0, 0.0, 0.0), distMinima)
                        local bracoSuperiorDireito = Coords_Soup(GetPedBoneCoords(ped, 0x9D4D, 0.0, 0.0, 0.0), distMinima)
                        local bracoSuperiorEsquerdo = Coords_Soup(GetPedBoneCoords(ped, 0xB1C5, 0.0, 0.0, 0.0), distMinima)
                        local antebracoDireito = Coords_Soup(GetPedBoneCoords(ped, 0x6E5C, 0.0, 0.0, 0.0), distMinima)
                        local antebracoEsquerdo = Coords_Soup(GetPedBoneCoords(ped, 0xEEEB, 0.0, 0.0, 0.0), distMinima)
                        local maoDireita = Coords_Soup(GetPedBoneCoords(ped, 0xDEAD, 0.0, 0.0, 0.0), distMinima)
                        local maoEsquerda = Coords_Soup(GetPedBoneCoords(ped, 0x49D9, 0.0, 0.0, 0.0), distMinima)
                        local r, g, b = CROCK.colorsps.Cor_Visual_E.r, CROCK.colorsps.Cor_Visual_E.g, CROCK.colorsps.Cor_Visual_E.b
                        DrawLine(cabeca, pescoco, r, g, b, 255)
                        DrawLine(pescoco, pelve, r, g, b, 255)
                        DrawLine(pelve, direitaJoelho, r, g, b, 255)
                        DrawLine(pelve, esquerdaJoelho, r, g, b, 255)
                        DrawLine(direitaJoelho, peDireito, r, g, b, 255)
                        DrawLine(esquerdaJoelho, peEsquerdo, r, g, b, 255)
                        DrawLine(pescoco, bracoSuperiorDireito, r, g, b, 255)
                        DrawLine(pescoco, bracoSuperiorEsquerdo, r, g, b, 255)
                        DrawLine(bracoSuperiorDireito, antebracoDireito, r, g, b, 255)
                        DrawLine(bracoSuperiorEsquerdo, antebracoEsquerdo, r, g, b, 255)
                        DrawLine(antebracoDireito, maoDireita, r, g, b, 255)
                        DrawLine(antebracoEsquerdo, maoEsquerda, r, g, b, 255)
                    end
                end
            end
            
            if ToggleAdmsProximos then
                local CursorR, resH = CROCK.AdmsList.Adm.AdmW-0.5, CROCK.AdmsList.Adm.AdmH-0.5
                DrawSprite(CROCK.txtnames.listaadms, CROCK.txtnames.listaadms, 0.060 + XListAdms, 0.180 + YListAdms, 0.120 + CursorR, 0.160 + resH, 0.0, 255, 255, 255, 255) --lista adms
                ListAdmsMoviment()
                
                if ToggleBindMenuStart then
                    local x, y = GetNuiCursorPosition() 
                    local x_ez, y_ez = GetActiveScreenResolution() 
                    local cursorX, cursorY = x / x_ez, y / y_ez
                    DrawSprite(CROCK.mousetxt.cameraDeTrafego, CROCK.mousetxt.centroDeRadar, cursorX + 0.002, cursorY + 0.005, 0.010, 0.020, 330.0, 255, 255, 255, 255)
                end
                
                local ListaAdmsY = 0.130+CROCK.Scroll['ListaAdms'].S1
                local ListaAdmsAdd = 0.030
                local ListaAdmsMax = 0.450
                
                for _, player in pairs(GetActivePlayers()) do
                    local meplayerPed = PlayerPedId()
                    local meposs = GetEntityCoords(meplayerPed)
                    local playerped = GetPlayerPed(player)
                    local posallp = GetEntityCoords(playerped, true)
                    local playerName = GetPlayerName(player)                
                    local dist = tonumber(string.format('%.0f', GetDistanceBetweenCoords(GetEntityCoords(meplayerPed), GetEntityCoords(playerped)), true))
                    local Visible = not IsEntityVisibleToScript(playerped)
                    local staff = ''..playerName..' | ('..dist..'m)' or ''
                    local r, g, b = RGBCROCK(5.0).r, RGBCROCK(5.0).g, RGBCROCK(5.0).b
                    
                    if dist < 350 then
                        ListaAdmsY = ListaAdmsY + ListaAdmsAdd
                        
                        if ListaAdmsY >= 0.130 and ListaAdmsY <= ListaAdmsMax then
                            if Visible then
                                if ListaAdmsTxt(''..staff, -0.121+XListAdms, ListaAdmsY + YListAdms, r, g, b) then end
                            end
                        end
                    end
                end
            end
        end
    end)


    function Menu()

        if opacity < 250 then
            opacity = opacity + 15
        end

        CROCKX = CROCK.CROCKdrags.CROCK_x-0.5
        CROCKY = CROCK.CROCKdrags.CROCK_y-0.5
        CROCKX2 = CROCK.CROCKdrags.CROCK_x2-0.5
        CROCKY2 = CROCK.CROCKdrags.CROCK_y2-0.5
        local CursorR, resH = CROCK.CROCKdrags.CROCK_w-0.5, CROCK.CROCKdrags.CROCK_h-0.5
        local CROCKX, CROCKY = CROCK.CROCKdrags.CROCK_x-0.5, CROCK.CROCKdrags.CROCK_y-0.5
        Mexer()

        if ButtonClickTab('Jogador', '1', true, 0.300 + CROCKX, 0.235 + CROCKY) then
            CROCK.tabs.tab = 'Jogador'
            SomClick() 
        end 


        if ButtonClickTab('Armas', '1', true, 0.300 + CROCKX, 0.323 + CROCKY) then 
            CROCK.tabs.tab = 'Armas' 
            SomClick() 
        end

        if ButtonClickTab('Veiculos', '1', true, 0.300 + CROCKX, 0.375 + CROCKY) then 
            CROCK.tabs.tab = 'Veiculos' 
            SomClick() 
        end

        if ButtonClickTab('Visual', '1', true, 0.300 + CROCKX, 0.425 + CROCKY) then 
            CROCK.tabs.tab = 'Visual' 
            SomClick() 
        end

        if ButtonClickTab('Troll', '1', true, 0.300 + CROCKX, 0.510 + CROCKY) then
            CROCK.tabs.tab = 'Troll'
            SomClick() 
        end

        if ButtonClickTab('Exploits', '1', true, 0.300 + CROCKX, 0.563 + CROCKY) then 
            CROCK.tabs.tab = 'Exploits' 
            SomClick() 
        end

        if ButtonClickTab('Config', '1', true, 0.300 + CROCKX, 0.615 + CROCKY) then
            CROCK.tabs.tab = 'Config'
            SomClick() 
        end


        ------------------------------------------------------------------------->
        ----------------------------INTERFACE JOGADOR---------------------------->
        ------------------------------------------------------------------------->



        if CROCK.tabs.tab == 'Jogador' then

            DrawSprite(CROCK.txtnames.j, CROCK.txtnames.j, 0.480 + CROCKX, 0.428 + CROCKY, 0.4400 + CursorR, 0.6000 + resH, 0.0, 255, 255, 255, opacity)

            local CROCKX, CROCKY = CROCK.CROCKdrags.CROCK_x-0.500, CROCK.CROCKdrags.CROCK_y-0.520
            local JogadorY = 0.240+CROCK.Scroll['Jogador'].S1
            local JogadorAdd = 0.045
            local JogadorMax = 0.68

            
            if IsDisabledControlPressed(0, 14) and JogadorY > (0.230 - (15 * JogadorAdd)) and Mouse(0.430+CROCKX, 0.350+CROCKY, 0.15, 0.10+ 0.30) then
                CROCK.Scroll['Jogador'].S1 = CROCK.Scroll['Jogador'].S1 - JogadorAdd
            end

            if IsDisabledControlJustPressed(0, 15) and JogadorY < 0.230 and Mouse(0.430+CROCKX, 0.350+CROCKY, 0.15, 0.10 + 0.30) then
                CROCK.Scroll['Jogador'].S1 = CROCK.Scroll['Jogador'].S1 + JogadorAdd
            end

            JogadorY = JogadorY + JogadorAdd
            if JogadorY >= 0.240 and JogadorY <= JogadorMax then 
                if Botao('Reviver', 0.257500+CROCKX, JogadorY + CROCKY) then Ressurect() end
            end

            JogadorY = JogadorY + JogadorAdd
            if JogadorY >= 0.240 and JogadorY <= JogadorMax then 
                if Botao('Curar', 0.257500+CROCKX, JogadorY + CROCKY) then Heal() end
            end

            JogadorY = JogadorY + JogadorAdd
            if JogadorY >= 0.240 and JogadorY <= JogadorMax then 
                if Botao('Suicídio', 0.257500+CROCKX, JogadorY + CROCKY) then Suicide() end
            end

            JogadorY = JogadorY + JogadorAdd
            if JogadorY >= 0.240 and JogadorY <= JogadorMax then 
                if Botao('Algemar/Desalgemar', 0.257500+CROCKX, JogadorY + CROCKY) then Handcuff_Uncuff() end
            end

            JogadorY = JogadorY + JogadorAdd
            if JogadorY >= 0.240 and JogadorY <= JogadorMax then 
                if Botao('Sair Do H', 0.257500+CROCKX, JogadorY + CROCKY) then Sair_Do_H() end
            end

            JogadorY = JogadorY + JogadorAdd
            if JogadorY >= 0.240 and JogadorY <= JogadorMax then 
                if Botao('Limpar Ferimentos', 0.257500+CROCKX, JogadorY + CROCKY) then Clean_Wounds() end
            end

            JogadorY = JogadorY + JogadorAdd
            if JogadorY >= 0.240 and JogadorY <= JogadorMax then 
                if Botao('Roupas Aleatórias', 0.257500+CROCKX, JogadorY + CROCKY) then Ramdom_R() end
            end

            JogadorY = JogadorY + JogadorAdd
            if JogadorY >= 0.240 and JogadorY <= JogadorMax then 
                if Botao('Resetar Roupas', 0.257500+CROCKX, JogadorY + CROCKY) then Resetar_Roupas() end
            end

            JogadorY = JogadorY + JogadorAdd
            if JogadorY >= 0.240 and JogadorY <= JogadorMax then 
                if Botao('Roupa Legit', 0.257500+CROCKX, JogadorY + CROCKY) then R() end
            end

            JogadorY = JogadorY + JogadorAdd
            if JogadorY >= 0.240 and JogadorY <= JogadorMax then 
                if Botao('Roupa Legit2', 0.257500+CROCKX, JogadorY + CROCKY) then R2() end
            end

            JogadorY = JogadorY + JogadorAdd
            if JogadorY >= 0.240 and JogadorY <= JogadorMax then 
                if Botao('Roupa Adm', 0.257500+CROCKX, JogadorY + CROCKY) then Skin_Adm() end
            end

            JogadorY = JogadorY + JogadorAdd
            if JogadorY >= 0.240 and JogadorY <= JogadorMax then 
                if Botao('Setar Vida', 0.257500+CROCKX, JogadorY + CROCKY) then vida() end
            end

            JogadorY = JogadorY + JogadorAdd
            if JogadorY >= 0.240 and JogadorY <= JogadorMax then 
                Slider(CROCK.Sliders['Setar_Health'], 0.405+CROCKX, JogadorY + CROCKY, 1)
            end

            local CROCKX, CROCKY = CROCK.CROCKdrags.CROCK_x-0.500, CROCK.CROCKdrags.CROCK_y-0.500
            local JogadorY2 = 0.220+CROCK.Scroll['Jogador2'].S1
            local JogadorAdd2 = 0.030
            local JogadorMax2 = 0.680


            if IsDisabledControlPressed(0, 14) and JogadorY2 > (0.180 - (30 * JogadorAdd2)) and Mouse(0.600+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Jogador2'].S1 = CROCK.Scroll['Jogador2'].S1 - JogadorAdd2
            end

            if IsDisabledControlJustPressed(0, 15) and JogadorY2 < 0.212 and Mouse(0.600+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Jogador2'].S1 = CROCK.Scroll['Jogador2'].S1 + JogadorAdd2
            end


            JogadorY2 = JogadorY2 + JogadorAdd2
            if JogadorY2 >= 0.222 and JogadorY2 <= JogadorMax2 then 
                if CheckBox('GodMode', 0.580+CROCKX, JogadorY2 + CROCKY, 0.505+CROCKY, ToggleGodMode) then SomClick() ToggleGodMode = not ToggleGodMode end
            end

            JogadorY2 = JogadorY2 + JogadorAdd2
            if JogadorY2 >= 0.222 and JogadorY2 <= JogadorMax2 then 
                if CheckBox('Stamina Infinita', 0.580+CROCKX, JogadorY2 + CROCKY, 0.505+CROCKY, ToggleStamina) then SomClick() ToggleStamina = not ToggleStamina end
            end

            JogadorY2 = JogadorY2 + JogadorAdd2
            if JogadorY2 >= 0.222 and JogadorY2 <= JogadorMax2 then 
                if CheckBox('Super Soco', 0.580+CROCKX, JogadorY2 + CROCKY, 0.505+CROCKY, ToggleSuperSoco) then SomClick() ToggleSuperSoco = not ToggleSuperSoco end
            end

            JogadorY2 = JogadorY2 + JogadorAdd2
            if JogadorY2 >= 0.222 and JogadorY2 <= JogadorMax2 then 
                if CheckBox('No Ragdoll', 0.580+CROCKX, JogadorY2 + CROCKY, 0.505+CROCKY, ToggleNoRagdoll) then SomClick() ToggleNoRagdoll = not ToggleNoRagdoll end
            end

            JogadorY2 = JogadorY2 + JogadorAdd2
            if JogadorY2 >= 0.222 and JogadorY2 <= JogadorMax2 then 
                if CheckBox('Anti H', 0.580+CROCKX, JogadorY2 + CROCKY, 0.505+CROCKY, ToggleAntiH) then SomClick() ToggleAntiH = not ToggleAntiH end
            end

            JogadorY2 = JogadorY2 + JogadorAdd2
            if JogadorY2 >= 0.222 and JogadorY2 <= JogadorMax2 then 
                if CheckBox('Invisível', 0.580+CROCKX, JogadorY2 + CROCKY, 0.505+CROCKY, ToggleInvisivel) then SomClick() ToggleInvisivel = not ToggleInvisivel end
            end

            JogadorY2 = JogadorY2 + JogadorAdd2
            if JogadorY2 >= 0.222 and JogadorY2 <= JogadorMax2 then 
                if CheckBox('Bloquear print', 0.580+CROCKX, JogadorY2 + CROCKY, 0.505+CROCKY, ToggleModoFurtivo) then SomClick() ToggleModoFurtivo = not ToggleModoFurtivo end
            end


            JogadorY2 = JogadorY2 + JogadorAdd2
            if JogadorY2 >= 0.222 and JogadorY2 <= JogadorMax2 then 
                if CheckBox('Noclip', 0.580+CROCKX, JogadorY2 + CROCKY, 0.505+CROCKY, ToggleNoClip) then SomClick() ToggleNoClip = not ToggleNoClip SpawnVehiclesNc() end
            end

            JogadorY2 = JogadorY2 + JogadorAdd2
            if JogadorY2 >= 0.222 and JogadorY2 <= JogadorMax2 then 
                Slider(CROCK.Sliders['NoclipVelocity'], 0.585+CROCKX, JogadorY2 + CROCKY, 1)
            end

            JogadorY2 = JogadorY2 + JogadorAdd2
            if JogadorY2 >= 0.222 and JogadorY2 <= JogadorMax2 then 
                if CheckBox('Super Velocidade', 0.580+CROCKX, JogadorY2 + CROCKY, 0.505+CROCKY, ToggleSuperVelocidade) then SomClick() ToggleSuperVelocidade = not ToggleSuperVelocidade end
            end

            JogadorY2 = JogadorY2 + JogadorAdd2
            if JogadorY2 >= 0.222 and JogadorY2 <= JogadorMax2 then 
                if CheckBox('Super Pulo', 0.580+CROCKX, JogadorY2 + CROCKY, 0.505+CROCKY, ToggleSuperPulo) then SomClick() ToggleSuperPulo = not ToggleSuperPulo end
            end

            JogadorY2 = JogadorY2 + JogadorAdd2
            if JogadorY2 >= 0.222 and JogadorY2 <= JogadorMax2 then 
                if CheckBox('FreeCam', 0.580+CROCKX, JogadorY2 + CROCKY, 0.505+CROCKY, ToggleCameraLivre) then SomClick() ToggleCameraLivre = not ToggleCameraLivre end
            end

            

        elseif CROCK.tabs.tab == 'Armas' then

            DrawSprite(CROCK.txtnames.a, CROCK.txtnames.a, 0.480 + CROCKX, 0.428 + CROCKY, 0.4400 + CursorR, 0.6000 + resH, 0.0, 255, 255, 255, opacity)
            local CROCKX, CROCKY = CROCK.CROCKdrags.CROCK_x-0.500, CROCK.CROCKdrags.CROCK_y-0.500
            local ArmasY = 0.220+CROCK.Scroll['Armas'].S1
            local ArmasAdd = 0.045
            local ArmasMax = 0.660

            if IsDisabledControlPressed(0, 14) and ArmasY > (0.212 - (25 * ArmasAdd)) and Mouse(0.430+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Armas'].S1 = CROCK.Scroll['Armas'].S1 - ArmasAdd
            end

            if IsDisabledControlJustPressed(0, 15) and ArmasY < 0.212 and Mouse(0.430+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Armas'].S1 = CROCK.Scroll['Armas'].S1 + ArmasAdd
            end

            ArmasY = ArmasY + ArmasAdd
            if ArmasY >= 0.220 and ArmasY <= ArmasMax then 
                if Botao('Spawnar Armas', 0.257500+CROCKX, ArmasY + CROCKY) then Pegar_Armas() imputarmas = true end
            end

            ArmasY = ArmasY + ArmasAdd
            if ArmasY >= 0.220 and ArmasY <= ArmasMax then 
                if Botao('Remover Todas As Armas', 0.257500+CROCKX, ArmasY + CROCKY) then RemoverTodasArmas() end
            end

            ArmasY = ArmasY + ArmasAdd
            if ArmasY >= 0.220 and ArmasY <= ArmasMax then 
                if Botao('Adicionar Attachs', 0.257500+CROCKX, ArmasY + CROCKY) then atachamentos() end
            end

            ArmasY = ArmasY + ArmasAdd
            if ArmasY >= 0.220 and ArmasY <= ArmasMax then 
                if Botao('Pistol Mk2', 0.257500+CROCKX, ArmasY + CROCKY) then puxarpracarai('WEAPON_PISTOL_MK2') end
            end
            
            ArmasY = ArmasY + ArmasAdd
            if ArmasY >= 0.220 and ArmasY <= ArmasMax then 
                if Botao('Tec-9', 0.257500+CROCKX, ArmasY + CROCKY) then puxarpracarai('WEAPON_MACHINEPISTOL') end
            end
            
            ArmasY = ArmasY + ArmasAdd
            if ArmasY >= 0.220 and ArmasY <= ArmasMax then 
                if Botao('Special Carbine Mk2', 0.257500+CROCKX, ArmasY + CROCKY) then puxarpracarai('WEAPON_SPECIALCARBINE_MK2') end
            end

            ArmasY = ArmasY + ArmasAdd
            if ArmasY >= 0.220 and ArmasY <= ArmasMax then 
                if Botao('Taco De Baiseball', 0.257500+CROCKX, ArmasY + CROCKY) then puxarpracarai('WEAPON_BAT') end
            end

            ArmasY = ArmasY + ArmasAdd
            if ArmasY >= 0.220 and ArmasY <= ArmasMax then 
                if Botao('Facão', 0.257500+CROCKX, ArmasY + CROCKY) then puxarpracarai('WEAPON_MACHETE') end
            end

            ArmasY = ArmasY + ArmasAdd
            if ArmasY >= 0.220 and ArmasY <= ArmasMax then 
                if Botao('Faca', 0.257500+CROCKX, ArmasY + CROCKY) then puxarpracarai('WEAPON_KNIFE') end
            end

            local ArmasY2 = 0.220+CROCK.Scroll['Armas2'].S1
            local ArmasAdd2 = 0.050
            local ArmasAdd3 = 0.030
            local ArmasMax2 = 0.680

            if IsDisabledControlPressed(0, 14) and ArmasY2 > (0.180 - (30 * ArmasAdd2)) and Mouse(0.600+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Armas2'].S1 = CROCK.Scroll['Armas2'].S1 - ArmasAdd2
            end

            if IsDisabledControlJustPressed(0, 15) and ArmasY2 < 0.212 and Mouse(0.600+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Armas2'].S1 = CROCK.Scroll['Armas2'].S1 + ArmasAdd2
            end

            ArmasY2 = ArmasY2 + ArmasAdd3
            if ArmasY2 >= 0.220 and ArmasY2 <= ArmasMax2 then 
                if CheckBox('Munição Explosiva', 0.580+CROCKX, ArmasY2 + CROCKY, 0.505+CROCKY, ToggleMunicaoExplosiva) then SomClick() ToggleMunicaoExplosiva = not ToggleMunicaoExplosiva end
            end

            ArmasY2 = ArmasY2 + ArmasAdd3
            if ArmasY2 >= 0.220 and ArmasY2 <= ArmasMax2 then 
                if CheckBox('OneShot', 0.580+CROCKX, ArmasY2 + CROCKY, 0.505+CROCKY, One_Shot) then SomClick() One_Shot = not One_Shot end
            end

            ArmasY2 = ArmasY2 + ArmasAdd3
            if ArmasY2 >= 0.220 and ArmasY2 <= ArmasMax2 then 
                if CheckBox('Habilitar Coronhada', 0.580+CROCKX, ArmasY2 + CROCKY, 0.505+CROCKY, ToggleHabilitarCoronhada) then SomClick() ToggleHabilitarCoronhada = not ToggleHabilitarCoronhada end
            end

            ArmasY2 = ArmasY2 + ArmasAdd3
            if ArmasY2 >= 0.220 and ArmasY2 <= ArmasMax2 then 
                if CheckBox('Habilitar Tab', 0.580+CROCKX, ArmasY2 + CROCKY, 0.505+CROCKY, ToggleHabilitarTab) then SomClick() ToggleHabilitarTab = not ToggleHabilitarTab end
            end

            ArmasY2 = ArmasY2 + ArmasAdd3
            if ArmasY2 >= 0.220 and ArmasY2 <= ArmasMax2 then 
                if CheckBox('Atirar Desarmado', 0.580+CROCKX, ArmasY2 + CROCKY, 0.505+CROCKY, ToggleAtirarDesarmado) then SomClick() ToggleAtirarDesarmado = not ToggleAtirarDesarmado end
            end
                

            ArmasY2 = ArmasY2 + ArmasAdd3
            if ArmasY2 >= 0.220 and ArmasY2 <= ArmasMax2 then 
                if CheckBox('Mira', 0.580+CROCKX, ArmasY2 + CROCKY, 0.505+CROCKY, ToggleCrosshair) then SomClick() ToggleCrosshair = not ToggleCrosshair ToggleCrosshairRGB = not ToggleCrosshairRGB end
            end

            if ToggleCrosshairRGB then
                ArmasY2 = ArmasY2 + ArmasAdd3
                if ArmasY2 >= 0.220 and ArmasY2 <= ArmasMax2 then 
                    if CheckBox('Mira rgb', 0.580+CROCKX, ArmasY2 + CROCKY, 0.505+CROCKY, ToggleCrosshairRgb) then SomClick() ToggleCrosshairRgb = not ToggleCrosshairRgb end
                end
            end

            ArmasY2 = ArmasY2 + ArmasAdd3
            if ArmasY2 >= 0.220 and ArmasY2 <= ArmasMax2 then 
                if CheckBox('AimBot', 0.580+CROCKX, ArmasY2 + CROCKY, 0.505+CROCKY, ToggleAimBot) then SomClick() ToggleAimBot = not ToggleAimBot end
            end




            



            ------------------------------------------------------------------------->
            ----------------------------INTERFACE VEICULOS--------------------------->
            ------------------------------------------------------------------------->


        elseif CROCK.tabs.tab == 'Veiculos' then 


            DrawSprite(CROCK.txtnames.v, CROCK.txtnames.v, 0.480 + CROCKX, 0.428 + CROCKY, 0.4400 + CursorR, 0.6000 + resH, 0.0, 255, 255, 255, opacity)        
            
            local VeiculosY = 0.220+CROCK.Scroll['Veiculos'].S1
            local VeiculosAdd = 0.045
            local VeiculosMax = 0.660

            if IsDisabledControlPressed(0, 14) and VeiculosY > (0.180 - (30 * VeiculosAdd)) and Mouse(0.430+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Veiculos'].S1 = CROCK.Scroll['Veiculos'].S1 - VeiculosAdd
            end

            if IsDisabledControlJustPressed(0, 15) and VeiculosY < 0.212 and Mouse(0.430+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Veiculos'].S1 = CROCK.Scroll['Veiculos'].S1 + VeiculosAdd
            end

            VeiculosY = VeiculosY + VeiculosAdd
            if VeiculosY >= 0.220 and VeiculosY <= VeiculosMax then 
                if Botao('Spawnar Veiculos', 0.257500+CROCKX, VeiculosY + CROCKY) then Pegar_Veiculos() imputvehs = true end
            end

            VeiculosY = VeiculosY + VeiculosAdd
            if VeiculosY >= 0.220 and VeiculosY <= VeiculosMax then 
                if Botao('Destrancar', 0.257500+CROCKX, VeiculosY + CROCKY) then Destrancar() end
            end

            VeiculosY = VeiculosY + VeiculosAdd
            if VeiculosY >= 0.220 and VeiculosY <= VeiculosMax then 
                if Botao('Trancar', 0.257500+CROCKX, VeiculosY + CROCKY) then Trancar() end
            end

            VeiculosY = VeiculosY + VeiculosAdd
            if VeiculosY >= 0.220 and VeiculosY <= VeiculosMax then 
                if Botao('Reparar/Desvirar', 0.257500+CROCKX, VeiculosY + CROCKY) then Reparar_Desvirar() end
            end

            VeiculosY = VeiculosY + VeiculosAdd
            if VeiculosY >= 0.220 and VeiculosY <= VeiculosMax then 
                if Botao('Deletar Veículo', 0.257500+CROCKX, VeiculosY + CROCKY) then Deletar_Veh() end
            end

            VeiculosY = VeiculosY + VeiculosAdd
            if VeiculosY >= 0.220 and VeiculosY <= VeiculosMax then 
                if Botao('Puxar Veiculo', 0.257500+CROCKX, VeiculosY + CROCKY) then Pegar_Veiculo() end
            end

            if VerifyResource('MQCU') then
                VeiculosY = VeiculosY + VeiculosAdd
                if VeiculosY >= 0.220 and VeiculosY <= VeiculosMax then 
                    if Botao('Puxar Veiculo (MQCU)', 0.257500+CROCKX, VeiculosY + CROCKY) then Pegar_Veiculo2() end
                end
            end

            VeiculosY = VeiculosY + VeiculosAdd
            if VeiculosY >= 0.220 and VeiculosY <= VeiculosMax then 
                if Botao('TP Veículo Próximo', 0.257500+CROCKX, VeiculosY + CROCKY) then Ir_Veiculo_Proximo() end
            end

            VeiculosY = VeiculosY + VeiculosAdd
            if VeiculosY >= 0.220 and VeiculosY <= VeiculosMax then 
                if Botao('Full Tunning', 0.257500+CROCKX, VeiculosY + CROCKY) then  Full_Tunning() end
            end

            VeiculosY = VeiculosY + VeiculosAdd
            if VeiculosY >= 0.220 and VeiculosY <= VeiculosMax then 
                if Botao('Cor Primária e Secundária', 0.257500+CROCKX, VeiculosY + CROCKY) then PrimariaeSecundaria() end
            end

            VeiculosY = VeiculosY + VeiculosAdd
            if VeiculosY >= 0.220 and VeiculosY <= VeiculosMax then 
                if Botao('Mudar a Placa', 0.257500+CROCKX, VeiculosY + CROCKY) then  Mudar_Placa() end
            end

            local VeiculosY2 = 0.220+CROCK.Scroll['Veiculos2'].S1
            local VeiculosAdd2 = 0.030
            local VeiculosMax2 = 0.660

            if IsDisabledControlPressed(0, 14) and VeiculosY2 > (0.180 - (30 * VeiculosAdd2)) and Mouse(0.600+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Veiculos2'].S1 = CROCK.Scroll['Veiculos2'].S1 - VeiculosAdd2
            end

            if IsDisabledControlJustPressed(0, 15) and VeiculosY2 < 0.212 and Mouse(0.600+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Veiculos2'].S1 = CROCK.Scroll['Veiculos2'].S1 + VeiculosAdd2
            end

            VeiculosY2 = VeiculosY2 + VeiculosAdd2
            if VeiculosY2>= 0.220 and VeiculosY2 <= VeiculosMax2 then 
                if CheckBox('Lista De Veículos', 0.580+CROCKX, VeiculosY2 + CROCKY, 0.505+CROCKY, Lista_De_Veiculos) then SomClick() Lista_De_Veiculos = not Lista_De_Veiculos end
            end

            if Lista_De_Veiculos then
                local peed = GetPlayerPed(PlayerPedId())
                local CROCK_drag_x = CROCK.CROCKdrags.CROCK_x - 0.5
                local CROCK_drag_y = CROCK.CROCKdrags.CROCK_y - 0.5
                local CROCK_drag_w = CROCK.CROCKdrags.CROCK_w - 0.5
                local CROCK_drag_h = CROCK.CROCKdrags.CROCK_h - 0.5

                DrawSprite(CROCK.txtnames.listavehs, CROCK.txtnames.listavehs, 0.780 + CROCKX, 0.428 + CROCKY, 0.170 + CursorR, 0.500 + resH, 0.0, 255, 255, 255, 255)

                local ListaVeiculosY = 0.220+CROCK.Scroll['ListaVeiculos'].S1
                local ListaVeiculosAdd = 0.050
                local ListaVeiculosMax = 0.600

                if IsDisabledControlPressed(0, 14) and ListaVeiculosY > (0.180 - (30 * ListaVeiculosAdd)) and Mouse(0.800+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                    CROCK.Scroll['ListaVeiculos'].S1 = CROCK.Scroll['ListaVeiculos'].S1 - ListaVeiculosAdd
                end

                if IsDisabledControlJustPressed(0, 15) and ListaVeiculosY < 0.212 and Mouse(0.800+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                    CROCK.Scroll['ListaVeiculos'].S1 = CROCK.Scroll['ListaVeiculos'].S1 + ListaVeiculosAdd
                end

                for _, veh in pairs(GetGamePool(CROCK.GamePools[3])) do
                    local playerPed = PlayerPedId()
                    local NomeVe = GetDisplayNameFromVehicleModel(GetEntityModel(veh))
                    local dist = tonumber(string.format('%.0f', GetDistanceBetweenCoords(GetEntityCoords(playerPed), GetEntityCoords(veh)), true))
                    local nomeveh = GetDisplayNameFromVehicleModel(GetEntityModel(veh))

                    if dist < 350 then
                        local status = (GetPedInVehicleSeat(veh, -1) == 0) and '~g~LIVRE' or '~r~OCUPADO'
                        local text = ('~w~ | %s ~w~|'):format(status)

                        ListaVeiculosY = ListaVeiculosY + ListaVeiculosAdd
                        if ListaVeiculosY >= 0.220 and ListaVeiculosY <= ListaVeiculosMax then 
                            if  veh == Veiculo_Sel then
                                if Vehs('~~'..nomeveh..''..text..' ('..dist..'m)',  0.600+CROCKX, ListaVeiculosY + CROCKY, Veiculo_Sel) then
                                    Veiculo_Sel = Veiculo_Sel
                                end
                            else
                                if Vehs('~w~'..nomeveh..''..text..' ('..dist..'m)', 0.600+CROCKX, ListaVeiculosY + CROCKY) then
                                    Veiculo_Sel = veh
                                end
                            end
                        end 
                    end
                end

            else
                Veiculo_Sel = false
            end

            VeiculosY2 = VeiculosY2 + VeiculosAdd2
            if VeiculosY2>= 0.220 and VeiculosY2 <= VeiculosMax2 then 
                if CheckBox('Veículo Full rgb', 0.580+CROCKX, VeiculosY2 + CROCKY, 0.505+CROCKY, ToggleVeiculoFullRgb) then SomClick() ToggleVeiculoFullRgb = not ToggleVeiculoFullRgb end 
            end

            VeiculosY2 = VeiculosY2 + VeiculosAdd2
            if VeiculosY2>= 0.220 and VeiculosY2 <= VeiculosMax2 then 
                if CheckBox('Boost Buzina', 0.580+CROCKX, VeiculosY2 + CROCKY, 0.505+CROCKY, ToggleVeiculoBoostBuzina) then SomClick() ToggleVeiculoBoostBuzina = not ToggleVeiculoBoostBuzina end
            end

            VeiculosY2 = VeiculosY2 + VeiculosAdd2
            if VeiculosY2>= 0.220 and VeiculosY2 <= VeiculosMax2 then 
                if CheckBox('Não Cair', 0.580+CROCKX, VeiculosY2 + CROCKY, 0.505+CROCKY, ToggleVeiculoNaoCair) then SomClick() ToggleVeiculoNaoCair = not ToggleVeiculoNaoCair end
            end

            VeiculosY2 = VeiculosY2 + VeiculosAdd2
            if VeiculosY2>= 0.220 and VeiculosY2 <= VeiculosMax2 then
                if CheckBox('Freio De Avião', 0.580+CROCKX, VeiculosY2 + CROCKY, 0.505+CROCKY, ToggleVeiculoFreioDeAviao) then SomClick() ToggleVeiculoFreioDeAviao = not ToggleVeiculoFreioDeAviao end
            end

            VeiculosY2 = VeiculosY2 + VeiculosAdd2
            if VeiculosY2>= 0.220 and VeiculosY2 <= VeiculosMax2 then
                if CheckBox('Reparar Automático', 0.580+CROCKX, VeiculosY2 + CROCKY, 0.505+CROCKY, ToggleVeiculoRepararAutomatico) then SomClick() ToggleVeiculoRepararAutomatico = not ToggleVeiculoRepararAutomatico end
            end

            VeiculosY2 = VeiculosY2 + VeiculosAdd2
            if VeiculosY2>= 0.220 and VeiculosY2 <= VeiculosMax2 then
                if CheckBox('Pneus A Prova De Balas', 0.580+CROCKX, VeiculosY2 + CROCKY, 0.505+CROCKY, ToggleVeiculoPneusAProvaDeBalas) then SomClick() ToggleVeiculoPneusAProvaDeBalas = not ToggleVeiculoPneusAProvaDeBalas end
            end

            VeiculosY2 = VeiculosY2 + VeiculosAdd2
            if VeiculosY2>= 0.220 and VeiculosY2 <= VeiculosMax2 then
                if CheckBox('GodMode', 0.580+CROCKX, VeiculosY2 + CROCKY, 0.505+CROCKY, ToggleVeiculoGodMode) then SomClick() ToggleVeiculoGodMode = not ToggleVeiculoGodMode end
            end

            

            VeiculosY2 = VeiculosY2 + VeiculosAdd2
            if VeiculosY2>= 0.220 and VeiculosY2 <= VeiculosMax2 then
                if CheckBox('Aceleração', 0.580+CROCKX, VeiculosY2 + CROCKY, 0.505+CROCKY, ToggleVeiculoAceleracao) then SomClick() ToggleVeiculoAceleracao = not ToggleVeiculoAceleracao end
            end

            VeiculosY2 = VeiculosY2 + VeiculosAdd2
            if VeiculosY2>= 0.220 and VeiculosY2 <= VeiculosMax2 then
                Slider(CROCK.Sliders['Value_Aceleration'], 0.580+CROCKX, VeiculosY2 + CROCKY, 1)
            end


            ------------------------------------------------------------------------->
            ----------------------------INTERFACE TROLL------------------------------>
            ------------------------------------------------------------------------->


        elseif CROCK.tabs.tab == 'Troll' then 

            DrawSprite(CROCK.txtnames.t, CROCK.txtnames.t, 0.480 + CROCKX, 0.428 + CROCKY, 0.4400 + CursorR, 0.6000 + resH, 0.0, 255, 255, 255, opacity)

            local TrollY = 0.220+CROCK.Scroll['Troll'].S1
            local TrollAdd = 0.045
            local TrollMax = 0.660

            if IsDisabledControlPressed(0, 14) and TrollY > (0.180 - (30 * TrollAdd)) and Mouse(0.430+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Troll'].S1 = CROCK.Scroll['Troll'].S1 - TrollAdd
            end

            if IsDisabledControlJustPressed(0, 15) and TrollY < 0.212 and Mouse(0.430+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Troll'].S1 = CROCK.Scroll['Troll'].S1 + TrollAdd
            end


            TrollY = TrollY + TrollAdd
            if TrollY >= 0.220 and TrollY <= TrollMax then 
                if Botao('TP Player', 0.257500+CROCKX, TrollY + CROCKY) then Ir_Player() end
            end

            TrollY = TrollY + TrollAdd
            if TrollY >= 0.220 and TrollY <= TrollMax then 
                if Botao('Crashar Players', 0.257500+CROCKX, TrollY + CROCKY) then CrasharPlayers() end
            end

            TrollY = TrollY + TrollAdd
            if TrollY >= 0.220 and TrollY <= TrollMax then 
                if Botao('Teleportar Veiculo P2', 0.257500+CROCKX, TrollY + CROCKY) then Ir_P2_Veh_Player() end
            end

            TrollY = TrollY + TrollAdd
            if TrollY >= 0.220 and TrollY <= TrollMax then 
                if Botao('Copiar Roupa', 0.257500+CROCKX, TrollY + CROCKY) then Copy_Preset() end  
            end

            TrollY = TrollY + TrollAdd
            if TrollY >= 0.220 and TrollY <= TrollMax then 
                if Botao('Revistar Morto', 0.257500+CROCKX, TrollY + CROCKY) then Revistar_Morto() end
            end

            TrollY = TrollY + TrollAdd
            if TrollY >= 0.220 and TrollY <= TrollMax then 
                if Botao('Grudar Veiculo Player', 0.257500+CROCKX, TrollY + CROCKY) then Attachar_Player_Veh() end
            end

            TrollY = TrollY + TrollAdd
            if TrollY >= 0.220 and TrollY <= TrollMax then 
                if Botao('Avião Player', 0.257500+CROCKX, TrollY + CROCKY) then CreateThread(function() PlayerHeli() end) end
            end

            TrollY = TrollY + TrollAdd
            if TrollY >= 0.220 and TrollY <= TrollMax then 
                if Botao('Bugar Veículo Do Player', 0.257500+CROCKX, TrollY + CROCKY) then Attachar_Player_VeS2() end
            end

            TrollY = TrollY + TrollAdd
            if TrollY >= 0.220 and TrollY <= TrollMax then 
                if Botao('Copiar Ped Do Player', 0.257500+CROCKX, TrollY + CROCKY) then Copiar_Ped() end
            end

            TrollY = TrollY + TrollAdd
            if TrollY >= 0.220 and TrollY <= TrollMax then 
                if Botao('Player Lixo', 0.257500+CROCKX, TrollY + CROCKY) then Player_Lixo() end
            end
            if VerifyResource('likizao_ac') or VerifyResource('ThnAC') or VerifyResource('PL_PROTECT') then
                TrollY = TrollY + TrollAdd
                if TrollY >= 0.220 and TrollY <= TrollMax then 
                    if Botao('Attack Leao Player', 0.257500+CROCKX, TrollY + CROCKY) then Atacar_Com_Leao() end
                end

                TrollY = TrollY + TrollAdd
                if TrollY >= 0.220 and TrollY <= TrollMax then 
                    if Botao('Gaiola Player', 0.257500+CROCKX, TrollY + CROCKY) then Prender_Player() end
                end
            end

            TrollY = TrollY + TrollAdd
            if TrollY >= 0.220 and TrollY <= TrollMax then 
                if VerifyResource('dk') then
                    if Botao('Puxar Todos', 0.257500+CROCKX, TrollY + CROCKY) then Pegar_Todos() end
                end
            end

            local TrollY2 = 0.220+CROCK.Scroll['Troll2'].S1
            local TrollAdd2 = 0.030
            local TrollMax2 = 0.660

            if IsDisabledControlPressed(0, 14) and TrollY2 > (0.180 - (30 * TrollAdd2)) and Mouse(0.600+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Troll2'].S1 = CROCK.Scroll['Troll2'].S1 - TrollAdd2
            end

            if IsDisabledControlJustPressed(0, 15) and TrollY2 < 0.212 and Mouse(0.600+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Troll2'].S1 = CROCK.Scroll['Troll2'].S1 + TrollAdd2
            end

            TrollY2 = TrollY2 + TrollAdd2
            if TrollY2 >= 0.220 and TrollY2 <= TrollMax2 then 
                if CheckBox('Lista De Players', 0.580+CROCKX, TrollY2 + CROCKY, 0.505+CROCKY, Lista_De_Players) then SomClick() Lista_De_Players = not Lista_De_Players opacity2 = 0 end
            end

            if Lista_De_Players then
                if opacity2 < 255 then
                    opacity2 = opacity2 + 10
                end

                local CROCK_drag_x = CROCK.CROCKdrags.CROCK_x - 0.5
                local CROCK_drag_y = CROCK.CROCKdrags.CROCK_y - 0.5
                local CROCK_drag_w = CROCK.CROCKdrags.CROCK_w - 0.5
                local CROCK_drag_h = CROCK.CROCKdrags.CROCK_h - 0.5

                DrawSprite(CROCK.txtnames.listaplayers, CROCK.txtnames.listaplayers, 0.780 + CROCKX, 0.428 + CROCKY, 0.170 + CursorR, 0.500 + resH, 0.0, 255, 255, 255, opacity2)

                local ListaPlayersY = 0.220+CROCK.Scroll['ListaPlayers'].S1
                local ListaPlayersAdd = 0.045
                local ListaPlayersMax = 0.660

                if IsDisabledControlPressed(0, 14) and ListaPlayersY > (0.180 - (30 * ListaPlayersAdd)) and Mouse(0.800+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                    CROCK.Scroll['ListaPlayers'].S1 = CROCK.Scroll['ListaPlayers'].S1 - ListaPlayersAdd
                end

                if IsDisabledControlJustPressed(0, 15) and ListaPlayersY < 0.212 and Mouse(0.800+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                    CROCK.Scroll['ListaPlayers'].S1 = CROCK.Scroll['ListaPlayers'].S1 + ListaPlayersAdd
                end

                for _, player in pairs(GetActivePlayers()) do
                    local meplayerPed = PlayerPedId()
                    local meposs = GetEntityCoords(meplayerPed)
                    local playerped = GetPlayerPed(player)
                    local posallp = GetEntityCoords(playerped, true)
                    local playerName = GetPlayerName(player)                
                    local vasco = GetEntityHealth(playerped)
                    local dist = tonumber(string.format('%.0f', GetDistanceBetweenCoords(GetEntityCoords(meplayerPed), GetEntityCoords(playerped)), true))
                    local Visible = not IsEntityVisibleToScript(playerped)
                    local staff = Visible and  ' | [ADM]' or ''
                    local txtvasco = (GetEntityHealth(playerped) <= 101) and ' | [Morto]' or ''
                    local txtnamesel = '→ '..playerName..''
                    local txtname = ''..playerName
                    local r, g, b = Visible and RGBCROCK(2.0).r or 255, Visible and RGBCROCK(2.0).g or 255, Visible and RGBCROCK(2.0).b or 255

                    if dist < 350 then
                        ListaPlayersY = ListaPlayersY + ListaPlayersAdd
                        if ListaPlayersY >= 0.220 and ListaPlayersY <= ListaPlayersMax then
                            if player == Player_Sel then
                                if Players(''..txtnamesel..''..staff..''..txtvasco, 0.600+CROCKX, ListaPlayersY + CROCKY, r, g, b) then
                                    Player_Sel = player
                                end
                            else
                                if Players(''..txtname..''..staff..''..txtvasco, 0.600+CROCKX, ListaPlayersY + CROCKY, r, g, b) then
                                    Player_Sel = player
                                end
                            end
                        end
                    end
                end
            else
                Player_Sel = false
            end

            TrollY2 = TrollY2 + TrollAdd2
            if TrollY2 >= 0.220 and TrollY2 <= TrollMax2 then 
                if CheckBox('Comer Player',  0.580+CROCKX, TrollY2 + CROCKY, 0.505+CROCKY, Fuder_Player2) then SomClick() Fuder_Player2 = not Fuder_Player2
                    if Fuder_Player2 then
                        Fuder_Player(true)
                    else
                        Fuder_Player(false)
                    end
                end
            end

            TrollY2 = TrollY2 + TrollAdd2
            if TrollY2 >= 0.220 and TrollY2 <= TrollMax2 then 
                if CheckBox('Rebolar No Player',  0.580+CROCKX, TrollY2 + CROCKY, 0.505+CROCKY, RebolarPlayer) then SomClick() RebolarPlayer = not RebolarPlayer
                    if RebolarPlayer then
                        RebolarNoPlayer(true)
                    else
                        RebolarNoPlayer(false)
                    end
                end
            end

            TrollY2 = TrollY2 + TrollAdd2
            if TrollY2 >= 0.220 and TrollY2 <= TrollMax2 then 
                if CheckBox('Spectar Player',  0.580+CROCKX, TrollY2 + CROCKY, 0.505+CROCKY, SpectPlayer) then SomClick() SpectPlayer = not SpectPlayer 
                    if SpectPlayer then
                        Observar_Player(true)
                    else
                        Observar_Player(false)
                    end
                end
            end


            ------------------------------------------------------------------------->
            ----------------------------INTERFACE VISUAL----------------------------->
            ------------------------------------------------------------------------->

        elseif CROCK.tabs.tab == 'Visual' then 

            DrawSprite(CROCK.txtnames.vs, CROCK.txtnames.vs, 0.480 + CROCKX, 0.428 + CROCKY, 0.4400 + CursorR, 0.6000 + resH, 0.0, 255, 255, 255, opacity)

            local VisualY = 0.220+CROCK.Scroll['Visual'].S1
            local VisualAdd = 0.030
            local VisualMax = 0.660

            if IsDisabledControlPressed(0, 14) and VisualY > (0.180 - (30 * VisualAdd)) and Mouse(0.430+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Visual'].S1 = CROCK.Scroll['Visual'].S1 - VisualAdd
            end

            if IsDisabledControlJustPressed(0, 15) and VisualY < 0.212 and Mouse(0.430+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Visual'].S1 = CROCK.Scroll['Visual'].S1 + VisualAdd
            end

            VisualY = VisualY + VisualAdd
            if VisualY >= 0.220 and VisualY <= VisualMax then 
                if CheckBox('ESP Names', 0.410+CROCKX, VisualY + CROCKY, 0.505+CROCKY, ToggleEspNames) then SomClick() ToggleEspNames = not ToggleEspNames end 
            end

            VisualY = VisualY + VisualAdd
            if VisualY >= 0.220 and VisualY <= VisualMax then
                if CheckBox('ESP Health', 0.410+CROCKX, VisualY + CROCKY, 0.505+CROCKY, ToggleHealthBar) then SomClick() ToggleHealthBar = not ToggleHealthBar end
            end

            VisualY = VisualY + VisualAdd
            if VisualY >= 0.220 and VisualY <= VisualMax then
                if CheckBox('ESP Veículos', 0.410+CROCKX, VisualY + CROCKY, 0.505+CROCKY, ToggleEspVeiculos) then SomClick() ToggleEspVeiculos = not ToggleEspVeiculos end 
            end

            VisualY = VisualY + VisualAdd
            if VisualY >= 0.220 and VisualY <= VisualMax then
                if CheckBox('ESP Lines', 0.410+CROCKX, VisualY + CROCKY, 0.505+CROCKY, l1n23s) then SomClick() l1n23s = not l1n23s end
            end

            VisualY = VisualY + VisualAdd
            if VisualY >= 0.220 and VisualY <= VisualMax then
                if CheckBox('ESP Skeleton', 0.410+CROCKX, VisualY + CROCKY, 0.505+CROCKY, ToggleEspEsqueleto) then SomClick() ToggleEspEsqueleto = not ToggleEspEsqueleto end
            end

            VisualY = VisualY + VisualAdd
            if VisualY >= 0.220 and VisualY <= VisualMax then
                if CheckBox('Adms Próximos', 0.410+CROCKX, VisualY + CROCKY, 0.505+CROCKY, ToggleAdmsProximos) then SomClick() ToggleAdmsProximos = not ToggleAdmsProximos end
            end

        elseif CROCK.tabs.tab == 'Exploits' then

            ------------------------------------------------------------------------->
            ----------------------------INTERFACE EXPLOITS--------------------------->
            ------------------------------------------------------------------------->

            DrawSprite(CROCK.txtnames.e, CROCK.txtnames.e, 0.480 + CROCKX, 0.428 + CROCKY, 0.4400 + CursorR, 0.6000 + resH, 0.0, 255, 255, 255, opacity)

            local ExploitsY = 0.220+CROCK.Scroll['Exploits'].S1
            local ExploitsAdd = 0.045
            local ExploitsMax = 0.660

            if IsDisabledControlPressed(0, 14) and ExploitsY > (0.180 - (30 * ExploitsAdd)) and Mouse(0.430+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Exploits'].S1 = CROCK.Scroll['Exploits'].S1 - ExploitsAdd
            end

            if IsDisabledControlJustPressed(0, 15) and ExploitsY < 0.212 and Mouse(0.430+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Exploits'].S1 = CROCK.Scroll['Exploits'].S1 + ExploitsAdd
            end

            ExploitsY = ExploitsY + ExploitsAdd
            if ExploitsY >= 0.220 and ExploitsY <= ExploitsMax then 
                if Botao('Remover Novato', 0.257500+CROCKX, ExploitsY + CROCKY) then remnovat() end
            end

            ExploitsY = ExploitsY + ExploitsAdd
            if ExploitsY >= 0.220 and ExploitsY <= ExploitsMax then 
                if Botao('Explodir Veículos Próximos', 0.257500+CROCKX, ExploitsY + CROCKY) then Kabuuumm_Vehs_Prox() end
            end

            ExploitsY = ExploitsY + ExploitsAdd
            if ExploitsY >= 0.220 and ExploitsY <= ExploitsMax then 
                if Botao('Destruir Veículos', 0.257500+CROCKX, ExploitsY + CROCKY) then Destruir_All_Veiculos() end 
            end

            ExploitsY = ExploitsY + ExploitsAdd
            if ExploitsY >= 0.220 and ExploitsY <= ExploitsMax then 
                if Botao('Trancar Veículos', 0.257500+CROCKX, ExploitsY + CROCKY) then Lock_All_Vehs() end
            end

            ExploitsY = ExploitsY + ExploitsAdd
            if ExploitsY >= 0.220 and ExploitsY <= ExploitsMax then 
                if Botao('Destrancar Veículos', 0.257500+CROCKX, ExploitsY + CROCKY) then UnLock_All_Vehs() end
            end

            ExploitsY = ExploitsY + ExploitsAdd
            if ExploitsY >= 0.220 and ExploitsY <= ExploitsMax then 
                if Botao('Deletar Veículos', 0.257500+CROCKX, ExploitsY + CROCKY) then Dell_All_Vehs() end
            end

            ExploitsY = ExploitsY + ExploitsAdd
            if ExploitsY >= 0.220 and ExploitsY <= ExploitsMax then 
                if Botao('Pegar Veiculos/Props', 0.257500+CROCKX, ExploitsY + CROCKY) then Pegar_Vehs_E_Props() end
            end

            ExploitsY = ExploitsY + ExploitsAdd
            if ExploitsY >= 0.220 and ExploitsY <= ExploitsMax then 
                Slider(CROCK.Sliders['Forca_Pegar_Props_Vehs'], 0.580+CROCKX, ExploitsY + CROCKY, 1)
            end

        elseif CROCK.tabs.tab == 'Config' then

            ------------------------------------------------------------------------->
            ----------------------------INTERFACE CONFIG----------------------------->
            ------------------------------------------------------------------------->

            DrawSprite(CROCK.txtnames.c, CROCK.txtnames.c, 0.480 + CROCKX, 0.428 + CROCKY, 0.4400 + CursorR, 0.6000 + resH, 0.0, 255, 255, 255, opacity)

            local ConfigY = 0.220+CROCK.Scroll['Config'].S1
            local ConfigAdd = 0.030
            local ConfigMax = 0.660

            if IsDisabledControlPressed(0, 14) and ConfigY > (0.180 - (30 * ConfigAdd)) and Mouse(0.430+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Config'].S1 = CROCK.Scroll['Config'].S1 - ConfigAdd
            end

            if IsDisabledControlJustPressed(0, 15) and ConfigY < 0.212 and Mouse(0.430+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Config'].S1 = CROCK.Scroll['Config'].S1 + ConfigAdd
            end

            ConfigY = ConfigY + ConfigAdd
            if ConfigY >= 0.220 and ConfigY <= ConfigMax then 
                if CheckBox('Noclip', 0.410+CROCKX, ConfigY + CROCKY, 0.505+CROCKY, ToggleNoCliponoff) then 
                    SomClick() 
                    ToggleNoCliponoff = not ToggleNoCliponoff 
                end 
            end

            ConfigY = ConfigY + ConfigAdd
            if ConfigY >= 0.220 and ConfigY <= ConfigMax then 
                if CheckBox('Reviver', 0.410+CROCKX, ConfigY + CROCKY, 0.505+CROCKY, ToggleBindReviver) then 
                    SomClick() 
                    ToggleBindReviver = not ToggleBindReviver 
                end 
            end

            ConfigY = ConfigY + ConfigAdd
            if ConfigY >= 0.220 and ConfigY <= ConfigMax then 
                if CheckBox('Reparar Veh', 0.410+CROCKX, ConfigY + CROCKY, 0.505+CROCKY, ToggleBindRepararVeiculos) then 
                    SomClick() 
                    ToggleBindRepararVeiculos = not ToggleBindRepararVeiculos 
                end 
            end

            ConfigY = ConfigY + ConfigAdd
            if ConfigY >= 0.220 and ConfigY <= ConfigMax then 
                if CheckBox('Abrir Menu2', 0.410+CROCKX, ConfigY + CROCKY, 0.505+CROCKY, ToggleBindMenuStart2) then 
                    SomClick() 
                    ToggleBindMenuStart2 = not ToggleBindMenuStart2 
                end 
            end

            ConfigY = ConfigY + ConfigAdd
            if ConfigY >= 0.220 and ConfigY <= ConfigMax then 
                if CheckBox('Destrancar Veh', 0.410+CROCKX, ConfigY + CROCKY, 0.505+CROCKY, ToggleBindDestrancarVeiculos) then 
                    SomClick() 
                    ToggleBindDestrancarVeiculos = not ToggleBindDestrancarVeiculos 
                end 
            end    

            ConfigY = ConfigY + ConfigAdd
            if ConfigY >= 0.220 and ConfigY <= ConfigMax then 
                if CheckBox('Ir Veh Próx', 0.410+CROCKX, ConfigY + CROCKY, 0.505+CROCKY, ToggleBindTpVeiculoProximo) then 
                    SomClick() 
                    ToggleBindTpVeiculoProximo = not ToggleBindTpVeiculoProximo 
                end 
            end

            ConfigY = ConfigY + ConfigAdd
            if ConfigY >= 0.220 and ConfigY <= ConfigMax then 
                if CheckBox('TPWay', 0.410+CROCKX, ConfigY + CROCKY, 0.505+CROCKY, ToggleBindTpWay) then 
                    SomClick() 
                    ToggleBindTpWay = not ToggleBindTpWay 
                end 
            end

            ConfigY = ConfigY + ConfigAdd
            if ConfigY >= 0.220 and ConfigY <= ConfigMax then 
                if CheckBox('FreeCam', 0.410+CROCKX, ConfigY + CROCKY, 0.505+CROCKY, ToggleBindCameraFree) then 
                    SomClick() 
                    ToggleBindCameraFree = not ToggleBindCameraFree 
                end 
            end

            local ConfigY2 = 0.220+CROCK.Scroll['Config2'].S1
            local ConfigAdd2 = 0.030500
            local ConfigMax2 = 0.660

            if IsDisabledControlPressed(0, 14) and ConfigY2 > (0.180 - (30 * ConfigAdd2)) and Mouse(0.430+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Config2'].S1 = CROCK.Scroll['Config2'].S1 - ConfigAdd2
            end

            if IsDisabledControlJustPressed(0, 15) and ConfigY2 < 0.212 and Mouse(0.430+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Config2'].S1 = CROCK.Scroll['Config2'].S1 + ConfigAdd2
            end

            ConfigY2 = ConfigY2 + ConfigAdd2
            if ConfigY2 >= 0.220 and ConfigY2 <= ConfigMax2 then 
                if Click_Binds('~c~['.. CROCK.binds.NoclipBind['Label']..']', 0.280+CROCKX, ConfigY2 + CROCKY - 0.0020) then 
                    nccbind() 
                end
            end

            ConfigY2 = ConfigY2 + ConfigAdd2
            if ConfigY2 >= 0.220 and ConfigY2 <= ConfigMax2 then 
                if Click_Binds('~c~['.. CROCK.binds.ReviverBind['Label']..']', 0.280+CROCKX, ConfigY2 + CROCKY - 0.0020) then 
                    aeronavebind() 
                end
            end

            ConfigY2 = ConfigY2 + ConfigAdd2
            if ConfigY2 >= 0.220 and ConfigY2 <= ConfigMax2 then 
                if Click_Binds('~c~['.. CROCK.binds.RepararBind['Label']..']', 0.300+CROCKX, ConfigY2 + CROCKY - 0.0020) then 
                    Arrumabind() 
                end
            end

            ConfigY2 = ConfigY2 + ConfigAdd2
            if ConfigY2 >= 0.220 and ConfigY2 <= ConfigMax2 then 
                if Click_Binds('~c~['.. CROCK.binds.AbrirMenu2['Label']..']', 0.300+CROCKX, ConfigY2 + CROCKY - 0.0030) then 
                    StartBind2() 
                end
            end

            ConfigY2 = ConfigY2 + ConfigAdd2
            if ConfigY2 >= 0.220 and ConfigY2 <= ConfigMax2 then 
                if Click_Binds('~c~['.. CROCK.binds.DestrancarBind['Label']..']', 0.310+CROCKX, ConfigY2 + CROCKY - 0.0030) then 
                    openBinde() 
                end
            end

            ConfigY2 = ConfigY2 + ConfigAdd2
            if ConfigY2 >= 0.220 and ConfigY2 <= ConfigMax2 then 
                if Click_Binds('~c~['.. CROCK.binds.TpVeiculoProxBind['Label']..']', 0.295+CROCKX, ConfigY2 + CROCKY - 0.0030) then 
                    ToggleBindTpVeiculoProximoind() 
                end
            end

            ConfigY2 = ConfigY2 + ConfigAdd2
            if ConfigY2 >= 0.220 and ConfigY2 <= ConfigMax2 then 
                if Click_Binds('~c~['.. CROCK.binds.TpWayBind['Label']..']', 0.280+CROCKX, ConfigY2 + CROCKY - 0.0030) then 
                    ToggleBindTpWayind() 
                end
            end

            ConfigY2 = ConfigY2 + ConfigAdd2
            if ConfigY2 >= 0.220 and ConfigY2 <= ConfigMax2 then 
                if Click_Binds('~c~['.. CROCK.binds.FreeCamBind['Label']..']', 0.287+CROCKX, ConfigY2 + CROCKY - 0.0040) then 
                    Cmrlvrb() 
                end
            end

            local ConfigY3 = 0.220+CROCK.Scroll['Config3'].S1
            local ConfigAdd3 = 0.045
            local ConfigMax3 = 0.660

            if IsDisabledControlPressed(0, 14) and ConfigY3 > (0.180 - (30 * ConfigAdd3)) and Mouse(0.600+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Config3'].S1 = CROCK.Scroll['Config3'].S1 - ConfigAdd3
            end

            if IsDisabledControlJustPressed(0, 15) and ConfigY3 < 0.212 and Mouse(0.600+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
                CROCK.Scroll['Config3'].S1 = CROCK.Scroll['Config3'].S1 + ConfigAdd3
            end

            ConfigY3 = ConfigY3 + ConfigAdd3
            if ConfigY3 >= 0.220 and ConfigY3 <= ConfigMax3 then
                if Botao('Desinjetar', 0.427500+CROCKX, ConfigY3 + CROCKY) then 
                    return 'BLACK', 242141 
                end
            end
        end 
        MostrarMouse() 
    end

    ------------------------------------------------------------------------->
    ------------------------------COMANDOS----------------------------------->
    ------------------------------------------------------------------------->
    --- FUNÇOES F8

RegisterCommand('carr', function(source, args, rawCommand)
    Citizen.CreateThread(function()
        local carname = args[1]
        if #args ~= 1 then
            print('Use: /carr [nome_do_carro]')
            return
        end
        SpawnVehicles(carname)
    end)
end)

RegisterCommand('abrirmenu', function() 
    ToggleBindMenuStart = not ToggleBindMenuStart
end)

RegisterCommand('g36', function() 
    puxarpracarai('WEAPON_SPECIALCARBINE_MK2')
end)

RegisterCommand('five', function() 
    puxarpracarai('WEAPON_PISTOL_MK2')
end)

RegisterCommand('ak47', function() 
    puxarpracarai('WEAPON_ASSAULTRIFLE_MK2')
end)

-- REMOVER ARMAS
RegisterCommand('removerarmas', function()
    function removeAllWeapons(keepCurrentWeapon)
        local playerPed = PlayerPedId() 
    
        if VerifyResource('MQCU') then
            if not keepCurrentWeapon then
                local currentWeapon = GetSelectedPedWeapon(playerPed) 
                SetPedCurrentWeaponVisible(playerPed, false, true, true, true) 
        
                
                RemoveAllPedWeapons(playerPed, not keepCurrentWeapon)
                
                NotifySucesso("armas removidas!")
                if keepCurrentWeapon then
                    NotifySucesso("A arma atual foi mantida: " .. tostring(currentWeapon))
                end
            else
                RemoveAllPedWeapons(playerPed, false) 
                NotifySucesso("armas removidas!")
            end
    
        elseif VerifyResource('ThnAC') then
            if not keepCurrentWeapon then
                local currentWeapon = GetSelectedPedWeapon(playerPed) 
                SetPedCurrentWeaponVisible(playerPed, false, true, true, true) 
        
                
                RemoveAllPedWeapons(playerPed, not keepCurrentWeapon)
                
                NotifySucesso("armas removidas!")
                if keepCurrentWeapon then
                    NotifySucesso("A arma atual foi mantida: " .. tostring(currentWeapon))
                end
            else
                RemoveAllPedWeapons(playerPed, false) 
                NotifySucesso("armas removidas!")
            end
    
        elseif VerifyResource('PL_PROTECT') then
            if not keepCurrentWeapon then
                local currentWeapon = GetSelectedPedWeapon(playerPed) 
                SetPedCurrentWeaponVisible(playerPed, false, true, true, true) 
        
                
                RemoveAllPedWeapons(playerPed, not keepCurrentWeapon)
                
                NotifySucesso("armas removidas!")
                if keepCurrentWeapon then
                    NotifySucesso("A arma atual foi mantida: " .. tostring(currentWeapon))
                end
            else
                RemoveAllPedWeapons(playerPed, false) 
                NotifySucesso("armas removidas!")
            end
            
        elseif VerifyResource('likizao_ac') then
            if not keepCurrentWeapon then
                local currentWeapon = GetSelectedPedWeapon(playerPed) 
                SetPedCurrentWeaponVisible(playerPed, false, true, true, true) 
        
                
                RemoveAllPedWeapons(playerPed, not keepCurrentWeapon)
                
                NotifySucesso("armas removidas!")
                if keepCurrentWeapon then
                    NotifySucesso("A arma atual foi mantida: " .. tostring(currentWeapon))
                end
            else
                RemoveAllPedWeapons(playerPed, false) 
                NotifySucesso("armas removidas!")
            end
    
        else
            if not keepCurrentWeapon then
                local currentWeapon = GetSelectedPedWeapon(playerPed) 
                SetPedCurrentWeaponVisible(playerPed, false, true, true, true) 
        
                
                RemoveAllPedWeapons(playerPed, not keepCurrentWeapon)
                
                NotifySucesso("armas removidas!")
                if keepCurrentWeapon then
                    NotifySucesso("A arma atual foi mantida: " .. tostring(currentWeapon))
                end
            else
                RemoveAllPedWeapons(playerPed, false) 
                NotifySucesso("armas removidas!")
            end
        end
    end
end)


if VerifyResource('MQCU') or VerifyResource('ThnAC') then
    RegisterCommand('Reviver', function() Ressurect()
        CreateThread(function()
            tvRP.killGod()
            NotifySucesso('Você Foi Revivido!')
        end)
    end)
    RegisterCommand('curar', function() Heal()
        CreateThread(function()      
            if GetEntityHealth(GetPlayerPed(-1)) < 199 then
                tvRP.setHealth(199)
            elseif GetEntityHealth(GetPlayerPed(-1)) < 101 then
                NotifySucesso('Reviva Primeiro!')
            elseif GetEntityHealth(GetPlayerPed(-1)) >= 199 then
                tvRP.setHealth(399)
                NotifySucesso('Você Foi Curado!')
            end
        end) 
    end)

else
    function tvRP.killGod()
        nocauteado = false
        local ped = PlayerPedId()
        local x,y,z = table.unpack(GetEntityCoords(ped))
        NetworkResurrectLocalPlayer(x,y,z,true,true,false)
        ClearPedBloodDamage(ped)
        SetEntityInvincible(ped,false)
        SetEntityHealth(ped,110)
        ClearPedTasks(ped)
        ClearPedSecondaryTask(ped)
    end
    function tvRP.setHealth(health)
        SetEntityHealth(PlayerPedId(),health)
    end
    RegisterCommand('Reviver', function() Ressurect()
        CreateThread(function()
            tvRP.killGod()
            NotifySucesso('Você Foi Revivido!')
        end)
    end)
    RegisterCommand('curar', function() Heal()
        CreateThread(function()      
            if GetEntityHealth(GetPlayerPed(-1)) < 199 then
                tvRP.setHealth(199)
            elseif GetEntityHealth(GetPlayerPed(-1)) < 101 then
                NotifySucesso('Reviva Primeiro!')
            elseif GetEntityHealth(GetPlayerPed(-1)) >= 199 then
                tvRP.setHealth(399)
                NotifySucesso('Você Foi Curado!')
            end
        end) 
    end)
end

----- WL FLUXO
RegisterCommand("fluxo", function()
    TriggerServerEvent("leads:tunnel_req", "HasWhitelist", {}, "leads", 1, 327387198019698.0, "EMBM", {"is", 22803, "sr", 73987})
end)
------- WL COMPLEXO RJ
RegisterCommand("cpxrj", function()
    TriggerServerEvent("complexo_char:tunnel_req","requestAllowed",{},"complexo_char",0,512669831664224.0,"PKAX",{"is",22803,"sr",73987})
end)
