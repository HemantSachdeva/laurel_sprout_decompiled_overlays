.class public final Lbjd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final b:Ljava/lang/Object;

.field private static volatile c:Lbjd;


# instance fields
.field public final a:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbjd;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbjd;->a:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a()Lbjd;
    .locals 2

    sget-object v0, Lbjd;->c:Lbjd;

    if-nez v0, :cond_1

    sget-object v0, Lbjd;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbjd;->c:Lbjd;

    if-nez v1, :cond_0

    new-instance v1, Lbjd;

    .line 19
    invoke-direct {v1}, Lbjd;-><init>()V

    sput-object v1, Lbjd;->c:Lbjd;

    .line 20
    :cond_0
    monitor-exit v0

    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lbjd;->c:Lbjd;

    .line 21
    invoke-static {v0}, Lbir;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static a(Landroid/content/ServiceConnection;)Z
    .locals 0

    .line 18
    instance-of p0, p0, Lbig;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 0

    .line 27
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 1

    .line 22
    invoke-static {p2}, Lbjd;->a(Landroid/content/ServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbjd;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lbjd;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 24
    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-static {p1, v0}, Lbjd;->b(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lbjd;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 25
    invoke-virtual {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lbjd;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    throw p1

    .line 23
    :cond_0
    invoke-static {p1, p2}, Lbjd;->b(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 7

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lbjd;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 4

    .line 3
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "ConnectionTracker"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 5
    const-string v3, "com.google.android.gms"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    :try_start_0
    invoke-static {p1}, Lbjo;->b(Landroid/content/Context;)Lbjn;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lbjn;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 7
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    .line 17
    const-string p1, "Attempted to bind to a service in a STOPPED package."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 15
    :catch_0
    move-exception v0

    .line 8
    :cond_1
    :goto_0
    invoke-static {p4}, Lbjd;->a(Landroid/content/ServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbjd;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-virtual {v0, p4, p4}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    if-eqz v0, :cond_2

    if-eq p4, v0, :cond_2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p4, v0, v2

    const/4 v3, 0x1

    aput-object p2, v0, v3

    const/4 p2, 0x2

    .line 10
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, p2

    .line 11
    const-string p2, "Duplicate binding with the same ServiceConnection: %s, %s, %s."

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_2
    :try_start_1
    invoke-virtual {p1, p3, p4, p5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_3

    iget-object p1, p0, Lbjd;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 14
    invoke-virtual {p1, p4, p4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v2, p1

    goto :goto_1

    .line 17
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lbjd;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 14
    invoke-virtual {p2, p4, p4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    throw p1

    .line 16
    :cond_4
    invoke-virtual {p1, p3, p4, p5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 14
    :goto_1
    return v2
.end method
