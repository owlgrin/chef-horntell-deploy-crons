# */30 * * * * /usr/bin/php /home/rhino/code/horntell/core/artisan campaign:fire --env=production > /var/log/horntell/campaign.fire.log
cron 'CRON - campaign fire' do
	minute '*/30'
	command "/usr/bin/php /home/ubuntu/apps/core/artisan campaign:fire --env=production > /var/log/horntell/campaign.fire.log"
	action :create
end

# 30 0 * * * /usr/bin/php /home/rhino/code/horntell/core/artisan metrics:seed --env=production > /var/log/horntell/metrics.seed.log
cron 'CRON - metrics seed' do
	minute '30'
	hour '0'
	command "/usr/bin/php /home/ubuntu/apps/core/artisan metrics:seed --env=production > /var/log/horntell/metrics.seed.log"
	action :create
end

# 0 0 * * * /usr/bin/php /home/rhino/code/horntell/core/artisan segments:refresh --env=production > /var/log/horntell/segments.refresh.log
cron 'CRON - segments refresh' do
	minute '0'
	hour '0'
	command "/usr/bin/php /home/ubuntu/apps/core/artisan segments:refresh --env=production > /var/log/horntell/segments.refresh.log"
	action :create
end

# 10 0 * * * /usr/bin/php /home/rhino/code/horntell/core/artisan segments:count --env=production > /var/log/horntell/segments.count.log
cron 'CRON - segments count' do
	minute '10'
	hour '0'
	command "/usr/bin/php /home/ubuntu/apps/core/artisan segments:count --env=production > /var/log/horntell/segments.count.log"
	action :create
end


# */2 * * * * /usr/bin/php /home/rhino/code/horntell/core/artisan campaign:last-fires --env=production > /var/log/horntell/campaign.last-fires.log
cron 'CRON - campaign last fires' do
	minute '*/2'
	command "/usr/bin/php /home/ubuntu/apps/core/artisan campaign:last-fires --env=production > /var/log/horntell/campaign.last-fires.log"
	action :create
end

# NOT STORING PROFILES IN HORNS ANYMORE
# */5 * * * * /usr/bin/php /home/rhino/code/horntell/core/artisan horn:profiles --env=production > /var/log/horntell/horn.profiles.log
# cron 'CRON - horn profiles' do
# 	minute '*/5'
# 	user 'ubuntu'
# 	command "/usr/bin/php /home/ubuntu/apps/core/artisan horn:profiles --env=production > /var/log/horntell/horn.profiles.log"
# 	action :create
# end


# */5 * * * * /usr/bin/php /home/rhino/code/horntell/core/artisan horn:stats --env=production > /var/log/horntell/horn.stats.log
cron 'CRON - horn stats' do
	minute '*/5'
	command "/usr/bin/php /home/ubuntu/apps/core/artisan horn:stats --env=production > /var/log/horntell/horn.stats.log"
	action :create
end

# */30 * * * * /usr/bin/php /home/rhino/code/horntell/core/artisan campaign:autorun --env=production > /var/log/horntell/campaign.autorun.log
cron 'CRON - campaign autorun' do
	minute '*/30'
	command "/usr/bin/php /home/ubuntu/apps/core/artisan campaign:autorun --env=production > /var/log/horntell/campaign.autorun.log"
	action :create
end

# */30 * * * * /usr/bin/php /home/rhino/code/horntell/core/artisan campaign:date-trigger --env=production > /var/log/horntell/campaign.date-trigger.log
cron 'CRON - campaign date-trigger' do
	minute '*/30' # every half hour
	command "/usr/bin/php /home/ubuntu/apps/core/artisan campaign:date-trigger --env=production > /var/log/horntell/campaign.date-trigger.log"
	action :create
end