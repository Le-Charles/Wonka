function WonkaInit()
	SendChatMessage("inv", "WHISPER", nil, "PORT")
	CreateMacro("Trade", "INV_MISC_COIN_02", "/target MULE \n/run LeaveParty();InitiateTrade('target')", 1)
	CreateMacro("InnK", "INV_Misc_Head_Orc_02", "/target Innkeeper", 1)
	CreateMacro("Colo", "135446", "/run SelectGossipOption(3);BuyMerchantItem(13,1); BuyMerchantItem(15,3); MerchantFrame:Hide() \n/use Cologne Bottle", 1)
	CreateMacro("Perf", "135447", "/run SelectGossipOption(3);BuyMerchantItem(14,1); BuyMerchantItem(15,3); MerchantFrame:Hide() \n/use Perfume Bottle", 1)
	CreateMacro("Gift", "135450", "/run SelectGossipOption(14);SelectGossipOption(1)", 1)
	PickupMacro("Trade") PlaceAction(73)
	PickupMacro("InnK") PlaceAction(74)
	PickupMacro("Colo") PlaceAction(75)
	PickupMacro("Perf") PlaceAction(76)
	PickupMacro("Gift") PlaceAction(77)
	ClearCursor()
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

local CineKill = CreateFrame("Frame")
CineKill:RegisterEvent("CINEMATIC_START")
CineKill:SetScript("OnEvent", CinematicFrame_CancelCinematic)

local frame, events = CreateFrame("Frame"), {};
function events:PARTY_INVITE_REQUEST(...)
	AcceptGroup()
end
function events:PLAYER_UPDATE_RESTING(...)
	StaticPopup_Hide("PARTY_INVITE")
end
frame:SetScript("OnEvent", function(self, event, ...)
	events[event](self, ...);
end);
for k, v in pairs(events) do
	frame:RegisterEvent(k);
end
