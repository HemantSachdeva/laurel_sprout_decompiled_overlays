.class public Lcom/google/wireless/gdata/subscribedfeeds/serializer/xml/XmlSubscribedFeedsEntryGDataSerializer;
.super Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;
.source "XmlSubscribedFeedsEntryGDataSerializer.java"


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/data/Entry;)V

    return-void
.end method

.method private static serializeClientToken(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "http://schemas.google.com/gsync/data"

    const-string v1, "clientToken"

    .line 65
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private static serializeFeedUrl(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "http://schemas.google.com/gsync/data"

    const-string v1, "feedurl"

    .line 52
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    invoke-virtual {p1}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->getFeed()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "value"

    invoke-interface {p0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    invoke-virtual {p1}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->getService()Ljava/lang/String;

    move-result-object v2

    const-string v4, "service"

    invoke-interface {p0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    invoke-virtual {p1}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->getAuthToken()Ljava/lang/String;

    move-result-object p1

    const-string v2, "authtoken"

    invoke-interface {p0, v3, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 56
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private static serializeRoutingInfo(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "http://schemas.google.com/gsync/data"

    const-string v1, "routingInfo"

    .line 76
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method protected declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "gsync"

    const-string v0, "http://schemas.google.com/gsync/data"

    .line 33
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected getSubscribedFeedsEntry()Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->getEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    return-object p0
.end method

.method protected serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/google/wireless/gdata/subscribedfeeds/serializer/xml/XmlSubscribedFeedsEntryGDataSerializer;->getSubscribedFeedsEntry()Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->getSubscribedFeed()Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/wireless/gdata/subscribedfeeds/serializer/xml/XmlSubscribedFeedsEntryGDataSerializer;->serializeFeedUrl(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;)V

    .line 45
    invoke-virtual {p0}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->getClientToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/wireless/gdata/subscribedfeeds/serializer/xml/XmlSubscribedFeedsEntryGDataSerializer;->serializeClientToken(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->getRoutingInfo()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/wireless/gdata/subscribedfeeds/serializer/xml/XmlSubscribedFeedsEntryGDataSerializer;->serializeRoutingInfo(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    return-void
.end method
