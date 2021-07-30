.class public final Lbqj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Lbqj;

.field public static b:Lbql;


# instance fields
.field private volatile c:Lbqh;

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbqj;->c:Lbqh;

    .line 1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lbqj;->d:Landroid/content/Context;

    sget-object v2, Lbqj;->b:Lbql;

    .line 3
    invoke-virtual {v2}, Lbql;->a()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lbqj;->b:Lbql;

    .line 4
    invoke-static {p1}, Lbir;->a(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110043

    .line 6
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v4

    .line 7
    const-string v5, "google_app_id"

    invoke-static {v5, v3, v4}, Lbja;->a(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Ldbd;

    .line 9
    const-string v5, "google_api_key"

    invoke-static {v5, v3, v4}, Lbja;->a(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 10
    const-string v5, "firebase_database_url"

    invoke-static {v5, v3, v4}, Lbja;->a(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 11
    const-string v5, "ga_trackingId"

    invoke-static {v5, v3, v4}, Lbja;->a(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 12
    const-string v5, "gcm_defaultSenderId"

    invoke-static {v5, v3, v4}, Lbja;->a(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 13
    const-string v5, "google_storage_bucket"

    invoke-static {v5, v3, v4}, Lbja;->a(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 14
    const-string v5, "project_id"

    invoke-static {v5, v3, v4}, Lbja;->a(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Ldbd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    iput-object v0, v2, Lbql;->a:Ldbd;

    sput-object v2, Lbqj;->b:Lbql;

    :cond_1
    sget-object v0, Lbqj;->b:Lbql;

    .line 15
    invoke-virtual {v0}, Lbql;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    const-string p1, "FirebaseCrash1p"

    const-string v0, "Failed to load FirebaseOptions from resources."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-object v0, Lbqj;->b:Lbql;

    iget-object v0, v0, Lbql;->a:Ldbd;

    .line 17
    invoke-static {p1, v0}, Ldbb;->a(Landroid/content/Context;Ldbd;)V

    .line 18
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    new-instance v0, Lbqi;

    .line 19
    invoke-direct {v0, p0, p1, v1}, Lbqi;-><init>(Lbqj;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method


# virtual methods
.method public final a()Lbqh;
    .locals 2

    iget-object v0, p0, Lbqj;->c:Lbqh;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbqj;->c:Lbqh;

    if-nez v0, :cond_0

    new-instance v0, Lbqh;

    iget-object v1, p0, Lbqj;->d:Landroid/content/Context;

    .line 20
    invoke-direct {v0, v1}, Lbqh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbqj;->c:Lbqh;

    .line 21
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
