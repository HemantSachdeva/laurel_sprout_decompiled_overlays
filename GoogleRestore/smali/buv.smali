.class final synthetic Lbuv;
.super Ljava/lang/Object;

# interfaces
.implements Lczc;


# instance fields
.field private final a:Lbuw;

.field private final b:Leiw;


# direct methods
.method public constructor <init>(Lbuw;Leiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbuv;->a:Lbuw;

    iput-object p2, p0, Lbuv;->b:Leiw;

    return-void
.end method


# virtual methods
.method public final a()Lczu;
    .locals 23

    move-object/from16 v1, p0

    iget-object v2, v1, Lbuv;->a:Lbuw;

    iget-object v6, v1, Lbuv;->b:Leiw;

    iget-object v0, v2, Lbuw;->f:Leip;

    check-cast v0, Lbrg;

    invoke-virtual {v0}, Lbrg;->b()Lbut;

    move-result-object v0

    iget v0, v0, Lbut;->a:I

    const/4 v9, 0x2

    if-ne v0, v9, :cond_40

    invoke-static {}, Lcqt;->b()V

    iget-object v3, v2, Lbuw;->d:Lbvj;

    monitor-enter v3

    :try_start_0
    iget-object v0, v2, Lbuw;->d:Lbvj;

    iget-object v0, v0, Lbvj;->a:Lcbb;

    sget-object v4, Lcby;->k:Lcby;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldlq;

    const-string v5, "primes.battery.snapshot"

    invoke-static {}, Lcqt;->b()V

    iget-object v7, v0, Lcbb;->b:Landroid/app/Application;

    invoke-static {v7}, Lbqg;->b(Landroid/content/Context;)Z

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-nez v7, :cond_0

    move-object v0, v10

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcbb;->c:Leip;

    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v7, ""

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    :goto_0
    const/4 v12, 0x1

    if-eqz v0, :cond_3

    array-length v5, v0

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    aget-byte v7, v0, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v7, v12, :cond_2

    add-int/lit8 v5, v5, -0x1

    :try_start_1
    invoke-static {}, Ldjr;->b()Ldjr;

    move-result-object v7

    invoke-interface {v4, v0, v5, v7}, Ldlq;->a([BILdjr;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldlj;
    :try_end_1
    .catch Ldkn; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v4, Lcbb;->a:Lcua;

    invoke-virtual {v4}, Lctx;->b()Lcup;

    move-result-object v4

    check-cast v4, Lctz;

    invoke-interface {v4, v0}, Lctz;->a(Ljava/lang/Throwable;)V

    const-string v0, "com/google/android/libraries/performance/primes/persistent/PersistentStorage"

    const-string v5, "readProto"

    const/16 v7, 0x4f

    const-string v8, "PersistentStorage.java"

    invoke-interface {v4, v0, v5, v7, v8}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "failure reading proto"

    invoke-interface {v4, v0}, Lctz;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcbb;->a:Lcua;

    invoke-virtual {v0}, Lctx;->b()Lcup;

    move-result-object v0

    check-cast v0, Lctz;

    const-string v4, "com/google/android/libraries/performance/primes/persistent/PersistentStorage"

    const-string v5, "readProto"

    const/16 v7, 0x52

    const-string v8, "PersistentStorage.java"

    invoke-interface {v0, v4, v5, v7, v8}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "wrong header"

    invoke-interface {v0, v4}, Lctz;->a(Ljava/lang/String;)V

    :cond_3
    :goto_1
    move-object v0, v10

    :goto_2
    check-cast v0, Lcby;

    if-nez v0, :cond_4

    move-object v0, v10

    goto/16 :goto_b

    :cond_4
    iget v4, v0, Lcby;->a:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_6

    iget v4, v0, Lcby;->g:I

    invoke-static {v4}, Leiw;->a(I)Leiw;

    move-result-object v4

    if-nez v4, :cond_5

    sget-object v4, Leiw;->a:Leiw;

    :cond_5
    move-object/from16 v19, v4

    goto :goto_3

    :cond_6
    move-object/from16 v19, v10

    :goto_3
    new-instance v4, Lbvi;

    iget-object v5, v0, Lcby;->b:Lejh;

    if-nez v5, :cond_7

    sget-object v5, Lejh;->ar:Lejh;

    :cond_7
    move-object v14, v5

    iget v5, v0, Lcby;->a:I

    and-int/2addr v5, v9

    if-eqz v5, :cond_8

    iget-wide v7, v0, Lcby;->c:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v15, v5

    goto :goto_4

    :cond_8
    move-object v15, v10

    :goto_4
    iget v5, v0, Lcby;->a:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_9

    iget-wide v7, v0, Lcby;->d:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v16, v5

    goto :goto_5

    :cond_9
    move-object/from16 v16, v10

    :goto_5
    iget v5, v0, Lcby;->a:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_a

    iget-wide v7, v0, Lcby;->e:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v17, v5

    goto :goto_6

    :cond_a
    move-object/from16 v17, v10

    :goto_6
    iget v5, v0, Lcby;->a:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_b

    iget-wide v7, v0, Lcby;->f:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v18, v5

    goto :goto_7

    :cond_b
    move-object/from16 v18, v10

    :goto_7
    iget v5, v0, Lcby;->a:I

    and-int/lit8 v7, v5, 0x40

    if-eqz v7, :cond_c

    iget-object v7, v0, Lcby;->h:Ljava/lang/String;

    move-object/from16 v20, v7

    goto :goto_8

    :cond_c
    move-object/from16 v20, v10

    :goto_8
    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_d

    iget-boolean v5, v0, Lcby;->i:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v21, v5

    goto :goto_9

    :cond_d
    move-object/from16 v21, v10

    :goto_9
    iget v5, v0, Lcby;->a:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_f

    iget-object v0, v0, Lcby;->j:Lekw;

    if-nez v0, :cond_e

    sget-object v0, Lekw;->a:Lekw;

    :cond_e
    move-object/from16 v22, v0

    goto :goto_a

    :cond_f
    move-object/from16 v22, v10

    :goto_a
    move-object v13, v4

    invoke-direct/range {v13 .. v22}, Lbvi;-><init>(Lejh;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Leiw;Ljava/lang/String;Ljava/lang/Boolean;Lekw;)V

    move-object v0, v4

    :goto_b
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v8, v2, Lbuw;->e:Lbup;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v8, Lbup;->b:Lbvl;

    iget-object v5, v5, Lbvl;->a:Landroid/content/Context;

    const-string v7, "systemhealth"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/health/SystemHealthManager;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Landroid/os/health/SystemHealthManager;->takeMyUidSnapshot()Landroid/os/health/HealthStats;

    move-result-object v5

    goto :goto_c

    :cond_10
    move-object v5, v10

    :goto_c
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v13, v8, Lbup;->d:Leip;

    check-cast v13, Lbrg;

    invoke-virtual {v13}, Lbrg;->b()Lbut;

    invoke-static/range {v3 .. v8}, Lbuo;->a(Ljava/lang/Long;Ljava/lang/Long;Landroid/os/health/HealthStats;Leiw;Ljava/lang/Boolean;Lbup;)Lbvi;

    move-result-object v3

    iget-object v4, v2, Lbuw;->d:Lbvj;

    monitor-enter v4

    :try_start_3
    iget-object v5, v2, Lbuw;->d:Lbvj;

    sget-object v6, Lcby;->k:Lcby;

    invoke-virtual {v6}, Ldkd;->g()Ldjy;

    move-result-object v6

    iget-object v7, v3, Lbvi;->a:Lejh;

    if-eqz v7, :cond_12

    iget-boolean v8, v6, Ldjy;->b:Z

    if-eqz v8, :cond_11

    invoke-virtual {v6}, Ldjy;->b()V

    iput-boolean v11, v6, Ldjy;->b:Z

    :cond_11
    iget-object v8, v6, Ldjy;->a:Ldkd;

    check-cast v8, Lcby;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, v8, Lcby;->b:Lejh;

    iget v7, v8, Lcby;->a:I

    or-int/2addr v7, v12

    iput v7, v8, Lcby;->a:I

    :cond_12
    iget-object v7, v3, Lbvi;->b:Ljava/lang/Long;

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-boolean v13, v6, Ldjy;->b:Z

    if-eqz v13, :cond_13

    invoke-virtual {v6}, Ldjy;->b()V

    iput-boolean v11, v6, Ldjy;->b:Z

    :cond_13
    iget-object v13, v6, Ldjy;->a:Ldkd;

    check-cast v13, Lcby;

    iget v14, v13, Lcby;->a:I

    or-int/2addr v9, v14

    iput v9, v13, Lcby;->a:I

    iput-wide v7, v13, Lcby;->c:J

    :cond_14
    iget-object v7, v3, Lbvi;->c:Ljava/lang/Long;

    if-eqz v7, :cond_16

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-boolean v9, v6, Ldjy;->b:Z

    if-eqz v9, :cond_15

    invoke-virtual {v6}, Ldjy;->b()V

    iput-boolean v11, v6, Ldjy;->b:Z

    :cond_15
    iget-object v9, v6, Ldjy;->a:Ldkd;

    check-cast v9, Lcby;

    iget v13, v9, Lcby;->a:I

    or-int/lit8 v13, v13, 0x4

    iput v13, v9, Lcby;->a:I

    iput-wide v7, v9, Lcby;->d:J

    :cond_16
    iget-object v7, v3, Lbvi;->d:Ljava/lang/Long;

    if-eqz v7, :cond_18

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-boolean v9, v6, Ldjy;->b:Z

    if-eqz v9, :cond_17

    invoke-virtual {v6}, Ldjy;->b()V

    iput-boolean v11, v6, Ldjy;->b:Z

    :cond_17
    iget-object v9, v6, Ldjy;->a:Ldkd;

    check-cast v9, Lcby;

    iget v13, v9, Lcby;->a:I

    or-int/lit8 v13, v13, 0x8

    iput v13, v9, Lcby;->a:I

    iput-wide v7, v9, Lcby;->e:J

    :cond_18
    iget-object v7, v3, Lbvi;->e:Ljava/lang/Long;

    if-eqz v7, :cond_1a

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-boolean v9, v6, Ldjy;->b:Z

    if-eqz v9, :cond_19

    invoke-virtual {v6}, Ldjy;->b()V

    iput-boolean v11, v6, Ldjy;->b:Z

    :cond_19
    iget-object v9, v6, Ldjy;->a:Ldkd;

    check-cast v9, Lcby;

    iget v13, v9, Lcby;->a:I

    or-int/lit8 v13, v13, 0x10

    iput v13, v9, Lcby;->a:I

    iput-wide v7, v9, Lcby;->f:J

    :cond_1a
    iget-object v7, v3, Lbvi;->f:Leiw;

    if-eqz v7, :cond_1c

    iget v7, v7, Leiw;->h:I

    iget-boolean v8, v6, Ldjy;->b:Z

    if-eqz v8, :cond_1b

    invoke-virtual {v6}, Ldjy;->b()V

    iput-boolean v11, v6, Ldjy;->b:Z

    :cond_1b
    iget-object v8, v6, Ldjy;->a:Ldkd;

    check-cast v8, Lcby;

    iget v9, v8, Lcby;->a:I

    or-int/lit8 v9, v9, 0x20

    iput v9, v8, Lcby;->a:I

    iput v7, v8, Lcby;->g:I

    :cond_1c
    iget-object v7, v3, Lbvi;->g:Ljava/lang/String;

    if-eqz v7, :cond_1e

    iget-boolean v8, v6, Ldjy;->b:Z

    if-eqz v8, :cond_1d

    invoke-virtual {v6}, Ldjy;->b()V

    iput-boolean v11, v6, Ldjy;->b:Z

    :cond_1d
    iget-object v8, v6, Ldjy;->a:Ldkd;

    check-cast v8, Lcby;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v9, v8, Lcby;->a:I

    or-int/lit8 v9, v9, 0x40

    iput v9, v8, Lcby;->a:I

    iput-object v7, v8, Lcby;->h:Ljava/lang/String;

    :cond_1e
    iget-object v7, v3, Lbvi;->h:Ljava/lang/Boolean;

    if-eqz v7, :cond_20

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-boolean v8, v6, Ldjy;->b:Z

    if-eqz v8, :cond_1f

    invoke-virtual {v6}, Ldjy;->b()V

    iput-boolean v11, v6, Ldjy;->b:Z

    :cond_1f
    iget-object v8, v6, Ldjy;->a:Ldkd;

    check-cast v8, Lcby;

    iget v9, v8, Lcby;->a:I

    or-int/lit16 v9, v9, 0x80

    iput v9, v8, Lcby;->a:I

    iput-boolean v7, v8, Lcby;->i:Z

    :cond_20
    iget-object v7, v3, Lbvi;->i:Lekw;

    if-eqz v7, :cond_22

    iget-boolean v8, v6, Ldjy;->b:Z

    if-eqz v8, :cond_21

    invoke-virtual {v6}, Ldjy;->b()V

    iput-boolean v11, v6, Ldjy;->b:Z

    :cond_21
    iget-object v8, v6, Ldjy;->a:Ldkd;

    check-cast v8, Lcby;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, v8, Lcby;->j:Lekw;

    iget v7, v8, Lcby;->a:I

    or-int/lit16 v7, v7, 0x100

    iput v7, v8, Lcby;->a:I

    :cond_22
    iget-object v5, v5, Lbvj;->a:Lcbb;

    invoke-virtual {v6}, Ldjy;->f()Ldkd;

    move-result-object v6

    check-cast v6, Lcby;

    invoke-static {v6}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6}, Ldlj;->b()[B

    move-result-object v6

    const-string v7, "primes.battery.snapshot"

    invoke-static {}, Lcqt;->b()V

    iget-object v8, v5, Lcbb;->b:Landroid/app/Application;

    invoke-static {v8}, Lbqg;->b(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_23

    const/4 v5, 0x0

    goto :goto_d

    :cond_23
    array-length v8, v6

    add-int/lit8 v9, v8, 0x1

    new-array v9, v9, [B

    aput-byte v12, v9, v11

    invoke-static {v6, v11, v9, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v5, Lcbb;->c:Leip;

    invoke-interface {v5}, Leip;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-static {v9, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    :goto_d
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_3f

    sget-object v4, Lbuw;->a:Lcua;

    invoke-virtual {v4}, Lctx;->f()Lcup;

    move-result-object v4

    check-cast v4, Lctz;

    const-string v5, "com/google/android/libraries/performance/primes/metrics/battery/BatteryMetricServiceImpl"

    const-string v6, "lambda$captureAndLog$3"

    const/16 v7, 0x139

    const-string v8, "BatteryMetricServiceImpl.java"

    invoke-interface {v4, v5, v6, v7, v8}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v4, v0, v3}, Lctz;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v2, Lbuw;->e:Lbup;

    if-eqz v0, :cond_3d

    iget-object v5, v0, Lbvi;->d:Ljava/lang/Long;

    iget-object v6, v3, Lbvi;->d:Ljava/lang/Long;

    invoke-static {v5, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    iget-object v5, v0, Lbvi;->e:Ljava/lang/Long;

    iget-object v6, v3, Lbvi;->e:Ljava/lang/Long;

    invoke-static {v5, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    iget-object v5, v0, Lbvi;->b:Ljava/lang/Long;

    if-eqz v5, :cond_3d

    iget-object v5, v0, Lbvi;->c:Ljava/lang/Long;

    if-eqz v5, :cond_3d

    iget-object v5, v3, Lbvi;->b:Ljava/lang/Long;

    if-eqz v5, :cond_3d

    iget-object v6, v3, Lbvi;->c:Ljava/lang/Long;

    if-nez v6, :cond_24

    goto/16 :goto_18

    :cond_24
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, v0, Lbvi;->b:Ljava/lang/Long;

    invoke-static {v7}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-object v7, v3, Lbvi;->c:Ljava/lang/Long;

    invoke-static {v7}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v9, v0, Lbvi;->c:Ljava/lang/Long;

    invoke-static {v9}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long/2addr v7, v13

    const-wide/16 v13, 0x0

    cmp-long v9, v7, v13

    if-lez v9, :cond_3d

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v15, 0x19

    cmp-long v9, v5, v15

    if-ltz v9, :cond_25

    long-to-double v5, v5

    long-to-double v7, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    const-wide v7, 0x3f023456789abcdfL    # 3.472222222222222E-5

    cmpg-double v9, v5, v7

    if-gtz v9, :cond_3d

    :cond_25
    iget-object v4, v4, Lbup;->b:Lbvl;

    iget-object v5, v3, Lbvi;->a:Lejh;

    iget-object v6, v0, Lbvi;->a:Lejh;

    invoke-static {v5, v6}, Lcne;->a(Lejh;Lejh;)Lejh;

    move-result-object v5

    if-nez v5, :cond_26

    move-object v4, v10

    goto/16 :goto_15

    :cond_26
    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldjy;

    invoke-virtual {v6, v5}, Ldjy;->a(Ldkd;)V

    iget-object v4, v4, Lbvl;->b:Lbuz;

    iget-object v5, v6, Ldjy;->a:Ldkd;

    check-cast v5, Lejh;

    iget-object v5, v5, Lejh;->g:Ldkk;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v5, 0x0

    :goto_e
    iget-object v7, v6, Ldjy;->a:Ldkd;

    check-cast v7, Lejh;

    iget-object v7, v7, Lejh;->g:Ldkk;

    invoke-interface {v7}, Ldkk;->size()I

    move-result v7

    if-ge v5, v7, :cond_27

    sget-object v7, Lbuy;->a:Lbuy;

    invoke-virtual {v6, v5}, Ldjy;->a(I)Lejg;

    move-result-object v7

    invoke-virtual {v4, v7}, Lbuz;->a(Lejg;)Lejg;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ldjy;->e(ILejg;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_27
    iget-object v5, v6, Ldjy;->a:Ldkd;

    check-cast v5, Lejh;

    iget-object v5, v5, Lejh;->h:Ldkk;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v5, 0x0

    :goto_f
    iget-object v7, v6, Ldjy;->a:Ldkd;

    check-cast v7, Lejh;

    iget-object v7, v7, Lejh;->h:Ldkk;

    invoke-interface {v7}, Ldkk;->size()I

    move-result v7

    if-ge v5, v7, :cond_28

    sget-object v7, Lbuy;->a:Lbuy;

    invoke-virtual {v6, v5}, Ldjy;->b(I)Lejg;

    move-result-object v7

    invoke-virtual {v4, v7}, Lbuz;->a(Lejg;)Lejg;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ldjy;->f(ILejg;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_28
    iget-object v5, v6, Ldjy;->a:Ldkd;

    check-cast v5, Lejh;

    iget-object v5, v5, Lejh;->i:Ldkk;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v5, 0x0

    :goto_10
    iget-object v7, v6, Ldjy;->a:Ldkd;

    check-cast v7, Lejh;

    iget-object v7, v7, Lejh;->i:Ldkk;

    invoke-interface {v7}, Ldkk;->size()I

    move-result v7

    if-ge v5, v7, :cond_29

    sget-object v7, Lbuy;->a:Lbuy;

    invoke-virtual {v6, v5}, Ldjy;->c(I)Lejg;

    move-result-object v7

    invoke-virtual {v4, v7}, Lbuz;->a(Lejg;)Lejg;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ldjy;->g(ILejg;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_29
    iget-object v5, v6, Ldjy;->a:Ldkd;

    check-cast v5, Lejh;

    iget-object v5, v5, Lejh;->j:Ldkk;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v5, 0x0

    :goto_11
    iget-object v7, v6, Ldjy;->a:Ldkd;

    check-cast v7, Lejh;

    iget-object v7, v7, Lejh;->j:Ldkk;

    invoke-interface {v7}, Ldkk;->size()I

    move-result v7

    if-ge v5, v7, :cond_2a

    sget-object v7, Lbuy;->a:Lbuy;

    invoke-virtual {v6, v5}, Ldjy;->d(I)Lejg;

    move-result-object v7

    invoke-virtual {v4, v7}, Lbuz;->a(Lejg;)Lejg;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ldjy;->d(ILejg;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_2a
    iget-object v5, v6, Ldjy;->a:Ldkd;

    check-cast v5, Lejh;

    iget-object v5, v5, Lejh;->k:Ldkk;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v5, 0x0

    :goto_12
    iget-object v7, v6, Ldjy;->a:Ldkd;

    check-cast v7, Lejh;

    iget-object v7, v7, Lejh;->k:Ldkk;

    invoke-interface {v7}, Ldkk;->size()I

    move-result v7

    if-ge v5, v7, :cond_2b

    sget-object v7, Lbuy;->a:Lbuy;

    invoke-virtual {v6, v5}, Ldjy;->e(I)Lejg;

    move-result-object v7

    invoke-virtual {v4, v7}, Lbuz;->a(Lejg;)Lejg;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ldjy;->c(ILejg;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_2b
    iget-object v5, v6, Ldjy;->a:Ldkd;

    check-cast v5, Lejh;

    iget-object v5, v5, Lejh;->l:Ldkk;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v5, 0x0

    :goto_13
    iget-object v7, v6, Ldjy;->a:Ldkd;

    check-cast v7, Lejh;

    iget-object v7, v7, Lejh;->l:Ldkk;

    invoke-interface {v7}, Ldkk;->size()I

    move-result v7

    if-ge v5, v7, :cond_2c

    sget-object v7, Lbuy;->a:Lbuy;

    invoke-virtual {v6, v5}, Ldjy;->f(I)Lejg;

    move-result-object v7

    invoke-virtual {v4, v7}, Lbuz;->a(Lejg;)Lejg;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ldjy;->a(ILejg;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_2c
    iget-object v5, v6, Ldjy;->a:Ldkd;

    check-cast v5, Lejh;

    iget-object v5, v5, Lejh;->n:Ldkk;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v5, 0x0

    :goto_14
    iget-object v7, v6, Ldjy;->a:Ldkd;

    check-cast v7, Lejh;

    iget-object v7, v7, Lejh;->n:Ldkk;

    invoke-interface {v7}, Ldkk;->size()I

    move-result v7

    if-ge v5, v7, :cond_2d

    sget-object v7, Lbuy;->a:Lbuy;

    invoke-virtual {v6, v5}, Ldjy;->g(I)Lejg;

    move-result-object v7

    invoke-virtual {v4, v7}, Lbuz;->a(Lejg;)Lejg;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ldjy;->b(ILejg;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_2d
    invoke-virtual {v6}, Ldjy;->f()Ldkd;

    move-result-object v4

    check-cast v4, Lejh;

    :goto_15
    if-nez v4, :cond_2e

    sget-object v0, Lbup;->a:Lcua;

    invoke-virtual {v0}, Lctx;->d()Lcup;

    move-result-object v0

    check-cast v0, Lctz;

    const-string v4, "com/google/android/libraries/performance/primes/metrics/battery/BatteryCapture"

    const-string v5, "createBatteryMetric"

    const/16 v6, 0x7f

    const-string v7, "BatteryCapture.java"

    invoke-interface {v0, v4, v5, v6, v7}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "null diff"

    goto/16 :goto_19

    :cond_2e
    iget v5, v4, Lejh;->a:I

    and-int/2addr v5, v12

    if-eqz v5, :cond_3c

    iget-wide v5, v4, Lejh;->c:J

    cmp-long v7, v5, v13

    if-gtz v7, :cond_2f

    goto/16 :goto_17

    :cond_2f
    sget-object v5, Leix;->k:Leix;

    invoke-virtual {v5}, Ldkd;->g()Ldjy;

    move-result-object v5

    iget-object v6, v3, Lbvi;->b:Ljava/lang/Long;

    invoke-static {v6}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v0, Lbvi;->b:Ljava/lang/Long;

    invoke-static {v8}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-boolean v8, v5, Ldjy;->b:Z

    if-eqz v8, :cond_30

    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v11, v5, Ldjy;->b:Z

    :cond_30
    iget-object v8, v5, Ldjy;->a:Ldkd;

    check-cast v8, Leix;

    iget v9, v8, Leix;->a:I

    or-int/lit8 v9, v9, 0x40

    iput v9, v8, Leix;->a:I

    iput-wide v6, v8, Leix;->h:J

    iget-object v6, v0, Lbvi;->f:Leiw;

    if-eqz v6, :cond_31

    iget v6, v6, Leiw;->h:I

    iput v6, v8, Leix;->b:I

    or-int/lit8 v6, v9, 0x1

    iput v6, v8, Leix;->a:I

    :cond_31
    iget-object v6, v0, Lbvi;->g:Ljava/lang/String;

    if-eqz v6, :cond_35

    iget-object v6, v0, Lbvi;->h:Ljava/lang/Boolean;

    invoke-static {v6}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_33

    iget-object v6, v0, Lbvi;->g:Ljava/lang/String;

    invoke-static {v6}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v7, v5, Ldjy;->b:Z

    if-eqz v7, :cond_32

    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v11, v5, Ldjy;->b:Z

    :cond_32
    iget-object v7, v5, Ldjy;->a:Ldkd;

    check-cast v7, Leix;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v7, Leix;->a:I

    or-int/lit8 v8, v8, 0x8

    iput v8, v7, Leix;->a:I

    iput-object v6, v7, Leix;->e:Ljava/lang/String;

    goto :goto_16

    :cond_33
    iget-object v6, v0, Lbvi;->g:Ljava/lang/String;

    invoke-static {v6}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v7, v5, Ldjy;->b:Z

    if-eqz v7, :cond_34

    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v11, v5, Ldjy;->b:Z

    :cond_34
    iget-object v7, v5, Ldjy;->a:Ldkd;

    check-cast v7, Leix;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v7, Leix;->a:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v7, Leix;->a:I

    iput-object v6, v7, Leix;->d:Ljava/lang/String;

    :cond_35
    :goto_16
    iget-object v0, v0, Lbvi;->i:Lekw;

    if-eqz v0, :cond_36

    iget-object v6, v5, Ldjy;->a:Ldkd;

    check-cast v6, Leix;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v6, Leix;->f:Lekw;

    iget v0, v6, Leix;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v6, Leix;->a:I

    :cond_36
    iget-object v0, v3, Lbvi;->f:Leiw;

    if-eqz v0, :cond_37

    iget-object v6, v5, Ldjy;->a:Ldkd;

    check-cast v6, Leix;

    iget v0, v0, Leiw;->h:I

    iput v0, v6, Leix;->g:I

    iget v0, v6, Leix;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v6, Leix;->a:I

    :cond_37
    iget-object v0, v3, Lbvi;->b:Ljava/lang/Long;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-boolean v0, v5, Ldjy;->b:Z

    if-eqz v0, :cond_38

    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v11, v5, Ldjy;->b:Z

    :cond_38
    iget-object v0, v5, Ldjy;->a:Ldkd;

    check-cast v0, Leix;

    iget v8, v0, Leix;->a:I

    or-int/lit16 v8, v8, 0x100

    iput v8, v0, Leix;->a:I

    iput-wide v6, v0, Leix;->j:J

    :cond_39
    iget-object v0, v5, Ldjy;->a:Ldkd;

    check-cast v0, Leix;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v0, Leix;->i:Lejh;

    iget v4, v0, Leix;->a:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v0, Leix;->a:I

    sget-object v0, Lepj;->w:Lepj;

    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    sget-object v4, Leiy;->c:Leiy;

    invoke-virtual {v4}, Ldkd;->g()Ldjy;

    move-result-object v4

    iget-boolean v6, v4, Ldjy;->b:Z

    if-eqz v6, :cond_3a

    invoke-virtual {v4}, Ldjy;->b()V

    iput-boolean v11, v4, Ldjy;->b:Z

    :cond_3a
    iget-object v6, v4, Ldjy;->a:Ldkd;

    check-cast v6, Leiy;

    invoke-virtual {v5}, Ldjy;->f()Ldkd;

    move-result-object v5

    check-cast v5, Leix;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, v6, Leiy;->b:Leix;

    iget v5, v6, Leiy;->a:I

    or-int/2addr v5, v12

    iput v5, v6, Leiy;->a:I

    iget-boolean v5, v0, Ldjy;->b:Z

    if-eqz v5, :cond_3b

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v11, v0, Ldjy;->b:Z

    :cond_3b
    iget-object v5, v0, Ldjy;->a:Ldkd;

    check-cast v5, Lepj;

    invoke-virtual {v4}, Ldjy;->f()Ldkd;

    move-result-object v4

    check-cast v4, Leiy;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lepj;->j:Leiy;

    iget v4, v5, Lepj;->a:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v5, Lepj;->a:I

    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lepj;

    goto :goto_1a

    :cond_3c
    :goto_17
    sget-object v0, Lbup;->a:Lcua;

    invoke-virtual {v0}, Lctx;->d()Lcup;

    move-result-object v0

    check-cast v0, Lctz;

    const-string v4, "com/google/android/libraries/performance/primes/metrics/battery/BatteryCapture"

    const-string v5, "createBatteryMetric"

    const/16 v6, 0x83

    const-string v7, "BatteryCapture.java"

    invoke-interface {v0, v4, v5, v6, v7}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "invalid realtime"

    goto :goto_19

    :cond_3d
    :goto_18
    sget-object v0, Lbup;->a:Lcua;

    invoke-virtual {v0}, Lctx;->d()Lcup;

    move-result-object v0

    check-cast v0, Lctz;

    const-string v4, "com/google/android/libraries/performance/primes/metrics/battery/BatteryCapture"

    const-string v5, "createBatteryMetric"

    const/16 v6, 0x7a

    const-string v7, "BatteryCapture.java"

    invoke-interface {v0, v4, v5, v6, v7}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "inconsistent stats"

    :goto_19
    invoke-interface {v0, v4}, Lctz;->a(Ljava/lang/String;)V

    :goto_1a
    if-nez v10, :cond_3e

    goto :goto_1b

    :cond_3e
    iget-object v0, v2, Lbuw;->g:Lbvq;

    iget-object v2, v3, Lbvi;->g:Ljava/lang/String;

    iget-object v3, v3, Lbvi;->i:Lekw;

    invoke-virtual {v0, v2, v12, v10, v3}, Lbvq;->a(Ljava/lang/String;ZLepj;Lekw;)Lczu;

    move-result-object v0

    goto :goto_1c

    :cond_3f
    invoke-virtual {v2}, Lbuw;->b()V

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Failure storing persistent snapshot and helper data"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_40
    :goto_1b
    sget-object v0, Lczr;->a:Lczu;

    :goto_1c
    return-object v0
.end method
