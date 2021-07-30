.class public final Laca;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Laas;


# instance fields
.field private final a:Ljava/util/Map;

.field private b:J

.field private final c:Lacn;


# direct methods
.method public constructor <init>(Lacn;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    .line 1
    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Laca;->a:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laca;->b:J

    iput-object p1, p0, Laca;->c:Lacn;

    return-void
.end method

.method static a(Ljava/io/InputStream;)I
    .locals 2

    .line 100
    invoke-static {p0}, Laca;->c(Ljava/io/InputStream;)I

    move-result v0

    .line 101
    invoke-static {p0}, Laca;->c(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 102
    invoke-static {p0}, Laca;->c(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 103
    invoke-static {p0}, Laca;->c(Ljava/io/InputStream;)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static final a(Ljava/io/File;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/io/FileInputStream;

    .line 2
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method static a(Labz;)Ljava/lang/String;
    .locals 2

    .line 112
    invoke-static {p0}, Laca;->b(Ljava/io/InputStream;)J

    move-result-wide v0

    .line 113
    invoke-static {p0, v0, v1}, Laca;->a(Labz;J)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    .line 114
    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method static a(Ljava/io/OutputStream;I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    .line 123
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 124
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 125
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 126
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static a(Ljava/io/OutputStream;J)V
    .locals 2

    long-to-int v0, p1

    int-to-byte v0, v0

    .line 127
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 128
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 129
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 130
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 131
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 132
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 133
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 134
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3

    .line 135
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 136
    array-length v0, p1

    int-to-long v1, v0

    invoke-static {p0, v1, v2}, Laca;->a(Ljava/io/OutputStream;J)V

    .line 137
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private final a(Ljava/lang/String;Laby;)V
    .locals 7

    iget-object v0, p0, Laca;->a:Ljava/util/Map;

    .line 94
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Laca;->b:J

    iget-wide v2, p2, Laby;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Laca;->b:J

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Laca;->a:Ljava/util/Map;

    .line 95
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laby;

    iget-wide v1, p0, Laca;->b:J

    iget-wide v3, p2, Laby;->a:J

    .line 96
    iget-wide v5, v0, Laby;->a:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Laca;->b:J

    .line 94
    :goto_0
    iget-object v0, p0, Laca;->a:Ljava/util/Map;

    .line 97
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Labz;J)[B
    .locals 6

    invoke-virtual {p0}, Labz;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int v2, p1

    int-to-long v3, v2

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    .line 121
    new-array p1, v2, [B

    new-instance p2, Ljava/io/DataInputStream;

    .line 122
    invoke-direct {p2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p2, p1}, Ljava/io/DataInputStream;->readFully([B)V

    return-object p1

    .line 0
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x49

    .line 120
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "streamToBytes length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", maxLength="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static b(Ljava/io/InputStream;)J
    .locals 7

    .line 104
    invoke-static {p0}, Laca;->c(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    .line 105
    invoke-static {p0}, Laca;->c(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 106
    invoke-static {p0}, Laca;->c(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 107
    invoke-static {p0}, Laca;->c(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 108
    invoke-static {p0}, Laca;->c(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 109
    invoke-static {p0}, Laca;->c(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 110
    invoke-static {p0}, Laca;->c(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 111
    invoke-static {p0}, Laca;->c(Ljava/io/InputStream;)I

    move-result p0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const/16 p0, 0x38

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static c(Ljava/io/InputStream;)I
    .locals 1

    .line 98
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 99
    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private final e(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Laca;->a:Ljava/util/Map;

    .line 119
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laby;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Laca;->b:J

    iget-wide v2, p1, Laby;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Laca;->b:J

    :cond_0
    return-void
.end method

.method private static final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 24
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Laar;
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laca;->a:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laby;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Laca;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    :try_start_2
    new-instance v6, Labz;

    new-instance v7, Ljava/io/BufferedInputStream;

    .line 5
    invoke-static {v2}, Laca;->a(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Labz;-><init>(Ljava/io/InputStream;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    :try_start_3
    invoke-static {v6}, Laby;->a(Labz;)Laby;

    move-result-object v7

    iget-object v8, v7, Laby;->b:Ljava/lang/String;

    .line 7
    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v0, "%s: key=%s, found=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    aput-object p1, v8, v3

    iget-object v7, v7, Laby;->b:Ljava/lang/String;

    aput-object v7, v8, v5

    .line 9
    invoke-static {v0, v8}, Labu;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    invoke-direct {p0, p1}, Laca;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 11
    :try_start_4
    invoke-virtual {v6}, Labz;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_5
    invoke-virtual {v6}, Labz;->a()J

    move-result-wide v7

    .line 12
    invoke-static {v6, v7, v8}, Laca;->a(Labz;J)[B

    move-result-object v7

    new-instance v8, Laar;

    .line 13
    invoke-direct {v8}, Laar;-><init>()V

    iput-object v7, v8, Laar;->a:[B

    iget-object v7, v0, Laby;->c:Ljava/lang/String;

    iput-object v7, v8, Laar;->b:Ljava/lang/String;

    iget-wide v9, v0, Laby;->d:J

    iput-wide v9, v8, Laar;->c:J

    iget-wide v9, v0, Laby;->e:J

    iput-wide v9, v8, Laar;->d:J

    iget-wide v9, v0, Laby;->f:J

    iput-wide v9, v8, Laar;->e:J

    iget-wide v9, v0, Laby;->g:J

    iput-wide v9, v8, Laar;->f:J

    iget-object v7, v0, Laby;->h:Ljava/util/List;

    new-instance v9, Ljava/util/TreeMap;

    .line 14
    sget-object v10, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v9, v10}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 15
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Labb;

    iget-object v11, v10, Labb;->a:Ljava/lang/String;

    iget-object v10, v10, Labb;->b:Ljava/lang/String;

    .line 16
    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-object v9, v8, Laar;->g:Ljava/util/Map;

    iget-object v0, v0, Laby;->h:Ljava/util/List;

    .line 17
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v8, Laar;->h:Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 11
    :try_start_6
    invoke-virtual {v6}, Labz;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-object v8

    .line 18
    :catchall_0
    move-exception v0

    .line 11
    :try_start_7
    invoke-virtual {v6}, Labz;->close()V

    .line 18
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 11
    :catch_0
    move-exception v0

    :try_start_8
    new-array v5, v5, [Ljava/lang/Object;

    .line 19
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "%s: %s"

    .line 20
    invoke-static {v0, v5}, Labu;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    invoke-virtual {p0, p1}, Laca;->c(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return-object v1

    .line 2
    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized a()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laca;->c:Lacn;

    .line 26
    invoke-virtual {v0}, Lacn;->a()Ljava/io/File;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Unable to create cache dir %s"

    invoke-static {v0, v1}, Labu;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    monitor-exit p0

    return-void

    .line 30
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 31
    aget-object v3, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    new-instance v6, Labz;

    new-instance v7, Ljava/io/BufferedInputStream;

    .line 33
    invoke-static {v3}, Laca;->a(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7, v4, v5}, Labz;-><init>(Ljava/io/InputStream;J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    :try_start_4
    invoke-static {v6}, Laby;->a(Labz;)Laby;

    move-result-object v7

    iput-wide v4, v7, Laby;->a:J

    iget-object v4, v7, Laby;->b:Ljava/lang/String;

    .line 35
    invoke-direct {p0, v4, v7}, Laca;->a(Ljava/lang/String;Laby;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 36
    :try_start_5
    invoke-virtual {v6}, Labz;->close()V

    goto :goto_1

    .line 37
    :catchall_0
    move-exception v4

    .line 36
    invoke-virtual {v6}, Labz;->close()V

    .line 37
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 38
    :catch_0
    move-exception v4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 36
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-void

    .line 25
    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized a(Ljava/lang/String;Laar;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Laca;->b:J

    iget-object v4, v0, Laar;->a:[B

    .line 41
    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v5, v4

    add-long/2addr v2, v5

    const/high16 v5, 0x4a900000    # 4718592.0f

    const-wide/32 v6, 0x500000

    cmp-long v8, v2, v6

    if-lez v8, :cond_1

    int-to-float v2, v4

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    monitor-exit p0

    return-void

    .line 42
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Laca;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    .line 44
    invoke-direct {v9, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 43
    invoke-direct {v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v9, Laby;

    iget-object v12, v0, Laar;->b:Ljava/lang/String;

    iget-wide v13, v0, Laar;->c:J

    iget-wide v10, v0, Laar;->d:J

    iget-wide v5, v0, Laar;->e:J

    iget-wide v3, v0, Laar;->f:J

    iget-object v15, v0, Laar;->h:Ljava/util/List;

    if-nez v15, :cond_3

    iget-object v15, v0, Laar;->g:Ljava/util/Map;

    new-instance v7, Ljava/util/ArrayList;

    .line 45
    move-wide/from16 v16, v10

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    new-instance v15, Labb;

    .line 47
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v10

    move-object/from16 v10, v18

    check-cast v10, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v15, v10, v11}, Labb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v19

    goto :goto_1

    :cond_2
    move-object/from16 v21, v7

    goto :goto_2

    .line 43
    :cond_3
    move-wide/from16 v16, v10

    move-object/from16 v21, v15

    .line 48
    :goto_2
    move-wide/from16 v15, v16

    move-object v10, v9

    move-object/from16 v11, p1

    move-wide/from16 v17, v5

    move-wide/from16 v19, v3

    invoke-direct/range {v10 .. v21}, Laby;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const v3, 0x20150306

    .line 49
    :try_start_3
    invoke-static {v8, v3}, Laca;->a(Ljava/io/OutputStream;I)V

    iget-object v3, v9, Laby;->b:Ljava/lang/String;

    .line 50
    invoke-static {v8, v3}, Laca;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v3, v9, Laby;->c:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_4

    :try_start_4
    const-string v3, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 51
    :cond_4
    :try_start_5
    invoke-static {v8, v3}, Laca;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-wide v3, v9, Laby;->d:J

    .line 52
    invoke-static {v8, v3, v4}, Laca;->a(Ljava/io/OutputStream;J)V

    iget-wide v3, v9, Laby;->e:J

    .line 53
    invoke-static {v8, v3, v4}, Laca;->a(Ljava/io/OutputStream;J)V

    iget-wide v3, v9, Laby;->f:J

    .line 54
    invoke-static {v8, v3, v4}, Laca;->a(Ljava/io/OutputStream;J)V

    iget-wide v3, v9, Laby;->g:J

    .line 55
    invoke-static {v8, v3, v4}, Laca;->a(Ljava/io/OutputStream;J)V

    iget-object v3, v9, Laby;->h:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 56
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v8, v4}, Laca;->a(Ljava/io/OutputStream;I)V

    .line 57
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labb;

    iget-object v5, v4, Labb;->a:Ljava/lang/String;

    .line 58
    invoke-static {v8, v5}, Laca;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v4, v4, Labb;->b:Ljava/lang/String;

    .line 59
    invoke-static {v8, v4}, Laca;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_3

    .line 83
    :cond_5
    nop

    .line 60
    const/4 v3, 0x0

    invoke-static {v8, v3}, Laca;->a(Ljava/io/OutputStream;I)V

    .line 61
    :cond_6
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v0, v0, Laar;->a:[B

    .line 68
    invoke-virtual {v8, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 69
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    .line 70
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, v9, Laby;->a:J

    .line 71
    move-object/from16 v0, p1

    invoke-direct {v1, v0, v9}, Laca;->a(Ljava/lang/String;Laby;)V

    iget-wide v3, v1, Laca;->b:J

    const-wide/32 v5, 0x500000

    cmp-long v0, v3, v5

    if-ltz v0, :cond_c

    .line 72
    sget-boolean v0, Labu;->b:Z

    if-eqz v0, :cond_7

    const-string v0, "Pruning old cache entries."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 73
    invoke-static {v0, v4}, Labu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget-wide v3, v1, Laca;->b:J

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v0, v1, Laca;->a:Ljava/util/Map;

    .line 75
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v8, 0x0

    .line 76
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v9, 0x2

    if-eqz v7, :cond_a

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laby;

    .line 79
    iget-object v10, v7, Laby;->b:Ljava/lang/String;

    invoke-virtual {v1, v10}, Laca;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_9

    iget-wide v10, v1, Laca;->b:J

    .line 80
    iget-wide v12, v7, Laby;->a:J

    sub-long/2addr v10, v12

    iput-wide v10, v1, Laca;->b:J

    goto :goto_4

    .line 86
    :cond_9
    const-string v10, "Could not delete cache entry for key=%s, filename=%s"

    new-array v11, v9, [Ljava/lang/Object;

    .line 81
    iget-object v7, v7, Laby;->b:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    .line 82
    invoke-static {v7}, Laca;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x1

    aput-object v7, v11, v12

    .line 83
    invoke-static {v10, v11}, Labu;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v8, v8, 0x1

    iget-wide v10, v1, Laca;->b:J

    long-to-float v10, v10

    const/high16 v11, 0x4a900000    # 4718592.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    :cond_a
    sget-boolean v0, Labu;->b:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 85
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v0, v10

    iget-wide v10, v1, Laca;->b:J

    sub-long/2addr v10, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v9

    const-string v3, "pruned %d files, %d bytes, %d ms"

    .line 86
    invoke-static {v3, v0}, Labu;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    .line 93
    :catch_0
    move-exception v0

    :try_start_7
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 62
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v5, v4

    .line 63
    invoke-static {v3, v5}, Labu;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    const-string v0, "Failed to write header for %s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 65
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 66
    invoke-static {v0, v4}, Labu;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Ljava/io/IOException;

    .line 67
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 87
    :catch_1
    move-exception v0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    .line 88
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "Could not clean up file %s"

    .line 89
    invoke-static {v2, v0}, Labu;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_b
    iget-object v0, v1, Laca;->c:Lacn;

    .line 90
    invoke-virtual {v0}, Lacn;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "Re-initializing cache after external clearing."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 91
    invoke-static {v0, v2}, Labu;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, v1, Laca;->a:Ljava/util/Map;

    .line 92
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Laca;->b:J

    .line 93
    invoke-virtual/range {p0 .. p0}, Laca;->a()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    .line 83
    :cond_c
    monitor-exit p0

    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 39
    :try_start_0
    invoke-virtual {p0, p1}, Laca;->a(Ljava/lang/String;)Laar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Laar;->f:J

    iput-wide v1, v0, Laar;->e:J

    .line 40
    invoke-virtual {p0, p1, v0}, Laca;->a(Ljava/lang/String;Laar;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 115
    :try_start_0
    invoke-virtual {p0, p1}, Laca;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 116
    invoke-direct {p0, p1}, Laca;->e(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    .line 117
    invoke-static {p1}, Laca;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Could not delete cache entry for key=%s, filename=%s"

    .line 118
    invoke-static {p1, v0}, Labu;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Laca;->c:Lacn;

    .line 22
    invoke-virtual {v1}, Lacn;->a()Ljava/io/File;

    move-result-object v1

    invoke-static {p1}, Laca;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
