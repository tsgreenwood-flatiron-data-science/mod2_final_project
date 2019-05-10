def get_top_author_dfs(data, top_authors):
    """Return list of dataframes of top authors."""
    dfs = []
    for author in top_authors:
        df = data[data['author'] == author]
        dfs.append(df)
    return dfs