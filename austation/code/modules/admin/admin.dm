/client/proc/toggle_active()
	set name = "Toggle Active Mode"
	set category = "Server"
	set desc = "Toggles the server between active and inactive mode."
	if(!fexists("./data/enable_inactive"))
		to_chat(usr, "<span class='admin'>Scheduled uptime is disabled in the server config!</span>")
	if(server_inactive)
		server_inactive = FALSE
		fdel("./data/inactive")
		to_chat(world, "<span class='boldnotice'>Server has been switched into active mode. Players can now join.")
	else
		rustg_file_write("1", "./data/inactive")
		to_chat(world, "<span class='boldannounce'>The server is switching into inactive mode. Players will no longer be able to connect on the conclusion of the current round.</span>")
