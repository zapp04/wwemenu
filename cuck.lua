local a = concommand.Add -- мне похуй так удобней

local function wwemenu()
    local cbt = vgui.Create("DFrame")
    cbt:SetTitle("WWE Menu")
    cbt:SetPos(100, 100)
    cbt:SetSize(350, 350)
    cbt:SetSizable(true)
    cbt:SetVisible(true)
    cbt:SetDraggable(true)
    cbt:MakePopup(true)
    local cluster = vgui.Create("DPropertySheet", cbt) -- анфанни
    cluster:SetPos(5, 30)
    cluster:SetSize(340, 315)
    local kybik = vgui.Create("DPanel")
    kybik:SetPos(5, 25)
    local authorizeduser = vgui.Create("DPanel")
    authorizeduser:SetPos(5, 25)
    local dogecore = vgui.Create("DPanel")
    dogecore:SetPos(5, 25)
    cluster:AddSheet("all", kybik, "icon16/bomb.png", false, false, "основные приколы")
    cluster:AddSheet("meth", dogecore, "icon16/paste_plain.png", false, false, "только для мтх юзеров")
    cluster:AddSheet("admin", authorizeduser, "icon16/user_red.png", false, false, "только для админов")
    local radio = vgui.Create("DButton", kybik)
    radio:SetText("Радио")
    radio:SetPos(5, 5)
    radio:SetSize(50, 25)
    radio.DoClick = function() end -- removed due to antipaste
    local autokil = vgui.Create("DCheckBoxLabel", kybik)
    autokil:SetPos(245, 5)
    autokil:SetText("Автокилл")
    autokil:SetTextColor(Color(0, 0, 0, 255))
    autokil:SetConVar("wayzer_autokill") -- convar got removed due to antipaste
    autokil:SetValue(0)
    autokil:SizeToContents()
end

a("wayzer_menu", wwemenu)
