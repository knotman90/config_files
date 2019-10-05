#sudo pip3 install git+https://github.com/enkore/i3pystatus.git
#sudo pip3 install psutil netifaces  basiciw

from i3pystatus import Status

status = Status()

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.register("clock",
    format="%a %-d %b  %X",)

# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
status.register("load",
    format="{avg1}-{avg15}",)
#show cpu usage
status.register("cpu_usage",
    format="{usage:02}% "
    )
status.register("mem",
    divisor=1024**3,
    warn_percentage=75,
    format="{total_mem}G/{avail_mem}G - {percent_used_mem}%")



# Shows your CPU temperature, if you have a Intel CPU
status.register("temp",
    format=" {temp:.0f}",)

# The battery monitor has many formatting options, see README for details

# This would look like this, when discharging (or charging)
# ↓14.22W 56.15% [77.81%] 2h:41m
# And like this if full:
# =14.22W 100.0% [91.21%]
#
# This would also display a desktop notification (via D-Bus) if the percentage
# goes below 5 percent while discharging. The block will also color RED.
# If you don't have a desktop notification demon yet, take a look at dunst:
#   http://www.knopwob.org/dunst/
status.register("battery",
    format="{status}/{consumption:.2f}W {percentage:.2f}% [{percentage_design:.2f}%] {remaining:%E%hh:%Mm}",
    alert=True,
    alert_percentage=5,
    not_present_text="⚡",
    status={
        "DIS": "↓",
        "CHR": "⚡",
        "FULL": "",
    },)

# # This would look like this:
# # Discharging 6h:51m
# status.register("battery",
#     format="{status} {remaining:%E%hh:%Mm}",
#     alert=True,
#     alert_percentage=5,
#     status={
#         "DIS":  "Discharging",
#         "CHR":  "Charging",
#         "FULL": "Bat full",
#     },)

# Displays whether a DHCP client is running
#status.register("runwatch",
#   name="DHCP",
#   path="/var/run/dhclient*.pid",)

# Shows the address and up/down state of eth0. If it is up the address is shown in
# green (the default value of color_up) and the CIDR-address is shown
# (i.e. 10.10.10.42/24).
# If it's down just the interface name (eth0) will be displayed in red
# (defaults of format_down and color_down)
#
# Note: the network module requires PyPI package netifaces
status.register("network",
    interface="enp59s0",
    graph_width=10,
    #graph_style="braille-peak",
    #graph_style="braille-snake",
    #graph_style="braille-fill",
    graph_style="blocks",
    dynamic_color=False,
    format_up="{v4} {network_graph_recv} {bytes_sent:03}up/{bytes_recv:04}dw KB/s",)

# Note: requires both netifaces and basiciw (for essid and quality)
status.register("network",
    interface="wlp61s0",
    #format_up=" {essid} {quality:03.0f}%",)
    format_up="{essid} {quality:03.0f}%- {bytes_sent:03}up/{bytes_recv:04}dw KB/s",)

# Shows disk usage of /
# Format:
# 42/128G [86G]
status.register("disk",
    path="/",
    format="⛁{avail}G",
    #format="{used}/{total}G [{avail}G]",
    )

# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
status.register("pulseaudio",
    format="♪{volume}",)

# Shows mpd status
# Format:
# Cloud connected▶Reroute to Remain
status.register("mpd",
    format="{title}{status}{album}",
    status={
        "pause": "▷",
        "play": "▶",
        "stop": "◾",
    },)

status.run()