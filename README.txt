I. INFO REGARDING GEPHI

Gephi is an interactive graph viz tool. As such, it is hard to exactly replicate the look of a graph.

Some general options for the layout of the graph:
- Furchterman Reingold to untangle the network with a speed of 20.
- OpenOrd to create the final layout with clusters separated.

Some general settings for the modularity:
- The resolution was set as to achieve 5 logical clusters within the network.

User analysis was performed by Gephi, the dataset was then exported.

II. INFO REGARDING FILES
There are many scripts and datasets used, below is a short summary of their purposes.

clean_script.ipynb: Python script used to clean raw tweets into workable data.
data_gathering.ipynb: Python script used to gather tweets using the Tweepy module.
networkanalysis.ipynb:Python  script used to gather some network statistics used in the paper.
sentiment_analysis.ipynb: Python script used to perform sentiment analysis on the tweets.
tfidf.R: R script used to perform tf-idf analysis on tweets.

data>
    cleaned_no_rt>
        cleaned_no_rt.cs: Cleaned tweets without any retweets (not used in the final paper).
        cleaned_no_rt_adj.csv: Adjacency list of tweets without retweets (not used in the final paper).

    cleaned_rt_only>
        cleaned_rtonly.csv: Cleaned tweets with only retweets.
        cleaned_rtonly_adj.csv: Adjacency list of tweets with only retweets.

    cleaned_w_rt>
        cleaned_rt.csv: Cleaned complete set of tweets.
        cleaned_rt_adj.csv: Adjacency list of all tweets.

    network_stats>
        complete.csv: Contains complete network stats of the complete twitter network excluding isolates.
        complete_model.gephi: gephi file of the complete network.
        rt_only.csv: Contains rt-only network stats excluding isolates.
        rt_only,gephi: gephi file of the complete network.

    R_data>
        workable_data.csv: data used for the R script TF-IDF.