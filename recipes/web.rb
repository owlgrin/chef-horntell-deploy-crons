cron 'CRON - image versions' do
	minute '*/30'
	# user 'ubuntu'
	command "/usr/bin/php /home/ubuntu/apps/core/artisan image:versions AppLogo --clean --env=production > /var/log/horntell/image.versions.log"
	action :create
end