function WonkaInit()
	CreateMacro("Trade", "INV_MISC_COIN_02", "/target Charlemage \n/run LeaveParty();InitiateTrade('target')", 1)
	CreateMacro("InnK", "INV_Misc_Head_Orc_02", "/target Innkeeper", 1)
	CreateMacro("Colo", "135446", "/run SelectGossipOption(3);BuyMerchantItem(13,1); BuyMerchantItem(15,4); MerchantFrame:Hide()", 1)
	CreateMacro("Perf", "135447", "/run SelectGossipOption(3);BuyMerchantItem(14,1); BuyMerchantItem(15,4); MerchantFrame:Hide()", 1)
	CreateMacro("Use", "INV_MISC_QUESTIONMARK", "/use Cologne Bottle \n/use Perfume Bottle", 1)
	CreateMacro("Gift", "135450", "/run SelectGossipOption(14);SelectGossipOption(1)", 1)
	PickupMacro("Trade") PlaceAction(73)
	PickupMacro("InnK") PlaceAction(74)
	PickupMacro("Colo") PlaceAction(75)
	PickupMacro("Perf") PlaceAction(76)
	PickupMacro("Use") PlaceAction(77)
	PickupMacro("Gift") PlaceAction(78)
	ClearCursor()
	SendChatMessage("inv", "WHISPER", nil, "Charlemage")
	end

local UIConfig = CreateFrame("Button","WonkaFactory",UIParent,"ActionButtonTemplate")
UIConfig:SetHeight(60)
UIConfig:SetWidth(60)
UIConfig:SetPoint("Center",UIParent,"Center",0,-250)

local t = UIConfig:CreateTexture("WonkaFace","OVERLAY")
t:SetAllPoints(UIConfig)
t:SetTexture("Interface\\ICONS\\Inv_valentinesboxofchocolates02.blp")
UIConfig.texture = t

UIConfig:RegisterForClicks("AnyUp")
UIConfig:SetScript("OnClick", WonkaInit)
