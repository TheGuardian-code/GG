gg.toast('Aplicando ...')
--################ PARCHES RAPIDOS ##################
-------- 📌 TUBOS --------
--tgpr(0x2EC384, true)  --bool get_Completed()
-------- 📌 JUGUETES --------
tgpr(0x34D7EC, false)  --SetTime()
tgpr(0x4EFAB0, true)  --bool WantToSpawnPrize()
-------- 📌 TAXI --------
tgpr(0x45583C, true)  --bool WantToSpawnPrize()
tgpr(0x53BA5C, false)  --void ChangeHealth(float changeValue)
-------- 📌 SCIENCE --------
tgpr(0x351A40, false)  --undoRewardPlayer()
tgpr(0x32F880, true)  --bool CanReciveFrom
tgpr(0x32EE74, true)  --bool CheckCapacity
-------- 📌 PINTBALL --------
tgpr(0x31536C, false)  --PlayerOnDied()
tgpr(0x4E36D4, false)  --BallOnHitOnEnemy
-------- 📌 CARAMELO --------
tgpr(0x3021D4, false)  --set_movesLimit(int value)
tgpr(0x30EEE0, false)  --sendDataDead()
-------- 📌 SKATE --------
tgpr(0x4C3F7C, false)  -- HandlePlayerDied
tgpr(0x4E55C0, false)  -- PlayerDied
tgpr(0x459E3C, true)  -- WantToSpawnPrize
-------- 📌 SKIN VIP --------
tgpr(0x435540, true)  --bool isVIP()
-------- 📌 ADS ----------
tgpr(0x4010B8, false)  --DisplayGameFullAd()
tgpr(0x400F84, false)  --DisplayMenuFullAd()
tgpr(0x40133C, false)  --DisplayMenuSmallAd()
tgpr(0x401208, false)  --DisplayPostPrizesFullAd()
-------- 📌 COMIDA RAPIDA --------
tgpr(0x4A19EC, false)  --LoseLife()
tgpr(0x4A1FCC, true)  --bool HasLives()
-------- 📌 CHEF --------
tgpr(0x457B48, true)  --bool WantToSpawnPrize()
tgpr(0x3AFA68, false)  --OnTriggerEnter(Collider collision)
tgpr(0x389EA4, false)  --OnPointerUp(PointerEventData eventData)
--################ PARCHES RAPIDOS ##################

--------📌 TUBOS --------

tgb.callAnotherMethod({
  { ['libName'] = LibNam,
    ['targetOffset'] = 0x3098E8,  --sendDataDead()
    ['destinationOffset'] = 0x309A84,  --GoToAwardsScreen(int win)
    ['parameters'] ={ { "int", 1}}, 
    ['libIndex'] = 1
  }
})
tgb.hijackParameters({
  { ['libName'] = LibNam,
    ['offset'] = 0x2E4E5C,  --LevelManager.<SubstractTime>
    ['parameters'] ={ { "int", 4}}, 
    ['libIndex'] = 1
  }
})

-------- 📌 JUGUETES --------

tgb.callAnotherMethod({
  { ['libName'] = LibNam,
    ['targetOffset'] = 0x34F0A8,  --sendDataDead()
    ['destinationOffset'] = 0x34F244,  --GoToAwardsScreen(int win)
    ['parameters'] ={ { "int", 1}}, 
    ['libIndex'] = 1
  }
})
tgb.voidHook({
  { ['libName'] = LibNam,
    ['targetOffset'] = 0x34D8AC,  --void SpawnObjects()
    ['destinationOffset'] = 0x34DC28, --void PowerUp()
    ['parameters'] ={ {"int", 0} }, 
    ['repeat'] = 1,
    ['libIndex'] = 1
  }
})

-------- 📌 TAXI --------

