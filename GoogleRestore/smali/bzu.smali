.class final synthetic Lbzu;
.super Ljava/lang/Object;

# interfaces
.implements Lczc;


# instance fields
.field private final a:Lbzv;


# direct methods
.method public constructor <init>(Lbzv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzu;->a:Lbzv;

    return-void
.end method


# virtual methods
.method public final a()Lczu;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lbzu;->a:Lbzv;

    iget-object v2, v1, Lbzv;->e:Leip;

    check-cast v2, Lbrp;

    invoke-virtual {v2}, Lbrp;->b()Lbzt;

    move-result-object v2

    iget v3, v2, Lbzt;->c:I

    const/4 v4, 0x2

    const-string v5, "lambda$sendInBackgroundInternal$0"

    const-string v6, "StorageMetricServiceImpl.java"

    const-string v7, "com/google/android/libraries/performance/primes/metrics/storage/StorageMetricServiceImpl"

    if-ne v3, v4, :cond_13

    iget-boolean v2, v2, Lbzt;->a:Z

    if-eqz v2, :cond_0

    sget-object v1, Lbzv;->a:Lcua;

    invoke-virtual {v1}, Lctx;->e()Lcup;

    move-result-object v1

    check-cast v1, Lctz;

    const/16 v2, 0x68

    invoke-interface {v1, v7, v5, v2, v6}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "Ignoring storage metric request, triggering mechanism didn\'t match manual capture configuration"

    goto/16 :goto_2

    :cond_0
    iget-object v2, v1, Lbzv;->d:Landroid/app/Application;

    invoke-static {v2}, Lbqg;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v1, Lbzv;->a:Lcua;

    invoke-virtual {v1}, Lctx;->e()Lcup;

    move-result-object v1

    check-cast v1, Lctz;

    const/16 v2, 0x6e

    invoke-interface {v1, v7, v5, v2, v6}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "Device locked."

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lcqt;->b()V

    iget-object v2, v1, Lbzv;->f:Lcbd;

    sget-wide v8, Lbzv;->b:J

    invoke-static {}, Lcqt;->b()V

    iget-object v3, v2, Lcbd;->b:Landroid/app/Application;

    invoke-static {v3}, Lbqg;->b(Landroid/content/Context;)Z

    move-result v3

    const-string v10, "primes.packageMetric.lastSendTime"

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v2, Lcbd;->b:Landroid/app/Application;

    invoke-static {v3}, Lbqg;->b(Landroid/content/Context;)Z

    move-result v3

    const-wide/16 v11, -0x1

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcbd;->c:Leip;

    invoke-interface {v3}, Leip;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences;

    invoke-interface {v3, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    goto :goto_0

    :cond_3
    move-wide v13, v11

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    cmp-long v3, v15, v13

    if-gez v3, :cond_5

    iget-object v2, v2, Lcbd;->c:Leip;

    invoke-interface {v2}, Leip;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcbd;->a:Lcua;

    invoke-virtual {v2}, Lctx;->d()Lcup;

    move-result-object v2

    check-cast v2, Lctz;

    const/16 v3, 0x31

    const-string v13, "com/google/android/libraries/performance/primes/sampling/PersistentRateLimiting"

    const-string v14, "hasRecentTimeStamp"

    const-string v4, "PersistentRateLimiting.java"

    invoke-interface {v2, v13, v14, v3, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "Failure storing timestamp to SharedPreferences"

    invoke-interface {v2, v3}, Lctz;->a(Ljava/lang/String;)V

    :cond_4
    move-wide v13, v11

    :cond_5
    cmp-long v2, v13, v11

    if-eqz v2, :cond_6

    add-long/2addr v13, v8

    cmp-long v2, v15, v13

    if-gtz v2, :cond_6

    sget-object v1, Lbzv;->a:Lcua;

    invoke-virtual {v1}, Lctx;->e()Lcup;

    move-result-object v1

    check-cast v1, Lctz;

    const/16 v2, 0x72

    invoke-interface {v1, v7, v5, v2, v6}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "Ignoring storage metric request, storage metric collection occurred too recently."

    goto/16 :goto_2

    :cond_6
    :goto_1
    iget-object v2, v1, Lbzv;->d:Landroid/app/Application;

    invoke-static {v2}, Lbzo;->a(Landroid/content/Context;)Landroid/content/pm/PackageStats;

    move-result-object v2

    if-nez v2, :cond_7

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PackageStats capture failed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ldab;->a(Ljava/lang/Throwable;)Lczu;

    move-result-object v1

    goto/16 :goto_3

    :cond_7
    sget-object v3, Lepj;->w:Lepj;

    invoke-virtual {v3}, Ldkd;->g()Ldjy;

    move-result-object v3

    sget-object v4, Leot;->k:Leot;

    invoke-virtual {v4}, Ldkd;->g()Ldjy;

    move-result-object v4

    iget-wide v8, v2, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-boolean v5, v4, Ldjy;->b:Z

    const/4 v11, 0x0

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Ldjy;->b()V

    iput-boolean v11, v4, Ldjy;->b:Z

    :cond_8
    iget-object v5, v4, Ldjy;->a:Ldkd;

    check-cast v5, Leot;

    iget v12, v5, Leot;->a:I

    const/4 v13, 0x1

    or-int/2addr v12, v13

    iput v12, v5, Leot;->a:I

    iput-wide v8, v5, Leot;->b:J

    iget-wide v8, v2, Landroid/content/pm/PackageStats;->codeSize:J

    iget-boolean v5, v4, Ldjy;->b:Z

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Ldjy;->b()V

    iput-boolean v11, v4, Ldjy;->b:Z

    :cond_9
    iget-object v5, v4, Ldjy;->a:Ldkd;

    check-cast v5, Leot;

    iget v12, v5, Leot;->a:I

    const/4 v14, 0x2

    or-int/2addr v12, v14

    iput v12, v5, Leot;->a:I

    iput-wide v8, v5, Leot;->c:J

    iget-wide v8, v2, Landroid/content/pm/PackageStats;->dataSize:J

    iget-boolean v5, v4, Ldjy;->b:Z

    if-eqz v5, :cond_a

    invoke-virtual {v4}, Ldjy;->b()V

    iput-boolean v11, v4, Ldjy;->b:Z

    :cond_a
    iget-object v5, v4, Ldjy;->a:Ldkd;

    check-cast v5, Leot;

    iget v12, v5, Leot;->a:I

    or-int/lit8 v12, v12, 0x4

    iput v12, v5, Leot;->a:I

    iput-wide v8, v5, Leot;->d:J

    iget-wide v8, v2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-boolean v5, v4, Ldjy;->b:Z

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Ldjy;->b()V

    iput-boolean v11, v4, Ldjy;->b:Z

    :cond_b
    iget-object v5, v4, Ldjy;->a:Ldkd;

    check-cast v5, Leot;

    iget v12, v5, Leot;->a:I

    or-int/lit8 v12, v12, 0x8

    iput v12, v5, Leot;->a:I

    iput-wide v8, v5, Leot;->e:J

    iget-wide v8, v2, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-boolean v5, v4, Ldjy;->b:Z

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Ldjy;->b()V

    iput-boolean v11, v4, Ldjy;->b:Z

    :cond_c
    iget-object v5, v4, Ldjy;->a:Ldkd;

    check-cast v5, Leot;

    iget v12, v5, Leot;->a:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v5, Leot;->a:I

    iput-wide v8, v5, Leot;->f:J

    iget-wide v8, v2, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-boolean v5, v4, Ldjy;->b:Z

    if-eqz v5, :cond_d

    invoke-virtual {v4}, Ldjy;->b()V

    iput-boolean v11, v4, Ldjy;->b:Z

    :cond_d
    iget-object v5, v4, Ldjy;->a:Ldkd;

    check-cast v5, Leot;

    iget v12, v5, Leot;->a:I

    or-int/lit8 v12, v12, 0x20

    iput v12, v5, Leot;->a:I

    iput-wide v8, v5, Leot;->g:J

    iget-wide v8, v2, Landroid/content/pm/PackageStats;->externalMediaSize:J

    iget-boolean v5, v4, Ldjy;->b:Z

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Ldjy;->b()V

    iput-boolean v11, v4, Ldjy;->b:Z

    :cond_e
    iget-object v5, v4, Ldjy;->a:Ldkd;

    check-cast v5, Leot;

    iget v12, v5, Leot;->a:I

    or-int/lit8 v12, v12, 0x40

    iput v12, v5, Leot;->a:I

    iput-wide v8, v5, Leot;->h:J

    iget-wide v8, v2, Landroid/content/pm/PackageStats;->externalObbSize:J

    iget-boolean v2, v4, Ldjy;->b:Z

    if-eqz v2, :cond_f

    invoke-virtual {v4}, Ldjy;->b()V

    iput-boolean v11, v4, Ldjy;->b:Z

    :cond_f
    iget-object v2, v4, Ldjy;->a:Ldkd;

    check-cast v2, Leot;

    iget v5, v2, Leot;->a:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v2, Leot;->a:I

    iput-wide v8, v2, Leot;->i:J

    invoke-virtual {v4}, Ldjy;->f()Ldkd;

    move-result-object v2

    check-cast v2, Leot;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldjy;

    invoke-virtual {v4, v2}, Ldjy;->a(Ldkd;)V

    iget-object v2, v1, Lbzv;->e:Leip;

    check-cast v2, Lbrp;

    invoke-virtual {v2}, Lbrp;->b()Lbzt;

    iget-boolean v2, v3, Ldjy;->b:Z

    if-eqz v2, :cond_10

    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v11, v3, Ldjy;->b:Z

    :cond_10
    iget-object v2, v3, Ldjy;->a:Ldkd;

    check-cast v2, Lepj;

    invoke-virtual {v4}, Ldjy;->f()Ldkd;

    move-result-object v4

    check-cast v4, Leot;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v2, Lepj;->i:Leot;

    iget v4, v2, Lepj;->a:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v2, Lepj;->a:I

    iget-object v2, v1, Lbzv;->f:Lcbd;

    iget-object v4, v2, Lcbd;->b:Landroid/app/Application;

    invoke-static {v4}, Lbqg;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v2, v2, Lcbd;->c:Leip;

    invoke-interface {v2}, Leip;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-interface {v2, v10, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    sget-object v2, Lbzv;->a:Lcua;

    invoke-virtual {v2}, Lctx;->d()Lcup;

    move-result-object v2

    check-cast v2, Lctz;

    const/16 v4, 0x96

    const-string v5, "send"

    invoke-interface {v2, v7, v5, v4, v6}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "Failure storing timestamp persistently"

    invoke-interface {v2, v4}, Lctz;->a(Ljava/lang/String;)V

    :cond_12
    iget-object v1, v1, Lbzv;->c:Lbvq;

    invoke-virtual {v3}, Ldjy;->f()Ldkd;

    move-result-object v2

    check-cast v2, Lepj;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v13, v2, v3}, Lbvq;->a(Ljava/lang/String;ZLepj;Lekw;)Lczu;

    move-result-object v1

    goto :goto_3

    :cond_13
    sget-object v1, Lbzv;->a:Lcua;

    invoke-virtual {v1}, Lctx;->e()Lcup;

    move-result-object v1

    check-cast v1, Lctz;

    const/16 v2, 0x63

    invoke-interface {v1, v7, v5, v2, v6}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "Ignoring storage metric request, not enabled in StorageMetricConfigurations"

    :goto_2
    invoke-interface {v1, v2}, Lctz;->a(Ljava/lang/String;)V

    sget-object v1, Lczr;->a:Lczu;

    :goto_3
    return-object v1
.end method
