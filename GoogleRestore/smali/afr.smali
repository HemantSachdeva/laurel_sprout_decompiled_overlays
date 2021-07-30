.class public final synthetic Lafr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lafv;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/accounts/Account;

.field private final d:J

.field private final e:Lczv;


# direct methods
.method public constructor <init>(Lafv;Landroid/content/Context;Landroid/accounts/Account;JLczv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lafr;->a:Lafv;

    iput-object p2, p0, Lafr;->b:Landroid/content/Context;

    iput-object p3, p0, Lafr;->c:Landroid/accounts/Account;

    iput-wide p4, p0, Lafr;->d:J

    iput-object p6, p0, Lafr;->e:Lczv;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lafr;->a:Lafv;

    iget-object v1, p0, Lafr;->b:Landroid/content/Context;

    iget-object v2, p0, Lafr;->c:Landroid/accounts/Account;

    iget-wide v3, p0, Lafr;->d:J

    iget-object v5, p0, Lafr;->e:Lczv;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Lorg/chromium/net/CronetEngine$Builder;

    invoke-direct {v8, v1}, Lorg/chromium/net/CronetEngine$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lorg/chromium/net/CronetEngine$Builder;->build()Lorg/chromium/net/CronetEngine;

    move-result-object v8

    sget-object v9, Ldtv;->a:Ldtv;

    invoke-virtual {v9}, Ldtv;->e()Ldtw;

    move-result-object v9

    invoke-interface {v9}, Ldtw;->e()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ldtv;->a:Ldtv;

    invoke-virtual {v10}, Ldtv;->e()Ldtw;

    move-result-object v10

    invoke-interface {v10}, Ldtw;->f()J

    move-result-wide v10

    long-to-int v11, v10

    invoke-static {v9, v11, v8}, Ldzz;->a(Ljava/lang/String;ILorg/chromium/net/CronetEngine;)Ldzz;

    move-result-object v8

    invoke-virtual {v8}, Ldzz;->a()Ldxk;

    move-result-object v6

    new-instance v8, Ldqe;

    invoke-direct {v8}, Ldqe;-><init>()V

    invoke-static {v8, v6}, Ldqf;->a(Leig;Ldvi;)Leih;

    move-result-object v8

    check-cast v8, Ldqf;

    invoke-static {v1, v2}, Lafv;->a(Landroid/content/Context;Landroid/accounts/Account;)Ldvo;

    move-result-object v2

    invoke-virtual {v8, v2}, Leih;->a(Ldvo;)Leih;

    move-result-object v2

    check-cast v2, Ldqf;

    iput-object v2, v0, Lafv;->b:Ldqf;

    iget-object v0, v0, Lafv;->e:Lafu;

    sget-object v2, Ldqd;->c:Ldqd;

    invoke-virtual {v2}, Ldkd;->g()Ldjy;

    move-result-object v2

    sget-object v8, Ldpz;->b:Ldpz;

    invoke-virtual {v8}, Ldkd;->g()Ldjy;

    move-result-object v8

    sget-object v9, Ldqc;->c:Ldqc;

    invoke-virtual {v9}, Ldkd;->g()Ldjy;

    move-result-object v9

    invoke-static {v1}, Laqg;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v10, v9, Ldjy;->b:Z

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Ldjy;->b()V

    iput-boolean v7, v9, Ldjy;->b:Z

    :cond_0
    iget-object v10, v9, Ldjy;->a:Ldkd;

    check-cast v10, Ldqc;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v10, Ldqc;->a:Ljava/lang/String;

    sget-object v1, Ldqb;->g:Ldqb;

    iget-boolean v10, v9, Ldjy;->b:Z

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Ldjy;->b()V

    iput-boolean v7, v9, Ldjy;->b:Z

    :cond_1
    iget-object v10, v9, Ldjy;->a:Ldkd;

    check-cast v10, Ldqc;

    invoke-virtual {v1}, Ldqb;->a()I

    move-result v1

    iput v1, v10, Ldqc;->b:I

    invoke-virtual {v9}, Ldjy;->f()Ldkd;

    move-result-object v1

    check-cast v1, Ldqc;

    iget-boolean v9, v8, Ldjy;->b:Z

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Ldjy;->b()V

    iput-boolean v7, v8, Ldjy;->b:Z

    :cond_2
    iget-object v9, v8, Ldjy;->a:Ldkd;

    check-cast v9, Ldpz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v9, Ldpz;->a:Ldqc;

    iget-boolean v1, v2, Ldjy;->b:Z

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ldjy;->b()V

    iput-boolean v7, v2, Ldjy;->b:Z

    :cond_3
    iget-object v1, v2, Ldjy;->a:Ldkd;

    check-cast v1, Ldqd;

    invoke-virtual {v8}, Ldjy;->f()Ldkd;

    move-result-object v8

    check-cast v8, Ldpz;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v1, Ldqd;->a:Ldpz;

    iget-boolean v1, v2, Ldjy;->b:Z

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Ldjy;->b()V

    iput-boolean v7, v2, Ldjy;->b:Z

    :cond_4
    iget-object v1, v2, Ldjy;->a:Ldkd;

    check-cast v1, Ldqd;

    iput-wide v3, v1, Ldqd;->b:J

    invoke-virtual {v2}, Ldjy;->f()Ldkd;

    move-result-object v1

    check-cast v1, Ldqd;

    iget-object v0, v0, Lafu;->a:Lafv;

    iget-object v0, v0, Lafv;->b:Ldqf;

    iget-object v2, v0, Leih;->a:Ldvi;

    sget-object v3, Ldqg;->a:Ldxx;

    if-nez v3, :cond_6

    const-class v3, Ldqg;

    monitor-enter v3
    :try_end_0
    .catch Ldyx; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v4, Ldqg;->a:Ldxx;

    if-nez v4, :cond_5

    invoke-static {}, Ldxx;->a()Ldxu;

    move-result-object v4

    sget-object v8, Ldxw;->a:Ldxw;

    iput-object v8, v4, Ldxu;->c:Ldxw;

    const-string v8, "google.subscriptions.backup.v1.GoogleOneBackupService"

    const-string v9, "GetBackup"

    invoke-static {v8, v9}, Ldxx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Ldxu;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ldxu;->b()V

    sget-object v8, Ldqd;->c:Ldqd;

    invoke-static {v8}, Leie;->a(Ldlj;)Ldxv;

    move-result-object v8

    iput-object v8, v4, Ldxu;->a:Ldxv;

    sget-object v8, Ldqa;->b:Ldqa;

    invoke-static {v8}, Leie;->a(Ldlj;)Ldxv;

    move-result-object v8

    iput-object v8, v4, Ldxu;->b:Ldxv;

    invoke-virtual {v4}, Ldxu;->a()Ldxx;

    move-result-object v4

    sput-object v4, Ldqg;->a:Ldxx;

    :cond_5
    monitor-exit v3

    move-object v3, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_6
    :goto_0
    iget-object v0, v0, Leih;->b:Ldvh;

    invoke-static {v2, v3, v0, v1}, Leil;->a(Ldvi;Ldxx;Ldvh;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqa;

    invoke-static {v0}, Ldne;->a(Ldlj;)Ldnd;

    move-result-object v0
    :try_end_2
    .catch Ldyx; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v6}, Ldxk;->c()V

    if-eqz v5, :cond_9

    invoke-interface {v5}, Lczv;->shutdown()V

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lafv;->a:Lcua;

    invoke-virtual {v1}, Lctx;->a()Lcup;

    move-result-object v1

    check-cast v1, Lctz;

    invoke-interface {v1, v0}, Lctz;->a(Ljava/lang/Throwable;)V

    const-string v0, "com/google/android/apps/pixelmigrate/cloudrestore/googleone/GoogleOneGrpcHelperImpl"

    const-string v2, "lambda$fetchMmsBackupMetadata$0"

    const/16 v3, 0x62

    const-string v4, "GoogleOneGrpcHelperImpl.java"

    invoke-interface {v1, v0, v2, v3, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "Exception while trying to fetch Mms backup metadata"

    invoke-interface {v1, v0}, Lctz;->a(Ljava/lang/String;)V

    sget-object v0, Ldqa;->b:Ldqa;

    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v7, v0, Ldjy;->b:Z

    :cond_7
    iget-object v1, v0, Ldjy;->a:Ldkd;

    check-cast v1, Ldqa;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Ldqa;->a:J

    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Ldqa;

    invoke-static {v0}, Ldne;->a(Ldlj;)Ldnd;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ldxk;->c()V

    :cond_8
    if-eqz v5, :cond_9

    invoke-interface {v5}, Lczv;->shutdown()V

    :cond_9
    return-object v0

    :goto_1
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ldxk;->c()V

    :cond_a
    if-eqz v5, :cond_b

    invoke-interface {v5}, Lczv;->shutdown()V

    :cond_b
    throw v0
.end method