tgb.callAnotherMethod({
  { ['libName'] = LibNam,
    ['targetOffset'] = 0x53FB08,  --sendDataDead()
    ['destinationOffset'] = 0x53FCA4, --void GoToAwardsScreen(int win)
    ['parameters'] ={ {"int", 1} }, 
    ['repeat'] = 1,
    ['libIndex'] = 1
  }
})

-------- 📌 SCIENCE --------

tgb.returnValue({
  { ['libName'] = LibNam,
    ['offset'] = 0x351328,  --float SetLevelTime()
    ['valueType'] = "float",
    ['value'] = 2000.0,
    ['libIndex'] = 1
  }
})
tgb.callAnotherMethod({
  { ['libName'] = LibNam,
    ['targetOffset'] = 0x3522D8,  --sendDataDead()
    ['destinationOffset'] = 0x352474, --void GoToAwardsScreen(int win)
    ['parameters'] ={ {"int", 1} }, 
    ['repeat'] = 1,
    ['libIndex'] = 1
  }
})

-------- 📌 PINTBALL --------

tgb.hijackParameters({
  { ['libName'] = LibNam,
    ['offset'] = 0x3019EC,  --Create(int count)
    ['parameters'] ={ { "int", 1}}, 
    ['libIndex'] = 1
  }
})
tgb.callAnotherMethod({
  { ['libName'] = LibNam,
    ['targetOffset'] = 0x3159C8,  --sendDataDead()
    ['destinationOffset'] = 0x315B64, --GoToAwardsScreen(int win)
    ['parameters'] ={ {"int", 1} }, 
    ['repeat'] = 1,
    ['libIndex'] = 1
  }
})
tgb.voidHook({
  { ['libName'] = LibNam,
    ['targetOffset'] = 0x426D4C,  --IEnumerator Activate()
    ['destinationOffset'] = 0x4269B0, --WheelOnCompleted()
    ['parameters'] ={ {"int", 0} }, 
    ['repeat'] = 1,
    ['libIndex'] = 1
  }
})

-------- 📌 CARAMELO --------

-------- 📌 COMIDA RAPIDA --------

tgb.callAnotherMethod({
  { ['libName'] = LibNam,
    ['targetOffset'] = 0x4A1718,  --sendDataDead()
    ['destinationOffset'] = 0x4A1FE0, --void GoToAwardsScreen(int win)
    ['parameters'] ={ {"int", 1} }, 
    ['repeat'] = 1,
    ['libIndex'] = 1
  }
})

-------- 📌 CHEF --------

tgb.callAnotherMethod({
  { ['libName'] = LibNam,
    ['targetOffset'] = 0x35500C,  --sendDataDead()
    ['destinationOffset'] = 0x3551A8, --void GoToAwardsScreen(int win)
    ['parameters'] ={ {"int", 1} }, 
    ['repeat'] = 1,
    ['libIndex'] = 1
  }
})

-------- 📌 SKATE --------

tgb.hijackParameters({
  { ['libName'] = LibNam,
    ['offset'] = 0x4E27D4,  --SetPlatformSize
    ['parameters'] ={ { "int", 0}}, 
    ['libIndex'] = 1
  },
  { ['libName'] = LibNam,
    ['offset'] = 0x4E27BC,  --SetPlatformCreationType
    ['parameters'] ={ { "int", 2}}, 
    ['libIndex'] = 1
  },
  { ['libName'] = LibNam,
    ['offset'] = 0x4E60E0,  --SetPlayerMovementSpeed
    ['parameters'] ={ { "float", 5.3}}, 
    ['libIndex'] = 1
  }
})
tgb.callAnotherMethod({
  { ['libName'] = LibNam,
    ['targetOffset'] = 0x4C492C,  --sendDataDead()
    ['destinationOffset'] = 0x4C4BB4, --void GoToAwardsScreen(int win)
    ['parameters'] ={ {"int", 1} }, 
    ['repeat'] = 1,
    ['libIndex'] = 1
  },
  { ['libName'] = LibNam,
    ['targetOffset'] = 0x4C3F7C,  --HandlePlayerDied()
    ['destinationOffset'] = 0x4C37D4, --CompletedLevel
    ['parameters'] ={ {"int", 0} }, 
    ['repeat'] = 1,
    ['libIndex'] = 1
  }
})

