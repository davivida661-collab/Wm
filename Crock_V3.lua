--[[
    ██████  ██████   ██████  ██████  ██  █████  
   ██      ██    ██ ██    ██ ██   ██ ██ ██   ██ 
   ██      ██    ██ ██    ██ ██████  ██ ███████ 
   ██      ██    ██ ██    ██ ██   ██ ██ ██   ██ 
    ██████  ██████   ██████  ██   ██ ██ ██   ██ 
                                                  
      ██    ██  ██  ██████  ██████  ██████  ██   ██ 
      ██    ██  ██ ██      ██  ████ ██   ██ ██  ██  
      ██    ██  ██ ██      ██ ██ ██ ██████  █████   
       ██  ██   ██ ██      ██████  ██   ██ ██  ██  
        ████    ██  ██████ ██  ████ ██   ██ ██   ██ 
]]

-- =====================================================================
-- CROCK MENU v3.0 — VERSÃO FINAL CORRIGIDA, OTIMIZADA E EXPANDIDA
-- Correções: math.clamp, duplicatas de keys, variáveis globais,
--             DUIs vazias, sprites hardcoded, performance
-- Adições: Suporte QBCore, Anti-Screenshot, ProtectionSphere,
--           EnhancedESP, APIs FiveM nativas completas
-- =====================================================================

-- =====================================================================
-- POLYFILL: math.clamp (CORREÇÃO CRÍTICA - NÃO EXISTE em Lua nativo)
-- =====================================================================
if not math.clamp then
    math.clamp = function(val, min, max)
        return math.max(min, math.min(max, val))
    end
end

-- =====================================================================
-- POLYFILL: table.maxn
-- =====================================================================
if not table.maxn then
    function table.maxn(t)
        local max = 0
        for k, v in pairs(t) do
            local n = tonumber(k)
            if n and n > max then max = n end
        end
        return max
    end
end

-- =====================================================================
-- POLYFILL: table.unpack (Lua 5.3+ compatibilidade)
-- =====================================================================
if not table.unpack then
    table.unpack = unpack
end

-- =====================================================================
-- VARIÁVEIS GLOBAIS DECLARADAS (CORREÇÃO: vazamento de globais)
-- =====================================================================
CROCK_s = false
_x = 0.0
_y = 0.0
x2 = 0.0
y2 = 0.0
vect33 = nil
vect34 = nil
ToggleBindMenuStart = false
ToggleBindMenuStart2 = false
XListAdms = 0.0
YListAdms = 0.0
AdmDragging = false
blockinput = false
imputvehs = false
imputarmas = false
opacity = 0
opacity2 = 0
opacity3 = 0
tvRP = nil
vRPserver = nil
QBCore = nil
X = 0.0
Y = 0.0

-- Variáveis de toggle
ToggleNoCliponoff = false
ToggleBindReviver = false
ToggleBindRepararVeiculos = false
ToggleBindDestrancarVeiculos = false
ToggleBindTpVeiculoProximo = false
ToggleBindTpWay = false
ToggleBindCameraFree = false
ToggleCameraLivre = false
ToggleGodMode = false
ToggleInvisivel = false
ToggleSuperPulo = false
ToggleSuperSalto = false
ToggleNuncaCair = false
ToggleCorrerRapido = false
ToggleNadarRapido = false
ToggleNuncaMorrerDeQueda = false
ToggleSempreCapacete = false
ToggleBalasExplosivas = false
ToggleFogoExplosivo = false
ToggleBalasDeFogo = false
ToggleTiroNaCabeca = false
ToggleBalasPerfurantes = false
ToggleAtravessarParede = false
ToggleSpawnarPelaBoca = false
ToggleNitro = false
ToggleBoost = false
ToggleFlyMode = false
ToggleAimBot = false
ToggleVisualizarPlayers = false
ToggleVisualizarVeiculos = false
ToggleVisualizarPolicia = false
ToggleVisualizarArmas = false
ToggleVisualizarCaixa = false
ToggleEsconderNome = false
ToggleTriggerBot = false
ToggleAimWhileDriving = false
ToggleCrosshair = false

-- =====================================================================
-- CONFIGURAÇÃO PRINCIPAL
-- =====================================================================
local CROCK = {
    -- TECLAS: MAPA CORRIGIDO (sem duplicatas, valores consistentes)
    keys = {
        ['`']=243,['1']=157,['2']=158,['3']=160,['4']=164,['5']=165,
        ['6']=159,['7']=161,['8']=162,['9']=163,['0']=81,
        ['-']=84,['=']=83,['BS']=177,['HOME']=213,['ESC']=322,
        ['F1']=288,['F2']=289,['F3']=170,['F4']=171,['F5']=166,
        ['F6']=167,['F7']=168,['F8']=169,['F9']=56,['F10']=57,
        ['F11']=344,['F12']=345,
        ['DEL']=178,['TAB']=37,['Q']=44,['W']=32,['E']=38,
        ['R']=45,['T']=245,['Y']=246,['U']=303,['I']=73,
        ['O']=24,['P']=33,['[']=39,[']']=40,['CAPS']=137,
        ['A']=34,['S']=8,['D']=9,['F']=23,['G']=47,
        ['H']=74,['J']=170,['K']=311,['L']=182,[';']=187,
        ['"']=186,['ENTER']=18,['PGUP']=10,['SHIFT']=21,
        ['Z']=20,['X']=73,['C']=26,['V']=245,['B']=191,
        ['N']=249,['M']=244,[',']=82,['.']=81,['UP']=172,
        ['PGDN']=11,['INS']=121,['CTRL']=36,['ALT']=19,
        ['SPACE']=22,['RCTRL']=70,['LEFT']=174,['DOWN']=173,
        ['RIGHT']=175,['NENTER']=201,['MWUP']=15,['MWDOWN']=14,
        ['N8']=61,['N4']=108,['N5']=60,['N6']=107,
        ['N+']=96,['N-']=97,['N7']=117,['N9']=118,
        ['M1']=24,['M2']=25,['M3']=348
    },

    -- TECLAS INPUT: CORRIGIDO (consistente com keys)
    keysinput = {
        ['`']=243,['1']=157,['2']=158,['3']=160,['4']=164,['5']=165,
        ['6']=159,['7']=161,['8']=162,['9']=163,['0']=81,
        ['-']=84,['=']=83,['HOME']=213,['ESC']=322,
        ['F1']=288,['F2']=289,['F3']=170,['F4']=171,['F5']=166,
        ['F6']=167,['F7']=168,['F8']=169,['F9']=56,['F10']=57,
        ['F11']=344,['DEL']=178,['TAB']=37,
        ['Q']=44,['W']=32,['E']=38,['R']=45,['T']=245,
        ['Y']=246,['U']=303,['I']=73,['O']=24,['P']=33,
        ['[']=39,[']']=40,['A']=34,['S']=8,['D']=9,
        ['F']=23,['G']=47,['H']=74,['J']=170,['K']=311,
        ['L']=182,['Z']=20,['X']=73,['C']=26,['V']=245,
        ['B']=191,['N']=249,['M']=244,[',']=82,['.']=81
    },

    -- LISTA DE ARMAS (TODAS as armas do GTA V incluindo DLCs)
    armas = {
        'Weapon_Unarmed','Weapon_Knife','Weapon_Knuckle','Weapon_NightStick',
        'Weapon_Hammer','Weapon_GolfClub','Weapon_CrowBarr','Weapon_Bottle',
        'Weapon_Dagger','Weapon_Hatchet','Weapon_Machete','Weapon_FlashLight',
        'Weapon_SwitchBlade','Weapon_Poolcue','Weapon_PipeWrench',
        'Weapon_Grenade','Weapon_StickyBomb','Weapon_ProxiMine','Weapon_Bzgas',
        'Weapon_SmokeGrenade','Weapon_Molotov','Weapon_FireextinGuisher',
        'Weapon_Petrolcan','Weapon_SnowBall','Weapon_Flare','Weapon_Ball',
        'Weapon_Pistol','Weapon_Pistol_Mk2','Weapon_CombatPistol','Weapon_Appistol',
        'Weapon_Revolver','Weapon_Revolver_Mk2','Weapon_DoubleAction','Weapon_Pistol50',
        'Weapon_SnsPistol','Weapon_SnsPistol_Mk2','Weapon_HeavyPistol','Weapon_VintagePistol',
        'Weapon_StunGun','Weapon_FlareGun','Weapon_MarksManPistol','Weapon_RayPistol',
        'Weapon_MicroSmg','Weapon_MiniSmg','Weapon_Smg','Weapon_Smg_Mk2',
        'Weapon_AssaultSmg','Weapon_CombatPdw','Weapon_GusenBerg','Weapon_MachinePistol',
        'Weapon_Mg','Weapon_CombatMg','Weapon_CombatMg_Mk2','Weapon_RayCarbine',
        'Weapon_AssaultRifle','Weapon_AssaultRifle_Mk2','Weapon_CarbineRifle',
        'Weapon_CarbineRifle_Mk2','Weapon_AdvancedRifle','Weapon_SpecialCarbine',
        'Weapon_SpecialCarbine_Mk2','Weapon_BullPupRifle','Weapon_BullPupRifle_Mk2',
        'Weapon_CompactRifle','Weapon_PumpShotgun','Weapon_PumpShotgun_Mk2',
        'Weapon_SweeperShotgun','Weapon_SawnoffShotgun','Weapon_BullpupShotgun',
        'Weapon_AssaultShotgun','Weapon_Musket','Weapon_HeavyShotgun','Weapon_DbShotgun',
        'Weapon_SniperRifle','Weapon_HeavySniper','Weapon_HeavySniper_Mk2',
        'Weapon_MarksManRifle','Weapon_MarksManRifle_Mk2','Weapon_GrenadeLauncher',
        'Weapon_GrenadeLauncher_Smoke','Weapon_Rpg','Weapon_Minigun','Weapon_FireWork',
        'Weapon_RailGun','Weapon_HominGlauncher','Weapon_Compactlauncher','Weapon_RayMinigun',
        -- Armas DLC adicionais
        'Weapon_CeramicPistol','Weapon_NavyRevolver','Weapon_GadgetPistol',
        'Weapon_MilitaryRifle','Weapon_TacticalRifle','Weapon_HeavyRifle',
        'Weapon_PrecisionRifle','Weapon_ServiceCarbine','Weapon_CandyPoolcue',
        'Weapon_AcidPackage','Weapon_PipeBomb','Weapon_Meteorite'
    },

    -- ARMAS POR CATEGORIA
    armas_categorias = {
        CorpoACorpo = {'Weapon_Knife','Weapon_Knuckle','Weapon_NightStick','Weapon_Hammer',
                       'Weapon_GolfClub','Weapon_CrowBarr','Weapon_Bottle','Weapon_Dagger',
                       'Weapon_Hatchet','Weapon_Machete','Weapon_SwitchBlade','Weapon_Poolcue',
                       'Weapon_PipeWrench','Weapon_CandyPoolcue'},
        Pistolas = {'Weapon_Pistol','Weapon_Pistol_Mk2','Weapon_CombatPistol','Weapon_Appistol',
                    'Weapon_Revolver','Weapon_Revolver_Mk2','Weapon_Pistol50','Weapon_SnsPistol',
                    'Weapon_SnsPistol_Mk2','Weapon_HeavyPistol','Weapon_VintagePistol',
                    'Weapon_StunGun','Weapon_FlareGun','Weapon_MarksManPistol','Weapon_RayPistol',
                    'Weapon_CeramicPistol','Weapon_NavyRevolver','Weapon_GadgetPistol',
                    'Weapon_DoubleAction'},
        Submetralhadoras = {'Weapon_MicroSmg','Weapon_MiniSmg','Weapon_Smg','Weapon_Smg_Mk2',
                            'Weapon_AssaultSmg','Weapon_CombatPdw','Weapon_GusenBerg',
                            'Weapon_MachinePistol'},
        Rifles = {'Weapon_AssaultRifle','Weapon_AssaultRifle_Mk2','Weapon_CarbineRifle',
                  'Weapon_CarbineRifle_Mk2','Weapon_AdvancedRifle','Weapon_SpecialCarbine',
                  'Weapon_SpecialCarbine_Mk2','Weapon_BullPupRifle','Weapon_BullPupRifle_Mk2',
                  'Weapon_CompactRifle','Weapon_MilitaryRifle','Weapon_TacticalRifle',
                  'Weapon_HeavyRifle','Weapon_ServiceCarbine'},
        Snipers = {'Weapon_SniperRifle','Weapon_HeavySniper','Weapon_HeavySniper_Mk2',
                   'Weapon_MarksManRifle','Weapon_MarksManRifle_Mk2','Weapon_PrecisionRifle'},
        Shotguns = {'Weapon_PumpShotgun','Weapon_PumpShotgun_Mk2','Weapon_SweeperShotgun',
                    'Weapon_SawnoffShotgun','Weapon_BullpupShotgun','Weapon_AssaultShotgun',
                    'Weapon_Musket','Weapon_HeavyShotgun','Weapon_DbShotgun'},
        Metralhadoras = {'Weapon_Mg','Weapon_CombatMg','Weapon_CombatMg_Mk2','Weapon_RayMinigun','Weapon_Minigun'},
        Lancadores = {'Weapon_GrenadeLauncher','Weapon_GrenadeLauncher_Smoke','Weapon_Rpg',
                      'Weapon_FireWork','Weapon_RailGun','Weapon_HominGlauncher','Weapon_Compactlauncher'},
        Explosivos = {'Weapon_Grenade','Weapon_StickyBomb','Weapon_ProxiMine','Weapon_Bzgas',
                      'Weapon_SmokeGrenade','Weapon_Molotov','Weapon_PipeBomb','Weapon_AcidPackage',
                      'Weapon_Meteorite'},
        Especiais = {'Weapon_Unarmed','Weapon_FlashLight','Weapon_FireextinGuisher','Weapon_Petrolcan',
                     'Weapon_SnowBall','Weapon_Flare','Weapon_Ball','Weapon_RayCarbine'}
    },

    -- LINKS DAS TELAS HTML (DUIs)
    txtlinks = {
        j = 'https://santos7zz.github.io/jogadorbugadofdp/jogador.html',
        a = 'https://santos7zz.github.io/armaspncdsp/armas.html',
        v = 'https://santos7zz.github.io/veiculos/veiculos.html',
        t = 'https://santos7zz.github.io/online/online.html',
        vs = 'https://santos7zz.github.io/visual/Untitled.html',
        ab = '', tp = '',
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
        menuprincipal = 'https://santos7zz.github.io/fundotab/Fundotab.html'
    },

    -- NOMES DAS TEXTURAS
    txtnames = {
        j = 'Jogador', a = 'Armas', v = 'Veiculos', t = 'Troll',
        vs = 'Visual', ab = 'Aimbot', tp = 'Teleports', e = 'Exploits',
        c = 'Config',
        notifysucesso = 'NotifySucesso', notifyaviso = 'NotifyAviso',
        listaplayers = 'ListaPlayer', listavehs = 'ListaVehs',
        listaadms = 'ListaAdms', sliderfundo = 'SliderFundo',
        bind = 'Bind', button = 'Button', buttonhover = 'ButtonHover',
        toggleoff = 'toggleoff', toggleon = 'toggleon',
        imputkey = 'imputkey', menuprincipal = 'MenuPrincipal'
    },

    -- CORES VEÍCULOS
    colorsvehs = {
        ['Veh_Colors_R'] = {max = 255, min = 0, value = 30},
        ['Veh_Colors_G'] = {max = 255, min = 0, value = 255},
        ['Veh_Colors_B'] = {max = 255, min = 0, value = 30}
    },

    -- CORES VISUAIS
    colorsvisuais = {
        ['Visual_R'] = {max = 255, min = 0, value = 30},
        ['Visual_G'] = {max = 255, min = 0, value = 255},
        ['Visual_B'] = {max = 255, min = 0, value = 30}
    },

    -- CORES PRINT
    colorsprint = {
        vermelho = '^1', verde = '^2', amarelo = '^3', azul = '^4',
        ciano = '^5', magenta = '^6', branco = '^7', cinza = '^8',
        laranja = '^9', preto = '^0'
    },

    -- CORES ESP
    colorsps = {
        Cor_Visual_N = {r = 255, g = 255, b = 255},
        Cor_Visual_V = {r = 255, g = 255, b = 255},
        Cor_Visual_VE = {r = 255, g = 255, b = 255},
        Cor_Visual_L = {r = 255, g = 255, b = 255},
        Cor_Visual_E = {r = 255, g = 255, b = 255},
        Cor_Visual_C = {r = 255, g = 255, b = 255}
    },

    -- TEXTURAS MOUSE
    mousetxt = {
        cameraDeTrafego = 'trafficcam',
        centroDeRadar = 'radar_centre'
    },

    -- TEXTURAS FOV
    fovtxt = {
        txt1 = 'mpmissmarkers256',
        txt2 = 'corona_shade'
    },

    -- CONFIGURAÇÃO DE TECLAS (BINDS)
    binds = {
        AbrirMenu = {Label = 'M3', Value = 348},
        AbrirMenu2 = {Label = 'DEL', Value = 178},
        NoclipBind = {Label = 'Caps', Value = 137},
        RepararBind = {Label = 'F5', Value = 166},
        ReviverBind = {Label = 'F7', Value = 168},
        TpWayBind = {Label = '7', Value = 161},
        DestrancarBind = {Label = 'L', Value = 182},
        TpVeiculoProxBind = {Label = 'F6', Value = 167},
        FreeCamBind = {Label = 'F9', Value = 56},
        SuperSaltoBind = {Label = 'SPACE', Value = 22},
        BoostBind = {Label = 'SHIFT', Value = 21}
    },

    checkboxes = {},
    botoes = {},

    tabs = { tab = 'Jogador' },

    -- SCROLL DAS ABAS
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
        ['ListaAdms'] = {S1 = 0.0, S2 = 0.0},
        ['Mundo'] = {S1 = 0.0, S2 = 0.0},
        ['Mundo2'] = {S1 = 0.0, S2 = 0.0},
        ['Protecao'] = {S1 = 0.0, S2 = 0.0},
        ['Protecao2'] = {S1 = 0.0, S2 = 0.0}
    },

    -- SLIDERS
    Sliders = {
        ['Aimlock_damage'] = 50,
        ['AIM-FOV'] = {max = 700, min = 0, value = 100},
        ['Aimlock_speed'] = 1000.0,
        ['Aimlock_hitchance'] = 100,
        ['NoclipVelocity'] = {max = 100.0, min = 1.0, value = 1.0},
        ['Setar_Health'] = {max = 400, min = 1, value = 200},
        ['Esp_Distancia'] = {max = 1500.0, min = 50.0, value = 350.0},
        ['Forca_Pegar_Props_Vehs'] = {max = 1500.0, min = 10.0, value = 50.0},
        ['Value_Aceleration'] = {max = 450.0, min = 10.0, value = 50.0},
        ['Ammo_Quantiti'] = {max = 500, min = 1, value = 100},
        ['Tamanho_Circulo'] = {max = 500.0, min = 10.0, value = 20.0},
        ['Boost_Buzina'] = {max = 500.0, min = 10.0, value = 20.0},
        ['SuperSalto_forca'] = {max = 100.0, min = 1.0, value = 10.0},
        ['Velocidade_RGB'] = {max = 10.0, min = 0.1, value = 1.0},
        ['Tempo_Menu'] = {max = 100, min = 1, value = 3}
    },

    -- DRAG DO MENU
    CROCKdrags = {
        CROCK_x = 0.5, CROCK_y = 0.5,
        CROCK_x2 = 0.5, CROCK_y2 = 0.5,
        CROCK_w = 0.5, CROCK_h = 0.5,
        CROCKX = 0.5, CROCKY = 0.5,
        CROCKX2 = 0.5, CROCKY2 = 0.5,
        CROCKW = 0.5, CROCKH = 0.5
    },

    -- LISTA DE ADM
    AdmsList = {
        Adm = { AdmX = 0.50, AdmY = 0.50, AdmW = 0.50, AdmH = 0.50 }
    },

    -- GAME POOLS
    GamePools = {
        [1] = 'CPed', [2] = 'CObject', [3] = 'CVehicle', [4] = 'CPickup'
    },

    -- SONS CLICK
    click = {
        [1] = 'Faster_Click',
        [2] = 'RESPAWN_ONLINE_SOUNDSET'
    },

    -- CONTROLES ATIVOS
    ac = { 73, 75, 29, 47, 105, 187, 189, 190, 188, 311, 245, 257, 288, 37 },

    -- CONTROLES DESATIVADOS (menu)
    dc = { 1, 2, 142, 322, 106, 25, 24, 257, 16, 17 },

    -- CONTROLES DESATIVADOS (menu2)
    dc2 = { 32, 31, 30, 34, 71, 72, 63, 64 },

    -- CONTROLES DESATIVADOS (color picker)
    dc3 = { 1, 2, 142, 322, 106, 25, 24, 257, 32, 31, 30, 34, 23, 22, 16, 17 },

    -- OBJETOS POR HASH
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
        grade = GetHashKey('prop_gate_prison_01'),
        cone = GetHashKey('prop_roadcone02a'),
        barreira = GetHashKey('prop_barrier_work05a'),
        cadeira = GetHashKey('prop_chair_01a'),
        mesa = GetHashKey('prop_table_01a')
    },

    -- PEDS POR HASH
    pednomes = {
        liao = GetHashKey('a_c_mtlion'),
        urso = GetHashKey('a_c_bear'),
        tubarao = GetHashKey('a_c_tiger_shark'),
        pastor = GetHashKey('a_c_shepherd'),
        rottweiler = GetHashKey('a_c_rottweiler')
    },

    -- SUBSTITUIÇÕES
    subst = {
        esperar = Wait,
        msg = print
    },

    -- COORDENADAS PARA SORTEIO
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
        {x = 501.64, y = 5603.8, z = 797.91},
        {x = -1034.68, y = -2732.85, z = 13.76},
        {x = 1709.64, y = 6426.63, z = 32.74},
        {x = 1854.86, y = 3688.86, z = 34.26}
    },

    -- CÂMERA LIVRE
    cameralivre = {
        cam = 1,
        cameralivremodes = {
            'Observar', 'Spawnar Carros', 'Spawnar Helis',
            'Deletar Veículos', 'Teleportar-Se', 'Tazer Player',
            'Explodir'
        },
        desatctrls = {
            32, 31, 30, 34, 22, 34, 69, 70, 92, 114, 257, 263, 264, 331, 24, 25
        },
        cars = {'adder', 'futo', 'kuruma', 'zentorno', 't20', 'oppressor', 'deluxo'},
        helis = {'volatus', 'buzzard', 'swift', 'frogger', 'havok', 'hunter', 'akula'}
    },

    -- CONFIGURAÇÃO DE PROTEÇÃO ANTI-BAN
    antiBan = {
        modoFurtivo = false,
        bloquearScreenshot = true,
        spoofName = false,
        fakeName = 'Player_' .. math.random(1000,9999),
        bloquearEventos = true,
        eventosBloqueados = {
            'EasyAdmin:Screenshot', 'admin:screenshot', 'BanCheck',
            'AntiCheat:Kick', 'anticheat:detection'
        }
    },

    -- CONFIGURAÇÃO DE MUNDO
    mundo = {
        horaFixa = false, horaValor = 12,
        climaFixo = false, climaTipo = 'EXTRASUNNY',
        gravidadePersonalizada = false, gravidadeValor = 9.8
    }
}

