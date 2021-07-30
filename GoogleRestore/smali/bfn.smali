.class public final Lbfn;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;
.source "PG"


# instance fields
.field private final j:Lbde;


# direct methods
.method public constructor <init>(Lbde;Lbev;)V
    .locals 2

    .line 1
    sget-object v0, Lbdh;->a:Lbeo;

    .line 2
    const-string v1, "GoogleApiClient must not be null"

    invoke-static {p2, v1}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lbev;)V

    .line 3
    const-string p2, "Api must not be null"

    invoke-static {v0, p2}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lbfn;->j:Lbde;

    return-void
.end method

.method private final a(Landroid/os/RemoteException;)V
    .locals 3

    .line 69
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    .line 70
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;[B)V

    .line 71
    invoke-virtual {p0, v0}, Lbfn;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public final a(Lbem;)V
    .locals 21

    move-object/from16 v1, p0

    .line 4
    :try_start_0
    move-object/from16 v2, p1

    check-cast v2, Lbdk;

    new-instance v3, Lbdl;

    .line 5
    invoke-direct {v3, v1}, Lbdl;-><init>(Lbfn;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    iget-object v0, v1, Lbfn;->j:Lbde;

    iget-object v5, v0, Lbde;->a:Lbdh;

    iget-object v5, v5, Lbdh;->j:Ljava/util/List;

    .line 6
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdd;

    .line 7
    invoke-interface {v0}, Lbdd;->a()Lbde;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 20
    :cond_1
    sget-object v5, Lbdh;->i:Ljava/util/List;

    .line 8
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdd;

    .line 9
    invoke-interface {v0}, Lbdd;->a()Lbde;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    if-nez v0, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    .line 8
    :cond_3
    move-object v5, v0

    .line 7
    :goto_0
    if-nez v5, :cond_4

    .line 12
    :try_start_2
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v3, v0}, Lbdl;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_4
    iget-object v0, v5, Lbde;->a:Lbdh;

    iget-object v6, v0, Lbdh;->h:Lbdf;

    iget-object v0, v5, Lbde;->c:Ljava/lang/String;

    iget-object v8, v5, Lbde;->f:Ldka;

    iget-object v8, v8, Ldka;->a:Ldkd;

    .line 13
    check-cast v8, Ldrt;

    iget v8, v8, Ldrt;->e:I

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    .line 20
    :cond_5
    const/4 v0, 0x0

    .line 14
    :cond_6
    :goto_1
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_7

    goto/16 :goto_e

    .line 64
    :cond_7
    move-object v11, v6

    check-cast v11, Lbdo;

    iget-object v11, v11, Lbdo;->c:Landroid/content/Context;

    if-nez v11, :cond_8

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    .line 34
    :cond_8
    sget-object v11, Lbdo;->d:Lj$/util/concurrent/ConcurrentHashMap;

    .line 16
    invoke-virtual {v11, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lccv;

    if-nez v11, :cond_a

    sget-object v11, Lbdo;->b:Lcct;

    .line 17
    sget-object v12, Ldsr;->b:Ldsr;

    sget-object v13, Lbdn;->a:Lccs;

    .line 18
    invoke-static {v11, v0, v12, v13, v10}, Lccv;->a(Lcct;Ljava/lang/String;Ljava/lang/Object;Lccs;Z)Lccv;

    move-result-object v11

    sget-object v12, Lbdo;->d:Lj$/util/concurrent/ConcurrentHashMap;

    .line 19
    invoke-virtual {v12, v0, v11}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccv;

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    move-object v11, v0

    goto :goto_2

    .line 20
    :cond_a
    nop

    :goto_2
    invoke-virtual {v11}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsr;

    iget-object v0, v0, Ldsr;->a:Ldkk;

    .line 21
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_b
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ldsq;

    iget v0, v12, Ldsq;->a:I

    and-int/2addr v0, v9

    if-eqz v0, :cond_c

    iget v0, v12, Ldsq;->b:I

    if-eqz v0, :cond_c

    if-ne v0, v8, :cond_b

    :cond_c
    iget-object v13, v12, Ldsq;->c:Ljava/lang/String;

    move-object v0, v6

    check-cast v0, Lbdo;

    iget-object v0, v0, Lbdo;->c:Landroid/content/Context;

    .line 22
    invoke-static {v0}, Lbqg;->a(Landroid/content/Context;)Z

    move-result v14

    const-wide/16 v15, 0x0

    if-eqz v14, :cond_d

    move-object v7, v11

    move-wide v10, v15

    goto/16 :goto_a

    .line 42
    :cond_d
    sget-object v14, Lbdo;->f:Ljava/lang/Long;

    if-nez v14, :cond_14

    if-eqz v0, :cond_13

    sget-object v14, Lbdo;->e:Ljava/lang/Boolean;

    if-nez v14, :cond_f

    .line 23
    invoke-static {v0}, Lbjo;->b(Landroid/content/Context;)Lbjn;

    move-result-object v14

    iget-object v14, v14, Lbjn;->a:Landroid/content/Context;

    const-string v7, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    .line 24
    invoke-virtual {v14, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_e

    const/4 v7, 0x1

    goto :goto_5

    .line 34
    :cond_e
    const/4 v7, 0x0

    .line 23
    :goto_5
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sput-object v7, Lbdo;->e:Ljava/lang/Boolean;

    :cond_f
    sget-object v7, Lbdo;->e:Ljava/lang/Boolean;

    .line 25
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lbqa;->a(Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v7

    const-string v14, "android_id"

    .line 26
    sget-object v4, Lbqa;->i:Ljava/util/HashMap;

    .line 28
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v4, v14, v9}, Lbqa;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_10

    .line 33
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    goto :goto_8

    .line 29
    :cond_10
    invoke-static {v0, v14}, Lbqa;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    if-nez v0, :cond_11

    move-wide/from16 v17, v15

    goto :goto_6

    .line 30
    :cond_11
    :try_start_3
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 31
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 29
    :goto_6
    goto :goto_7

    .line 47
    :catch_0
    move-exception v0

    move-wide/from16 v17, v15

    .line 26
    :goto_7
    :try_start_4
    sget-object v0, Lbqa;->i:Ljava/util/HashMap;

    .line 32
    invoke-static {v7, v0, v14, v4}, Lbqa;->a(Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    :goto_8
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lbdo;->f:Ljava/lang/Long;

    goto :goto_9

    .line 31
    :cond_12
    nop

    .line 34
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lbdo;->f:Ljava/lang/Long;

    goto :goto_9

    :cond_13
    move-object v7, v11

    move-wide v10, v15

    goto :goto_a

    .line 26
    :cond_14
    :goto_9
    sget-object v0, Lbdo;->f:Ljava/lang/Long;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object v7, v11

    move-wide/from16 v10, v17

    .line 22
    :goto_a
    const/16 v0, 0x8

    if-eqz v13, :cond_16

    .line 36
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_15

    goto :goto_b

    .line 44
    :cond_15
    sget-object v9, Lbdo;->a:Ljava/nio/charset/Charset;

    .line 38
    invoke-virtual {v13, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    .line 39
    array-length v13, v9

    add-int/2addr v13, v0

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {v0, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 42
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lbef;->a([B)J

    move-result-wide v9

    goto :goto_c

    .line 36
    :cond_16
    :goto_b
    nop

    .line 37
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lbef;->a([B)J

    move-result-wide v9

    :goto_c
    iget-wide v13, v12, Ldsq;->d:J

    iget-wide v11, v12, Ldsq;->e:J

    cmp-long v0, v13, v15

    if-ltz v0, :cond_19

    cmp-long v0, v11, v15

    if-lez v0, :cond_19

    cmp-long v0, v9, v15

    if-ltz v0, :cond_17

    .line 43
    rem-long/2addr v9, v11

    goto :goto_d

    .line 65
    :cond_17
    nop

    .line 44
    const-wide v15, 0x7fffffffffffffffL

    rem-long v17, v15, v11

    const-wide/16 v19, 0x1

    add-long v17, v17, v19

    and-long/2addr v9, v15

    rem-long/2addr v9, v11

    add-long v17, v17, v9

    rem-long v9, v17, v11

    .line 43
    :goto_d
    cmp-long v0, v9, v13

    if-ltz v0, :cond_18

    .line 65
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(Lbey;)V
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    .line 43
    :cond_18
    move-object v11, v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_4

    .line 37
    :cond_19
    move-object v11, v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_4

    .line 14
    :cond_1a
    :goto_e
    :try_start_5
    new-instance v6, Lbdi;

    new-instance v7, Lbdp;

    iget-object v0, v5, Lbde;->a:Lbdh;

    iget-object v8, v0, Lbdh;->e:Ljava/lang/String;

    iget-object v0, v0, Lbdh;->d:Landroid/content/Context;

    sget v9, Lbdh;->c:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1c

    const-class v9, Lbdh;

    monitor-enter v9
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    sget v11, Lbdh;->c:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ne v11, v10, :cond_1b

    .line 45
    :try_start_7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v10, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lbdh;->c:I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_f

    .line 48
    :catch_1
    move-exception v0

    :try_start_8
    const-string v4, "ClearcutLogger"

    const-string v10, "This can\'t happen."

    .line 47
    invoke-static {v4, v10, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :cond_1b
    :goto_f
    monitor-exit v9

    goto :goto_10

    .line 59
    :catchall_0
    move-exception v0

    .line 48
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0

    :cond_1c
    :goto_10
    sget v0, Lbdh;->c:I

    iget-object v4, v5, Lbde;->c:Ljava/lang/String;

    iget-object v9, v5, Lbde;->d:Ldsg;

    .line 49
    invoke-direct {v7, v8, v0, v4, v9}, Lbdp;-><init>(Ljava/lang/String;ILjava/lang/String;Ldsg;)V

    iget-object v0, v5, Lbde;->f:Ldka;

    .line 50
    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Ldrt;

    iget-object v4, v5, Lbde;->b:Ljava/util/ArrayList;

    if-eqz v4, :cond_1d

    sget-object v5, Lbdh;->b:[Ljava/lang/String;

    .line 51
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_11

    .line 64
    :cond_1d
    const/4 v4, 0x0

    .line 52
    :goto_11
    invoke-direct {v6, v7, v0, v4}, Lbdi;-><init>(Lbdp;Ldrt;[Ljava/lang/String;)V

    iget-object v0, v6, Lbdi;->i:Ldrt;

    const/4 v4, 0x5

    .line 53
    invoke-virtual {v0, v4}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldjy;

    .line 54
    invoke-virtual {v4, v0}, Ldjy;->a(Ldkd;)V

    .line 55
    check-cast v4, Ldka;

    .line 56
    invoke-virtual {v4}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Ldrt;

    iput-object v0, v6, Lbdi;->i:Ldrt;

    iget-object v0, v6, Lbdi;->i:Ldrt;

    .line 57
    invoke-virtual {v0}, Ldhi;->b()[B

    move-result-object v0

    iput-object v0, v6, Lbdi;->b:[B
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4

    .line 60
    :try_start_a
    invoke-virtual {v2}, Lbhl;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lbdm;

    .line 61
    invoke-virtual {v0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v2

    .line 62
    invoke-static {v2, v3}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 63
    invoke-static {v2, v6}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 64
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lact;->c(ILandroid/os/Parcel;)V

    return-void

    .line 11
    :catch_2
    move-exception v0

    const-string v2, "ClearcutLoggerApiImpl"

    const-string v3, "derived ClearcutLogger.MessageProducer "

    .line 58
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "MessageProducer"

    const/16 v3, 0xa

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Lbfn;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 66
    :catch_3
    move-exception v0

    const-string v2, "ClearcutLoggerApiImpl"

    const-string v3, "derived ClearcutLogger.EventModifier "

    .line 10
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "EventModifier"

    const/16 v3, 0xa

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Lbfn;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_a
    .catch Landroid/os/DeadObjectException; {:try_start_a .. :try_end_a} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4

    return-void

    .line 68
    :catch_4
    move-exception v0

    .line 66
    invoke-direct {v1, v0}, Lbfn;->a(Landroid/os/RemoteException;)V

    return-void

    .line 9
    :catch_5
    move-exception v0

    .line 67
    invoke-direct {v1, v0}, Lbfn;->a(Landroid/os/RemoteException;)V

    .line 68
    goto :goto_13

    :goto_12
    throw v0

    :goto_13
    goto :goto_12
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Failed result must not be success"

    invoke-static {v0, v1}, Lbir;->b(ZLjava/lang/Object;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(Lbey;)V

    return-void
.end method
