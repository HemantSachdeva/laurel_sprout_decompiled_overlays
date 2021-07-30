.class public final Lur;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Ltn;

.field static final b:Ljava/lang/Object;

.field static final c:Lto;

.field private static final d:Lux;

.field private static final e:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltn;

    .line 1
    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ltn;-><init>(I)V

    sput-object v0, Lur;->a:Ltn;

    new-instance v0, Lux;

    .line 2
    invoke-direct {v0}, Lux;-><init>()V

    sput-object v0, Lur;->d:Lux;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lur;->b:Ljava/lang/Object;

    new-instance v0, Lto;

    .line 3
    invoke-direct {v0}, Lto;-><init>()V

    sput-object v0, Lur;->c:Lto;

    .line 4
    new-instance v0, Lun;

    invoke-direct {v0}, Lun;-><init>()V

    sput-object v0, Lur;->e:Ljava/util/Comparator;

    return-void
.end method

.method public static a(Landroid/content/Context;Luj;Ldv;ZII)Landroid/graphics/Typeface;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Luj;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lur;->a:Ltn;

    .line 63
    invoke-virtual {v1, v0}, Ltn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p2, v1}, Ldv;->a(Landroid/graphics/Typeface;)V

    return-object v1

    :cond_0
    if-eqz p3, :cond_2

    const/4 v1, -0x1

    if-ne p4, v1, :cond_2

    .line 94
    invoke-static {p0, p1, p5}, Lur;->a(Landroid/content/Context;Luj;I)Luq;

    move-result-object p0

    iget p1, p0, Luq;->b:I

    if-nez p1, :cond_1

    iget-object p1, p0, Luq;->a:Landroid/graphics/Typeface;

    .line 95
    invoke-virtual {p2, p1}, Ldv;->b(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p2, p1}, Ldv;->a(I)V

    .line 95
    :goto_0
    iget-object p0, p0, Luq;->a:Landroid/graphics/Typeface;

    return-object p0

    .line 96
    :cond_2
    new-instance v2, Luk;

    .line 65
    invoke-direct {v2, p0, p1, p5, v0}, Luk;-><init>(Landroid/content/Context;Luj;ILjava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p3, :cond_6

    :try_start_0
    sget-object p1, Lur;->d:Lux;

    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    .line 66
    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 67
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p3

    new-instance p5, Ljava/util/concurrent/atomic/AtomicReference;

    .line 68
    invoke-direct {p5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 69
    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v7, Luv;

    .line 70
    move-object v0, v7

    move-object v1, p5

    move-object v3, p2

    move-object v4, v6

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Luv;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V

    invoke-virtual {p1, v7}, Lux;->a(Ljava/lang/Runnable;)V

    .line 71
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    :try_start_1
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    .line 73
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :goto_1
    :try_start_2
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 75
    :cond_3
    :try_start_3
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    :goto_2
    :try_start_4
    invoke-interface {p3, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 81
    :catch_0
    move-exception p1

    .line 77
    :goto_3
    :try_start_5
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_4

    .line 78
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 79
    :goto_4
    :try_start_6
    check-cast p1, Luq;

    iget-object p0, p1, Luq;->a:Landroid/graphics/Typeface;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    return-object p0

    .line 74
    :cond_4
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_5

    goto :goto_2

    .line 81
    :cond_5
    :try_start_7
    new-instance p1, Ljava/lang/InterruptedException;

    const-string p3, "timeout"

    .line 80
    invoke-direct {p1, p3}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 93
    :catchall_0
    move-exception p1

    .line 74
    :try_start_8
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 81
    throw p1
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    .line 93
    :catch_1
    move-exception p1

    return-object p0

    .line 74
    :cond_6
    new-instance p1, Lul;

    .line 82
    invoke-direct {p1, p2}, Lul;-><init>(Ldv;)V

    sget-object p2, Lur;->b:Ljava/lang/Object;

    .line 83
    monitor-enter p2

    :try_start_9
    sget-object p3, Lur;->c:Lto;

    .line 84
    invoke-virtual {p3, v0}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/ArrayList;

    if-eqz p4, :cond_7

    .line 85
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    monitor-exit p2

    return-object p0

    :cond_7
    new-instance p4, Ljava/util/ArrayList;

    .line 87
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p3, v0, p4}, Lto;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    sget-object p1, Lur;->d:Lux;

    new-instance p2, Lum;

    .line 91
    invoke-direct {p2, v0}, Lum;-><init>(Ljava/lang/String;)V

    new-instance p3, Landroid/os/Handler;

    .line 92
    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    new-instance p4, Luu;

    .line 93
    invoke-direct {p4, v2, p3, p2}, Luu;-><init>(Ljava/util/concurrent/Callable;Landroid/os/Handler;Luw;)V

    invoke-virtual {p1, p4}, Lux;->a(Ljava/lang/Runnable;)V

    return-object p0

    .line 80
    :catchall_1
    move-exception p0

    .line 90
    :try_start_a
    monitor-exit p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method public static a(Landroid/content/Context;[Lup;)Ljava/util/Map;
    .locals 14

    new-instance v0, Ljava/util/HashMap;

    .line 97
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    iget v4, v3, Lup;->e:I

    if-eqz v4, :cond_0

    goto :goto_4

    :cond_0
    iget-object v3, v3, Lup;->a:Landroid/net/Uri;

    .line 99
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "r"

    .line 101
    invoke-virtual {v4, v3, v6, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    goto :goto_3

    .line 108
    :cond_1
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    .line 102
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 103
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 104
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v12

    .line 105
    sget-object v9, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 107
    :try_start_4
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v5, v7

    goto :goto_3

    .line 101
    :catchall_0
    move-exception v7

    .line 102
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 101
    :catchall_1
    move-exception v6

    .line 102
    :try_start_6
    invoke-static {v7, v6}, Ldat;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 109
    :catchall_2
    move-exception v6

    .line 101
    :try_start_7
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    .line 102
    :catchall_3
    move-exception v4

    .line 101
    :try_start_8
    invoke-static {v6, v4}, Ldat;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_2
    throw v6
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 109
    :catch_0
    move-exception v4

    .line 108
    :goto_3
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;Luj;I)Luq;
    .locals 25

    .line 5
    move-object/from16 v0, p1

    const-string v1, "result_code"

    const-string v2, "font_italic"

    const-string v3, "font_weight"

    const-string v4, "font_ttc_index"

    const-string v5, "file_id"

    const-string v6, "_id"

    const-string v7, "content"

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    iget-object v11, v0, Luj;->a:Ljava/lang/String;

    .line 6
    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v13

    if-eqz v13, :cond_12

    .line 8
    iget-object v14, v13, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v15, v0, Luj;->b:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 11
    iget-object v11, v13, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v14, 0x40

    invoke-virtual {v10, v11, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 12
    iget-object v10, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v11, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 14
    :goto_0
    array-length v15, v10

    if-ge v14, v15, :cond_0

    .line 15
    aget-object v15, v10, v14

    invoke-virtual {v15}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    sget-object v10, Lur;->e:Ljava/util/Comparator;

    .line 16
    invoke-static {v11, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v10, v0, Luj;->d:Ljava/util/List;

    const/4 v14, 0x0

    .line 17
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_4

    new-instance v15, Ljava/util/ArrayList;

    .line 18
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/util/Collection;

    invoke-direct {v15, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v9, Lur;->e:Ljava/util/Comparator;

    .line 19
    invoke-static {v15, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 20
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v12

    if-eq v9, v12, :cond_1

    goto :goto_3

    :cond_1
    const/4 v9, 0x0

    .line 21
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_3

    .line 22
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, [B

    invoke-static {v12, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 20
    :cond_2
    :goto_3
    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x0

    goto :goto_1

    .line 22
    :cond_3
    goto :goto_4

    .line 55
    :cond_4
    const/4 v13, 0x0

    .line 22
    :goto_4
    const/4 v8, 0x1

    if-nez v13, :cond_5

    new-instance v0, Luo;

    .line 23
    const/4 v1, 0x0

    invoke-direct {v0, v8, v1}, Luo;-><init>(I[Lup;)V

    const/4 v2, 0x0

    goto/16 :goto_c

    .line 24
    :cond_5
    iget-object v9, v13, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    new-instance v10, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Landroid/net/Uri$Builder;

    .line 26
    invoke-direct {v11}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v11, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    .line 27
    invoke-virtual {v11, v9}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    .line 28
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    new-instance v12, Landroid/net/Uri$Builder;

    .line 29
    invoke-direct {v12}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v12, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 30
    invoke-virtual {v7, v9}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v9, "file"

    .line 31
    invoke-virtual {v7, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 32
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :try_start_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v6, v9, v12

    aput-object v5, v9, v8

    const/4 v12, 0x2

    aput-object v4, v9, v12

    const/4 v12, 0x3

    const-string v13, "font_variation_settings"

    aput-object v13, v9, v12

    const/4 v12, 0x4

    aput-object v3, v9, v12

    const/4 v12, 0x5

    aput-object v2, v9, v12

    const/4 v12, 0x6

    aput-object v1, v9, v12

    const-string v21, "query = ?"

    new-array v12, v8, [Ljava/lang/String;

    iget-object v0, v0, Luj;->c:Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v11

    move-object/from16 v20, v9

    move-object/from16 v22, v12

    invoke-virtual/range {v18 .. v24}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v9, :cond_c

    .line 35
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_c

    .line 36
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    new-instance v10, Ljava/util/ArrayList;

    .line 37
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 39
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 40
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 41
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 42
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 43
    :goto_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, -0x1

    if-eq v0, v6, :cond_6

    .line 44
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move/from16 v23, v12

    goto :goto_6

    .line 49
    :cond_6
    const/16 v23, 0x0

    .line 44
    :goto_6
    if-eq v4, v6, :cond_7

    .line 45
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move/from16 v20, v12

    goto :goto_7

    .line 49
    :cond_7
    const/16 v20, 0x0

    .line 45
    :goto_7
    if-ne v5, v6, :cond_8

    .line 46
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 47
    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v19, v6

    goto :goto_8

    .line 48
    :cond_8
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 49
    invoke-static {v7, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v19, v6

    .line 47
    :goto_8
    const/4 v6, -0x1

    if-eq v3, v6, :cond_9

    .line 50
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move/from16 v21, v6

    goto :goto_9

    .line 52
    :cond_9
    const/16 v6, 0x190

    const/16 v21, 0x190

    .line 50
    :goto_9
    const/4 v6, -0x1

    if-eq v2, v6, :cond_a

    .line 51
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v8, :cond_a

    const/16 v22, 0x1

    goto :goto_a

    .line 52
    :cond_a
    const/16 v22, 0x0

    .line 51
    :goto_a
    new-instance v6, Lup;

    .line 52
    move-object/from16 v18, v6

    invoke-direct/range {v18 .. v23}, Lup;-><init>(Landroid/net/Uri;IIZI)V

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 49
    :cond_b
    goto :goto_b

    .line 60
    :catchall_0
    move-exception v0

    move-object v1, v9

    goto :goto_e

    .line 55
    :cond_c
    nop

    .line 49
    :goto_b
    if-eqz v9, :cond_d

    .line 53
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_d
    const/4 v0, 0x0

    new-array v1, v0, [Lup;

    .line 54
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lup;

    new-instance v1, Luo;

    .line 55
    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Luo;-><init>(I[Lup;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    .line 23
    :goto_c
    iget v1, v0, Luo;->a:I

    if-nez v1, :cond_f

    iget-object v0, v0, Luo;->b:[Lup;

    .line 57
    sget-object v1, Led;->a:Lel;

    .line 58
    move-object/from16 v3, p0

    move/from16 v4, p2

    invoke-virtual {v1, v3, v0, v4}, Lel;->a(Landroid/content/Context;[Lup;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v12, 0x0

    goto :goto_d

    .line 59
    :cond_e
    const/4 v12, -0x3

    .line 58
    :goto_d
    new-instance v1, Luq;

    .line 59
    invoke-direct {v1, v0, v12}, Luq;-><init>(Landroid/graphics/Typeface;I)V

    return-object v1

    :cond_f
    new-instance v0, Luq;

    const/4 v1, -0x2

    .line 56
    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Luq;-><init>(Landroid/graphics/Typeface;I)V

    return-object v0

    .line 61
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :goto_e
    if-eqz v1, :cond_10

    .line 53
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 60
    :cond_10
    throw v0

    .line 9
    :cond_11
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found content provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", but package was not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Luj;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_12
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package found for authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 55
    :catch_0
    move-exception v0

    new-instance v0, Luq;

    .line 61
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Luq;-><init>(Landroid/graphics/Typeface;I)V

    return-object v0
.end method
