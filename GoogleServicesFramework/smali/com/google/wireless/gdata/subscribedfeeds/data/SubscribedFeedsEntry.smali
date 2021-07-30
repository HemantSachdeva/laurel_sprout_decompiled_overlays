.class public Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;
.super Lcom/google/wireless/gdata/data/Entry;
.source "SubscribedFeedsEntry.java"


# instance fields
.field private clientToken:Ljava/lang/String;

.field private feedUrl:Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;

.field private routingInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/google/wireless/gdata/data/Entry;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 47
    invoke-super {p0}, Lcom/google/wireless/gdata/data/Entry;->clear()V

    return-void
.end method

.method public getClientToken()Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->clientToken:Ljava/lang/String;

    return-object p0
.end method

.method public getRoutingInfo()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->routingInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getSubscribedFeed()Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->feedUrl:Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;

    return-object p0
.end method

.method public setClientToken(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->clientToken:Ljava/lang/String;

    return-void
.end method

.method public setRoutingInfo(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->routingInfo:Ljava/lang/String;

    return-void
.end method

.method public setSubscribedFeed(Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->feedUrl:Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;

    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/wireless/gdata/data/Entry;->toString(Ljava/lang/StringBuffer;)V

    return-void
.end method
