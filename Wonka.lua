function WonkaInit()
	CreateMacro("wonka1", "INV_MISC_QUESTIONMARK", "/target Innkeeper", 1)
	CreateMacro("wonka2", "INV_MISC_QUESTIONMARK", "/run SelectGossipOption(3);BuyMerchantItem(13,1); BuyMerchantItem(15,4); MerchantFrame:Hide()", 1)
	CreateMacro("wonka3", "INV_MISC_QUESTIONMARK", "/use Cologne Bottle", 1)
	CreateMacro("wonka4", "INV_MISC_QUESTIONMARK", "/run SelectGossipOption(14);SelectGossipOption(1)", 1)
	PickupMacro("wonka1") PlaceAction(73)
	PickupMacro("wonka2") PlaceAction(74)
	PickupMacro("wonka3") PlaceAction(75)
	PickupMacro("wonka4") PlaceAction(76)
	ClearCursor()
	SendChatMessage("inv", "WHISPER", nil, "Jiru")
	end

SLASH_WONKA1 = '/wonka'

SlashCmdList["WONKA"] = WonkaInit