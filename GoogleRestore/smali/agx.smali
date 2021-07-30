.class public final Lagx;
.super Lafy;
.source "PG"


# instance fields
.field private final k:Landroid/content/Context;

.field private final l:Lafq;

.field private final m:Landroid/accounts/Account;

.field private final n:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lafq;Landroid/accounts/Account;JLjava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p6}, Lafy;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 2
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lagx;->k:Landroid/content/Context;

    iput-object p2, p0, Lagx;->l:Lafq;

    iput-object p3, p0, Lagx;->m:Landroid/accounts/Account;

    iput-wide p4, p0, Lagx;->n:J

    return-void
.end method


# virtual methods
.method public final bridge synthetic e()Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "Failed to fetch G1 MMS backup info."

    const-string v3, "Failed to fetch G1 restore eligibility."

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, v1, Lagx;->l:Lafq;

    iget-object v8, v1, Lagx;->k:Landroid/content/Context;

    iget-object v9, v1, Lagx;->m:Landroid/accounts/Account;

    const/16 v10, 0xa

    invoke-static {v10}, Laqq;->a(I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v11

    invoke-static {v11}, Ldab;->a(Ljava/util/concurrent/ExecutorService;)Lczv;

    move-result-object v11

    new-instance v12, Lafs;

    move-object v13, v0

    check-cast v13, Lafv;

    invoke-direct {v12, v13, v8, v9, v11}, Lafs;-><init>(Lafv;Landroid/content/Context;Landroid/accounts/Account;Lczv;)V

    invoke-interface {v11, v12}, Lczv;->a(Ljava/util/concurrent/Callable;)Lczu;

    move-result-object v8

    invoke-static {}, Ldtv;->d()J

    move-result-wide v11

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    check-cast v0, Lafv;

    iget-object v0, v0, Lafv;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v8, v11, v12, v9, v0}, Ldab;->a(Lczu;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lczu;

    move-result-object v0

    invoke-interface {v0}, Lczu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldnd;

    sget-object v8, Ldqm;->b:Ldqm;

    invoke-static {}, Ldjr;->a()Ldjr;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ldnd;->a(Ldlj;Ldjr;)Ldlj;

    move-result-object v0

    check-cast v0, Ldqm;

    iget v0, v0, Ldqm;->a:I

    invoke-static {v0}, Ldql;->a(I)Ldql;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ldql;->d:Ldql;

    :cond_0
    sget-object v3, Ldql;->b:Ldql;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v0, v3, :cond_1

    :try_start_1
    iget-object v0, v1, Lagx;->l:Lafq;

    iget-object v13, v1, Lagx;->k:Landroid/content/Context;

    iget-object v14, v1, Lagx;->m:Landroid/accounts/Account;

    iget-wide v8, v1, Lagx;->n:J

    invoke-static {v10}, Laqq;->a(I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    invoke-static {v3}, Ldab;->a(Ljava/util/concurrent/ExecutorService;)Lczv;

    move-result-object v3

    new-instance v10, Lafr;

    move-object v12, v0

    check-cast v12, Lafv;

    move-object v11, v10

    move-wide v15, v8

    move-object/from16 v17, v3

    invoke-direct/range {v11 .. v17}, Lafr;-><init>(Lafv;Landroid/content/Context;Landroid/accounts/Account;JLczv;)V

    invoke-interface {v3, v10}, Lczv;->a(Ljava/util/concurrent/Callable;)Lczu;

    move-result-object v3

    invoke-static {}, Ldtv;->d()J

    move-result-wide v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    check-cast v0, Lafv;

    iget-object v0, v0, Lafv;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v3, v8, v9, v10, v0}, Ldab;->a(Lczu;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lczu;

    move-result-object v0

    invoke-interface {v0}, Lczu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldnd;

    sget-object v3, Ldqa;->b:Ldqa;

    invoke-static {}, Ldjr;->a()Ldjr;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Ldnd;->a(Ldlj;Ldjr;)Ldlj;

    move-result-object v0

    check-cast v0, Ldqa;

    iget-wide v5, v0, Ldqa;->a:J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, v1, Lagx;->j:Lacw;

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v0, v8}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    iget-object v3, v1, Lagx;->j:Lacw;

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v0, v8}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {v4, v5, v6}, Lagw;->a(ZJ)Lagw;

    move-result-object v0

    goto :goto_2

    :catch_2
    move-exception v0

    iget-object v2, v1, Lagx;->j:Lacw;

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v8}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    iget-object v2, v1, Lagx;->j:Lacw;

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v8}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    invoke-static {v7, v5, v6}, Lagw;->a(ZJ)Lagw;

    move-result-object v0

    :goto_2
    iget-object v2, v1, Lagx;->j:Lacw;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v5, v0, Lagw;->b:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v7

    iget-wide v5, v0, Lagw;->c:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Fetched G1 backup info: isUserEligible = %b, mmsBackupSizeBytes = %d"

    invoke-virtual {v2, v4, v3}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
