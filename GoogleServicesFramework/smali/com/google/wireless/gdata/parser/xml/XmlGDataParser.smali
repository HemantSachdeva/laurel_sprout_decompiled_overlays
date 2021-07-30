.class public Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.super Ljava/lang/Object;
.source "XmlGDataParser.java"

# interfaces
.implements Lcom/google/wireless/gdata/parser/GDataParser;


# instance fields
.field private final is:Ljava/io/InputStream;

.field private isInBadState:Z

.field private final parser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    .line 53
    iput-object p2, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->isInBadState:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 57
    :try_start_0
    invoke-interface {p2, p1, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 59
    new-instance p1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string p2, "Could not create XmlGDataParser"

    invoke-direct {p1, p2, p0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method private handleAuthor(Lcom/google/wireless/gdata/data/Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 455
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 457
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 458
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "author"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 465
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "name"

    .line 470
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 471
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setAuthor(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v3, "email"

    .line 473
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setEmail(Ljava/lang/String;)V

    .line 487
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_4
    return-void

    .line 460
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected <author>: Actual element: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 462
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final parseFeed()Lcom/google/wireless/gdata/data/Feed;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->createFeed()Lcom/google/wireless/gdata/data/Feed;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "totalResults"

    .line 162
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 163
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 164
    invoke-static {v1}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v1, v3}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setTotalResults(I)V

    goto/16 :goto_1

    :cond_1
    const-string v2, "startIndex"

    .line 165
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 167
    invoke-static {v1}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v1, v3}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setStartIndex(I)V

    goto/16 :goto_1

    :cond_2
    const-string v2, "itemsPerPage"

    .line 168
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 169
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 170
    invoke-static {v1}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v1, v3}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setItemsPerPage(I)V

    goto/16 :goto_1

    :cond_3
    const-string v2, "title"

    .line 171
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 172
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "id"

    .line 173
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 174
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setId(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "updated"

    .line 175
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 176
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setLastUpdated(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v2, "category"

    .line 177
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 178
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x0

    const-string v3, "term"

    .line 179
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 181
    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setCategory(Ljava/lang/String;)V

    .line 183
    :cond_7
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v3, "scheme"

    .line 184
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 186
    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setCategoryScheme(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v2, "entry"

    .line 188
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    .line 193
    :cond_9
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleExtraElementInFeed(Lcom/google/wireless/gdata/data/Feed;)V

    .line 199
    :cond_a
    :goto_1
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto/16 :goto_0

    :cond_b
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    if-eqz p0, :cond_0

    .line 498
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected abstract createEntry()Lcom/google/wireless/gdata/data/Entry;
.end method

.method protected abstract createFeed()Lcom/google/wireless/gdata/data/Feed;
.end method

.method protected final getParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    return-object p0
.end method

.method protected handleEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "entry"

    .line 390
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const-string v2, "id"

    .line 393
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 394
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setId(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v2, "title"

    .line 395
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 396
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v2, "link"

    .line 397
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 398
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "rel"

    .line 399
    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "type"

    .line 401
    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 402
    iget-object v2, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v4, "href"

    .line 403
    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "edit"

    .line 404
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 405
    invoke-virtual {p1, v2}, Lcom/google/wireless/gdata/data/Entry;->setEditUri(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string v3, "alternate"

    .line 406
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "text/html"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 407
    invoke-virtual {p1, v2}, Lcom/google/wireless/gdata/data/Entry;->setHtmlUri(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 409
    :cond_5
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)V

    goto/16 :goto_1

    :cond_6
    const-string v2, "summary"

    .line 414
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 415
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "content"

    .line 416
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 418
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setContent(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v2, "author"

    .line 419
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 420
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleAuthor(Lcom/google/wireless/gdata/data/Entry;)V

    goto :goto_1

    :cond_9
    const-string v2, "category"

    .line 421
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 422
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "term"

    .line 423
    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 424
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 425
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setCategory(Ljava/lang/String;)V

    .line 427
    :cond_a
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "scheme"

    .line 428
    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 429
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 430
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata/data/Entry;->setCategoryScheme(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    const-string v2, "published"

    .line 432
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 433
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 434
    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setPublicationDate(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    const-string v2, "updated"

    .line 435
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 436
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setUpdateDate(Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    const-string v2, "deleted"

    .line 437
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 438
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata/data/Entry;->setDeleted(Z)V

    goto :goto_1

    .line 440
    :cond_e
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleExtraElementInEntry(Lcom/google/wireless/gdata/data/Entry;)V

    .line 447
    :cond_f
    :goto_1
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method protected abstract handleExtraElementInEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation
.end method

.method protected handleExtraElementInFeed(Lcom/google/wireless/gdata/data/Feed;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public hasMoreData()Z
    .locals 2

    .line 220
    iget-boolean v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->isInBadState:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 224
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    move v1, v0

    :catch_0
    :cond_1
    return v1
.end method

.method public final init()Lcom/google/wireless/gdata/data/Feed;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    const-string v0, "Unable to parse <feed>."

    const-string v1, "Could not read next event."

    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6

    if-nez v2, :cond_3

    .line 81
    :try_start_1
    iget-object v2, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "feed"

    .line 91
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    :try_start_2
    invoke-direct {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parseFeed()Lcom/google/wireless/gdata/data/Feed;

    move-result-object p0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 98
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    invoke-direct {v1, v0, p0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p0

    .line 95
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    invoke-direct {v1, v0, p0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 109
    :cond_1
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    .line 113
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    invoke-direct {v0, v1, p0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    .line 111
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    invoke-direct {v0, v1, p0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 116
    :cond_2
    new-instance p0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v0, "No <feed> found in document."

    invoke-direct {p0, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_4
    move-exception p0

    .line 85
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    invoke-direct {v0, v1, p0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_5
    move-exception p0

    .line 83
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    invoke-direct {v0, v1, p0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 76
    :cond_3
    new-instance p0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v0, "Attempting to initialize parsing beyond the start of the document."

    invoke-direct {p0, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_6
    move-exception p0

    .line 73
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v1, "Could not parse GData feed."

    invoke-direct {v0, v1, p0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public parseStandaloneEntry()Lcom/google/wireless/gdata/data/Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Unable to parse <entry>."

    const-string v1, "Could not read next event."

    .line 298
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->createEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object v2

    .line 302
    :try_start_0
    iget-object v3, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5

    if-nez v3, :cond_3

    .line 312
    :try_start_1
    iget-object v3, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 321
    :cond_0
    iget-object v3, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "entry"

    .line 322
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 324
    :try_start_2
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 325
    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata/data/Entry;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 331
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    invoke-direct {v1, v0, p0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p0

    .line 328
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    invoke-direct {v1, v0, p0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 342
    :cond_1
    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    .line 344
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    invoke-direct {v0, v1, p0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 347
    :cond_2
    new-instance p0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v0, "No <entry> found in document."

    invoke-direct {p0, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3
    move-exception p0

    .line 316
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    invoke-direct {v0, v1, p0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p0

    .line 314
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    invoke-direct {v0, v1, p0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 307
    :cond_3
    new-instance p0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v0, "Attempting to initialize parsing beyond the start of the document."

    invoke-direct {p0, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_5
    move-exception p0

    .line 304
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v1, "Could not parse GData entry."

    invoke-direct {v0, v1, p0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readNextEntry(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/data/Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Could not parse <entry>, "

    .line 236
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 252
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "entry"

    .line 253
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p1, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->createEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object p1

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p1}, Lcom/google/wireless/gdata/data/Entry;->clear()V

    :goto_0
    const/4 v1, 0x1

    .line 265
    :try_start_1
    iget-object v2, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 266
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata/data/Entry;)V

    .line 267
    invoke-virtual {p1}, Lcom/google/wireless/gdata/data/Entry;->validate()V
    :try_end_1
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    .line 279
    :try_start_2
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->skipToNextEntry()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 283
    :catch_1
    iput-boolean v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->isInBadState:Z

    .line 285
    :cond_1
    :goto_1
    new-instance p0, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :catch_2
    move-exception v2

    .line 270
    :try_start_3
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->skipToNextEntry()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 274
    :catch_3
    iput-boolean v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->isInBadState:Z

    .line 276
    :cond_2
    :goto_2
    new-instance p0, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 254
    :cond_3
    new-instance p0, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected <entry>: Actual element: <"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 248
    :cond_4
    new-instance p0, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected event START_TAG: Actual event: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_4
    move-exception p0

    .line 244
    new-instance p1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v0, "Could not parse entry."

    invoke-direct {p1, v0, p0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 237
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "you shouldn\'t call this if hasMoreData() is false"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected skipToNextEntry()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 359
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "entry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 370
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_2
    return-void

    .line 356
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "you shouldn\'t call this if hasMoreData() is false"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
