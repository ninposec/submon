### Submon

Submon is a command-line tool for finding subdomains for a given domain name, and receiving notifications when new subdomains are discovered.


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

Clone the Submon GitHub repository to your local machine:

```bash
git clone https://github.com/ninposec/submon.git
```

Navigate to the Submon directory:

Install the required dependencies using pip:

```bash
cd submon
pip install -r requirements.txt
```

Make the submon script executable:

```bash
chmod +x submon.sh
```


### Usage

To use Submon, run the submon command with the following options:

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
Submon -d example.com -t 30m
```

