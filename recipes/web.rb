cron 'CRON - image versions' do
	hour '11'
	minute '0'
	# user 'ubuntu'
	command "/usr/bin/php /home/ubuntu/apps/core/artisan image:versions AppLogo --clean --env=production > /var/log/horntell/image.versions.log"
	action :create
end