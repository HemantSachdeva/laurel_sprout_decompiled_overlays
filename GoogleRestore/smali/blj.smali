.class public final Lblj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final c:Landroid/content/ComponentName;


# instance fields
.field public final a:Ljava/util/concurrent/CountDownLatch;

.field public volatile b:Lbll;

.field private final d:Lbid;

.field private final e:Landroid/content/ServiceConnection;

.field private f:I

.field private final g:Landroid/content/Context;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    .line 1
    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.gcm.http.GoogleHttpService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lblj;->c:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lblj;->g:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 2
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lblj;->a:Ljava/util/concurrent/CountDownLatch;

    .line 3
    invoke-static {p1}, Lbid;->a(Landroid/content/Context;)Lbid;

    move-result-object p1

    iput-object p1, p0, Lblj;->d:Lbid;

    const/4 p1, 0x0

    iput p1, p0, Lblj;->f:I

    iput-boolean p1, p0, Lblj;->h:Z

    new-instance p1, Lbli;

    .line 4
    invoke-direct {p1, p0}, Lbli;-><init>(Lblj;)V

    iput-object p1, p0, Lblj;->e:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lblj;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lblj;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lblj;->d:Lbid;

    sget-object v1, Lblj;->c:Landroid/content/ComponentName;

    iget-object v2, p0, Lblj;->e:Landroid/content/ServiceConnection;

    const-string v3, "GoogleHttpServiceClient"

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lbid;->a(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lblj;->h:Z

    :cond_0
    iget-boolean v0, p0, Lblj;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 5
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lblj;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lblj;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lblj;->d:Lbid;

    sget-object v1, Lblj;->c:Landroid/content/ComponentName;

    iget-object v2, p0, Lblj;->e:Landroid/content/ServiceConnection;

    .line 6
    invoke-virtual {v0, v1, v2}, Lbid;->a(Landroid/content/ComponentName;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 6
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