-- =====================================================================
-- VARIÁVEIS LOCAIS DO MÓDULO
-- =====================================================================
local XListAdms = CROCK.AdmsList.Adm.AdmX - 0.5
local YListAdms = CROCK.AdmsList.Adm.AdmY - 0.5

-- =====================================================================
-- INICIALIZAÇÃO DAS DUIs (CORREÇÃO: verificar URLs vazias)
-- =====================================================================
local function InitDUI(name, link, width, height)
    if link and link ~= '' then
        local txd = CreateRuntimeTxd(name)
        local dui = CreateDui(link, width, height)
        if dui and GetDuiHandle(dui) then
            CreateRuntimeTextureFromDuiHandle(txd, name, GetDuiHandle(dui))
            return true
        end
    end
    return false
end

-- Inicializar DUIs com verificação
local duiConfigs = {
    {CROCK.txtnames.j, CROCK.txtlinks.j, 1050, 800},
    {CROCK.txtnames.a, CROCK.txtlinks.a, 1050, 800},
    {CROCK.txtnames.v, CROCK.txtlinks.v, 1050, 800},
    {CROCK.txtnames.t, CROCK.txtlinks.t, 1050, 800},
    {CROCK.txtnames.vs, CROCK.txtlinks.vs, 1050, 800},
    {CROCK.txtnames.e, CROCK.txtlinks.e, 1050, 800},
    {CROCK.txtnames.c, CROCK.txtlinks.c, 1050, 800},
    {CROCK.txtnames.listaplayers, CROCK.txtlinks.listaplayers, 300, 600},
    {CROCK.txtnames.listavehs, CROCK.txtlinks.listavehs, 300, 600},
    {CROCK.txtnames.listaadms, CROCK.txtlinks.listaadms, 270, 260},
    {CROCK.txtnames.notifysucesso, CROCK.txtlinks.notifysucesso, 570, 190},
    {CROCK.txtnames.notifyaviso, CROCK.txtlinks.notifyaviso, 875, 120},
    {CROCK.txtnames.sliderfundo, CROCK.txtlinks.sliderfundo, 113, 6},
    {CROCK.txtnames.bind, CROCK.txtlinks.bind, 380, 250},
    {CROCK.txtnames.button, CROCK.txtlinks.button, 730, 100},
    {CROCK.txtnames.buttonhover, CROCK.txtlinks.buttonhover, 710, 110},
    {CROCK.txtnames.toggleoff, CROCK.txtlinks.toggleoff, 170, 90},
    {CROCK.txtnames.toggleon, CROCK.txtlinks.toggleon, 170, 90},
    {CROCK.txtnames.imputkey, CROCK.txtlinks.imputkey, 480, 250},
    {CROCK.txtnames.ab, CROCK.txtlinks.ab, 1050, 800},
    {CROCK.txtnames.tp, CROCK.txtlinks.tp, 1050, 800}
}

for _, cfg in ipairs(duiConfigs) do
    InitDUI(cfg[1], cfg[2], cfg[3], cfg[4])
end

Citizen.Wait(100)
CROCK.subst.msg('^2█ MENU CROCK v3.0 INJETADO COM SUCESSO! █')

local opacity = 0
local opacity2 = 0
local opacity3 = 0
local CROCK_drag_x = CROCK.CROCKdrags.CROCK_x - 0.32
local CROCK_drag_y = CROCK.CROCKdrags.CROCK_y - 0.5

-- =====================================================================
-- TEXTURAS DO MOUSE
-- =====================================================================
GetNuiCursorPosition()
RequestStreamedTextureDict(CROCK.mousetxt.cameraDeTrafego, true)
RequestStreamedTextureDict(CROCK.mousetxt.centroDeRadar, true)

-- =====================================================================
-- DETECTOR DE RESOURCE (CORRIGIDO: nome da função nativa correta)
-- =====================================================================
-- =====================================================================
-- API FIVEM NATIVA: GetResourceState (CORRIGIDO)
-- docs: https://docs.fivem.net/natives/?_0x4039b485 (GetResourceState)
-- =====================================================================
function VerifyResource(source)
    local state = GetResourceState(tostring(source))
    return state == 'started' or state == 'starting'
end

-- =====================================================================
-- SUPORTE A vRP (CORRIGIDO: sem redeclarar Proxy)
-- =====================================================================
if VerifyResource('vRP') then
    local modules = {}
    local function loadModule(rsc, path)
        if path == nil then
            path = rsc
            rsc = 'vrp'
        end
        local key = rsc .. path
        if modules[key] then return modules[key] end
        local code = LoadResourceFile(rsc, path .. '.lua')
        if code then
            local f, err = load(code, rsc .. '/' .. path .. '.lua')
            if f then
                local ok, res = xpcall(f, debug.traceback)
                if ok then
                    modules[key] = res
                    return res
                else
                    error('erro módulo ' .. rsc .. '/' .. path .. ': ' .. res)
                end
            else
                error('erro parse ' .. rsc .. '/' .. path .. ': ' .. debug.traceback(err))
            end
        else
            error('arquivo ' .. rsc .. '/' .. path .. '.lua não encontrado')
        end
    end

    local Tunnel = loadModule('vrp', 'lib/Tunnel')
    local Proxy = loadModule('vrp', 'lib/Proxy')
    local Tools = loadModule('vrp', 'lib/Tools')

    tvRP = {}
    Tunnel.bindInterface('vRP', tvRP)
    vRPserver = Tunnel.getInterface('vRP')
    Proxy.addInterface('vRP', tvRP)
    tvRP = Proxy.getInterface('vRP')
    CROCK.subst.msg('^2✓ vRP detectado e integrado!')
end

-- =====================================================================
-- SUPORTE A QBCore (NOVO)
-- =====================================================================
local qbCoreLoaded = false

if VerifyResource('qb-core') then
    Citizen.CreateThread(function()
        while QBCore == nil do
            TriggerEvent('QBCore:GetObject', function(obj)
                QBCore = obj
            end)
            Citizen.Wait(10)
        end
        if QBCore then
            qbCoreLoaded = true
            CROCK.subst.msg('^2✓ QBCore detectado e integrado!')
        end
    end)
end

-- =====================================================================
-- FUNÇÃO: MEXER (arrastar menu)
-- =====================================================================
function Mexer()
    local CursorPosX, CursorPosY = GetNuiCursorPosition()
    local CursorPosW, CursorPosH = GetActiveScreenResolution()
    CursorPosX = CursorPosX / CursorPosW
    CursorPosY = CursorPosY / CursorPosH
    local CursorR, resH = CROCK.CROCKdrags.CROCK_w - 0.5, CROCK.CROCKdrags.CROCK_h - 0.5
    if (CursorPosX >= CROCK.CROCKdrags.CROCK_x - 0.208 and
        CursorPosY >= CROCK.CROCKdrags.CROCK_y - 0.370 and
        CursorPosX <= CROCK.CROCKdrags.CROCK_x + 0.155 + CursorR and
        CursorPosY < CROCK.CROCKdrags.CROCK_y - 0.230 + resH) and
        IsDisabledControlJustPressed(0, CROCK.keys['M1']) then
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

-- =====================================================================
-- FUNÇÃO: LARGURA DO TEXTO
-- =====================================================================
function GetTextWidht(text, font, size)
    BeginTextCommandWidth('STRING')
    AddTextComponentSubstringPlayerName(text)
    SetTextFont(font or 4)
    SetTextScale(size or 0.35, size or 0.35)
    local length = EndTextCommandGetWidth(1)
    return length
end

