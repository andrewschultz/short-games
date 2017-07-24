import time
import copy
import re

#thanks to http://code.activestate.com/recipes/577305-python-dictionary-of-us-states-and-territories/ for the code below
# https://gist.github.com/rogerallen/1583593 is another resource

state_rev = {}
states = {
        'AK': 'Alaska',
        'AL': 'Alabama',
        'AR': 'Arkansas',
        'AS': 'American Samoa',
        'AZ': 'Arizona',
        'CA': 'California',
        'CO': 'Colorado',
        'CT': 'Connecticut',
        'DC': 'District of Columbia',
        'DE': 'Delaware',
        'FL': 'Florida',
        'GA': 'Georgia',
        'GU': 'Guam',
        'HI': 'Hawaii',
        'IA': 'Iowa',
        'ID': 'Idaho',
        'IL': 'Illinois',
        'IN': 'Indiana',
        'KS': 'Kansas',
        'KY': 'Kentucky',
        'LA': 'Louisiana',
        'MA': 'Massachusetts',
        'MD': 'Maryland',
        'ME': 'Maine',
        'MI': 'Michigan',
        'MN': 'Minnesota',
        'MO': 'Missouri',
        'MP': 'Northern Mariana Islands',
        'MS': 'Mississippi',
        'MT': 'Montana',
        'NA': 'National',
        'NC': 'North Carolina',
        'ND': 'North Dakota',
        'NE': 'Nebraska',
        'NH': 'New Hampshire',
        'NJ': 'New Jersey',
        'NM': 'New Mexico',
        'NV': 'Nevada',
        'NY': 'New York',
        'OH': 'Ohio',
        'OK': 'Oklahoma',
        'OR': 'Oregon',
        'PA': 'Pennsylvania',
        'PR': 'Puerto Rico',
        'RI': 'Rhode Island',
        'SC': 'South Carolina',
        'SD': 'South Dakota',
        'TN': 'Tennessee',
        'TX': 'Texas',
        'UT': 'Utah',
        'VA': 'Virginia',
        'VI': 'Virgin Islands',
        'VT': 'Vermont',
        'WA': 'Washington',
        'WI': 'Wisconsin',
        'WV': 'West Virginia',
        'WY': 'Wyoming'
}

debug = False

maine_first = False

tries = 0
foundAny = False
lines = {}
ignore = {}

def find_tricky(x):
    lines2 = copy.deepcopy(lines)
    for j in lines2[x].keys():
        lines2[j].pop(x, None)
    lines2.pop(x)
    for j in lines2.keys():
        if len(lines2[j]) is 1 and j != 'Maine':
            print(x, 'singleton:', j)

def read_data(data_name):
    global lines
    temp = ""
    data_file = open(data_name)
    for line in data_file:
        if line.strip().lower() == 'inv':
            print("Reversing the ignore dict")
            for temp in lines.keys():
                if temp in ignore.keys():
                    ignore.pop(temp, None)
                else:
                    ignore[temp] = True
        if re.search("#", line):
            continue;
        if re.search("^X:", line):
            temp = re.sub("^X:", "", line.strip())
            if temp in lines.keys():
                ignore[temp] = True
            else:
                print(temp, 'ignored but not defined.')
            continue;
        if re.search(";", line):
            data_file.close()
            return
        if re.search("^--", line):
            temp = re.sub("^--", "", line.strip())
            print('Getting rid of', temp)
            lines.pop(temp, None)
            for y in lines.keys():
                if temp in lines[y].keys():
                    lines[y].pop(temp)
            continue
        x = re.split("\t", line.strip())
        for y in range (1, len(x)):
            if x[0] not in lines.keys():
                lines[x[0]] = {}
            if x[y] not in lines.keys():
                lines[x[y]] = {}
            lines[x[0]][x[y]] = True
            lines[x[y]][x[0]] = True
    data_file.close()
    for i in sorted(lines.keys()):
        print(i, lines[i], len(lines[i]))
    return

def can_link(my_lines, fromState, toState):
    if toState in my_lines[fromState].keys():
        return True
    for x in my_lines[fromState].keys():
        lines2 = copy.deepcopy(my_lines)
        lines2.pop(fromState, None)
        for y in my_lines[fromState].keys():
            lines2[y].pop(fromState, None)
        if can_link(lines2, toState, x):
            return True
    return False

def goThrough(my_lines, startState, allOrOne, pathString, visited):
    visited = visited + 1
    global foundAny
    global tries
    tries = tries + 1
    # if tries % 10000 == 0:
        # print(tries,pathString)
    if foundAny:
        return
    if debug:
        print("KEYS:")
        for x in (my_lines.keys()):
            for y in my_lines[x].keys():
                print(x, y, my_lines[x][y])
    # print('Path so far:' , visited, pathString, 'in', startState)
    states_left = list(my_lines[startState].keys())
    # print("LEFT:", states_left)
    if len(states_left) is 0:
        # print('REMAINING:', my_lines)
        if len(my_lines) is 1:
            print(pathString, 'is a way through.')
            pathBackwards = '/'.join(reversed(pathString.split('/')))
            print(pathBackwards, 'is its reverse.')
            foundAny = True
            return True
    ruhroh = 0
    only_state = ""
    ta = []
    for j in (my_lines[startState].keys()):
        if len(my_lines[j]) < 2:
            ruhroh = ruhroh + 1
            only_state = j
    if ruhroh > 1:
        return False
    elif ruhroh == 1:
        ta = [only_state]
    else:
        ta = sorted(list(my_lines[startState].keys()), key=lambda x: len(my_lines[x]))
    for j in ta:
        sublist = copy.deepcopy(my_lines)
        # print('********', sublist, 'vs', lines)
        sublist.pop(startState, None)
        for k in sublist.keys():
            if startState in sublist[k]:
                sublist[k].pop(startState, None)
        # print('Remaining states:', sublist.keys(), len(sublist.keys()))
        goThrough(sublist, j, False, pathString + '/' + state_rev[j], visited)
        #print(my_lines[j], j)
    return False

read_data("data.txt")

findSingletons = False

if findSingletons:
    for x in sorted(lines.keys()):
        find_tricky(x)
    print('Set findSingletons to false to disable this check.')
    exit()
    
for x in states.keys():
    state_rev[states[x]] = x

if maine_first:
    goThrough(lines, 'Maine', False, 'ME', 0)

for x in sorted(lines.keys()):
    if x in ignore.keys():
        print('Ignoring', x)
        continue
    foundAny = False
    tries = 0
    print('Finding way through', x)
    before = time.time()
    # print(lines)
    goThrough(lines, x, False, state_rev[x], 0)
    if foundAny is False:
        print(x, 'has no way through.')
    print("Total time", time.time()-before, 'tries', tries)