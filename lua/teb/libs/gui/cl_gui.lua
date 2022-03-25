GM13Panel = {}

function GM13Panel:CreateWindow()
   print("Community GM13Beta Debug Derma GUI Loading...")

   local DermaFrame = vgui.Create("DFrame")
   DermaFrame:SetPos(50,50)
   DermaFrame:SetSize(ScrW() / 3, ScrH() / 2)
   DermaFrame:SetTitle("gm_construct 13 beta - Debug Gui")
   DermaFrame:SetVisible(true)
   DermaFrame:SetDraggable(true)
   DermaFrame:ShowCloseButton(true)
   DermaFrame:SetBackgroundBlur(false)
   DermaFrame:SetDeleteOnClose(true)
   DermaFrame:SetMouseInputEnabled(true)
   DermaFrame:SetKeyboardInputEnabled(true)
   DermaFrame:MakePopup()
   DermaFrame:Center()

   -- Tabs
   local PropertySheet = vgui.Create("DPropertySheet")
   PropertySheet:SetParent(DermaFrame)
   PropertySheet:Dock(FILL)

   local MainTab = vgui.Create("DPanel")
   MainTab:SetBackgroundColor(Color(51, 51, 51))

   local MemoriesTab = vgui.Create("DPanel")
   MemoriesTab:SetBackgroundColor(Color(51, 51, 51))

   local MapTab = vgui.Create("DPanel")
   MapTab:SetBackgroundColor(Color(51, 51, 51))

   --MapTab_Image_btm:SizeToContents()
   local wtrmrk = vgui.Create("DImage", DermaFrame) --mobenixcitizen2007 sugested this. TODO:Add a dot ploting a plr pos.
   wtrmrk:SetPos(570, 440)
   wtrmrk:SetSize(60, 85)
   --MapTab_Image_btm:SizeToContents()
   wtrmrk:SetImage( "teb/cgm13d/cone" )

   GM13Panel:FillMainTab(MainTab)
   GM13Panel:FillMemoriesTab(MemoriesTab)
   GM13Panel:FillMapTab(MapTab)

   PropertySheet:AddSheet( "Main", MainTab, "icon16/user.png", false, false, "The main Property Sheet")
   PropertySheet:AddSheet( "Memories", MemoriesTab, "icon16/application_xp_terminal.png", false, false, "Edit Memories")
   PropertySheet:AddSheet( "MiniMap", MapTab, "icon16/pictures.png", false, false, "Mini Map")
end

-- bind "n" "cgm13d_vgui"
concommand.Add("cgm13d_vgui", GM13Panel.CreateWindow)