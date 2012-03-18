import gdata.youtube
import gdata.youtube.service 


class YouTubeClient():
    def __init__(self, dev_key=None):
        self.ytservice = gdata.youtube.service.YouTubeService()
        self.ytservice.ssl = True
        if dev_key:
            self.ytservice.developer_key = dev_key

    def get_uploads(self, uri):
        return self.ytservice.GetYouTubeVideoFeed(uri)

    #helpers

    def print_entries(self, uri):
        entries = self.get_uploads(uri)
        for e in entries.entry:
            self.print_entry(e)

    def print_entry(self, entry):
        print "Title: %s" % entry.media.title.text
        print "Published: %s" % entry.published.text
        print "Desc: %s" % entry.media.description.text
        print "Embed URL: %s" % entry.GetSwfUrl()
        print "Length: %s\n" % entry.media.duration.seconds
        for t in entry.media.thumbnail:
            print "Thumbnail url: %s" % t.url

