import re

export_line = False

to_file_name = "data.txt"
to_file = open(to_file_name, "w")

with open("story.ni") as source:
	for line in source:
		if re.search("done with borders", line):
			export_line = False
		if export_line and not re.search(r"\t", line) and re.search(" border", line):
			line = re.sub(",? and ", "\t", line)
			line = re.sub(", ", "\t", line)
			line = re.sub("\.$", "", line)
			line = re.sub(r"(.*) (border|borders) (.*)", r"\3\t\1", line)
			to_file.write(line)
		if re.search("listed alphabetically", line):
			export_line = True

source.close()
to_file.close()