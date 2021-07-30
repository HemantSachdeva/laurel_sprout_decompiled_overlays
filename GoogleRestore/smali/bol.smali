.class public final Lbol;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:J

.field public static p:Ljava/util/concurrent/ScheduledExecutorService;

.field public static volatile q:Lcme;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Landroid/os/PowerManager$WakeLock;

.field public d:I

.field public e:Ljava/util/concurrent/Future;

.field public f:J

.field public g:Z

.field public h:J

.field public i:Z

.field public j:I

.field public k:Z

.field public l:Lblm;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/util/Map;

.field public final o:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final r:Ljava/util/Set;

.field private s:Landroid/os/WorkSource;

.field private final t:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x16e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lbol;->a:J

    new-instance v0, Lcme;

    invoke-direct {v0}, Lcme;-><init>()V

    sput-object v0, Lbol;->q:Lcme;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 0
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lbol;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    iput v2, p0, Lbol;->d:I

    new-instance v3, Ljava/util/HashSet;

    .line 3
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lbol;->r:Ljava/util/Set;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lbol;->g:Z

    new-instance v4, Ljava/util/HashMap;

    .line 4
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lbol;->n:Ljava/util/Map;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lbol;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    const-string v2, "WakeLock: context must not be null"

    invoke-static {p1, v2}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "wake:com.google.firebase.iid.WakeLockHolder"

    .line 7
    const-string v4, "WakeLock: wakeLockName must not be empty"

    invoke-static {v2, v4}, Lbir;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lbol;->t:Landroid/content/Context;

    iput-object v0, p0, Lbol;->l:Lblm;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.google.android.gms"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "*gcore*:wake:com.google.firebase.iid.WakeLockHolder"

    iput-object v0, p0, Lbol;->m:Ljava/lang/String;

    goto :goto_1

    .line 21
    :cond_1
    iput-object v2, p0, Lbol;->m:Ljava/lang/String;

    .line 9
    :goto_1
    nop

    .line 10
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 11
    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lbol;->c:Landroid/os/PowerManager$WakeLock;

    .line 12
    invoke-static {p1}, Lbjk;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-static {v1}, Lbjj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_2
    nop

    .line 15
    invoke-static {p1, v1}, Lbjk;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;

    move-result-object p1

    iput-object p1, p0, Lbol;->s:Landroid/os/WorkSource;

    if-eqz p1, :cond_4

    .line 16
    invoke-static {v4}, Lbjk;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbol;->s:Landroid/os/WorkSource;

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_2

    .line 21
    :cond_3
    iput-object p1, p0, Lbol;->s:Landroid/os/WorkSource;

    .line 17
    :goto_2
    iget-object p1, p0, Lbol;->s:Landroid/os/WorkSource;

    .line 18
    invoke-direct {p0, p1}, Lbol;->a(Landroid/os/WorkSource;)V

    :cond_4
    sget-object p1, Lbol;->p:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p1, :cond_5

    .line 19
    sget-object p1, Lbln;->a:Lcls;

    .line 20
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 21
    invoke-static {p1}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    sput-object p1, Lbol;->p:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_5
    return-void
.end method

.method private final a(Landroid/os/WorkSource;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbol;->c:Landroid/os/PowerManager$WakeLock;

    .line 28
    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 29
    :goto_0
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WakeLock"

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lbol;->r:Ljava/util/Set;

    .line 24
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lbol;->r:Ljava/util/Set;

    .line 25
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lbol;->r:Ljava/util/Set;

    .line 26
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 27
    return-void

    .line 26
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Lcme;

    const/4 v0, 0x0

    throw v0
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lbol;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lbol;->d:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
