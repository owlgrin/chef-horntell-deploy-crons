# */15 * * * * /usr/bin/php /home/rhino/code/horntell/apps/artisan basecamp:listen-activities --interval=15 --env=demo >> /var/log/horntell-apps/basecamp-listen-activities.log
cron 'CRON - BASECAMP - listen activities' do
	minute '*/15' # every 15 mins
	command "/usr/bin/php /home/ubuntu/apps/apps/artisan basecamp:listen-activities --interval=15 --env=production >> /var/log/horntell-apps/basecamp-listen-activities.log"
	action :create
end

# */30 * * * * /usr/bin/php /home/rhino/code/horntell/apps/artisan basecamp:add-user-account --env=demo >> /var/log/horntell-apps/basecamp-add-user-accounts.log
cron 'CRON - BASECAMP - add user account' do
	minute '*/30' # every 30 mins
	command "/usr/bin/php /home/ubuntu/apps/apps/artisan basecamp:add-user-account --env=production >> /var/log/horntell-apps/basecamp-add-user-accounts.log"
	action :create
end

# 0 0 * * * /usr/bin/php /home/rhino/code/horntell/apps/artisan basecamp:listen-due-todos --env=demo >> /var/log/horntell-apps/basecamp-due-todos.log
cron 'CRON - BASECAMP - due todos' do
	minute '0'
	hour '0'
	command "/usr/bin/php /home/ubuntu/apps/apps/artisan basecamp:listen-due-todos --env=production >> /var/log/horntell-apps/basecamp-due-todos.log"
	action :create
end

# 10 0 * * * /usr/bin/php /home/rhino/code/horntell/apps/artisan basecamp:listen-upcoming-events --env=demo >> /var/log/horntell-apps/basecamp-upcoming-events.log
cron 'CRON - BASECAMP - upcoming events' do
	minute '10'
	hour '0'
	command "/usr/bin/php /home/ubuntu/apps/apps/artisan basecamp:listen-upcoming-events --env=production >> /var/log/horntell-apps/basecamp-upcoming-events.log"
	action :create
end

# 30 0 * * * /usr/bin/php /home/rhino/code/horntell/apps/artisan basecamp:refresh-acces-token --env=demo >> /var/log/horntell-apps/basecamp-refresh-access-token.log
cron 'CRON - BASECAMP - refresh access token' do
	minute '30'
	hour '0'
	command "/usr/bin/php /home/ubuntu/apps/apps/artisan basecamp:refresh-acces-token --env=production >> /var/log/horntell-apps/basecamp-refresh-access-token.log"
	action :create
end

# */15 * * * * /usr/bin/php /home/rhino/code/horntell/apps/artisan producthunt:list-notifications --env=demo >> /var/log/horntell-apps/producthunt-list-notifications.log
cron 'CRON - PRODUCTHUNT - list notifications' do
	minute '*/15'
	command "/usr/bin/php /home/ubuntu/apps/apps/artisan producthunt:list-notifications --env=production >> /var/log/horntell-apps/producthunt-list-notifications.log"
	action :create
end

# 30 0 * * * /usr/bin/php /home/rhino/code/horntell/apps/artisan producthunt:top-products --env=demo >> /var/log/horntell-apps/producthunt-top-products.log
cron 'CRON - PRODUCTHUNT - top products' do
	minute '30'
	hour '0'
	command "/usr/bin/php /home/ubuntu/apps/apps/artisan producthunt:top-products --env=production >> /var/log/horntell-apps/producthunt-top-products.log"
	action :create
end

# 30 0 * * * /usr/bin/php /home/rhino/code/horntell/apps/artisan producthunt:send-notification-to-expiring-user '7,3,1' --env=demo >> /var/log/horntell-apps/producthunt-expiring-users.log
cron 'CRON - PRODUCTHUNT - expiring users' do
	minute '30'
	hour '0'
	command "/usr/bin/php /home/ubuntu/apps/apps/artisan producthunt:send-notification-to-expiring-user '7,3,1' --env=production >> /var/log/horntell-apps/producthunt-expiring-users.log"
	action :create
end

# 30 1 * * * /usr/bin/php /home/rhino/code/horntell/apps/artisan mailchimp:add-new-list-to-hook --env=demo >> /var/log/horntell-apps/mailchimp-add-hook-to-list.log
cron 'CRON - MAILCHIMP - add hooks to list' do
	minute '30'
	hour '1'
	command "/usr/bin/php /home/ubuntu/apps/apps/artisan mailchimp:add-new-list-to-hook --env=production >> /var/log/horntell-apps/mailchimp-add-hook-to-list.log"
	action :create
end