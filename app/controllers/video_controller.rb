class VideoController < ApplicationController
require 'youtube_g'
def index
  render
 end
def show
	url=params[:url]
	@embed_video={}
	client=YouTubeG::Client.new
	video=client.video_by(url.scan(/v=(.*)[&|?]*/).to_s.split('&')[0]) rescue nil
	@embed_video["video"]=video ? video.embed_url : nil
end

end