-------- 📌 SKIN VIP --------

local rstatus = '🚫 Deasactivado'

function help()
    local menu = gg.choice({'🐍 Planeta Tubos 💧',   --1
                            '🐩 Planeta Juguetes ⚽',    --2
                            '🚖 Planeta Taxi 🚕',    --3
                            '🎨 Planeta Paintball 🔫',   --4
                            '🔬 Planeta Científico 👩‍🔬',    --5
                            '🎿 Planeta Skate 🏂',   --6
                            '🌮 Planeta Comida Rápida 🍔', --7
                            '🍱 Planeta Chef 👨‍🍳',  --8
                            '🍭 Planeta Caramelo 🍬',    --9
                            '⛔ Desactivar Restriccion de Recarga 💵'   --10
                            }, nil, '📢 Parche restricción de recarga se tiene que activar manualmente.')
    if menu == 1 then
        gg.alert('ℹ️ En Planeta Tubos se ha detenido el tiempo, si sales del juego antes de terminarlo ganarás solo una llave y monedas.')
    elseif menu == 2 then
        gg.alert('ℹ️ En planeta juguetes tienes tiempo infinito, activa el poder de bitel sino puedes mover los juguetes y si deseas ganar rapido solo as click en el boton regresar (boton amarillo esquina superior izquierda) y magicamente habras ganado el juego 🎉.\n📌 Nota: Si tocas el boton antes de conseguir un premio solo ganaras una llave y monedas.')
    elseif menu == 3 then
        gg.alert('ℹ️ En planeta taxi eres imortal 💪, y si deseas ganar rapido solo as click en el boton regresar (boton amarillo esquina superior izquierda) y magicamente habras ganado el juego 🏆.\n📌 Nota: Si tocas el boton antes de conseguir un premio solo ganaras una llave y monedas.')
    elseif menu == 4 then
        gg.alert('ℹ️ Planeta Paintball hay una sola rueda 😺, para ganar inmediatamente toca el boton regresar (boton amarillo esquina superior izquierda).\n📌 Nota: Si tocas el boton antes de conseguir un premio solo ganaras una llave y monedas.')
    elseif menu == 5 then
        gg.alert('ℹ️ En planeta Científico tienes tiempo ilimitado, puedes mesclar colores diferentes en cualquier tubo y si deseas ganar rapido solo as click en el boton regresar (boton amarillo esquina superior izquierda) y magicamente habras ganado el juego 🎉.\n📌 Nota: Si tocas el boton antes de conseguir un premio solo ganaras una llave y monedas.')
    elseif menu == 6 then
        gg.alert('ℹ️ En planeta Skate se reduce la velocidad de moviniento, gana con solo dos movimientos, distancia reducida al mínimo, para ganar inmediatamente solo dejate caer o toca el boton regresar (boton amarillo esquina superior izquierda).\n📌 Nota: Si tocas el boton o caes antes de conseguir un premio solo ganaras una llave y monedas.')
    elseif menu == 7 then
        gg.alert('ℹ️ En Planeta Comida Rápida tienes vida infinita ♾️, para ganar inmediatamente toca el boton regresar (boton amarillo esquina superior izquierda).\n📌 Nota: Si tocas el boton antes de conseguir un premio solo ganaras una llave y monedas.')
    elseif menu == 8 then
        gg.alert('ℹ️ En Planeta Chef eres inmortal y haciendo el primer movimiento el juego se completará solo automáticamente, gana Rápido tocando el boton regresar (boton amarillo esquina superior izquierda).\n📌 Nota: Si tocas el boton antes de conseguir un premio solo ganaras una llave y monedas.')
    elseif menu == 9 then
        gg.alert('ℹ️ En Planeta Caramelo tienes movimientos infinitos ♾️, si deseas ganar rápido abre el menú de trucos.\n📌 Nota: Si tocas el boton del truco sin antes avanzar algo o conseguir un premio es posible que solo ganes una llave y monedas.')
    elseif menu == 10 then
        local restri = gg.choice({'▶️ DESACTIVAR PARA JUEGOS', '▶️ DESACTIVAR PARA PUERTAS'},nil,'ℹ️ Este menu permite desactivar la restriccion de recarga obligatoria de S/.10 cada mes para poder jugar.\n\n✴️ ESTADO : ' .. rstatus)
        if restri == 1 then
            tgb.callAnotherMethod({
              { ['libName'] = LibNam,
                ['targetOffset'] = 0x4BB6D4,  --getUserCustomerCheckAccess(int nextScreen)
                ['destinationOffset'] = 0x4BB954, --openGameAfterCheck()
                ['parameters'] ={ {"int", 0} }, 
                ['repeat'] = 1,
                ['libIndex'] = 1
              }
            })
            rstatus = '⛔ Deasactivado para Juegos'
            gg.toast(rstatus)
        elseif restri == 2 then
            tgb.callAnotherMethod({
              { ['libName'] = LibNam,
                ['targetOffset'] = 0x4BB6D4,  --getUserCustomerCheckAccess(int nextScreen)
                ['destinationOffset'] = 0x4BC190, --openDoorsScreenAfterCheck()
                ['parameters'] ={ {"int", 0} }, 
                ['repeat'] = 1,
                ['libIndex'] = 1
              }
            })
            rstatus = '⛔ Deasactivado para Puertas'
            gg.toast(rstatus)
        end
    end
