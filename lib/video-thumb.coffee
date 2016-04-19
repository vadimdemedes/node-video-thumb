exec = require('child_process').exec

module.exports =
	extract: (path, destPath, time = '00:00:01', size = '200x125', callback) ->
		exec 'ffmpeg -ss ' + time + ' -i ' + path + ' -y -s ' + size + ' -vframes 1 -f image2 ' + destPath, ->
			callback(err) if callback
