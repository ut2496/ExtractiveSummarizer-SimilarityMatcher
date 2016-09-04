This is an Extractive Summarizer-Keyword Genrator-Similarity finder for news/trending articles written in Python.  
	The package enclosed has a MySQl database file (.sql) enclosed where the data is stored.The package has 2 crawlers , the first is written in java and uses selenium api while the other is written in python and uses readability api.The former is used for Google Trends while the latter is used for Google News. The crawled data enters the database from where articles are fetched one at a time. More Sites can be added for crawling by making entries in the 'sites' table of the database.

	The source for implementation of TextRank summarization is: https://web.eecs.umich.edu/~mihalcea/papers/mihalcea.emnlp04.pdf. The relation between text units is Levenshtein Distance. Cosine similarity is calculated for pairs of articles and a similarity factor is calculated for each pair. Based on this similarity factor it is judged whether article is duplicate or not.

Run the generation.py file for execution.

Dependencies/ Prerequisites
Networkx - http://networkx.github.io/download.html 
NLTK - http://nltk.org/install.html 
Numpy - http://www.lfd.uci.edu/~gohlke/pythonlibs/#numpy
Scipy - http://www.lfd.uci.edu/~gohlke/pythonlibs/#scipy (Install numpy+mkl before installing scipy)

(Pip command can be used to install the above packages but is not advisable to use in case of SciPy.) 

Others : bs4, readability, MySQLdb, regex, requests. These all and any other package left can be installed using the pip command.
