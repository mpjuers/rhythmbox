# rhythmbox

## A digital grandfather clock, sort of.

### crontab setup
These lines will play the hourly chime at the hour and the daily chime at 12pm.
`0 0-11 * * * ~/rhythmbox/bin/play.sh hourly /proc/$(cat /var/run/crond.pid)/fd/1 > ~/rhythmbox/log/hourly.log 2>&1`
`* 12 * * * ~/rhythmbox/bin/play.sh long /proc/$(cat /var/run/crond.pid)/fd/1 ~/rhythmbox/log/long.log 2>&1`
`0 13-23 * * * ~/rhythmbox/bin/play.sh hourly /proc/$(cat /var/run/crond.pid)/fd/1 > ~/rhythmbox/log/hourly.log 2>&1`

### Sound
Sound files are located in the relevant subdirectories of `sounds` and are
played randomly at the times specified in the crontab.
These can easily be updated via scp or ssh.
