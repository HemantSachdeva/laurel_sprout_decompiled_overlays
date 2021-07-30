.class public final synthetic Lafs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lafv;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/accounts/Account;

.field private final d:Lczv;


# direct methods
.method public constructor <init>(Lafv;Landroid/content/Context;Landroid/accounts/Account;Lczv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lafs;->a:Lafv;

    iput-object p2, p0, Lafs;->b:Landroid/content/Context;

    iput-object p3, p0, Lafs;->c:Landroid/accounts/Account;

    iput-object p4, p0, Lafs;->d:Lczv;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lafs;->a:Lafv;

    iget-object v1, p0, Lafs;->b:Landroid/content/Context;

    iget-object v2, p0, Lafs;->c:Landroid/accounts/Account;

    iget-object v3, p0, Lafs;->d:Lczv;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Lorg/chromium/net/CronetEngine$Builder;

    invoke-direct {v6, v1}, Lorg/chromium/net/CronetEngine$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lorg/chromium/net/CronetEngine$Builder;->build()Lorg/chromium/net/CronetEngine;

    move-result-object v6

    sget-object v7, Ldtv;->a:Ldtv;

    invoke-virtual {v7}, Ldtv;->e()Ldtw;

    move-result-object v7

    invoke-interface {v7}, Ldtw;->g()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ldtv;->a:Ldtv;

    invoke-virtual {v8}, Ldtv;->e()Ldtw;

    move-result-object v8

    invoke-interface {v8}, Ldtw;->h()J

    move-result-wide v8

    long-to-int v9, v8

    invoke-static {v7, v9, v6}, Ldzz;->a(Ljava/lang/String;ILorg/chromium/net/CronetEngine;)Ldzz;

    move-result-object v6

    invoke-virtual {v6}, Ldzz;->a()Ldxk;

    move-result-object v4

    new-instance v6, Ldqn;

    invoke-direct {v6}, Ldqn;-><init>()V

    invoke-static {v6, v4}, Ldqo;->a(Leig;Ldvi;)Leih;

    move-result-object v6

    check-cast v6, Ldqo;

    invoke-static {v1, v2}, Lafv;->a(Landroid/content/Context;Landroid/accounts/Account;)Ldvo;

    move-result-object v2

    invoke-virtual {v6, v2}, Leih;->a(Ldvo;)Leih;

    move-result-object v2

    check-cast v2, Ldqo;

    iput-object v2, v0, Lafv;->c:Ldqo;

    iget-object v0, v0, Lafv;->f:Laft;

    sget-object v2, Ldqk;->b:Ldqk;

    invoke-virtual {v2}, Ldkd;->g()Ldjy;

    move-result-object v2

    sget-object v6, Ldqi;->b:Ldqi;

    invoke-virtual {v6}, Ldkd;->g()Ldjy;

    move-result-object v6

    sget-object v7, Ldqh;->c:Ldqh;

    invoke-virtual {v7}, Ldkd;->g()Ldjy;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, v7, Ldjy;->b:Z

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Ldjy;->b()V

    iput-boolean v5, v7, Ldjy;->b:Z

    :cond_0
    iget-object v9, v7, Ldjy;->a:Ldkd;

    check-cast v9, Ldqh;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v9, Ldqh;->b:Ljava/lang/String;

    invoke-static {v1}, Laqg;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v8, v7, Ldjy;->b:Z

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ldjy;->b()V

    iput-boolean v5, v7, Ldjy;->b:Z

    :cond_1
    iget-object v8, v7, Ldjy;->a:Ldkd;

    check-cast v8, Ldqh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v8, Ldqh;->a:Ljava/lang/String;

    iget-boolean v1, v6, Ldjy;->b:Z

    if-eqz v1, :cond_2

    invoke-virtual {v6}, Ldjy;->b()V

    iput-boolean v5, v6, Ldjy;->b:Z

    :cond_2
    iget-object v1, v6, Ldjy;->a:Ldkd;

    check-cast v1, Ldqi;

    invoke-virtual {v7}, Ldjy;->f()Ldkd;

    move-result-object v7

    check-cast v7, Ldqh;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, v1, Ldqi;->a:Ldqh;

    iget-boolean v1, v2, Ldjy;->b:Z

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ldjy;->b()V

    iput-boolean v5, v2, Ldjy;->b:Z

    :cond_3
    iget-object v1, v2, Ldjy;->a:Ldkd;

    check-cast v1, Ldqk;

    invoke-virtual {v6}, Ldjy;->f()Ldkd;

    move-result-object v6

    check-cast v6, Ldqi;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v1, Ldqk;->a:Ldqi;

    invoke-virtual {v2}, Ldjy;->f()Ldkd;

    move-result-object v1

    check-cast v1, Ldqk;

    iget-object v0, v0, Laft;->a:Lafv;

    iget-object v0, v0, Lafv;->c:Ldqo;

    iget-object v2, v0, Leih;->a:Ldvi;

    sget-object v6, Ldqp;->a:Ldxx;

    if-nez v6, :cond_5

    const-class v6, Ldqp;

    monitor-enter v6
    :try_end_0
    .catch Ldyx; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v7, Ldqp;->a:Ldxx;

    if-nez v7, :cond_4

    invoke-static {}, Ldxx;->a()Ldxu;

    move-result-object v7

    sget-object v8, Ldxw;->a:Ldxw;

    iput-object v8, v7, Ldxu;->c:Ldxw;

    const-string v8, "google.subscriptions.settings.v1.SettingsService"

    const-string v9, "GetBackupAndRestoreEligibility"

    invoke-static {v8, v9}, Ldxx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Ldxu;->d:Ljava/lang/String;

    invoke-virtual {v7}, Ldxu;->b()V

    sget-object v8, Ldqk;->b:Ldqk;

    invoke-static {v8}, Leie;->a(Ldlj;)Ldxv;

    move-result-object v8

    iput-object v8, v7, Ldxu;->a:Ldxv;

    sget-object v8, Ldqm;->b:Ldqm;

    invoke-static {v8}, Leie;->a(Ldlj;)Ldxv;

    move-result-object v8

    iput-object v8, v7, Ldxu;->b:Ldxv;

    invoke-virtual {v7}, Ldxu;->a()Ldxx;

    move-result-object v7

    sput-object v7, Ldqp;->a:Ldxx;

    :cond_4
    monitor-exit v6

    move-object v6, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_5
    :goto_0
    iget-object v0, v0, Leih;->b:Ldvh;

    invoke-static {v2, v6, v0, v1}, Leil;->a(Ldvi;Ldxx;Ldvh;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqm;

    invoke-static {v0}, Ldne;->a(Ldlj;)Ldnd;

    move-result-object v0
    :try_end_2
    .catch Ldyx; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v4}, Ldxk;->c()V

    if-eqz v3, :cond_8

    invoke-interface {v3}, Lczv;->shutdown()V

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

    const-string v2, "lambda$fetchGoogleOneRestoreEligibility$1"

    const/16 v6, 0xa6

    const-string v7, "GoogleOneGrpcHelperImpl.java"

    invoke-interface {v1, v0, v2, v6, v7}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "Exception while trying to query G1 restore eligibility"

    invoke-interface {v1, v0}, Lctz;->a(Ljava/lang/String;)V

    sget-object v0, Ldqm;->b:Ldqm;

    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    sget-object v1, Ldql;->c:Ldql;

    iget-boolean v2, v0, Ldjy;->b:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v5, v0, Ldjy;->b:Z

    :cond_6
    iget-object v2, v0, Ldjy;->a:Ldkd;

    check-cast v2, Ldqm;

    invoke-virtual {v1}, Ldql;->a()I

    move-result v1

    iput v1, v2, Ldqm;->a:I

    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Ldqm;

    invoke-static {v0}, Ldne;->a(Ldlj;)Ldnd;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ldxk;->c()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-interface {v3}, Lczv;->shutdown()V

    :cond_8
    return-object v0

    :goto_1
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ldxk;->c()V

    :cond_9
    if-eqz v3, :cond_a

    invoke-interface {v3}, Lczv;->shutdown()V

    :cond_a
    throw v0
.end method
