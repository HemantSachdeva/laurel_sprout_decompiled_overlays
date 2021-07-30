.class public Lcom/google/wireless/gdata/data/Feed;
.super Ljava/lang/Object;
.source "Feed.java"


# instance fields
.field private lastUpdated:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastUpdated()Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/wireless/gdata/data/Feed;->lastUpdated:Ljava/lang/String;

    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCategoryScheme(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setItemsPerPage(I)V
    .locals 0

    return-void
.end method

.method public setLastUpdated(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Feed;->lastUpdated:Ljava/lang/String;

    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTotalResults(I)V
    .locals 0

    return-void
.end method
