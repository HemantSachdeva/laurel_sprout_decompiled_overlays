.class public abstract Lcom/google/wireless/gdata/client/GDataServiceClient;
.super Ljava/lang/Object;
.source "GDataServiceClient.java"


# instance fields
.field private final gDataClient:Lcom/google/wireless/gdata/client/GDataClient;

.field private final gDataParserFactory:Lcom/google/wireless/gdata/client/GDataParserFactory;


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata/client/GDataClient;

    .line 25
    iput-object p2, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata/client/GDataParserFactory;

    return-void
.end method

.method private parseEntry(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/data/Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 201
    :try_start_0
    iget-object p0, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata/client/GDataParserFactory;

    invoke-interface {p0, p1, p2}, Lcom/google/wireless/gdata/client/GDataParserFactory;->createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v0

    .line 202
    invoke-interface {v0}, Lcom/google/wireless/gdata/parser/GDataParser;->parseStandaloneEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    .line 207
    :cond_1
    throw p0
.end method


# virtual methods
.method public createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/data/Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/client/HttpException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata/client/GDataParserFactory;

    invoke-interface {v0, p3}, Lcom/google/wireless/gdata/client/GDataParserFactory;->createSerializer(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/serializer/GDataSerializer;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata/client/GDataClient;

    invoke-interface {v1, p1, p2, v0}, Lcom/google/wireless/gdata/client/GDataClient;->createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/serializer/GDataSerializer;)Ljava/io/InputStream;

    move-result-object p1

    .line 113
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/google/wireless/gdata/client/GDataServiceClient;->parseEntry(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object p0

    return-object p0
.end method

.method public createQueryParams()Lcom/google/wireless/gdata/client/QueryParams;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata/client/GDataClient;

    invoke-interface {p0}, Lcom/google/wireless/gdata/client/GDataClient;->createQueryParams()Lcom/google/wireless/gdata/client/QueryParams;

    move-result-object p0

    return-object p0
.end method

.method public deleteEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/client/HttpException;
        }
    .end annotation

    .line 195
    iget-object p0, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata/client/GDataClient;

    invoke-interface {p0, p1, p2}, Lcom/google/wireless/gdata/client/GDataClient;->deleteEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getEntry(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/client/HttpException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getGDataClient()Lcom/google/wireless/gdata/client/GDataClient;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/google/wireless/gdata/client/GDataClient;->getFeedAsStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/client/GDataServiceClient;->parseEntry(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object p0

    return-object p0
.end method

.method protected getGDataClient()Lcom/google/wireless/gdata/client/GDataClient;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata/client/GDataClient;

    return-object p0
.end method

.method public getParserForFeed(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/parser/GDataParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/client/HttpException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata/client/GDataClient;

    invoke-interface {v0, p2, p3}, Lcom/google/wireless/gdata/client/GDataClient;->getFeedAsStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 77
    iget-object p0, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata/client/GDataParserFactory;

    invoke-interface {p0, p1, p2}, Lcom/google/wireless/gdata/client/GDataParserFactory;->createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object p0

    return-object p0
.end method

.method public abstract getServiceName()Ljava/lang/String;
.end method

.method public updateEntry(Lcom/google/wireless/gdata/data/Entry;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/client/HttpException;
        }
    .end annotation

    .line 148
    invoke-virtual {p1}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata/client/GDataParserFactory;

    invoke-interface {v1, p1}, Lcom/google/wireless/gdata/client/GDataParserFactory;->createSerializer(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/serializer/GDataSerializer;

    move-result-object v1

    .line 154
    iget-object v2, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata/client/GDataClient;

    invoke-interface {v2, v0, p2, v1}, Lcom/google/wireless/gdata/client/GDataClient;->updateEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/serializer/GDataSerializer;)Ljava/io/InputStream;

    move-result-object p2

    .line 155
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/client/GDataServiceClient;->parseEntry(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object p0

    return-object p0

    .line 150
    :cond_0
    new-instance p0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string p1, "No edit URI -- cannot update."

    invoke-direct {p0, p1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
