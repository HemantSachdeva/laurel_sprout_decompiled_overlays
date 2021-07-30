.class final Leqx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lerp;


# instance fields
.field final synthetic a:Lero;


# direct methods
.method public constructor <init>(Lero;)V
    .locals 0

    iput-object p1, p0, Leqx;->a:Lero;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    iget-object v0, p0, Leqx;->a:Lero;

    iget-object v0, v0, Lero;->q:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v2, "http/1.1"

    move-object v8, v2

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Leqx;->a:Lero;

    iget-object v3, v3, Lero;->q:Ljava/net/HttpURLConnection;

    .line 2
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3
    const-string v4, "X-Android-Selected-Transport"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Leqx;->a:Lero;

    iget-object v4, v4, Lero;->q:Ljava/net/HttpURLConnection;

    .line 4
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    :cond_1
    nop

    .line 5
    const-string v4, "X-Android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/AbstractMap$SimpleEntry;

    iget-object v5, p0, Leqx;->a:Lero;

    iget-object v5, v5, Lero;->q:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Leqx;->a:Lero;

    iget-object v2, v2, Lero;->q:Ljava/net/HttpURLConnection;

    .line 8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iget-object v9, p0, Leqx;->a:Lero;

    new-instance v10, Lerv;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, v9, Lero;->f:Ljava/util/List;

    .line 9
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Leqx;->a:Lero;

    iget-object v3, v3, Lero;->q:Ljava/net/HttpURLConnection;

    .line 10
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    move-object v3, v10

    move v5, v2

    invoke-direct/range {v3 .. v8}, Lerv;-><init>(Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iput-object v10, v9, Lero;->o:Lerv;

    const/16 v0, 0x12c

    const/16 v3, 0x190

    if-lt v2, v0, :cond_8

    if-ge v2, v3, :cond_8

    iget-object v0, p0, Leqx;->a:Lero;

    iget-object v0, v0, Lero;->o:Lerv;

    iget-object v0, v0, Lerv;->a:Leru;

    iget-object v4, v0, Leru;->b:Ljava/util/Map;

    if-eqz v4, :cond_4

    goto :goto_2

    .line 28
    :cond_4
    new-instance v4, Ljava/util/TreeMap;

    .line 12
    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v4, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iget-object v5, v0, Leru;->a:Ljava/util/List;

    .line 13
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    new-instance v7, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 16
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    :cond_5
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 19
    :cond_6
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v0, Leru;->b:Ljava/util/Map;

    iget-object v4, v0, Leru;->b:Ljava/util/Map;

    .line 11
    :goto_2
    nop

    .line 20
    const-string v0, "location"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_7

    goto :goto_3

    .line 26
    :cond_7
    iget-object v2, p0, Leqx;->a:Lero;

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lera;

    .line 28
    invoke-direct {v1, v2, v0}, Lera;-><init>(Lero;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lero;->a(IILjava/lang/Runnable;)V

    return-void

    .line 20
    :cond_8
    :goto_3
    iget-object v0, p0, Leqx;->a:Lero;

    .line 21
    invoke-virtual {v0}, Lero;->b()V

    if-lt v2, v3, :cond_a

    iget-object v0, p0, Leqx;->a:Lero;

    iget-object v0, v0, Lero;->q:Ljava/net/HttpURLConnection;

    .line 22
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Leqx;->a:Lero;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_4

    .line 23
    :cond_9
    invoke-static {v0}, Leqb;->a(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    .line 22
    :goto_4
    iput-object v0, v1, Lero;->n:Ljava/nio/channels/ReadableByteChannel;

    iget-object v0, p0, Leqx;->a:Lero;

    iget-object v0, v0, Lero;->b:Lerl;

    .line 24
    invoke-virtual {v0}, Lerl;->a()V

    return-void

    .line 23
    :cond_a
    iget-object v0, p0, Leqx;->a:Lero;

    iget-object v1, v0, Lero;->q:Ljava/net/HttpURLConnection;

    .line 25
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Leqb;->a(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v1

    iput-object v1, v0, Lero;->n:Ljava/nio/channels/ReadableByteChannel;

    iget-object v0, p0, Leqx;->a:Lero;

    iget-object v0, v0, Lero;->b:Lerl;

    .line 26
    invoke-virtual {v0}, Lerl;->a()V

    return-void
.end method
