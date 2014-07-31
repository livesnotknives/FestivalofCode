package foc

class PlaceController {

    def index() { }

    def show() {
        def postcode = params.postcode.replaceAll(" ", "")
        def pcUpperCase = postcode.toUpperCase()
        def urls = [:]
	def domainCode = Postcode.findByCode(pcUpperCase)
	if (domainCode == null) { 
          render(status: 503)
        }
	urls.put("geocaches", "http://www.geocaching.com/map/?ll=${domainCode.lat},${domainCode.lon}")
        urls.put("codes", "http://www.uk-postcodes.com/postcode/${pcUpperCase}.html")
        urls.put("schools", "http://www.schools-search.co.uk/school-search.php?Soutcode=${postcode}&type=All&radius=2&btnSubmit=Submit")
        urls.put("restaurants", "http://hungryhouse.co.uk/takeaways/${postcode}")
        urls.put("crimes","http://www.crime-statistics.co.uk/postcode/${postcode}")
	urls.put("postcode",pcUpperCase)
	[urls:urls]	
    }
}
