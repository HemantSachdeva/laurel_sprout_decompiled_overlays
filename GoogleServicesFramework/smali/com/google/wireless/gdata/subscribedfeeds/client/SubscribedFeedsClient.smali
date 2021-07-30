.class public Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;
.super Lcom/google/wireless/gdata/client/GDataServiceClient;
.source "SubscribedFeedsClient.java"


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/client/GDataServiceClient;-><init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;)V

    return-void
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .locals 0

    const-string p0, "mail"

    return-object p0
.end method
