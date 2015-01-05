# we will create the multiple versions of the images on the machine on which,
# it was uploaded itself.
cron 'CRON - image versions' do
	minute '*/30'
	command "/usr/bin/php /home/ubuntu/apps/core/artisan image:versions AppLogo --clean --env=production > /var/log/horntell/image.versions.log"
	action :create
end