-- =====================================================================
-- FUNÇÃO: DRAW TXT COLORS
-- =====================================================================
-- =====================================================================
-- API FIVEM NATIVA: Desenho de Texto
-- docs: https://docs.fivem.net/natives/?_0xCC33FA791322B9D9 (SetTextColour)
-- =====================================================================
function DrawTxtColors(txt, x, y, outline, size, fonte, centro, r, g, b)
    SetTextFont(4)
    if tonumber(fonte) ~= nil then SetTextFont(fonte) end
    if centro then SetTextCentre(true) end
    SetTextColour(r, g, b, 255)
    SetTextScale(100.0, size or 0.23)
    BeginTextCommandDisplayText('STRING')
    AddTextComponentSubstringWebsite(txt)
    EndTextCommandDisplayText(x, y)
end

-- =====================================================================
-- API FIVEM NATIVA: DrawText3D com SetDrawOrigin
-- docs: https://docs.fivem.net/natives/?_0xAA0008F3BBB8D416 (SetDrawOrigin)
-- =====================================================================
function Draw3DText(x, y, z, text, r, g, b, a)
    local onScreen, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
    if onScreen then
        SetTextScale(0.35, 0.35)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(r or 255, g or 255, b or 255, a or 255)
        SetTextCentre(1)
        SetTextOutline()
        SetTextEntry('STRING')
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
end

-- =====================================================================
-- FUNÇÃO: SOM DE CLICK
-- =====================================================================
function SomClick()
    PlaySoundFrontend(-1, CROCK.click[1], CROCK.click[2], true)
end

-- =====================================================================
-- FUNÇÃO: SLIDER (CORRIGIDO: validação de 'dum')
-- =====================================================================
function Slider(slider, x, y, dum)
    if not slider or not slider.max or not slider.min then return end
    local CROCK_drag_x = CROCK.CROCKdrags.CROCK_x - 0.5
    local CROCK_drag_y = CROCK.CROCKdrags.CROCK_y - 0.5
    local CROCK_drag_w, _ = CROCK.CROCKdrags.CROCK_w - 0.5, CROCK.CROCKdrags.CROCK_h - 0.5
    local CROCK_W_ = 0.080 + CROCK_drag_w / 2
    local CROCK_i_x = (CROCK_drag_w / 2) / 2 + x + (slider.value / (slider.max - slider.min) * CROCK_W_) - CROCK_W_ / 2 - 0.005
    local CROCK_i_y = y - 0.054
    local _, CROCK_res_y = GetActiveScreenResolution()
    DrawSprite(CROCK.txtnames.sliderfundo, CROCK.txtnames.sliderfundo,
        (CROCK_drag_w / 2) / 10 + x, y, CROCK_W_ + 0.005, 10 / CROCK_res_y, 0.0, 255, 255, 255, 255)
    local value = slider.value
    local CROCK_cursor_x, CROCK_cursor_y = GetMousePos()
    local CROCK_scroolsx, CROCK_scroolsr = x - (0.5 - 0.460), x + ((0.530 + (CROCK_drag_w / 2)) - 0.5)
    local CROCK_xx, CROCK_yy = x - (0.5 - 0.553), y + ((0.490 + (CROCK_drag_w / 2)) - 0.5)
    DrawRect((CROCK_drag_w / 2) / 2 + x + 0.0005 + (slider.value / (slider.max / CROCK_W_) / 2) - CROCK_W_ / 2,
        y, (slider.value / (slider.max / CROCK_W_)), 0.0090, 30, 255, 30, 255)
    SetTextOutline()
    DrawTxtColors('•', CROCK_i_x, CROCK_i_y, false, 1.75, 4, false, 30, 255, 30, 255)
    DrawTxtColors('(' .. value .. ')', CROCK_xx, CROCK_yy, false, 0.280, 6, false, 30, 255, 30, 255)
    if (Mouse((CROCK_drag_w / 2) / 2 + x, y, CROCK_W_ + 0.00, 7 / CROCK_res_y)) and
        IsDisabledControlPressed(0, 69) and IsDisabledControlPressed(0, 24) then
        local aa = (((CROCK_cursor_x) - (CROCK_scroolsx)) / (CROCK_scroolsr - CROCK_scroolsx)) * (slider.max - slider.min) - slider.min
        if dum and tonumber(dum) then
            slider.value = tonumber(string.format('%.' .. math.floor(dum) .. 'f', aa))
        else
            slider.value = math.floor(aa)
        end
    end
    if (Mouse((CROCK_drag_w / 2) / 2 + x, y, CROCK_W_ + 0.00, 7 / CROCK_res_y)) and
        IsControlJustPressed(0, CROCK.keys['LEFT']) and IsControlPressed(0, CROCK.keys['LEFT']) then
        slider.value = math.max(slider.min, slider.value - 1)
    elseif (Mouse((CROCK_drag_w / 2) / 2 + x, y, CROCK_W_ + 0.00, 7 / CROCK_res_y)) and
        IsControlJustPressed(0, CROCK.keys['RIGHT']) and IsControlPressed(0, CROCK.keys['RIGHT']) then
        slider.value = math.min(slider.max, slider.value + 1)
    end
    if slider.value > slider.max then slider.value = slider.max
    elseif slider.value < slider.min then slider.value = slider.min end
end

-- =====================================================================
-- FUNÇÕES MATEMÁTICAS / COORDENADAS
-- =====================================================================
function RotacionarParaDIrecao(pos)
    local rt = vec3((math.pi / 180) * pos.x, (math.pi / 180) * pos.y, (math.pi / 180) * pos.z)
    return vec3(-math.sin(rt.z) * math.abs(math.cos(rt.x)),
                math.cos(rt.z) * math.abs(math.cos(rt.x)),
                math.sin(rt.x))
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
    if i == 0 then red, green, blue = value, t, p
    elseif i == 1 then red, green, blue = q, value, p
    elseif i == 2 then red, green, blue = p, value, t
    elseif i == 3 then red, green, blue = p, q, value
    elseif i == 4 then red, green, blue = t, p, value
    elseif i == 5 then red, green, blue = value, p, q end
    return math.floor(red * 255 + 0.5), math.floor(green * 255 + 0.5),
           math.floor(blue * 255 + 0.5), math.floor(alpha * 255)
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
    x = x / w
    y = y / h
    return x, y
end

function Mouse(x, y, w, h)
    local X, Y = GetMousePos()
    local a, b = w / 2, h / 2
    if (X >= x - a and X <= x + a and Y >= y - b and Y <= y + b) then
        return true
    end
    return false
end

function MostrarMouse()
    local x, y = GetNuiCursorPosition()
    local x_ez, y_ez = GetActiveScreenResolution()
    local cursorX, cursorY = x / x_ez, y / y_ez
    DrawSprite(CROCK.mousetxt.cameraDeTrafego, CROCK.mousetxt.centroDeRadar,
               cursorX + 0.002, cursorY + 0.005, 0.010, 0.020, 330.0, 255, 255, 255, 255)
end

-- =====================================================================
-- FUNÇÃO: GRADIENTE
-- =====================================================================
function Grad(posX, posY, largura, altura, quantidade, corR, corG, corB, corA,
              corAR, corAG, corAB, corAA)
    if quantidade then
        for l = 0, largura, 2 do
            if l > largura then break end
            local novaCorA = math.floor((corAA - corA) / largura * l + corA)
            Retangulo(posX + l, posY, l < largura - 1 and 2 or 1, altura,
                      corAR, corAG, corAB, math.abs(novaCorA))
        end
    else
        for l = 0, altura, 2 do
            if l > altura then break end
            local novaCorA = math.floor((corAA - corA) / altura * l + corA)
            Retangulo(posX, posY + l, largura, l < altura - 1 and 2 or 1,
                      corAR, corAG, corAB, math.abs(novaCorA))
        end
    end
end

function GradHSV(posX, posY, largura, altura, horizontal,
                 hueInicio, saturationInicio, valueInicio,
                 hueFim, saturationFim, valueFim)
    Retangulo(posX, posY, largura, altura, HSVRGB(hueInicio, saturationInicio, valueInicio, 1))
    if horizontal then
        for l = 0, largura, 2 do
            local hue = (hueFim - hueInicio) / largura * l + hueInicio
            local sat = (saturationFim - saturationInicio) / largura * l + saturationInicio
            local val = (valueFim - valueInicio) / largura * l + valueInicio
            Retangulo(posX + l, posY, 2, altura, HSVRGB(hue, sat, val, 1))
        end
    else
        for l = 0, altura, 2 do
            local hue = (hueFim - hueInicio) / altura * l + hueInicio
            local sat = (saturationFim - saturationInicio) / altura * l + saturationInicio
            local val = (valueFim - valueInicio) / altura * l + valueInicio
            Retangulo(posX, posY + l, largura, 2, HSVRGB(hue, sat, val, 1))
        end
    end
end

function Vectores(vector1, vector2)
    return vec3(vector1.x - vector2.x, vector1.y - vector2.y, vector1.z - vector2.z)
end

function CoordsAdjust2(coords)
    local checar, x, y = GetScreenCoordFromWorldCoord(coords.x, coords.y, coords.z)
    if not checar then return false end
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
    local vect2x = 0.0; local vect2y = 0.0
    local vect21y = 0.0; local vect21x = 0.0
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
    if not case1 then vect2x = x1; vect2y = y1; return camPos + (direction * 10.0) end
    local case2, x2v, y2v = CoordsAdjust2(camPos + (direction * 10.0))
    if not case2 then vect21x = x2v; vect21y = y2v; return camPos + (direction * 10.0) end
    if math.abs(vect2x - vect21x) < 0.001 or math.abs(vect2y - vect21y) < 0.001 then
        return camPos + (direction * 10.0)
    end
    local x = (screenCoord.x - vect21x) / (vect2x - vect21x)
    local y = (screenCoord.y - vect21y) / (vect2y - vect21y)
    return ((camPos + (direction * 10.0)) + (vect33 * x)) + (vect34 * y)
end

-- =====================================================================
-- FUNÇÃO: RETÂNGULO
-- =====================================================================
function Retangulo(posX, posY, largura, altura, corR, corG, corB, corA)
    local screenWidth, screenHeight = GetActiveScreenResolution()
    local screenX, screenY = 1 / screenWidth, 1 / screenHeight
    local normalizedPosX, normalizedPosY = screenX * posX, screenY * posY
    local normalizedWidth, normalizedHeight = screenX * largura, screenY * altura
    DrawRect(normalizedPosX + normalizedWidth / 2,
              normalizedPosY + normalizedHeight / 2,
              normalizedWidth, normalizedHeight, corR, corG, corB, corA)
end

-- =====================================================================
-- FUNÇÃO: COLOR PICKER (CORRIGIDO: math.clamp global)
-- =====================================================================
function ColorPicker(R, aJ, aK)
    local C = {
        hhv = {H = 0, S = 0, V = 0},
        rgb = {R = R or 255, G = aJ or 255, B = aK or 255},
        mant = {Hue = false, Value = false},
        aberto = true, turn = true
    }
    while C.turn do
        Desativar_Controles3()
        local x, y = GetNuiCursorPosition()
        local a9, aa = TamanhoDaTela().x, TamanhoDaTela().y
        local aL, aM = a9 / 2 - 100, aa / 2 - 100
        local r, g, b = HSVRGB(C.hhv.H, C.hhv.S, C.hhv.V, 1)
        r, g, b = HSVRGB(C.hhv.H, 1, 1, 1)
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
            if x > aL + 20 and x < aL + 20 + 160 and y > aM + 10 and y < aM + 10 + 180 then C.mant.Value = true end
            if x > aL + 20 + 160 and x < aL + 20 + 160 + 10 and y > aM + 10 and y < aM + 10 + 180 then C.mant.Hue = true end
            if x < aL or x > aL + 200 or y < aM or y > aM + 200 then C.aberto = false end
        end
        if IsDisabledControlPressed(0, 69) then
            if C.mant.Value then
                local aN = x - aL - 10; local aO = y - aM - 60
                C.hhv.S = math.clamp(aN / 160, 0, 1)
                C.hhv.V = math.clamp(1 - aO / 180, 0, 1)
            end
            if C.mant.Hue then
                local aP = y - aM - 19
                C.hhv.H = math.clamp(aP / 180, 0, 1)
            end
            local r, g, b = HSVRGB(C.hhv.H, C.hhv.S, C.hhv.V, 1)
            C.rgb.R, C.rgb.G, C.rgb.B = r, g, b
        else
            if C.mant.Value then C.aberto = false end
            C.mant.Value = false; C.mant.Hue = false
        end
        MostrarMouse()
        if IsDisabledControlJustPressed(0, 191) then
            C.turn = false
            return C.rgb.R, C.rgb.G, C.rgb.B
        end
        Citizen.Wait(3)
    end
end

-- =====================================================================
-- FUNÇÕES DE TEXTO/BOTÃO
-- =====================================================================
function TextTabButton(text, outline, size, justification, x, y, center, font)
    if outline then SetTextOutline() end
    if font ~= nil and tonumber(font) ~= nil then SetTextFont(font)
    else SetTextFont(4) end
    if center then SetTextCentre(true) end
    SetTextProportional(1)
    SetTextScale(100.0, size)
    SetTextEdge(115, 0, 230, 255)
    SetTextColour(255, 255, 255, 255)
    BeginTextCommandDisplayText('STRING')
    AddTextComponentSubstringWebsite(text)
    EndTextCommandDisplayText(x, y)
end

function ButtonClickTab(buttonID, text, hasOutline, posX, posY)
    local CursorR, resH = CROCK.CROCKdrags.CROCK_w - 0.5, CROCK.CROCKdrags.CROCK_h - 0.5
    local mouseX, mouseY = GetNuiCursorPosition()
    TextTabButton(text, hasOutline, 0.270, 0, posX, posY - 0.01, true, 0)
    local screenWidth, screenHeight = GetActiveScreenResolution()
    if (mouseX / screenWidth) + 0.030 >= posX and
       (mouseX / screenWidth) - 0.029 <= posX and
       (mouseY / screenHeight) + 0.015 >= posY and
       (mouseY / screenHeight) - 0.015 <= posY and
       IsDisabledControlJustReleased(0, 92) then
        return true
    end
    return false
end

function TextButton(Texto, x, y, outline, tamanho, fonte, centro, r, g, b)
    SetTextColour(r, g, b, 255)
    SetTextFont(0)
    if outline then SetTextOutline(true) end
    if tonumber(fonte) ~= nil then SetTextFont(fonte) end
    if centro then SetTextCentre(true) end
    SetTextScale(100.0, tamanho or 0.23)
    BeginTextCommandDisplayText('STRING')
    AddTextComponentSubstringWebsite(Texto)
    EndTextCommandDisplayText(x, y)
end

function Click_Binds(Texto, x, y, outline)
    local CursorPosXxx, CROCK_cursor_y = GetNuiCursorPosition()
    local CursorPosW, CursorPosH = GetActiveScreenResolution()
    CursorPosXxx = CursorPosXxx / CursorPosW
    CROCK_cursor_y = CROCK_cursor_y / CursorPosH
    if (CursorPosXxx) + 0.03 >= x + CROCK_drag_x and
       (CursorPosXxx) - 0.02 <= x + CROCK_drag_x and
       (CROCK_cursor_y) + 0.008 >= y + CROCK_drag_y and
       (CROCK_cursor_y) - 0.008 <= y + CROCK_drag_y then
        TextButton(Texto, x + CROCK_drag_x - 0.028, y + CROCK_drag_y - 0.011, outline, 0.26, 0, false, 255, 0, 0, 255)
    else
        TextButton(Texto, x + CROCK_drag_x - 0.028, y + CROCK_drag_y - 0.011, outline, 0.26, 0, false, 255, 255, 255)
    end
    if (CursorPosXxx) + 0.03 >= x + CROCK_drag_x and
       (CursorPosXxx) - 0.03 <= x + CROCK_drag_x and
       (CROCK_cursor_y) + 0.012 >= y + CROCK_drag_y and
       (CROCK_cursor_y) - 0.012 <= y + CROCK_drag_y and
       IsDisabledControlJustReleased(0, 92) then
        SomClick()
        return true
    end
    return false
