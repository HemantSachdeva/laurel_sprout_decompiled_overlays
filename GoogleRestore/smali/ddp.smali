.class public final Lddp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lddk;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ldfr;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lddp;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lddp;->c:Landroid/content/Context;

    iput-object p2, p0, Lddp;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Lbpi;
    .locals 2

    sget-object v0, Lddp;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lddp;->b:Ldfr;

    if-nez v1, :cond_0

    new-instance v1, Ldfr;

    .line 1
    invoke-direct {v1, p0}, Ldfr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lddp;->b:Ldfr;

    :cond_0
    sget-object p0, Lddp;->b:Ldfr;

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0, p1}, Ldfr;->a(Landroid/content/Intent;)Lbpi;

    move-result-object p0

    sget-object p1, Lddr;->a:Ljava/util/concurrent/Executor;

    sget-object v0, Lddn;->a:Lbom;

    .line 5
    invoke-virtual {p0, p1, v0}, Lbpi;->a(Ljava/util/concurrent/Executor;Lbom;)Lbpi;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Lbpi;
    .locals 4

    .line 6
    const-string v0, "gcm.rawData64"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 7
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v2, "rawData"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lddp;->c:Landroid/content/Context;

    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_1

    if-nez v2, :cond_1

    .line 15
    invoke-static {v0, p1}, Lddp;->a(Landroid/content/Context;Landroid/content/Intent;)Lbpi;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lddp;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lddl;

    .line 12
    invoke-direct {v2, v0, p1}, Lddl;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 13
    invoke-static {v1, v2}, Lbqb;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lbpi;

    move-result-object v1

    iget-object v2, p0, Lddp;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lddm;

    .line 14
    invoke-direct {v3, v0, p1}, Lddm;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3}, Lbpi;->b(Ljava/util/concurrent/Executor;Lbom;)Lbpi;

    move-result-object p1

    .line 15
    :goto_0
    return-object p1
.end method
