function WonkaInit()
	CreateMacro("InnK", "INV_MISC_QUESTIONMARK", "/target Innkeeper", 1)
	CreateMacro("Colo", "135446", "/run SelectGossipOption(3);BuyMerchantItem(13,1); BuyMerchantItem(15,4); MerchantFrame:Hide()", 1)
	CreateMacro("Perf", "135447", "/run SelectGossipOption(3);BuyMerchantItem(14,1); BuyMerchantItem(15,4); MerchantFrame:Hide()", 1)
	CreateMacro("Use", "INV_MISC_QUESTIONMARK", "/use Cologne Bottle;/use Perfume Bottle", 1)
	CreateMacro("Gift", "135450", "/run SelectGossipOption(14);SelectGossipOption(1)", 1)
	PickupMacro("InnK") PlaceAction(73)
	PickupMacro("Colo") PlaceAction(74)
	PickupMacro("Perf") PlaceAction(75)
	PickupMacro("Use") PlaceAction(76)
	PickupMacro("Gift") PlaceAction(77)
	ClearCursor()
	SendChatMessage("inv", "WHISPER", nil, "Jiru")
	end

SLASH_WONKA1 = '/wonka'

SlashCmdList["WONKA"] = WonkaInit