end

fieldEdits = {
-------- 📌 JUGUETES --------
    [1] = {
        edits = {
            {
                className = "matchcheck",
                armEdits = 0x48,
                editTo = 1,
                editType = gg.TYPE_DWORD,
                editIfEqual = nil
            }
            }
    },
-------- 📌 PINTBALL --------
	[2] = {
		edits = {
			{
				className = "Player",
                armEdits = 0x58, --int <BallLeftCount>k__BackingField;
                editTo = 9999,
                editType = gg.TYPE_DWORD,
                editIfEqual = nil
			},
			{
				className = "Player",
                armEdits = 0x50, --float _shootingRate;
                editTo = 2.1,
                editType = gg.TYPE_FLOAT,
                editIfEqual = nil
			},
			{
				className = "Player",
                armEdits = 0x24, --bool isShooting;
                editTo = 1,
                editType = gg.TYPE_BYTE,
                editIfEqual = nil
			}
		}
	},
-------- 📌 CIENTÍFICO --------
	[3] = {
		edits = {
			{
				className = "Level",
                armEdits = 0xC, --int Numberofbottles_FilledToWin;
                editTo = 1,
                editType = gg.TYPE_DWORD,
                editIfEqual = nil
			}
		}
	}
}

function fieldByOffset(ClassName, Offset, Edit, EditType, EditIfEqual)
    local offset = 8
    local pointerType = gg.TYPE_DWORD
    gg.clearResults()
    gg.setRanges(gg.REGION_OTHER)
    if ca_range == true then
        gg.setRanges(gg.REGION_C_ALLOC)
    end
    gg.searchNumber(":" .. string.char(0) .. ClassName .. string.char(0), nil, nil, nil, range_start, nil, 1)
    local result = gg.getResults(1, 1)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_C_HEAP)
    gg.searchNumber(result[1].address, pointerType)
    local results = gg.getResults(gg.getResultsCount())
    for i, v in pairs(results) do
        results[i].address = results[i].address - offset
    end
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.loadResults(results)
    gg.searchPointer(0)
    results = gg.getResults(gg.getResultsCount())
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.loadResults(results)
    gg.searchPointer(0)
    results = gg.getResults(gg.getResultsCount())
    local tempTable = {}
    for i, v in pairs(results) do
        tempTable[i] = {
            address = v.value,
            flags = pointerType
        }
    end
    gg.addListItems(tempTable)
    results = gg.getListItems()
    for i, v in pairs(results) do
        results[i].address = results[i].address + Offset
        results[i].flags = EditType
        results[i].value = Edit
    end
    if EditIfEqual ~= nil then
        if type(EditIfEqual) == "string" then
            ::enter_value::
            local menu = gg.prompt({EditIfEqual}, nil, {"number"})
            if menu ~= nil then
                EditIfEqual = menu[1]
            else
                goto enter_value
            end
        end
        gg.loadResults(results)
        gg.refineNumber(EditIfEqual, EditType)
        results = gg.getResults(gg.getResultsCount())
        for i, v in pairs(results) do
            results[i].value = Edit
        end
    end
    gg.setValues(results)
    gg.clearList()
