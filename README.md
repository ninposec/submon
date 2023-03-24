### Submon

A simple approach to monitor domains for new subdomains, and receiving Discord/Slack notifications when new subdomains are discovered.


### Requirements

Following tools are required, for submon to work.

Subfinder
https://github.com/projectdiscovery/subfinder

Notify
https://github.com/projectdiscovery/notify

anew
https://github.com/tomnomnom/anew


### Installation

To install Submon, follow these steps:

Clone the repository to your local machine:

```bash
git clone https://github.com/ninposec/submon.git
cd submon
chmod +x submon.sh
```


### Usage

To use Submon, run the script with the following options:

```bash
./submon.sh 
Usage: ./submon.sh [-d domain] [-t delay_in_seconds]

Options:
  -d   The domain to use in the command (required)
  -t   The delay between command executions, in minutes e.g. 60m (required)
```

Replace <domain> with the domain name you want to search for subdomains of, and <delay_in_seconds> with the delay between command executions, in seconds.

For example, to search for subdomains of example.com and receive notifications every hour, you would run:

```bash
screen -R 5
./submon.sh -d example.com -t 60m
```

