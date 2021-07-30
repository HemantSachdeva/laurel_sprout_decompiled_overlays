.class public final Lagv;
.super Lafy;
.source "PG"


# instance fields
.field public final k:Lagf;

.field private final l:Landroid/app/Activity;

.field private final m:Lapi;

.field private final n:Lagd;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lagf;Lapi;Lagd;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p5}, Lafy;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lagv;->l:Landroid/app/Activity;

    .line 2
    invoke-static {p2}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lagv;->k:Lagf;

    iput-object p3, p0, Lagv;->m:Lapi;

    .line 3
    invoke-static {p4}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lagv;->n:Lagd;

    return-void
.end method

.method private final f()Ljava/lang/String;
    .locals 4

    const-string v0, "Failed to fetch auth token."

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lagv;->k:Lagf;

    iget-boolean v3, v2, Lagf;->g:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lagf;->h:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v3, p0, Lagv;->l:Landroid/app/Activity;

    iget-object v2, v2, Lagf;->a:Landroid/accounts/Account;

    .line 5
    invoke-static {v3, v2}, Laok;->a(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 0
    :cond_1
    :goto_0
    iget-object v3, p0, Lagv;->l:Landroid/app/Activity;

    iget-object v2, v2, Lagf;->a:Landroid/accounts/Account;

    .line 4
    invoke-static {v3, v2}, Laok;->a(Landroid/app/Activity;Landroid/accounts/Account;)Lczu;

    move-result-object v2

    invoke-interface {v2}, Lczu;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lary; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_1
    return-object v0

    .line 8
    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_2

    :catch_4
    move-exception v2

    :goto_2
    iget-object v3, p0, Lagv;->j:Lacw;

    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v3, v0, v2, v1}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_3

    .line 5
    :catch_5
    move-exception v2

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    iget-object v3, p0, Lagv;->j:Lacw;

    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v3, v0, v2, v1}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic e()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lagv;->j:Lacw;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lagv;->k:Lagf;

    iget-object v3, v3, Lagf;->a:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Fetching devices for account: %s."

    invoke-virtual {v0, v3, v2}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-direct {p0}, Lagv;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcsi;->f()Lcsi;

    move-result-object v0

    goto/16 :goto_6

    :cond_0
    iget-object v2, p0, Lagv;->k:Lagf;

    iget-boolean v3, v2, Lagf;->g:Z

    if-nez v3, :cond_2

    iget-boolean v5, v2, Lagf;->i:Z

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-nez v3, :cond_4

    iget-boolean v2, v2, Lagf;->h:Z

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v2, 0x1

    :goto_3
    sget-object v3, Latl;->h:Latl;

    invoke-virtual {v3}, Ldkd;->g()Ldjy;

    move-result-object v3

    iget-boolean v6, v3, Ldjy;->b:Z

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v4, v3, Ldjy;->b:Z

    :cond_5
    iget-object v6, v3, Ldjy;->a:Ldkd;

    check-cast v6, Latl;

    iget v7, v6, Latl;->a:I

    or-int/lit16 v7, v7, 0x80

    iput v7, v6, Latl;->a:I

    iput-boolean v1, v6, Latl;->f:Z

    invoke-static {v6}, Latl;->a(Latl;)V

    iget-boolean v6, v3, Ldjy;->b:Z

    if-eqz v6, :cond_6

    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v4, v3, Ldjy;->b:Z

    :cond_6
    iget-object v6, v3, Ldjy;->a:Ldkd;

    check-cast v6, Latl;

    iget v7, v6, Latl;->a:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v6, Latl;->a:I

    iput-boolean v5, v6, Latl;->c:Z

    or-int/lit8 v5, v7, 0x20

    iput v5, v6, Latl;->a:I

    iput-boolean v4, v6, Latl;->d:Z

    or-int/lit8 v5, v5, 0x40

    iput v5, v6, Latl;->a:I

    iput-boolean v2, v6, Latl;->e:Z

    sget-object v2, Ldto;->a:Ldto;

    invoke-virtual {v2}, Ldto;->b()Ldtp;

    move-result-object v2

    invoke-interface {v2}, Ldtp;->a()J

    move-result-wide v5

    long-to-int v2, v5

    iget-boolean v5, v3, Ldjy;->b:Z

    if-eqz v5, :cond_7

    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v4, v3, Ldjy;->b:Z

    :cond_7
    iget-object v5, v3, Ldjy;->a:Ldkd;

    check-cast v5, Latl;

    iget v6, v5, Latl;->a:I

    or-int/2addr v6, v1

    iput v6, v5, Latl;->a:I

    iput v2, v5, Latl;->b:I

    iget-object v2, p0, Lagv;->k:Lagf;

    iget-object v2, v2, Lagf;->k:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit16 v6, v6, 0x100

    iput v6, v5, Latl;->a:I

    iput-object v2, v5, Latl;->g:Ljava/lang/String;

    :cond_8
    sget-object v2, Latq;->g:Latq;

    invoke-virtual {v2}, Ldkd;->g()Ldjy;

    move-result-object v2

    iget-boolean v5, v2, Ldjy;->b:Z

    if-eqz v5, :cond_9

    invoke-virtual {v2}, Ldjy;->b()V

    iput-boolean v4, v2, Ldjy;->b:Z

    :cond_9
    iget-object v5, v2, Ldjy;->a:Ldkd;

    check-cast v5, Latq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v5, Latq;->a:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Latq;->a:I

    iput-object v0, v5, Latq;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Latl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v5, Latq;->f:Latl;

    iget v0, v5, Latq;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v5, Latq;->a:I

    invoke-static {}, Ldti;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lagv;->l:Landroid/app/Activity;

    invoke-static {v0}, Laom;->a(Landroid/content/Context;)J

    move-result-wide v5

    iget-boolean v0, v2, Ldjy;->b:Z

    if-eqz v0, :cond_a

    invoke-virtual {v2}, Ldjy;->b()V

    iput-boolean v4, v2, Ldjy;->b:Z

    :cond_a
    iget-object v0, v2, Ldjy;->a:Ldkd;

    check-cast v0, Latq;

    iget v3, v0, Latq;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Latq;->a:I

    iput-wide v5, v0, Latq;->c:J

    or-int/2addr v3, v1

    iput v3, v0, Latq;->a:I

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Latq;->b:J

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lagv;->l:Landroid/app/Activity;

    invoke-static {v0}, Laom;->a(Landroid/content/Context;)J

    move-result-wide v5

    iget-boolean v0, v2, Ldjy;->b:Z

    if-eqz v0, :cond_c

    invoke-virtual {v2}, Ldjy;->b()V

    iput-boolean v4, v2, Ldjy;->b:Z

    :cond_c
    iget-object v0, v2, Ldjy;->a:Ldkd;

    check-cast v0, Latq;

    iget v3, v0, Latq;->a:I

    or-int/2addr v3, v1

    iput v3, v0, Latq;->a:I

    iput-wide v5, v0, Latq;->b:J

    :goto_4
    iget-object v0, p0, Lagv;->m:Lapi;

    iget-object v3, p0, Lagv;->l:Landroid/app/Activity;

    invoke-virtual {v2}, Ldjy;->f()Ldkd;

    move-result-object v2

    check-cast v2, Latq;

    invoke-virtual {v0, v3, v2}, Lapi;->a(Landroid/content/Context;Latq;)Laua;

    move-result-object v0

    invoke-static {v0}, Lbja;->a(Laua;)V

    iget-object v0, v0, Laua;->d:Ldkk;

    iget-object v2, p0, Lagv;->j:Lacw;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v5, "Fetched %d devices."

    invoke-virtual {v2, v5, v3}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lj$/util/Collection$$Dispatch;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    iget-object v3, p0, Lagv;->n:Lagd;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lagt;

    invoke-direct {v5, v3}, Lagt;-><init>(Lagd;)V

    invoke-interface {v2, v5}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lagu;

    invoke-direct {v3, p0}, Lagu;-><init>(Lagv;)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Laqc;->a()Lj$/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcsi;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2}, Lcsi;->size()I

    move-result v5

    if-eq v3, v5, :cond_d

    iget-object v3, p0, Lagv;->j:Lacw;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2}, Lcsi;->size()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "Filtered out %d invalid devices."

    invoke-virtual {v3, v0, v1}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lapd; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    move-object v0, v2

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_5
    iget-object v1, p0, Lagv;->j:Lacw;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Could not fetch devices."

    invoke-virtual {v1, v3, v0, v2}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-static {}, Lcsi;->f()Lcsi;

    move-result-object v0

    :goto_6
    return-object v0
.end method
