local function OnTeamWin()
	messages.PrintFade("Thanks for playing Slashers. You can make a donation to Utopia Games to help us maintain the servers. (Press F4)", ScrH() - 50, 25, 3, Color(181, 137, 0), "horrortext")
end
hook.Add("sls_round_OnTeamWin", "sls_shop_OnTeamWin", OnTeamWin)

local function OpenShop()
	gui.OpenURL(GAMEMODE.CONFIG["shop_website_shop_url"])
end
net.Receive("shop_OpenShop", OpenShop)
