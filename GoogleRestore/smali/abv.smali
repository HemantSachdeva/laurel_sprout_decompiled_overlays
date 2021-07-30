.class public final Labv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Labc;


# static fields
.field protected static final a:Z


# instance fields
.field protected final b:Labx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Labu;->b:Z

    sput-boolean v0, Labv;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Labx;

    invoke-direct {v0}, Labx;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labv;->b:Labx;

    return-void
.end method

.method private static a(Ljava/lang/String;Labj;Labr;)V
    .locals 9

    iget-object v0, p1, Labj;->k:Laax;

    .line 3
    invoke-virtual {p1}, Labj;->b()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    :try_start_0
    iget v5, v0, Laax;->b:I

    add-int/2addr v5, v4

    iput v5, v0, Laax;->b:I

    iget v6, v0, Laax;->a:I

    int-to-float v7, v6

    iget v8, v0, Laax;->d:F

    mul-float v7, v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v0, Laax;->a:I

    iget v0, v0, Laax;->c:I
    :try_end_0
    .catch Labr; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v5, v0, :cond_0

    .line 8
    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v2

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v4

    const-string p0, "%s-retry [timeout=%s]"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Labj;->a(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    :try_start_1
    throw p2
    :try_end_1
    .catch Labr; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v4

    const-string p0, "%s-timeout-giveup [timeout=%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-virtual {p1, p0}, Labj;->a(Ljava/lang/String;)V

    .line 8
    throw p2
.end method


# virtual methods
.method public final a(Labj;)Labf;
    .locals 19

    .line 9
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Error occurred when closing InputStream"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 10
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_0
    iget-object v0, v2, Labj;->j:Laar;

    if-nez v0, :cond_0

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 39
    :cond_0
    new-instance v11, Ljava/util/HashMap;

    .line 12
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iget-object v12, v0, Laar;->b:Ljava/lang/String;

    if-eqz v12, :cond_1

    const-string v13, "If-None-Match"

    .line 13
    invoke-interface {v11, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v12, v0, Laar;->d:J

    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-lez v0, :cond_2

    const-string v0, "If-Modified-Since"

    const-string v14, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    .line 14
    invoke-static {v14}, Lbef;->b(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 15
    invoke-interface {v11, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    nop

    .line 11
    move-object v0, v11

    :goto_1
    iget-object v11, v2, Labj;->b:Ljava/lang/String;

    new-instance v12, Ljava/util/HashMap;

    .line 16
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 17
    invoke-virtual {v12, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 19
    invoke-virtual {v12, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 20
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;

    .line 22
    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v13

    invoke-virtual {v11, v13}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 23
    invoke-virtual/range {p1 .. p1}, Labj;->b()I

    move-result v13

    .line 24
    invoke-virtual {v11, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 25
    invoke-virtual {v11, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 26
    invoke-virtual {v11, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 27
    invoke-virtual {v11, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v13, "https"

    .line 28
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 29
    :try_start_1
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 30
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v0, "GET"

    .line 31
    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v12, -0x1

    if-eq v0, v12, :cond_13

    const/16 v13, 0x64

    const/16 v14, 0x130

    const/16 v15, 0xc8

    if-lt v0, v13, :cond_4

    if-lt v0, v15, :cond_5

    :cond_4
    const/16 v13, 0xcc

    if-eq v0, v13, :cond_5

    if-eq v0, v14, :cond_5

    :try_start_2
    new-instance v13, Lacb;

    .line 33
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lbjf;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v15

    .line 34
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    new-instance v9, Lacc;

    .line 35
    invoke-direct {v9, v11}, Lacc;-><init>(Ljava/net/HttpURLConnection;)V

    .line 36
    invoke-direct {v13, v0, v15, v7, v9}, Lacb;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 74
    :catchall_0
    move-exception v0

    const/4 v15, 0x1

    goto/16 :goto_d

    .line 58
    :cond_5
    :try_start_3
    new-instance v13, Lacb;

    .line 37
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lbjf;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    .line 38
    invoke-direct {v13, v0, v7, v12, v10}, Lacb;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 39
    :try_start_4
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 36
    :goto_3
    :try_start_5
    iget v7, v13, Lacb;->a:I

    iget-object v0, v13, Lacb;->b:Ljava/util/List;

    .line 40
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    if-ne v7, v14, :cond_c

    iget-object v0, v2, Labj;->j:Laar;

    if-nez v0, :cond_6

    new-instance v0, Labf;

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-direct {v0, v10, v8, v6}, Labf;-><init>([BZLjava/util/List;)V

    return-object v0

    :cond_6
    new-instance v7, Ljava/util/TreeSet;

    .line 59
    sget-object v9, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v7, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 60
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 61
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Labb;

    iget-object v11, v11, Labb;->a:Ljava/lang/String;

    .line 62
    invoke-interface {v7, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    new-instance v9, Ljava/util/ArrayList;

    .line 63
    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v11, v0, Laar;->h:Ljava/util/List;

    if-eqz v11, :cond_9

    .line 64
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_b

    iget-object v11, v0, Laar;->h:Ljava/util/List;

    .line 65
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Labb;

    iget-object v14, v12, Labb;->a:Ljava/lang/String;

    .line 66
    invoke-interface {v7, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 67
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 72
    :cond_9
    iget-object v11, v0, Laar;->g:Ljava/util/Map;

    .line 68
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_b

    iget-object v11, v0, Laar;->g:Ljava/util/Map;

    .line 69
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_a
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    new-instance v14, Labb;

    .line 71
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v14, v15, v12}, Labb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 67
    :cond_b
    new-instance v7, Labf;

    iget-object v0, v0, Laar;->a:[B

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-direct {v7, v0, v8, v9}, Labf;-><init>([BZLjava/util/List;)V

    return-object v7

    .line 71
    :cond_c
    iget-object v9, v13, Lacb;->d:Ljava/io/InputStream;

    if-eqz v9, :cond_e

    iget v0, v13, Lacb;->c:I

    .line 41
    new-instance v11, Lacm;

    iget-object v14, v1, Labv;->b:Labx;

    invoke-direct {v11, v14, v0}, Lacm;-><init>(Labx;I)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    iget-object v0, v1, Labv;->b:Labx;

    const/16 v14, 0x400

    .line 42
    invoke-virtual {v0, v14}, Labx;->a(I)[B

    move-result-object v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 43
    :goto_7
    :try_start_7
    invoke-virtual {v9, v14}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-eq v0, v12, :cond_d

    .line 44
    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15, v0}, Lacm;->write([BII)V

    goto :goto_7

    .line 45
    :cond_d
    invoke-virtual {v11}, Lacm;->toByteArray()[B

    move-result-object v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 46
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_8

    .line 50
    :catch_0
    move-exception v0

    const/4 v9, 0x0

    :try_start_9
    new-array v0, v9, [Ljava/lang/Object;

    .line 47
    invoke-static {v3, v0}, Labu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :goto_8
    iget-object v0, v1, Labv;->b:Labx;

    .line 48
    invoke-virtual {v0, v14}, Labx;->a([B)V

    .line 49
    invoke-virtual {v11}, Lacm;->close()V
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_b

    .line 50
    :catchall_1
    move-exception v0

    move-object v7, v0

    goto :goto_9

    .line 74
    :catchall_2
    move-exception v0

    move-object v7, v0

    move-object v14, v10

    .line 46
    :goto_9
    :try_start_a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_a

    .line 82
    :catch_1
    move-exception v0

    const/4 v9, 0x0

    :try_start_b
    new-array v0, v9, [Ljava/lang/Object;

    .line 47
    invoke-static {v3, v0}, Labu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :goto_a
    iget-object v0, v1, Labv;->b:Labx;

    .line 48
    invoke-virtual {v0, v14}, Labx;->a([B)V

    .line 49
    invoke-virtual {v11}, Lacm;->close()V

    .line 50
    throw v7

    .line 58
    :cond_e
    const/4 v9, 0x0

    new-array v12, v9, [B
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 51
    :goto_b
    :try_start_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v14, v4

    sget-boolean v0, Labv;->a:Z

    if-nez v0, :cond_f

    const-wide/16 v17, 0xbb8

    cmp-long v0, v14, v17

    if-lez v0, :cond_11

    :cond_f
    const-string v0, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v9, v11

    .line 52
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v8

    if-eqz v12, :cond_10

    array-length v11, v12

    .line 53
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_c

    .line 58
    :cond_10
    const-string v11, "null"

    .line 53
    :goto_c
    const/4 v14, 0x2

    aput-object v11, v9, v14

    const/4 v11, 0x3

    .line 54
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v11

    iget-object v11, v2, Labj;->k:Laax;

    iget v11, v11, Laax;->b:I

    const/4 v14, 0x4

    .line 55
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v14

    .line 56
    invoke-static {v0, v9}, Labu;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_11
    const/16 v9, 0xc8

    if-lt v7, v9, :cond_12

    const/16 v0, 0x12b

    if-gt v7, v0, :cond_12

    .line 57
    new-instance v0, Labf;

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v7, 0x0

    invoke-direct {v0, v12, v7, v6}, Labf;-><init>([BZLjava/util/List;)V

    return-object v0

    .line 56
    :cond_12
    new-instance v0, Ljava/io/IOException;

    .line 57
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 47
    :catch_2
    move-exception v0

    goto :goto_e

    .line 74
    :catch_3
    move-exception v0

    move-object v12, v10

    goto :goto_e

    .line 75
    :cond_13
    :try_start_d
    new-instance v0, Ljava/io/IOException;

    const-string v7, "Could not retrieve response code from HttpUrlConnection."

    .line 74
    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 78
    :catchall_3
    move-exception v0

    const/4 v15, 0x0

    :goto_d
    if-nez v15, :cond_14

    .line 39
    :try_start_e
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 75
    :cond_14
    throw v0
    :try_end_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 85
    :catch_4
    move-exception v0

    move-object v12, v10

    move-object v13, v12

    :goto_e
    if-eqz v13, :cond_1b

    iget v0, v13, Lacb;->a:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v7, v11

    iget-object v9, v2, Labj;->b:Ljava/lang/String;

    aput-object v9, v7, v8

    const-string v8, "Unexpected response code %d for %s"

    invoke-static {v8, v7}, Labu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v12, :cond_1a

    new-instance v7, Labf;

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-direct {v7, v12, v11, v6}, Labf;-><init>([BZLjava/util/List;)V

    const/16 v6, 0x191

    if-eq v0, v6, :cond_19

    const/16 v6, 0x193

    if-ne v0, v6, :cond_15

    goto :goto_10

    .line 79
    :cond_15
    const/16 v2, 0x190

    if-lt v0, v2, :cond_17

    const/16 v2, 0x1f3

    if-le v0, v2, :cond_16

    goto :goto_f

    .line 81
    :cond_16
    new-instance v0, Laaw;

    .line 83
    invoke-direct {v0, v10}, Laaw;-><init>([B)V

    throw v0

    .line 79
    :cond_17
    :goto_f
    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_18

    const/16 v2, 0x257

    if-gt v0, v2, :cond_18

    new-instance v0, Labp;

    .line 82
    invoke-direct {v0, v10}, Labp;-><init>([B)V

    throw v0

    :cond_18
    new-instance v0, Labp;

    .line 81
    invoke-direct {v0, v10}, Labp;-><init>([B)V

    throw v0

    .line 77
    :cond_19
    :goto_10
    new-instance v0, Laaq;

    .line 78
    invoke-direct {v0, v10}, Laaq;-><init>([B)V

    const-string v6, "auth"

    invoke-static {v6, v2, v0}, Labv;->a(Ljava/lang/String;Labj;Labr;)V

    goto/16 :goto_0

    .line 84
    :cond_1a
    new-instance v0, Labe;

    .line 79
    invoke-direct {v0}, Labe;-><init>()V

    const-string v6, "network"

    invoke-static {v6, v2, v0}, Labv;->a(Ljava/lang/String;Labj;Labr;)V

    goto/16 :goto_0

    .line 85
    :cond_1b
    new-instance v2, Labg;

    .line 84
    invoke-direct {v2, v0}, Labg;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 80
    :catch_5
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    iget-object v2, v2, Labj;->b:Ljava/lang/String;

    .line 85
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Bad URL "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    .line 47
    :cond_1c
    new-instance v2, Ljava/lang/String;

    .line 85
    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_11
    invoke-direct {v3, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 15
    :catch_6
    move-exception v0

    new-instance v0, Labq;

    .line 80
    invoke-direct {v0}, Labq;-><init>()V

    const-string v6, "socket"

    invoke-static {v6, v2, v0}, Labv;->a(Ljava/lang/String;Labj;Labr;)V

    goto/16 :goto_0
.end method
