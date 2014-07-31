class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "500"(controller: "error", action:"display")
        "404"(controller: "error", action:"display")
	}
}
