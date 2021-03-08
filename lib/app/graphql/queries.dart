abstract class Queries {
  static const pinnedRepo = """
                            query {
                            viewer {
                                    repositories {
                                        totalCount
                                    }  
                                    pinnedItems(first: 6) {
                                        nodes {
                                          ... on Repository {
                                            name
                                            url
                                            nameWithOwner
                                            description
                                            owner {
                                              avatarUrl
                                            }
                                            updatedAt
                                            viewerHasStarred
                                            primaryLanguage {
                                              name
                                              color
                                            }
                                            stargazers {
                                              totalCount
                                            }
                                          }
                                        }
                                    }
                                    contributionsCollection {
                                      totalCommitContributions
                                        contributionCalendar {
                                            totalContributions
                                        }
                                    }
                                }
                            }
  """;
}
