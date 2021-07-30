.class public Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;
.super Ljava/lang/Object;
.source "FeedUrl.java"


# instance fields
.field private authToken:Ljava/lang/String;

.field private feed:Ljava/lang/String;

.field private service:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->setFeed(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->setService(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p3}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->setAuthToken(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->authToken:Ljava/lang/String;

    return-object p0
.end method

.method public getFeed()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->feed:Ljava/lang/String;

    return-object p0
.end method

.method public getService()Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->service:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->authToken:Ljava/lang/String;

    return-void
.end method

.method public setFeed(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->feed:Ljava/lang/String;

    return-void
.end method

.method public setService(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->service:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->toString(Ljava/lang/StringBuffer;)V

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 1

    const-string v0, "FeedUrl"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " url:"

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->getFeed()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " service:"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->getService()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " authToken:"

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->getAuthToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