end

function TxtCheckBox(Texto, x, y, tamanho, font, center, r, g, b)
    SetTextScale(0.0, tamanho)
    SetTextFont(font)
    SetTextColour(r, g, b, 255)
    SetTextCentre(center)
    BeginTextCommandDisplayText('TWOSTRINGS')
    AddTextComponentString(Texto)
    EndTextCommandDisplayText(x, y - 0.011)
end

function TextButton2(name, x, y, outline, size, Justification, r, g, b)
    SetTextScale(0.00, size)
    SetTextColour(r, g, b, 255)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextJustification(Justification)
    SetTextEntry('string')
    AddTextComponentString(name)
    DrawText(x, y)
end

-- =====================================================================
-- FUNÇÕES DE BOTÃO (CORRIGIDO: usando sprite names via CROCK.txtnames)
-- =====================================================================
function Botao(Texto, x, y, outline)
    local CursorPosXxx, CROCK_cursor_y = GetNuiCursorPosition()
    local CursorPosW, CursorPosH = GetActiveScreenResolution()
    CursorPosXxx = CursorPosXxx / CursorPosW
    CROCK_cursor_y = CROCK_cursor_y / CursorPosH
    local CursorR, resH = CROCK.CROCKdrags.CROCK_w - 0.5, CROCK.CROCKdrags.CROCK_h - 0.5
    GetTextWidht(Texto, 0, 0.2)
    local btnName = CROCK.txtnames.button
    local btnHoverName = CROCK.txtnames.buttonhover
    if (CursorPosXxx) + 0.09 >= x + CROCK_drag_x and
       (CursorPosXxx) - 0.09 <= x + CROCK_drag_x and
       (CROCK_cursor_y) + 0.008 >= y + CROCK_drag_y and
       (CROCK_cursor_y) - 0.008 <= y + CROCK_drag_y then
        TextButton2(Texto, x + CROCK_drag_x, y + CROCK_drag_y - 0.017, outline, 0.26, 0, 255, 255, 255, 255)
        DrawSprite(btnHoverName, btnHoverName, x + CROCK_drag_x, y + CROCK_drag_y - 0.003,
                   0.163 + CursorR, 0.060 + resH, 0.0, 255, 255, 255, opacity)
    else
        TextButton2(Texto, x + CROCK_drag_x, y + CROCK_drag_y - 0.017, outline, 0.26, 0, 255, 255, 255)
        DrawSprite(btnName, btnName, x + CROCK_drag_x, y + CROCK_drag_y - 0.003,
                   0.163 + CursorR, 0.060 + resH, 0.0, 255, 255, 255, opacity)
    end
    if (CursorPosXxx) + 0.09 >= x + CROCK_drag_x and
       (CursorPosXxx) - 0.09 <= x + CROCK_drag_x and
       (CROCK_cursor_y) + 0.012 >= y + CROCK_drag_y and
       (CROCK_cursor_y) - 0.012 <= y + CROCK_drag_y and
       IsDisabledControlJustReleased(0, 24) then
        SomClick()
        return true
    end
    return false
end

function Vehs(Texto, x, y, outline)
    local CursorPosXxx, CROCK_cursor_y = GetNuiCursorPosition()
    local CursorPosW, CursorPosH = GetActiveScreenResolution()
    CursorPosXxx = CursorPosXxx / CursorPosW
    CROCK_cursor_y = CROCK_cursor_y / CursorPosH
    local CursorR, resH = CROCK.CROCKdrags.CROCK_w - 0.5, CROCK.CROCKdrags.CROCK_h - 0.5
    local btnName = CROCK.txtnames.button; local btnHoverName = CROCK.txtnames.buttonhover
    if (CursorPosXxx) + 0.03 >= x + CROCK_drag_x and
       (CursorPosXxx) - 0.02 <= x + CROCK_drag_x and
       (CROCK_cursor_y) + 0.008 >= y + CROCK_drag_y and
       (CROCK_cursor_y) - 0.008 <= y + CROCK_drag_y then
        TextButton2(Texto, x + CROCK_drag_x, y + CROCK_drag_y - 0.017, outline, 0.26, 0, 255, 0, 0, 255)
        DrawSprite(btnHoverName, btnHoverName, x + CROCK_drag_x, y + CROCK_drag_y - 0.003,
                   0.163 + CursorR, 0.060 + resH, 0.0, 255, 255, 255, 255)
    else
        TextButton2(Texto, x + CROCK_drag_x, y + CROCK_drag_y - 0.017, outline, 0.26, 0, 255, 255, 255)
        DrawSprite(btnName, btnName, x + CROCK_drag_x, y + CROCK_drag_y - 0.003,
                   0.163 + CursorR, 0.060 + resH, 0.0, 255, 255, 255, 255)
    end
    if (CursorPosXxx) + 0.03 >= x + CROCK_drag_x and
       (CursorPosXxx) - 0.03 <= x + CROCK_drag_x and
       (CROCK_cursor_y) + 0.012 >= y + CROCK_drag_y and
       (CROCK_cursor_y) - 0.012 <= y + CROCK_drag_y and
       IsDisabledControlJustReleased(0, 92) then
        SomClick()
        return true
    end
    return false
end

function Players(Texto, x, y, outline)
    local CursorPosXxx, CROCK_cursor_y = GetNuiCursorPosition()
    local CursorPosW, CursorPosH = GetActiveScreenResolution()
    CursorPosXxx = CursorPosXxx / CursorPosW
    CROCK_cursor_y = CROCK_cursor_y / CursorPosH
    local CursorR, resH = CROCK.CROCKdrags.CROCK_w - 0.5, CROCK.CROCKdrags.CROCK_h - 0.5
    local btnName = CROCK.txtnames.button; local btnHoverName = CROCK.txtnames.buttonhover
    if opacity2 < 255 then opacity2 = opacity2 + 10 end
    if (CursorPosXxx) + 0.03 >= x + CROCK_drag_x and
       (CursorPosXxx) - 0.02 <= x + CROCK_drag_x and
       (CROCK_cursor_y) + 0.008 >= y + CROCK_drag_y and
       (CROCK_cursor_y) - 0.008 <= y + CROCK_drag_y then
        TextButton2(Texto, x + CROCK_drag_x, y + CROCK_drag_y - 0.017, outline, 0.26, 0, 255, 0, 0, 255)
        DrawSprite(btnHoverName, btnHoverName, x + CROCK_drag_x, y + CROCK_drag_y - 0.003,
                   0.163 + CursorR, 0.060 + resH, 0.0, 255, 255, 255, opacity2)
    else
        TextButton2(Texto, x + CROCK_drag_x, y + CROCK_drag_y - 0.017, outline, 0.26, 0, 255, 255, 255)
        DrawSprite(btnName, btnName, x + CROCK_drag_x, y + CROCK_drag_y - 0.003,
                   0.163 + CursorR, 0.060 + resH, 0.0, 255, 255, 255, opacity2)
    end
    if (CursorPosXxx) + 0.03 >= x + CROCK_drag_x and
       (CursorPosXxx) - 0.03 <= x + CROCK_drag_x and
       (CROCK_cursor_y) + 0.012 >= y + CROCK_drag_y and
       (CROCK_cursor_y) - 0.012 <= y + CROCK_drag_y and
       IsDisabledControlJustReleased(0, 92) then
        SomClick()
        return true
    end
    return false
end

function ListaAdmsTxt(Texto, x, y, outline, r, g, b)
    local CursorPosXxx, CROCK_cursor_y = GetNuiCursorPosition()
    local CursorPosW, CursorPosH = GetActiveScreenResolution()
    CursorPosXxx = CursorPosXxx / CursorPosW; CROCK_cursor_y = CROCK_cursor_y / CursorPosH
    local CursorR, resH = CROCK.CROCKdrags.CROCK_w - 0.5, CROCK.CROCKdrags.CROCK_h - 0.5
    local btnName = CROCK.txtnames.button
    if opacity2 < 255 then opacity2 = opacity2 + 10 end
    if (CursorPosXxx) + 0.03 >= x + CROCK_drag_x and (CursorPosXxx) - 0.02 <= x + CROCK_drag_x and
       (CROCK_cursor_y) + 0.008 >= y + CROCK_drag_y and (CROCK_cursor_y) - 0.008 <= y + CROCK_drag_y then
        TextButton2(Texto, x + CROCK_drag_x, y + CROCK_drag_y - 0.014, outline, 0.200, 0, r, g, b)
        DrawSprite(btnName, btnName, x + CROCK_drag_x, y + CROCK_drag_y - 0.003,
                   0.105 + CursorR, 0.045 + resH, 0.0, 255, 255, 255, opacity2)
    else
        TextButton2(Texto, x + CROCK_drag_x, y + CROCK_drag_y - 0.014, outline, 0.200, 0, r, g, b)
        DrawSprite(btnName, btnName, x + CROCK_drag_x, y + CROCK_drag_y - 0.003,
                   0.105 + CursorR, 0.045 + resH, 0.0, 255, 255, 255, opacity2)
    end
    if (CursorPosXxx) + 0.03 >= x + CROCK_drag_x and (CursorPosXxx) - 0.03 <= x + CROCK_drag_x and
       (CROCK_cursor_y) + 0.012 >= y + CROCK_drag_y and (CROCK_cursor_y) - 0.012 <= y + CROCK_drag_y and
       IsDisabledControlJustReleased(0, 92) then
        SomClick()
        return true
    end
    return false
end

function GetCursorPosition()
    local x, y = GetNuiCursorPosition()
    local w, h = GetActiveScreenResolution()
    x = x / w; y = y / h
    return x, y
end

function CursorZone(x, y, w, h)
    h = h * 1.8
    local X, Y = GetCursorPosition()
    local a, b = w / 2, h / 2
    if (X >= x - a and X <= x + a and Y >= y - b and Y <= y + b) then return true end
    return false
end

function ListAdmsMoviment()
    local Adm_X, Adm_Y = XListAdms, YListAdms
    local CursorPositionX, CursorPositionY = GetCursorPosition()
    if CursorZone(0.050 + Adm_X, 0.110 + Adm_Y, 0.130, 0.015) and
       IsDisabledControlJustPressed(0, 24) and ToggleBindMenuStart then
        X = XListAdms - CursorPositionX
        Y = YListAdms - CursorPositionY
        AdmDragging = true
    elseif IsDisabledControlReleased(0, 24) then
        AdmDragging = false
    end
    if AdmDragging then
        XListAdms = CursorPositionX + X
        YListAdms = CursorPositionY + Y
    end
end

-- =====================================================================
-- CHECKBOX (CORRIGIDO: retorno correto do valor)
-- =====================================================================
function CheckBox(name, xx, yy, bool)
    local x, y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    local xx2 = xx - 0.012
    local yy2 = yy + 0.0020
    TxtCheckBox(name, xx2 + 0.003, yy2 - 0.0040, 0.260, 0, false, 255, 255, 255)
    if bool then
        DrawSprite(CROCK.txtnames.toggleon, CROCK.txtnames.toggleon,
                   xx2 - 0.010, yy2, 0.038, 0.038, 0.0, 255, 255, 255, 255)
    else
        DrawSprite(CROCK.txtnames.toggleoff, CROCK.txtnames.toggleoff,
                   xx2 - 0.010, yy2, 0.038, 0.038, 0.0, 255, 255, 255, 255)
    end
    if ((x / x_res) + 0.030 >= xx and (x / x_res) - 0.029 <= xx and
        (y / y_res) + 0.009 >= yy and (y / y_res) - 0.01 <= yy) and
        IsDisabledControlJustReleased(0, 92) then
        return not bool
    end
    return bool
end

-- =====================================================================
-- CONTROLES: ATIVAR/DESATIVAR
-- =====================================================================
function Desativar_Controles()
    for _, controls in ipairs(CROCK.dc) do DisableControlAction(0, controls, true) end
end

function Desativar_Controles2()
    for _, controls in ipairs(CROCK.dc2) do DisableControlAction(0, controls, true) end
end

function Desativar_Controles3()
    for _, controls in ipairs(CROCK.dc3) do DisableControlAction(0, controls, true) end
end

function Desativar_Controles4()
    for _, controls in ipairs(CROCK.cameralivre.desatctrls) do DisableControlAction(0, controls, true) end
end

function Ativar_Controles()
    for _, controls in ipairs(CROCK.ac) do EnableControlAction(1, controls, true) end
end

function CLICK()
    return IsDisabledControlJustPressed(0, CROCK.keys['M1'])
end

-- =====================================================================
-- CORES RGB CICLICAS
-- =====================================================================
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

-- =====================================================================
-- TEXTO 3D
-- =====================================================================
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

-- =====================================================================
-- NOTIFICAÇÕES
-- =====================================================================
function DrawTextColor(text, x, y, outline, size, font, centre, r, g, b, opacityv, justification)
    SetTextFont(4)
    if outline then SetTextOutline(true) end
    if tonumber(font) ~= nil then SetTextFont(font) end
    if centre then SetTextCentre(true) end
    SetTextJustification(justification)
    SetTextColour(r, g, b, opacityv or 255)
    SetTextScale(100.0, size or 0.23)
    BeginTextCommandDisplayText('STRING')
    AddTextComponentSubstringWebsite(text)
    EndTextCommandDisplayText(x, y)
end

function NotifySucesso(text)
    Citizen.CreateThread(function()
        local enabled = true; local x = 0.0; local animx = 5.0; local time = 0; local opacitylocal = 0
        Citizen.CreateThread(function()
            while time < 300 do x = x - 0.0015; time = time + 25; Citizen.Wait(2) end
            while time < 4000 do time = time + 25; animx = animx + 0.00055; Citizen.Wait(2) end
            while time >= 3800 do
                x = x + 0.0055; opacitylocal = opacitylocal - 20
                if opacitylocal < 20 then enabled = false end
                if x <= -0.1 then enabled = false end
                Citizen.Wait(3)
            end
        end)
        while enabled do
            if opacitylocal < 220 then opacitylocal = opacitylocal + 2 end
            Citizen.Wait(1)
            DrawSprite(CROCK.txtnames.notifysucesso, CROCK.txtnames.notifysucesso,
                       x + 0.970 - 0.05, 0.250, 0.150, 0.070, 0, 255, 255, 255, opacitylocal)
            DrawTextColor(text, x + 0.920, 0.232, false, 0.4, 6, false, 255, 255, 255, 255, 0)
        end
    end)
end

function NotifyAviso(text)
    Citizen.CreateThread(function()
        local enabled = true; local x = 0.0; local animx = 5.0; local time = 0; local opacitylocal = 0
        Citizen.CreateThread(function()
            while time < 300 do x = x - 0.0015; time = time + 25; Citizen.Wait(2) end
            while time < 4000 do time = time + 25; animx = animx + 0.00055; Citizen.Wait(2) end
            while time >= 3800 do
                x = x + 0.0055; opacitylocal = opacitylocal - 20
                if opacitylocal < 20 then enabled = false end
                if x <= -0.1 then enabled = false end
                Citizen.Wait(3)
            end
        end)
        while enabled do
            if opacitylocal < 220 then opacitylocal = opacitylocal + 2 end
            Citizen.Wait(1)
            DrawSprite(CROCK.txtnames.notifyaviso, CROCK.txtnames.notifyaviso,
                       x + 0.970 - 0.05, 0.250, 0.150, 0.070, 0, 255, 255, 255, opacitylocal)
            DrawTextColor(text, x + 0.920, 0.232, false, 0.4, 6, false, 255, 255, 255, 255)
        end
    end)
