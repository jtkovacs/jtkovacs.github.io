

from bs4 import BeautifulSoup




# APPROACH 1 USES THE INTERNET
# extract all links from a page
# for link in page, try to open
# if failure, preserve page name and line number



# APPROACH 2 USES TEXT MATCHING
valid_targets = dict()
attempted_links = list()
## Get all page names via a Bash command
for page in pages:
    ### get all header URLs via BeautifulSoup
    ### problem: there are repeated URLs (Sources, Cited, etc.) --> can ignore
    for URL in page_header:
        valid_targets.append(URL)
    ### get all body URLs via BeautifulSoup
    ### problem: same URL can appear in multiple pages --> cannot store as dictionary
    for URL in body:
        attempted_links.append([URL, page])
failures = dict()
for link in attempted_links:
    URL = link[0]
    page = link[1]
    if not URL in valid_targets:
        failures[page] += URL