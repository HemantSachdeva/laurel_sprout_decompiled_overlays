.class public abstract Lcom/google/wireless/gdata/client/QueryParams;
.super Ljava/lang/Object;
.source "QueryParams.java"


# instance fields
.field private entryId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract generateQueryUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getEntryId()Ljava/lang/String;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/google/wireless/gdata/client/QueryParams;->entryId:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxResults(Ljava/lang/String;)V
    .locals 1

    const-string v0, "max-results"

    .line 154
    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract setParamValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setStartIndex(Ljava/lang/String;)V
    .locals 1

    const-string v0, "start-index"

    .line 210
    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUpdatedMin(Ljava/lang/String;)V
    .locals 1

    const-string v0, "updated-min"

    .line 238
    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