end

scriptTitle = "🚨 Este menu solo funciona mientras estes jugando un nivel 🚨"

homeMenuItems = {
	"▶️ JUGUETES GANAR CON UNA ⭐",
	"▶️ PAINTBALL BALAS 🔫 INFINITAS",
	"▶️ CIENTÍFICO GANAR CON UN TUBO",
	"▶️ CARAMELO GANAR 🏆 CON UN MOVIMIENTO"
}

function hometr()
    local menu = gg.choice(homeMenuItems, nil, scriptTitle)
    if menu == 1 then
        for i, v in pairs(fieldEdits[menu].edits) do
            local edit = v
        	fieldByOffset(edit.className, edit.armEdits, edit.editTo, edit.editType, edit.editIfEqual)
        end
        gg.toast("✔️ 🆗 ✔️")
    elseif menu == 2 then
    	for i, v in pairs(fieldEdits[menu].edits) do
            local edit = v
        	fieldByOffset(edit.className, edit.armEdits, edit.editTo, edit.editType, edit.editIfEqual)
        end
        gg.toast("✔️ 🆗 ✔️")
    elseif menu == 3 then
    	for i, v in pairs(fieldEdits[menu].edits) do
            local edit = v
        	fieldByOffset(edit.className, edit.armEdits, edit.editTo, edit.editType, edit.editIfEqual)
        end
        gg.toast("✔️ 🆗 ✔️")
    elseif menu == 4 then
    	tgb.returnValue({
              { ['libName'] = LibNam,
                ['offset'] = 0x305AC0,  --bool IsTotalTargetReached()
                ['valueType'] = "bool",
                ['value'] = true,
                ['libIndex'] = 1
              }
            })
            gg.sleep(6000)
            tgb.returnValueOff({
              { ['libName'] = LibNam,
                ['offset'] = 0x305AC0,  --bool IsTotalTargetReached()
              }
            })
    end
end

function selme()
	local rtxs = gg.choice({'ℹ️ COMO FUNCIONAN LOS PARCHES AUTOMÁTICOS 📃','🎩 TRUCOS DURANTE LAS PARTIDAS ✨','❌ Salir del Script ❌'})
	if rtxs == 1 then
		help()
	elseif rtxs == 2 then
		if range_start == nil then
			gg.clearResults()
			s_b_s = ":" .. string.char(0) .. "mscorlib.dll" .. string.char(0)
			gg.setRanges(gg.REGION_OTHER)
			::try_ca::
			gg.searchNumber(s_b_s, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, nil, nil, 1)
			if gg.getResultsCount() == 0 and ca_range ~= true then
			    ca_range = true
			    gg.setRanges(gg.REGION_C_ALLOC)
			    goto try_ca
			end
			local start_search = gg.getResults(1)
			gg.clearResults()
			range_start = start_search[1].address
		end
		hometr()
	elseif rtxs == 3 then
		gg.setVisible(true)
        os.exit()
	end
end

selme()

while true do
  if gg.isVisible() then
    gg.setVisible(false)
    selme()
  end
  gg.sleep(100)
end