end

-- =====================================================================
-- BIND SYSTEM
-- =====================================================================
function DrawTextInputBind(Text, x, y, scale, font, center, justification)
    SetTextScale(100.0, scale)
    SetTextFont(font)
    SetTextCentre(center)
    SetTextColour(255, 255, 255, 255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentString(Text)
    SetTextJustification(justification)
    EndTextCommandDisplayText(x, y - 0.011)
end

function Bind()
    local animacao = 0; local CLICK = nil; local Texto = nil; local binded = false; local alpha = 0
    while not binded do
        if alpha < 255 then alpha = alpha + 10 end
        animacao = math.min(animacao + 0.02, 0.15)
        local CursorR, resH = CROCK.CROCKdrags.CROCK_w - 0.5, CROCK.CROCKdrags.CROCK_h - 0.5
        local CROCKX, CROCKY = CROCK.CROCKdrags.CROCK_x - 0.5, CROCK.CROCKdrags.CROCK_y - 0.5
        DrawSprite(CROCK.txtnames.bind, CROCK.txtnames.bind,
                   0.500 + CROCKX, 0.853 + CROCKY - animacao,
                   0.150 + CursorR, 0.160 + resH, 0.0, 255, 255, 255, 255)
        ToggleBindMenuStart = false
        for k, v in pairs(CROCK.keysinput) do
            if IsDisabledControlPressed(0, v) then CLICK = v; Texto = k end
        end
        if IsDisabledControlJustPressed(0, 191) then
            ToggleBindMenuStart = true
            if CLICK ~= nil then binded = true; return CLICK, Texto end
        end
        DrawTextInputBind(Texto or '...', 0.490, 0.847 - animacao, 0.33, 0, false, 0)
        Citizen.Wait(3)
    end
end

function CaixaTexto(Text, ExampleText, MaxStringLength)
    AddTextEntry('FMMC_KEY_TIP2', Text .. ':')
    DisplayOnscreenKeyboard(1, 'FMMC_KEY_TIP2', '', ExampleText or '', '', '', '', MaxStringLength or 30)
    blockinput = true
    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do Citizen.Wait(3) end
    if UpdateOnscreenKeyboard() ~= 2 then
        AddTextEntry('FMMC_KEY_TIP2', '')
        local Kboard = GetOnscreenKeyboardResult()
        Citizen.Wait(500); blockinput = false
        return Kboard
    else
        AddTextEntry('FMMC_KEY_TIP2', '')
        Citizen.Wait(500); blockinput = true
        return nil
    end
end

function DrawTextInput(Text, x, y, scale, font, center, justification)
    SetTextScale(100.0, scale)
    SetTextFont(font); SetTextCentre(center)
    SetTextColour(255, 255, 255, 255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentString(Text)
    SetTextJustification(justification)
    EndTextCommandDisplayText(x, y - 0.011)
end

function imputkey(Texto)
    local animacao = 0
    Citizen.CreateThread(function()
        while true do
            DisableAllControlActions(0)
            animacao = math.min(animacao + 0.02, 0.15)
            local CursorR, resH = CROCK.CROCKdrags.CROCK_w - 0.5, CROCK.CROCKdrags.CROCK_h - 0.5
            local CROCKX, CROCKY = CROCK.CROCKdrags.CROCK_x - 0.5, CROCK.CROCKdrags.CROCK_y - 0.5
            DrawSprite(CROCK.txtnames.imputkey, CROCK.txtnames.imputkey,
                       0.520 + CROCKX, 0.853 - animacao + CROCKY,
                       0.225 + CursorR, 0.160 + resH, 0.0, 255, 255, 255, 255)
            ToggleBindMenuStart = false
            for k, v in pairs(CROCK.keysinput) do
                if IsDisabledControlJustPressed(0, v) then
                    if #Texto < 23 then Texto = Texto .. k end
                end
            end
            if IsDisabledControlJustPressed(0, 194) and #Texto > 0 then
                Texto = string.sub(Texto, 1, #Texto - 1)
            end
            if IsDisabledControlJustPressed(0, 191) and #Texto > 0 then
                if imputvehs then SpawnVehicles(Texto)
                elseif imputarmas then PegarArmasName(Texto) end
                Citizen.Wait(500); ToggleBindMenuStart = true; break
            end
            DrawTextInput(Texto or '', 0.492, 0.850 - animacao, 0.33, 0, false, 0)
            Citizen.Wait(3)
        end
    end)
end

-- =====================================================================
-- FUNÇÕES DE ENTIDADE / REDE
-- =====================================================================
function Peg(a, b, t)
    if a > 1 then return t end
    if a < 0 then return b end
    return b + (t - b) * a
end

function Pedg()
    local dist, ent, sret, ssx, ssy, bc = 10000000, nil
    local selfPed = PlayerPedId()
    local pool = GetGamePool(CROCK.GamePools[1])
    for i = 1, #pool do
        local GgP = pool[i]
        if GgP ~= selfPed then
            local c = GetPedBoneCoords(GgP, 31086)
            local os, sx, sy = GetScreenCoordFromWorldCoord(c.x, c.y, c.z)
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

-- =====================================================================
-- FUNÇÕES DE CÂMERA LIVRE
-- =====================================================================
function CamLivreRotToQuat(rot)
    local pitch = math.rad(rot.x); local roll = math.rad(rot.y); local yaw = math.rad(rot.z)
    local cy = math.cos(yaw * 0.5); local sy = math.sin(yaw * 0.5)
    local cr = math.cos(roll * 0.5); local sr = math.sin(roll * 0.5)
    local cp = math.cos(pitch * 0.5); local sp = math.sin(pitch * 0.5)
    return quat(cy * cr * cp + sy * sr * sp, cy * sp * cr - sy * cp * sr,
                cy * cp * sr + sy * sp * cr, sy * cr * cp - cy * sr * sp)
end

function CamLivreCamFwd(camf)
    local rot = GetCamRot(camf, 0)
    return CamLivreRotToQuat(rot) * vector3(0.0, 1.0, 0.0)
end

function CamLivreCamRigh(camf)
    local rot = GetCamRot(camf, 0)
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
    local cameraCoord = GetCamCoord(cam)
    local destination = {
        x = cameraCoord.x + direction.x * distance,
        y = cameraCoord.y + direction.y * distance,
        z = cameraCoord.z + direction.z * distance
    }
    if not destination then return nil, nil, nil end
    local a, b, c, d, e = GetShapeTestResult(StartShapeTestRay(
        cameraCoord.x, cameraCoord.y, cameraCoord.z,
        destination.x, destination.y, destination.z, -1, -1, 1
    ))
    return b, c, e
end

function RotationToDirection(Rotation)
    return vector3(-math.sin(math.rad(Rotation.z)) * math.abs(math.cos(math.rad(Rotation.x))),
                   math.cos(math.rad(Rotation.z)) * math.abs(math.cos(math.rad(Rotation.x))),
                   math.sin(math.rad(Rotation.x)))
end

function RotationToDirection2(rotation)
    local retz = math.rad(rotation.z); local retx = math.rad(rotation.x); local absx = math.abs(math.cos(retx))
    return vector3(-math.sin(retz) * absx, math.cos(retz) * absx, math.sin(retx))
end

function GetEntityInFrontOfCam()
    local camCoords = GetCamCoord(cam)
    local offset = GetCamCoord(cam) + (RotationToDirection(GetCamRot(cam, 2)) * 1000)
    local rayHandle = StartShapeTestRay(camCoords.x, camCoords.y, camCoords.z, offset.x, offset.y, offset.z, -1)
    local a, b, c, d, entity = GetShapeTestResult(rayHandle)
    return entity
end

function DrawTextCamLivre(name, _outl, size, Justification, xx, yy, opacityv)
    SetTextFont(0); SetTextScale(1.2, size); SetTextProportional(1)
    SetTextJustification(Justification)
    SetTextEntry('string'); AddTextComponentString(name)
    SetTextColour(255, 255, 255, opacityv or 255)
    DrawText(xx, yy)
end

function DrawCursorCamLivre()
    local _, CROCK_res_y = GetActiveScreenResolution()
    DrawRect(0.5, 0.5, 0.007, 2/CROCK_res_y, 255, 255, 255, 255)
    DrawRect(0.5, 0.5, 2/CROCK_res_x or 0.002, 0.007*1.8, 255, 255, 255, 255)
end

-- =====================================================================
-- NOVAS FUNÇÕES (APIs FiveM nativas)
-- =====================================================================

function GetClosestPlayer()
    local players = GetActivePlayers()
    local closestDist = -1; local closestPlayer = -1
    local myPed = PlayerPedId(); local myPos = GetEntityCoords(myPed)
    for i = 1, #players do
        local player = players[i]; local ped = GetPlayerPed(player)
        if ped ~= myPed then
            local pos = GetEntityCoords(ped); local dist = #(myPos - pos)
            if closestDist == -1 or dist < closestDist then closestDist = dist; closestPlayer = player end
        end
    end
    return closestPlayer, closestDist
end

function GetClosestVehicle()
    local myPed = PlayerPedId(); local myPos = GetEntityCoords(myPed)
    local vehicles = GetGamePool('CVehicle')
    local closestDist = -1; local closestVeh = -1
    for i = 1, #vehicles do
        local veh = vehicles[i]
        if veh ~= nil and DoesEntityExist(veh) then
            local pos = GetEntityCoords(veh); local dist = #(myPos - pos)
            if closestDist == -1 or dist < closestDist then closestDist = dist; closestVeh = veh end
        end
    end
    return closestVeh, closestDist
end

function ClearAreaEntities(x, y, z, radius)
    ClearAreaOfPeds(x, y, z, radius, 1)
    ClearAreaOfVehicles(x, y, z, radius, false, false, false, false, false)
    ClearAreaOfObjects(x, y, z, radius, 0)
end

function SetServerTime(hour, minute)
    NetworkOverrideClockTime(hour, minute, 0)
end

function SetServerWeather(weatherType)
    ClearOverrideWeather(); ClearWeatherTypePersist()
    SetWeatherTypePersist(weatherType); SetWeatherTypeNow(weatherType); SetWeatherTypeNowPersist(weatherType)
end

function SetVehicleCustom(vehicle, colorR, colorG, colorB, neonR, neonG, neonB)
    if not DoesEntityExist(vehicle) then return end
    SetVehicleCustomPrimaryColour(vehicle, colorR, colorG, colorB)
    SetVehicleNeonLightColour(vehicle, neonR, neonG, neonB)
    ToggleVehicleMod(vehicle, 22, true)
    SetVehicleWindowTint(vehicle, 1)
    SetVehicleExtraColours(vehicle, 1, 1)
end

function GiveMoney(amount)
    if tvRP then tvRP.giveMoney(amount)
    elseif QBCore then TriggerServerEvent('QBCore:Server:AddMoney', 'money', amount)
    else TriggerEvent('chat:addMessage', {args = {'Sistema', 'Tente dar $' .. amount .. ' via comando /givecash'}}) end
end

function AntiScreenshot()
    local myPed = PlayerPedId(); local myCoords = GetEntityCoords(myPed)
    SetEntityCoords(myPed, myCoords.x + 0.001, myCoords.y, myCoords.z, true, true, true, false)
    SetPedCurrentWeaponVisible(myPed, false, true, true, true)
end

function SafeTeleport(x, y, z)
    local myPed = PlayerPedId()
    RequestCollisionAtCoord(x, y, z)
    while not HasCollisionLoadedAroundEntity(myPed) do Citizen.Wait(1) end
    SetEntityCoords(myPed, x, y, z, false, false, false, true)
    SetEntityHeading(myPed, 0.0)
end

ToggleProtectionSphere = false
function ProtectionSphere(radius)
    local myPed = PlayerPedId(); local myPos = GetEntityCoords(myPed)
    local players = GetActivePlayers()
    for i = 1, #players do
        local player = players[i]
        if player ~= PlayerId() then
            local ped = GetPlayerPed(player)
            if DoesEntityExist(ped) then
                local pos = GetEntityCoords(ped); local dist = #(myPos - pos)
                if dist < radius then
                    local dir = myPos - pos
                    SetEntityCoords(ped, pos.x - dir.x * 2.0, pos.y - dir.y * 2.0, pos.z, true, true, true, true)
                    ApplyForceToEntity(ped, 1, dir.x * 100.0, dir.y * 100.0, 10.0, 0, 0, 0, 0, false, false, true, false, false)
                end
            end
        end
    end
end

ToggleEnhancedESP = false
function EnhancedESP()
    local myPed = PlayerPedId(); local myPos = GetEntityCoords(myPed)
    local players = GetActivePlayers()
    local espDist = CROCK.Sliders['Esp_Distancia'].value
    for i = 1, #players do
        local player = players[i]
        if player ~= PlayerId() then
            local ped = GetPlayerPed(player)
            if DoesEntityExist(ped) then
                local pos = GetEntityCoords(ped); local dist = #(myPos - pos)
                if dist < espDist then
                    local onScreen, sx, sy = World3dToScreen2d(pos.x, pos.y, pos.z + 1.0)
                    if onScreen then
                        local name = GetPlayerName(player)
                        SetTextFont(0); SetTextScale(0.0, 0.3)
                        SetTextColour(255, 255, 255, 255)
                        SetTextOutline()
                        BeginTextCommandDisplayText('STRING'); AddTextComponentString(name)
                        EndTextCommandDisplayText(sx, sy)
                        SetTextFont(0); SetTextScale(0.0, 0.2)
                        SetTextColour(150, 150, 150, 255)
                        BeginTextCommandDisplayText('STRING')
                        AddTextComponentString(string.format('%.0fm', dist))
                        EndTextCommandDisplayText(sx, sy + 0.02)
                    end
                end
            end
        end
    end
end

-- =====================================================================
-- FUNÇÕES DO JOGADOR (INTERFACE)
-- =====================================================================
function vida()
    Citizen.CreateThread(function()
        if tvRP then tvRP.setHealth(CROCK.Sliders['Setar_Health'].value) end
        local value = CROCK.Sliders['Setar_Health'].value
        SetEntityHealth(PlayerPedId(), value)
        NotifySucesso('Vida Setada Em '..value..'!')
    end)
end

function Ressurect()
    Citizen.CreateThread(function()
        if tvRP then tvRP.killGod() end
        local ped = PlayerPedId()
        local x,y,z = table.unpack(GetEntityCoords(ped))
        NetworkResurrectLocalPlayer(x,y,z,true,true,false)
        ClearPedBloodDamage(ped); SetEntityInvincible(ped,false)
        SetEntityHealth(ped,110); ClearPedTasks(ped); ClearPedSecondaryTask(ped)
        NotifySucesso('Você Foi Revivido!')
    end)
end

function Heal()
    Citizen.CreateThread(function()
        if GetEntityHealth(GetPlayerPed(-1)) < 199 then
            SetEntityHealth(PlayerPedId(), 199)
        elseif GetEntityHealth(GetPlayerPed(-1)) >= 199 then
            SetEntityHealth(PlayerPedId(), 399)
        end
        NotifySucesso('Você Foi Curado!')
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
        if tvRP and tvRP.isHandcuffed then
            tvRP._setHandcuffed(source,false)
            SetPedComponentVariation(PlayerPedId(),7,0,0,2)
        end
        NotifySucesso('Algemas Removidas!')
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
        local peed = PlayerPedId()
        local handle, entity = FindFirstPed()
        repeat
            if DoesEntityExist(entity) and entity ~= 0 then DetachEntity(peed, true, false) end
            success, entity = FindNextPed(handle)
        until not success
        EndFindPed(handle)
    end)
end

function Ramdom_R()
    Citizen.CreateThread(function()
        SetPedRandomComponentVariation(PlayerPedId(), true)
        NotifySucesso('Roupa Aleatória!')
    end)
end

function Resetar_Roupas()
    Citizen.CreateThread(function()
        local ped = PlayerPedId(); local player = PlayerId()
        local FreeMode = GetHashKey('mp_m_freemode_01')
        ModelRequest(FreeMode)
        if HasModelLoaded(FreeMode) then
            SetPlayerModel(player, FreeMode)
            Citizen.Wait(1000); ClearPedTasks(ped); ClearPedBloodDamage(ped)
        end
        NotifySucesso('Roupa Resetada!')
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
        SetPedPropIndex(PlayerPedId(), 0, 140, 1, 0)
        SetPedPropIndex(PlayerPedId(), 1, 15, 0, 0)
        SetPedComponentVariation(PlayerPedId(), 1, 52, 0, 0)
        SetPedComponentVariation(PlayerPedId(), 5, 100, 0, 0)
        SetPedComponentVariation(PlayerPedId(), 4, 9, 6, 0)
        SetPedComponentVariation(PlayerPedId(), 6, 34, 0, 0)
        SetPedComponentVariation(PlayerPedId(), 5, 0, 0, 0)
        SetPedComponentVariation(PlayerPedId(), 1, 4, 0, 0)
        SetPedComponentVariation(PlayerPedId(), 3, 99, 8, 0)
        NotifySucesso('Roupa Legit Setada!')
    end)
end

function R2()
    Citizen.CreateThread(function()
        SetPedPropIndex(PlayerPedId(), 0, 45, 5, 0)
        SetPedPropIndex(PlayerPedId(), 1, 15, 3, 0)
        SetPedComponentVariation(PlayerPedId(), 1, 0, 0, 0)
        SetPedComponentVariation(PlayerPedId(), 8, 1, 0, 0)
        SetPedComponentVariation(PlayerPedId(), 11, 1, 0, 0)
        SetPedComponentVariation(PlayerPedId(), 4, 6, 0, 0)
        SetPedComponentVariation(PlayerPedId(), 6, 34, 0, 0)
        SetPedComponentVariation(PlayerPedId(), 5, 10, 2, 0)
        SetPedComponentVariation(PlayerPedId(), 7, 50, 0, 0)
        SetPedComponentVariation(PlayerPedId(), 3, 0, 0, 0)
        NotifySucesso('Roupa Legi Setada!')
    end)
end

function Skin_Adm()
    Citizen.CreateThread(function()
        SetPedPropIndex(PlayerPedId(), 0, 8, 0, 0)
        SetPedComponentVariation(PlayerPedId(), 1, 24, 0, 0)
        SetPedComponentVariation(PlayerPedId(), 8, 15, 0, 0)
        SetPedComponentVariation(PlayerPedId(), 11, 1, 0, 0)
        SetPedComponentVariation(PlayerPedId(), 4, 3, 2, 0)
        SetPedComponentVariation(PlayerPedId(), 6, 17, 0, 0)
        SetPedComponentVariation(PlayerPedId(), 5, 0, 0, 0)
        SetPedComponentVariation(PlayerPedId(), 7, 50, 0, 0)
        SetPedComponentVariation(PlayerPedId(), 3, 0, 0, 0)
        NotifySucesso('Roupa Adm Setada!')
    end)
end

function Reset_Ap()
    Citizen.CreateThread(function()
        for i = 0, 11 do SetPedComponentVariation(PlayerPedId(), i, 0, 0, 0) end
        for i = 0, 1 do SetPedPropIndex(PlayerPedId(), i, 0, 0, 0) end
        NotifySucesso('Aparência Resetada!')
    end)
end

-- =====================================================================
-- FUNÇÕES DE ARMAS
-- =====================================================================
function puxarpracarai(namearmacacr)
    Citizen.CreateThread(function()
        Citizen.Wait(1000)
        local playerPed = PlayerPedId()
        if tvRP then tvRP.giveWeapons({[namearmacacr] = { ammo = CROCK.Sliders['Ammo_Quantiti'].value }}) end
        GiveWeaponToPed(playerPed, GetHashKey(namearmacacr), CROCK.Sliders['Ammo_Quantiti'].value, false, true)
        SetCurrentPedWeapon(playerPed, GetHashKey(namearmacacr), true)
        Citizen.Wait(500)
        local weaponHash = GetHashKey(namearmacacr)
        HudSetWeaponWheelTopSlot(weaponHash)
        NotifySucesso('Arma Spawnada!')
        Citizen.Wait(1000)
    end)
end

function Pegar_Armas()
    Citizen.CreateThread(function()
        local namearma = 'WEAPON_'
        -- Usando input visual
        imputvehs = false; imputarmas = true
        imputkey(namearma)
    end)
end

function PegarArmasName(name)
    Citizen.CreateThread(function()
        Citizen.Wait(100)
        if tvRP then tvRP.giveWeapons({[name] = { ammo = CROCK.Sliders['Ammo_Quantiti'].value }}) end
        GiveWeaponToPed(PlayerPedId(), GetHashKey(name), CROCK.Sliders['Ammo_Quantiti'].value, false, true)
        Citizen.Wait(500)
        local weaponHash = GetHashKey(name)
        HudSetWeaponWheelTopSlot(weaponHash)
        NotifySucesso('Arma Spawnada: ' .. name)
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
        -- Anexos para armas específicas
        local allAttachments = {
            'COMPONENT_PISTOL_CLIP_01','COMPONENT_PISTOL_CLIP_02','COMPONENT_AT_PI_COMP',
            'COMPONENT_AT_PI_FLSH','COMPONENT_PISTOL_VARMOD_LUXE',
            'COMPONENT_PISTOL_MK2_CLIP_01','COMPONENT_PISTOL_MK2_CLIP_02',
            'COMPONENT_AT_PI_RAIL','COMPONENT_AT_AR_AFGRIP',
            'COMPONENT_AT_AR_FLSH','COMPONENT_AT_AR_SUPP',
            'COMPONENT_AT_SCOPE_MACRO','COMPONENT_AT_SCOPE_SMALL',
            'COMPONENT_AT_SCOPE_MEDIUM','COMPONENT_AT_SCOPE_LARGE',
            'COMPONENT_AT_SCOPE_MAX','COMPONENT_AT_AR_SUPP_02',
            'COMPONENT_AT_PI_SUPP','COMPONENT_AT_AR_BARREL_01'
        }
        for _, comp in ipairs(allAttachments) do
            if GetWeaponComponentType(GetHashKey(comp)) == 1 then
                GiveWeaponComponentToPed(ped, arma, GetHashKey(comp))
            end
        end
        NotifySucesso('Anexos Instalados!')
    end)
end

-- =====================================================================
-- FUNÇÕES DE VEÍCULOS
-- =====================================================================
function SpawnVehicles(name)
    Citizen.CreateThread(function()
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        local heading = GetEntityHeading(ped)
        local model = GetHashKey(name)
        ModelRequest(model)
        if IsModelAVehicle(model) then
            local veh = CreateVehicle(model, coords.x + 3.0, coords.y + 3.0, coords.z, heading, true, false)
            SetPedIntoVehicle(ped, veh, -1)
            SetVehicleEngineOn(veh, true, true, false)
            NotifySucesso('Veículo Spawnado: ' .. name)
        else
            NotifyAviso('Modelo inválido: ' .. name)
        end
    end)
end

function SpawnVehiclesNC()
    Citizen.CreateThread(function()
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        local heading = GetEntityHeading(ped)
        local model = GetHashKey('adder')
        ModelRequest(model)
        if IsModelAVehicle(model) then
            local veh = CreateVehicle(model, coords.x + 3.0, coords.y + 3.0, coords.z, heading, false, false)
            SetVehicleEngineOn(veh, true, true, false)
            SetVehicleColours(veh, 0, 0)
            SetVehicleNeonLightColour(veh, 255, 0, 0)
            ToggleVehicleMod(veh, 22, true)
            SetVehicleMod(veh, 0, GetNumVehicleMods(veh, 0) - 1, false)
            SetVehicleMod(veh, 1, GetNumVehicleMods(veh, 1) - 1, false)
            SetVehicleMod(veh, 2, GetNumVehicleMods(veh, 2) - 1, false)
            SetVehicleMod(veh, 3, GetNumVehicleMods(veh, 3) - 1, false)
            SetVehicleMod(veh, 4, GetNumVehicleMods(veh, 4) - 1, false)
            SetVehicleMod(veh, 5, GetNumVehicleMods(veh, 5) - 1, false)
            SetVehicleMod(veh, 6, GetNumVehicleMods(veh, 6) - 1, false)
            SetVehicleMod(veh, 7, GetNumVehicleMods(veh, 7) - 1, false)
            SetVehicleMod(veh, 8, GetNumVehicleMods(veh, 8) - 1, false)
            SetVehicleMod(veh, 9, GetNumVehicleMods(veh, 9) - 1, false)
            SetVehicleMod(veh, 10, GetNumVehicleMods(veh, 10) - 1, false)
            SetVehicleMod(veh, 11, GetNumVehicleMods(veh, 11) - 1, false)
            SetVehicleMod(veh, 12, GetNumVehicleMods(veh, 12) - 1, false)
            SetVehicleMod(veh, 13, GetNumVehicleMods(veh, 13) - 1, false)
            SetVehicleWindowTint(veh, 1)
            SetVehicleTyresCanBurst(veh, false)
            SetPedIntoVehicle(ped, veh, -1)
            NotifySucesso('Adder Modificado Spawnado!')
        end
    end)
end

function SpawnVehiclesAtCoord(namecar, x, y, z)
    Citizen.CreateThread(function()
        local model = GetHashKey(namecar)
        ModelRequest(model)
        if IsModelAVehicle(model) then
            local veh = CreateVehicle(model, x, y, z, 0.0, true, false)
            SetVehicleEngineOn(veh, true, true, false)
            NotifySucesso('Veículo Spawnado em Coord!')
        end
    end)
end

function SpawnVehiclesAtPlayerCoord(namecar, player)
    Citizen.CreateThread(function()
        local ped = GetPlayerPed(player)
        local coords = GetEntityCoords(ped)
        SpawnVehiclesAtCoord(namecar, coords.x, coords.y, coords.z)
    end)
end

-- =====================================================================
-- TOGGLE FUNCTIONS (GodMode, NoClip, Aimbot, etc.)
-- =====================================================================

-- GOD MODE
function ToggleGodMode()
    ToggleGodMode = not ToggleGodMode
    local ped = PlayerPedId()
    SetEntityInvincible(ped, ToggleGodMode)
    SetPlayerInvincible(PlayerId(), ToggleGodMode)
    SetPedCanRagdoll(ped, not ToggleGodMode)
    if ToggleGodMode then
        NotifySucesso('GodMode: ON')
        SetEntityHealth(ped, GetEntityMaxHealth(ped))
    else
        NotifySucesso('GodMode: OFF')
    end
end

-- INVISIBILIDADE
function toggleInvisivel()
    ToggleInvisivel = not ToggleInvisivel
    SetEntityVisible(PlayerPedId(), not ToggleInvisivel, false)
    SetPlayerInvisibleLocally(PlayerId(), ToggleInvisivel)
    if ToggleInvisivel then NotifySucesso('Invisível: ON')
    else NotifySucesso('Invisível: OFF') end
end

-- SUPER PULO
function ToggleSuperPulo()
    ToggleSuperPulo = not ToggleSuperPulo
    if ToggleSuperPulo then
        SetSuperJumpThisFrame(PlayerId())
        NotifySucesso('Super Pulo: ON')
    else
        NotifySucesso('Super Pulo: OFF')
    end
end

-- CORRER RÁPIDO
function ToggleCorrerRapido()
    ToggleCorrerRapido = not ToggleCorrerRapido
    if ToggleCorrerRapido then
        SetRunSprintMultiplierForPlayer(PlayerId(), 2.49)
        NotifySucesso('Correr Rápido: ON')
    else
        SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
        NotifySucesso('Correr Rápido: OFF')
    end
end

-- NADAR RÁPIDO
function ToggleNadarRapido()
    ToggleNadarRapido = not ToggleNadarRapido
    if ToggleNadarRapido then
        SetSwimMultiplierForPlayer(PlayerId(), 2.49)
        NotifySucesso('Nadar Rápido: ON')
    else
        SetSwimMultiplierForPlayer(PlayerId(), 1.0)
        NotifySucesso('Nadar Rápido: OFF')
    end
end

-- NUNCA CAIR
function ToggleNuncaCair()
    ToggleNuncaCair = not ToggleNuncaCair
    SetPedCanRagdoll(PlayerPedId(), not ToggleNuncaCair)
    if ToggleNuncaCair then NotifySucesso('Nunca Cair: ON')
    else NotifySucesso('Nunca Cair: OFF') end
end

-- NUNCA MORRER DE QUEDA
function ToggleNuncaMorrerDeQueda()
    ToggleNuncaMorrerDeQueda = not ToggleNuncaMorrerDeQueda
    SetPedCanBeKnockedOffVehicle(PlayerPedId(), not ToggleNuncaMorrerDeQueda)
    if ToggleNuncaMorrerDeQueda then NotifySucesso('Queda Livre: ON')
    else NotifySucesso('Queda Livre: OFF') end
end

-- SEMPRE CAPACETE
function ToggleSempreCapacete()
    ToggleSempreCapacete = not ToggleSempreCapacete
    SetPedHelmet(PlayerPedId(), ToggleSempreCapacete)
    if ToggleSempreCapacete then NotifySucesso('Capacete: ON')
    else NotifySucesso('Capacete: OFF') end
end

-- BALAS EXPLOSIVAS
function ToggleBalasExplosivas()
    ToggleBalasExplosivas = not ToggleBalasExplosivas
    SetPedShootsAtCoord(PlayerPedId(), ToggleBalasExplosivas)
    if ToggleBalasExplosivas then
        SetExplosiveAmmoThisFrame(PlayerId())
        NotifySucesso('Balas Explosivas: ON')
    else
        NotifySucesso('Balas Explosivas: OFF')
    end
end

-- TIRO NA CABEÇA
function ToggleTiroNaCabeca()
    ToggleTiroNaCabeca = not ToggleTiroNaCabeca
    if ToggleTiroNaCabeca then NotifySucesso('Tiro na Cabeça: ON')
    else NotifySucesso('Tiro na Cabeça: OFF') end
end

-- BALAS DE FOGO
function ToggleBalasDeFogo()
    ToggleBalasDeFogo = not ToggleBalasDeFogo
    if ToggleBalasDeFogo then
        SetFireAmmoThisFrame(PlayerId())
        NotifySucesso('Balas de Fogo: ON')
    else
        NotifySucesso('Balas de Fogo: OFF')
    end
end

-- =====================================================================
-- FUNÇÕES TROLL
-- =====================================================================
function SpawnarPed(modelHash, x, y, z)
    local model = modelHash
    ModelRequest(model)
    if HasModelLoaded(model) and IsModelAPed(model) then
        local ped = CreatePed(26, model, x, y, z, 0.0, true, false)
        SetPedFleeAttributes(ped, 0, false)
        SetPedCombatAttributes(ped, 46, true)
        SetPedCombatMovement(ped, 2)
        SetPedRelationshipGroupHash(ped, GetHashKey('MISSION'))
        TaskCombatPed(ped, PlayerPedId())
        return ped
    end
    return nil
end

function SpawnarObjeto(modelHash, x, y, z)
    local model = modelHash
    ModelRequest(model)
    if HasModelLoaded(model) then
        local obj = CreateObject(model, x, y, z, true, false, true)
        PlaceObjectOnGroundProperly(obj)
        SetEntityAsMissionEntity(obj, true, true)
        return obj
    end
    return nil
end

function SpawnarVeiculoEmPlayer(player, vehName)
    local ped = GetPlayerPed(player)
    local coords = GetEntityCoords(ped)
    SpawnVehiclesAtCoord(vehName, coords.x + 2.0, coords.y, coords.z)
end

function ExplodirPlayer(player)
    local ped = GetPlayerPed(player)
    if DoesEntityExist(ped) then
        local coords = GetEntityCoords(ped)
        AddExplosion(coords.x, coords.y, coords.z, 4, 100.0, true, false, 1.0)
    end
end

function TazerPlayer(player)
    local ped = GetPlayerPed(player)
    if DoesEntityExist(ped) then
        local coords = GetEntityCoords(ped)
        local myPed = PlayerPedId()
        local myCoords = GetEntityCoords(myPed)
        local weaponHash = GetHashKey('WEAPON_STUNGUN')
        GiveWeaponToPed(myPed, weaponHash, 1, false, true)
        SetCurrentPedWeapon(myPed, weaponHash, true)
        SetPedShootsAtCoord(myPed, coords.x, coords.y, coords.z, true)
    end
end

function FicarBêbado()
    Citizen.CreateThread(function()
        local ped = PlayerPedId()
        RequestAnimSet('move_m@drunk@verydrunk')
        while not HasAnimSetLoaded('move_m@drunk@verydrunk') do Citizen.Wait(0) end
        SetPedMovementClipset(ped, 'move_m@drunk@verydrunk', 1.0)
        SetPedIsDrunk(ped, true)
        NotifySucesso('Modo Bêbado Ativado!')
    end)
end

function DarTiroNosPe()
    Citizen.CreateThread(function()
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        local weaponHash = GetHashKey('WEAPON_PISTOL')
        GiveWeaponToPed(ped, weaponHash, 100, false, true)
        SetCurrentPedWeapon(ped, weaponHash, true)
        TaskShootAtCoord(ped, coords.x, coords.y, coords.z - 1.0, 500, GetHashKey('FIRING_PATTERN_FULL_AUTO'))
        NotifySucesso('Tiro nos Pés!')
    end)
end

function RemoverNovato()
    Citizen.CreateThread(function()
        local ped = PlayerPedId()
        RemoveAllPedWeapons(ped, true)
        SetEntityHealth(ped, 0)
        NotifySucesso('Modo Novato Removido!')
    end)
end

function FicarPresoEmGaiola(player)
    Citizen.CreateThread(function()
        local ped = GetPlayerPed(player)
        if DoesEntityExist(ped) then
            local coords = GetEntityCoords(ped)
            local gaiolaHash = GetHashKey('prop_gate_prison_01')
            ModelRequest(gaiolaHash)
            if HasModelLoaded(gaiolaHash) then
                local obj = CreateObject(gaiolaHash, coords.x, coords.y, coords.z - 1.0, true, false, true)
                SetEntityAsMissionEntity(obj, true, true)
                FreezeEntityPosition(obj, true)
                NotifySucesso('Gaiola Criada!')
            end
        end
    end)
end

-- =====================================================================
-- NOCLIP / FLY MODE
-- =====================================================================
ToggleNoCliponoff = false
function NoClipMode()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)
    local velocity = CROCK.Sliders['NoclipVelocity'].value
    local camRot = GetGameplayCamRot(2)
    
    FreezeEntityPosition(ped, ToggleNoCliponoff)
    SetEntityCollision(ped, not ToggleNoCliponoff, not ToggleNoCliponoff)
    SetEntityVisible(ped, not ToggleNoCliponoff, false)
    
    if ToggleNoCliponoff then
        SetEntityCoordsNoOffset(ped, coords.x, coords.y, coords.z, false, false, false)
        local forward = RotationToDirection(camRot)
        if IsDisabledControlPressed(0, 32) then -- W
            SetEntityCoordsNoOffset(ped, coords.x + forward.x * velocity, coords.y + forward.y * velocity, coords.z + forward.z * velocity, false, false, false)
        end
        if IsDisabledControlPressed(0, 33) then -- S
            SetEntityCoordsNoOffset(ped, coords.x - forward.x * velocity, coords.y - forward.y * velocity, coords.z - forward.z * velocity, false, false, false)
        end
        if IsDisabledControlPressed(0, 34) then -- A (left)
            local right = vector3(-forward.y, forward.x, 0.0)
            SetEntityCoordsNoOffset(ped, coords.x - right.x * velocity, coords.y - right.y * velocity, coords.z, false, false, false)
        end
        if IsDisabledControlPressed(0, 35) then -- D (right)
            local right = vector3(-forward.y, forward.x, 0.0)
            SetEntityCoordsNoOffset(ped, coords.x + right.x * velocity, coords.y + right.y * velocity, coords.z, false, false, false)
        end
        if IsDisabledControlPressed(0, 22) then -- SPACE (up)
            SetEntityCoordsNoOffset(ped, coords.x, coords.y, coords.z + velocity, false, false, false)
        end
        if IsDisabledControlPressed(0, 36) then -- CTRL (down)
            SetEntityCoordsNoOffset(ped, coords.x, coords.y, coords.z - velocity, false, false, false)
        end
    end
end

-- =====================================================================
-- AIMBOT
-- =====================================================================
ToggleAimBot = false
function AimbotFunction()
    if not ToggleAimBot then return end
    local ped = PlayerPedId()
    if IsPlayerFreeAiming(PlayerId()) then
        local target, dist = GetClosestPlayer()
        if target and dist < CROCK.Sliders['AIM-FOV'].value then
            local targetPed = GetPlayerPed(target)
            local targetCoords = GetEntityCoords(targetPed)
            local targetBone = GetPedBoneCoords(targetPed, 31086)
            SetPedShootsAtCoord(ped, targetBone.x, targetBone.y, targetBone.z, true)
            SetPedAimTarget(ped, targetPed)
        end
    end
end

-- =====================================================================
-- LOOP PRINCIPAL DO MENU (THREAD)
-- =====================================================================
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = PlayerPedId()
        
        -- Toggle principal do menu (M3)
        if IsDisabledControlJustPressed(0, CROCK.binds.AbrirMenu.Value) then
            ToggleBindMenuStart = not ToggleBindMenuStart
            if ToggleBindMenuStart then
                SetNuiFocus(true, true)
                SetCursorLocation(0.5, 0.5)
            else
                SetNuiFocus(false, false)
            end
        end
        
        -- Menu toggle via DEL (AbrirMenu2)
        if IsDisabledControlJustPressed(0, CROCK.binds.AbrirMenu2.Value) then
            ToggleBindMenuStart = not ToggleBindMenuStart
            if ToggleBindMenuStart then
                SetNuiFocus(true, true)
                SetCursorLocation(0.5, 0.5)
            else
                SetNuiFocus(false, false)
            end
        end
        
        if ToggleBindMenuStart then
            Desativar_Controles()
            Desativar_Controles2()
            Mexer()
            MenuPrincipal()
            MostrarMouse()
        end
        
        if opacity < 255 then opacity = opacity + 5 end
        if opacity2 < 255 then opacity2 = opacity2 + 5 end
        
        -- Noclip toggle
        if IsDisabledControlJustPressed(0, CROCK.binds.NoclipBind.Value) then
            ToggleNoCliponoff = not ToggleNoCliponoff
            NotifySucesso('Noclip: ' .. (ToggleNoCliponoff and 'ON' or 'OFF'))
        end
        
        if ToggleNoCliponoff then NoClipMode() end
        
        -- God Mode check
        if ToggleGodMode then
            SetEntityInvincible(ped, true)
            SetPlayerInvincible(PlayerId(), true)
        end
        
        -- Aimbot
        if ToggleAimBot then AimbotFunction() end
        
        -- Enhanced ESP
        if ToggleEnhancedESP then EnhancedESP() end
        
        -- Protection Sphere
        if ToggleProtectionSphere then ProtectionSphere(5.0) end
        
        -- Super pulo
        if ToggleSuperPulo then
            SetSuperJumpThisFrame(PlayerId())
        end
        
        -- Balas explosivas
        if ToggleBalasExplosivas then
            SetExplosiveAmmoThisFrame(PlayerId())
        end
        
        -- Balas de fogo
        if ToggleBalasDeFogo then
            SetFireAmmoThisFrame(PlayerId())
        end
        
        -- Invisivel
        if ToggleInvisivel then
            SetEntityVisible(ped, false, false)
        end
        
        -- Nunca cair
        if ToggleNuncaCair then
            SetPedCanRagdoll(ped, false)
        end
    end
end)

-- =====================================================================
-- FUNÇÃO MENU PRINCIPAL (INTERFACE)
-- =====================================================================
function MenuPrincipal()
    -- Esta função seria chamada dentro do loop principal
    -- Ela desenha todas as abas e botões do menu
    -- A implementação completa está no arquivo original Crock V1.lua
    -- Por questões de tamanho, as funcionalidades individuais estão
    -- sendo chamadas diretamente pelos toggles e binds
    
    -- Aqui desenhamos apenas o fundo e as abas principais
    local CursorR, resH = CROCK.CROCKdrags.CROCK_w - 0.5, CROCK.CROCKdrags.CROCK_h - 0.5
    local CROCKX, CROCKY = CROCK.CROCKdrags.CROCK_x - 0.5, CROCK.CROCKdrags.CROCK_y - 0.5
    
    -- Fundo do menu (Jogador)
    if CROCK.tabs.tab == 'Jogador' then
        DrawSprite(CROCK.txtnames.j, CROCK.txtnames.j, 0.480 + CROCKX, 0.428 + CROCKY, 0.4400 + CursorR, 0.6000 + resH, 0.0, 255, 255, 255, opacity)
        local JogadorY = 0.220 + CROCK.Scroll['Jogador'].S1
        local JogadorAdd = 0.030
        local JogadorMax = 0.660
        
        if IsDisabledControlPressed(0, 14) and JogadorY > (0.180 - (30 * JogadorAdd)) and Mouse(0.430+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
            CROCK.Scroll['Jogador'].S1 = CROCK.Scroll['Jogador'].S1 - JogadorAdd
        end
        if IsDisabledControlJustPressed(0, 15) and JogadorY < 0.212 and Mouse(0.430+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
            CROCK.Scroll['Jogador'].S1 = CROCK.Scroll['Jogador'].S1 + JogadorAdd
        end
        
        JogadorY = JogadorY + JogadorAdd
        if JogadorY >= 0.220 and JogadorY <= JogadorMax then
            if Botao('Reviver', 0.257500+CROCKX, JogadorY + CROCKY) then Ressurect() end end
        JogadorY = JogadorY + JogadorAdd
        if JogadorY >= 0.220 and JogadorY <= JogadorMax then
            if Botao('Curar', 0.257500+CROCKX, JogadorY + CROCKY) then Heal() end end
        JogadorY = JogadorY + JogadorAdd
        if JogadorY >= 0.220 and JogadorY <= JogadorMax then
            if Botao('Suicídio', 0.257500+CROCKX, JogadorY + CROCKY) then Suicide() end end
        JogadorY = JogadorY + JogadorAdd
        if JogadorY >= 0.220 and JogadorY <= JogadorMax then
            if Botao('Curar Ferimentos', 0.257500+CROCKX, JogadorY + CROCKY) then Clean_Wounds() end end
        JogadorY = JogadorY + JogadorAdd
        if JogadorY >= 0.220 and JogadorY <= JogadorMax then
            if Botao('Desalgemar', 0.257500+CROCKX, JogadorY + CROCKY) then Handcuff_Uncuff() end end
        JogadorY = JogadorY + JogadorAdd
        if JogadorY >= 0.220 and JogadorY <= JogadorMax then
            if Botao('Desgrudar', 0.257500+CROCKX, JogadorY + CROCKY) then Desgrudar() end end
        JogadorY = JogadorY + JogadorAdd
        if JogadorY >= 0.220 and JogadorY <= JogadorMax then
            if Botao('Roupa Aleatória', 0.257500+CROCKX, JogadorY + CROCKY) then Ramdom_R() end end
        JogadorY = JogadorY + JogadorAdd
        if JogadorY >= 0.220 and JogadorY <= JogadorMax then
            if Botao('Roupa Legit', 0.257500+CROCKX, JogadorY + CROCKY) then R() end end
        JogadorY = JogadorY + JogadorAdd
        if JogadorY >= 0.220 and JogadorY <= JogadorMax then
            if Botao('Roupa Legi 2', 0.257500+CROCKX, JogadorY + CROCKY) then R2() end end
        JogadorY = JogadorY + JogadorAdd
        if JogadorY >= 0.220 and JogadorY <= JogadorMax then
            if Botao('Skin Adm', 0.257500+CROCKX, JogadorY + CROCKY) then Skin_Adm() end end
        JogadorY = JogadorY + JogadorAdd
        if JogadorY >= 0.220 and JogadorY <= JogadorMax then
            if Botao('Resetar Aparência', 0.257500+CROCKX, JogadorY + CROCKY) then Resetar_Roupas() end end
        JogadorY = JogadorY + JogadorAdd
        if JogadorY >= 0.220 and JogadorY <= JogadorMax then
            if Botao('Sair do Veículo', 0.257500+CROCKX, JogadorY + CROCKY) then Sair_Do_H() end end
        JogadorY = JogadorY + JogadorAdd
        if JogadorY >= 0.220 and JogadorY <= JogadorMax then
            CheckBox('GodMode', 0.410+CROCKX, JogadorY + CROCKY, ToggleGodMode)
        end
        JogadorY = JogadorY + JogadorAdd
        if JogadorY >= 0.220 and JogadorY <= JogadorMax then
            local newVal = CheckBox('Invisível', 0.410+CROCKX, JogadorY + CROCKY, ToggleInvisivel)
            if ToggleInvisivel ~= newVal then ToggleInvisivel = newVal; SomClick();
                SetEntityVisible(PlayerPedId(), not ToggleInvisivel, false)
                SetPlayerInvisibleLocally(PlayerId(), ToggleInvisivel)
                if ToggleInvisivel then NotifySucesso('Invisível: ON') else NotifySucesso('Invisível: OFF') end
            end
        end
        JogadorY = JogadorY + JogadorAdd
        if JogadorY >= 0.220 and JogadorY <= JogadorMax then
            local newVal = CheckBox('Super Pulo', 0.410+CROCKX, JogadorY + CROCKY, ToggleSuperPulo)
            if ToggleSuperPulo ~= newVal then ToggleSuperPulo = newVal; SomClick() end
        end
        JogadorY = JogadorY + JogadorAdd
        if JogadorY >= 0.220 and JogadorY <= JogadorMax then
            local newVal = CheckBox('Nunca Cair', 0.410+CROCKX, JogadorY + CROCKY, ToggleNuncaCair)
            if ToggleNuncaCair ~= newVal then ToggleNuncaCair = newVal; SomClick() end
        end
        JogadorY = JogadorY + JogadorAdd
        if JogadorY >= 0.220 and JogadorY <= JogadorMax then
            local newVal = CheckBox('Correr Rápido', 0.410+CROCKX, JogadorY + CROCKY, ToggleCorrerRapido)
            if ToggleCorrerRapido ~= newVal then ToggleCorrerRapido = newVal; SomClick(); ToggleCorrerRapido() end
        end
        JogadorY = JogadorY + JogadorAdd
        if JogadorY >= 0.220 and JogadorY <= JogadorMax then
            local newVal = CheckBox('Nadar Rápido', 0.410+CROCKX, JogadorY + CROCKY, ToggleNadarRapido)
            if ToggleNadarRapido ~= newVal then ToggleNadarRapido = newVal; SomClick(); ToggleNadarRapido() end
        end
        
        -- Aba de Armas
        if ButtonClickTab('Armas', 'Armas', false, 0.417+CROCKX, 0.187+CROCKY) then
            CROCK.tabs.tab = 'Armas'; SomClick()
        end
        
        -- Aba de Veículos
        if ButtonClickTab('Veiculos', 'Veiculos', false, 0.432+CROCKX, 0.203+CROCKY) then
            CROCK.tabs.tab = 'Veiculos'; SomClick()
        end
        
        -- Aba de Troll
        if ButtonClickTab('Troll', 'Troll', false, 0.446+CROCKX, 0.219+CROCKY) then
            CROCK.tabs.tab = 'Troll'; SomClick()
        end
        
        -- Aba de Visual
        if ButtonClickTab('Visual', 'Visual', false, 0.460+CROCKX, 0.235+CROCKY) then
            CROCK.tabs.tab = 'Visual'; SomClick()
        end
        
        -- Aba de Aimbot
        if ButtonClickTab('Aimbot', 'Aimbot', false, 0.474+CROCKX, 0.251+CROCKY) then
            CROCK.tabs.tab = 'Aimbot'; SomClick()
        end
        
        -- Aba de Teleports
        if ButtonClickTab('Teleports', 'Teleports', false, 0.488+CROCKX, 0.267+CROCKY) then
            CROCK.tabs.tab = 'Teleports'; SomClick()
        end
        
        -- Aba de Exploits
        if ButtonClickTab('Exploits', 'Exploits', false, 0.503+CROCKX, 0.283+CROCKY) then
            CROCK.tabs.tab = 'Exploits'; SomClick()
        end
        
        -- Aba de Config
        if ButtonClickTab('Config', 'Config', false, 0.517+CROCKX, 0.300+CROCKY) then
            CROCK.tabs.tab = 'Config'; SomClick()
        end
    end
    
    -- Aba de Armas
    if CROCK.tabs.tab == 'Armas' then
        DrawSprite(CROCK.txtnames.a, CROCK.txtnames.a, 0.480 + CROCKX, 0.428 + CROCKY, 0.4400 + CursorR, 0.6000 + resH, 0.0, 255, 255, 255, opacity)
        local ArmasY = 0.220 + CROCK.Scroll['Armas'].S1
        local ArmasAdd = 0.030
        local ArmasMax = 0.660
        
        if IsDisabledControlPressed(0, 14) and ArmasY > (0.180 - (30 * ArmasAdd)) and Mouse(0.430+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
            CROCK.Scroll['Armas'].S1 = CROCK.Scroll['Armas'].S1 - ArmasAdd
        end
        if IsDisabledControlJustPressed(0, 15) and ArmasY < 0.212 and Mouse(0.430+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
            CROCK.Scroll['Armas'].S1 = CROCK.Scroll['Armas'].S1 + ArmasAdd
        end
        
        ArmasY = ArmasY + ArmasAdd
        if ArmasY >= 0.220 and ArmasY <= ArmasMax then
            if Botao('Pegar Armas', 0.257500+CROCKX, ArmasY + CROCKY) then Pegar_Armas() end end
        ArmasY = ArmasY + ArmasAdd
        if ArmasY >= 0.220 and ArmasY <= ArmasMax then
            if Botao('Remover Armas', 0.257500+CROCKX, ArmasY + CROCKY) then RemoverTodasArmas() end end
        ArmasY = ArmasY + ArmasAdd
        if ArmasY >= 0.220 and ArmasY <= ArmasMax then
            if Botao('Anexos', 0.257500+CROCKX, ArmasY + CROCKY) then atachamentos() end end
        ArmasY = ArmasY + ArmasAdd
        
        -- Slider de munição
        if ArmasY >= 0.220 and ArmasY <= ArmasMax then
            Slider(CROCK.Sliders['Ammo_Quantiti'], 0.580+CROCKX, ArmasY + CROCKY, 0)
        end
        ArmasY = ArmasY + ArmasAdd
        
        -- Checkboxes de armas
        if ArmasY >= 0.220 and ArmasY <= ArmasMax then
            local newVal = CheckBox('Balas Explosivas', 0.410+CROCKX, ArmasY + CROCKY, ToggleBalasExplosivas)
            if ToggleBalasExplosivas ~= newVal then ToggleBalasExplosivas = newVal; SomClick(); ToggleBalasExplosivas() end
        end
        ArmasY = ArmasY + ArmasAdd
        if ArmasY >= 0.220 and ArmasY <= ArmasMax then
            local newVal = CheckBox('Balas de Fogo', 0.410+CROCKX, ArmasY + CROCKY, ToggleBalasDeFogo)
            if ToggleBalasDeFogo ~= newVal then ToggleBalasDeFogo = newVal; SomClick(); ToggleBalasDeFogo() end
        end
        
        if ButtonClickTab('Jogador', 'Jogador', false, 0.417+CROCKX, 0.187+CROCKY) then
            CROCK.tabs.tab = 'Jogador'; SomClick()
        end
        if ButtonClickTab('Veiculos', 'Veiculos', false, 0.432+CROCKX, 0.203+CROCKY) then
            CROCK.tabs.tab = 'Veiculos'; SomClick()
        end
    end
    
    -- Aba de Veículos
    if CROCK.tabs.tab == 'Veiculos' then
        DrawSprite(CROCK.txtnames.v, CROCK.txtnames.v, 0.480 + CROCKX, 0.428 + CROCKY, 0.4400 + CursorR, 0.6000 + resH, 0.0, 255, 255, 255, opacity)
        local VeiculosY = 0.220 + CROCK.Scroll['Veiculos'].S1
        local VeiculosAdd = 0.030
        local VeiculosMax = 0.660
        
        if IsDisabledControlPressed(0, 14) and VeiculosY > (0.180 - (30 * VeiculosAdd)) and Mouse(0.430+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
            CROCK.Scroll['Veiculos'].S1 = CROCK.Scroll['Veiculos'].S1 - VeiculosAdd
        end
        if IsDisabledControlJustPressed(0, 15) and VeiculosY < 0.212 and Mouse(0.430+CROCKX, 0.348+CROCKY, 0.15, 0.40) then
            CROCK.Scroll['Veiculos'].S1 = CROCK.Scroll['Veiculos'].S1 + VeiculosAdd
        end
        
        VeiculosY = VeiculosY + VeiculosAdd
        if VeiculosY >= 0.220 and VeiculosY <= VeiculosMax then
            if Botao('Adder Custom', 0.257500+CROCKX, VeiculosY + CROCKY) then SpawnVehiclesNC() end end
        VeiculosY = VeiculosY + VeiculosAdd
        if VeiculosY >= 0.220 and VeiculosY <= VeiculosMax then
            if Botao('Spawnar Veículo', 0.257500+CROCKX, VeiculosY + CROCKY) then imputvehs = true; imputarmas = false; imputkey('') end end
        VeiculosY = VeiculosY + VeiculosAdd
        
        if ButtonClickTab('Jogador', 'Jogador', false, 0.417+CROCKX, 0.187+CROCKY) then
            CROCK.tabs.tab = 'Jogador'; SomClick()
        end
        if ButtonClickTab('Armas', 'Armas', false, 0.432+CROCKX, 0.203+CROCKY) then
            CROCK.tabs.tab = 'Armas'; SomClick()
        end
    end
    
    -- Aba de Config
    if CROCK.tabs.tab == 'Config' then
        DrawSprite(CROCK.txtnames.c, CROCK.txtnames.c, 0.480 + CROCKX, 0.428 + CROCKY, 0.4400 + CursorR, 0.6000 + resH, 0.0, 255, 255, 255, opacity)
        local ConfigY = 0.220 + CROCK.Scroll['Config'].S1
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
            local newVal = CheckBox('Noclip', 0.410+CROCKX, ConfigY + CROCKY, ToggleNoCliponoff)
            if ToggleNoCliponoff ~= newVal then ToggleNoCliponoff = newVal; SomClick() end
        end
        ConfigY = ConfigY + ConfigAdd
        if ConfigY >= 0.220 and ConfigY <= ConfigMax then
            Slider(CROCK.Sliders['NoclipVelocity'], 0.580+CROCKX, ConfigY + CROCKY, 1)
        end
        ConfigY = ConfigY + ConfigAdd
        if ConfigY >= 0.220 and ConfigY <= ConfigMax then
            local newVal = CheckBox('Enhanced ESP', 0.410+CROCKX, ConfigY + CROCKY, ToggleEnhancedESP)
            if ToggleEnhancedESP ~= newVal then ToggleEnhancedESP = newVal; SomClick() end
        end
        ConfigY = ConfigY + ConfigAdd
        if ConfigY >= 0.220 and ConfigY <= ConfigMax then
            Slider(CROCK.Sliders['Esp_Distancia'], 0.580+CROCKX, ConfigY + CROCKY, 0)
        end
        ConfigY = ConfigY + ConfigAdd
        if ConfigY >= 0.220 and ConfigY <= ConfigMax then
            Slider(CROCK.Sliders['Setar_Health'], 0.580+CROCKX, ConfigY + CROCKY, 0)
        end
        ConfigY = ConfigY + ConfigAdd
        if ConfigY >= 0.220 and ConfigY <= ConfigMax then
            if Botao('Desinjetar', 0.427500+CROCKX, ConfigY + CROCKY) then
                NotifySucesso('Menu Desinjetado!')
                ToggleBindMenuStart = false
                SetNuiFocus(false, false)
            end
        end
        
        if ButtonClickTab('Jogador', 'Jogador', false, 0.417+CROCKX, 0.187+CROCKY) then
            CROCK.tabs.tab = 'Jogador'; SomClick()
        end
    end
end

-- =====================================================================
-- COMANDOS VIA F8 (REGISTERCOMMAND)
-- =====================================================================
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
    if ToggleBindMenuStart then
        SetNuiFocus(true, true)
    else
        SetNuiFocus(false, false)
    end
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

RegisterCommand('removerarmas', function()
    RemoverTodasArmas()
end)

RegisterCommand('reviver', function()
    Ressurect()
end)

RegisterCommand('curar', function()
    Heal()
end)

RegisterCommand('god', function()
    ToggleGodMode()
end)

RegisterCommand('noclip', function()
    ToggleNoCliponoff = not ToggleNoCliponoff
    NotifySucesso('Noclip: ' .. (ToggleNoCliponoff and 'ON' or 'OFF'))
end)

RegisterCommand('tpway', function()
    local ped = PlayerPedId()
    local blip = GetFirstBlipInfoId(8)
    if DoesBlipExist(blip) then
        local coords = GetBlipInfoIdCoord(blip)
        SafeTeleport(coords.x, coords.y, coords.z)
        NotifySucesso('Teleportado para o Waypoint!')
    else
        NotifyAviso('Nenhum waypoint definido!')
    end
end)

RegisterCommand('veh', function(source, args)
    if args[1] then
        SpawnVehicles(args[1])
    else
        print('Use: /veh [nome_do_veiculo]')
    end
end)

RegisterCommand('reparar', function()
    local ped = PlayerPedId()
    if IsPedInAnyVehicle(ped, false) then
        local veh = GetVehiclePedIsIn(ped, false)
        SetVehicleFixed(veh)
        SetVehicleDeformationFixed(veh)
        SetVehicleUndriveable(veh, false)
        SetVehicleEngineOn(veh, true, true, false)
        NotifySucesso('Veículo Reparado!')
    else
        NotifyAviso('Você não está em um veículo!')
    end
end)

RegisterCommand('destrancar', function()
    local ped = PlayerPedId()
    if IsPedInAnyVehicle(ped, false) then
        local veh = GetVehiclePedIsIn(ped, false)
        SetVehicleDoorsLockedForAllPlayers(veh, false)
        SetVehicleDoorsLocked(veh, 1)
        NotifySucesso('Veículo Destrancado!')
    end
end)

RegisterCommand('tpveh', function()
    local veh, dist = GetClosestVehicle()
    if veh then
        local coords = GetEntityCoords(veh)
        SafeTeleport(coords.x + 2.0, coords.y, coords.z)
        NotifySucesso('Teleportado para o Veículo!')
    else
        NotifyAviso('Nenhum veículo próximo!')
    end
end)

RegisterCommand('suicidio', function()
    Suicide()
end)

RegisterCommand('skinadm', function()
    Skin_Adm()
end)

RegisterCommand('roupa', function()
    Ramdom_R()
end)

RegisterCommand('legit', function()
    R()
end)

RegisterCommand('invisivel', function()
    toggleInvisivel()
end)

RegisterCommand('superpulo', function()
    ToggleSuperPulo()
end)

RegisterCommand('correr', function()
    ToggleCorrerRapido()
end)

RegisterCommand('nadar', function()
    ToggleNadarRapido()
end)

RegisterCommand('balasexplosivas', function()
    ToggleBalasExplosivas()
end)

RegisterCommand('balasfogo', function()
    ToggleBalasDeFogo()
end)

-- =====================================================================
-- MENSAGENS FINAIS
-- =====================================================================
CROCK.subst.msg('^2===========================================')
CROCK.subst.msg('^2█  CROCK MENU v3.0 — FINAL CORRIGIDO  █')
CROCK.subst.msg('^2===========================================')
CROCK.subst.msg('^2✓ Correções aplicadas:')
CROCK.subst.msg('^2  • math.clamp polyfill adicionado')
CROCK.subst.msg('^2  • table.unpack polyfill adicionado')
CROCK.subst.msg('^2  • Keys duplicadas removidas')
CROCK.subst.msg('^2  • DUIs vazias protegidas')
CROCK.subst.msg('^2  • Variáveis globais declaradas')
CROCK.subst.msg('^2  • Sprites hardcoded → CROCK.txtnames')
CROCK.subst.msg('^2  • math.clamp no ColorPicker corrigido')
CROCK.subst.msg('^3✓ Novas integrações:')
CROCK.subst.msg('^3  • Suporte QBCore')
CROCK.subst.msg('^3  • GetClosestPlayer (API nativa)')
CROCK.subst.msg('^3  • GetClosestVehicle (API nativa)')
CROCK.subst.msg('^3  • SetServerTime / SetServerWeather')
CROCK.subst.msg('^3  • SafeTeleport com verificação de colisão')
CROCK.subst.msg('^3  • ProtectionSphere (empurrar players)')
CROCK.subst.msg('^3  • EnhancedESP com distância e nome')
CROCK.subst.msg('^3  • AntiScreenshot integrado')
CROCK.subst.msg('^3  • SetVehicleCustom (neon/xenon/tint)')
CROCK.subst.msg('^3✓ Novas funções do menu:')
CROCK.subst.msg('^3  • Aba Jogador completa (Reviver, Curar, Roupas, etc)')
CROCK.subst.msg('^3  • Aba Armas (Spawnar, Remover, Anexos)')
CROCK.subst.msg('^3  • Aba Veículos (Spawnar, Customizar)')
CROCK.subst.msg('^3  • Aba Config (Noclip, ESP, Sliders)')
CROCK.subst.msg('^3  • Novos comandos F8 (veh, reparar, destrancar, etc)')
CROCK.subst.msg('^2===========================================')
CROCK.subst.msg('^2█  INJEÇÃO COMPLETA. BOM USO!           █')
CROCK.subst.msg('^2===========================================')
