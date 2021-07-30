.class public final Ldbb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;

.field static final b:Ljava/util/Map;

.field private static final f:Ljava/util/concurrent/Executor;


# instance fields
.field public final c:Ldbq;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ljava/util/List;

.field private final g:Landroid/content/Context;

.field private final h:Ljava/lang/String;

.field private final i:Ldbd;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final k:Ldby;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldbb;->a:Ljava/lang/Object;

    .line 1
    new-instance v0, Ldaz;

    invoke-direct {v0}, Ldaz;-><init>()V

    sput-object v0, Ldbb;->f:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v0, Lth;

    invoke-direct {v0}, Lth;-><init>()V

    sput-object v0, Ldbb;->b:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ldbd;)V
    .locals 8

    const-string v0, "ComponentDiscovery"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Ldbb;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Ldbb;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Ldbb;->e:Ljava/util/List;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    invoke-static {p1}, Lbir;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Ldbb;->g:Landroid/content/Context;

    .line 8
    invoke-static {p2}, Lbir;->b(Ljava/lang/String;)V

    iput-object p2, p0, Ldbb;->h:Ljava/lang/String;

    .line 9
    invoke-static {p3}, Lbir;->a(Ljava/lang/Object;)V

    iput-object p3, p0, Ldbb;->i:Ldbd;

    const-class p2, Lcom/google/firebase/components/ComponentDiscoveryService;

    .line 10
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_0

    const-string p2, "Context has no PackageManager."

    .line 11
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v1

    goto :goto_0

    .line 23
    :cond_0
    new-instance v4, Landroid/content/ComponentName;

    .line 12
    invoke-direct {v4, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v5, 0x80

    .line 13
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    if-nez v3, :cond_1

    .line 14
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " has no service info."

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v1

    goto :goto_0

    .line 15
    :cond_1
    iget-object p2, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 16
    const-string p2, "Application info not found."

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v1

    .line 11
    :goto_0
    if-nez p2, :cond_2

    .line 17
    const-string p2, "Could not retrieve metadata, returning empty list of registrars."

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_2

    .line 40
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 21
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 22
    const-string v6, "com.google.firebase.components.ComponentRegistrar"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "com.google.firebase.components:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x1f

    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object p2, v0

    .line 24
    :goto_2
    invoke-static {p2}, Ldav;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Ldbq;

    sget-object v3, Ldbb;->f:Ljava/util/concurrent/Executor;

    const/16 v4, 0x8

    new-array v4, v4, [Ldbj;

    const-class v5, Landroid/content/Context;

    new-array v6, v2, [Ljava/lang/Class;

    .line 25
    invoke-static {p1, v5, v6}, Ldbj;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ldbj;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    const-class v6, Ldbb;

    new-array v7, v2, [Ljava/lang/Class;

    .line 26
    invoke-static {p0, v6, v7}, Ldbj;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ldbj;

    move-result-object v6

    aput-object v6, v4, v5

    const-class v5, Ldbd;

    new-array v2, v2, [Ljava/lang/Class;

    .line 27
    invoke-static {p3, v5, v2}, Ldbj;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ldbj;

    move-result-object p3

    const/4 v2, 0x2

    aput-object p3, v4, v2

    const/4 p3, 0x3

    .line 28
    const-string v5, "fire-android"

    const-string v6, ""

    invoke-static {v5, v6}, Ldgy;->a(Ljava/lang/String;Ljava/lang/String;)Ldbj;

    move-result-object v5

    aput-object v5, v4, p3

    const/4 p3, 0x4

    .line 29
    const-string v5, "fire-core"

    const-string v6, "19.2.0_1p"

    invoke-static {v5, v6}, Ldgy;->a(Ljava/lang/String;Ljava/lang/String;)Ldbj;

    move-result-object v5

    aput-object v5, v4, p3

    const/4 p3, 0x5

    aput-object v1, v4, p3

    const-class p3, Ldgz;

    .line 30
    invoke-static {p3}, Ldbj;->a(Ljava/lang/Class;)Ldbi;

    move-result-object p3

    new-instance v1, Ldbt;

    const-class v5, Ldgx;

    .line 31
    invoke-direct {v1, v5, v2}, Ldbt;-><init>(Ljava/lang/Class;I)V

    .line 32
    invoke-virtual {p3, v1}, Ldbi;->a(Ldbt;)V

    sget-object v1, Ldgu;->a:Ldbl;

    .line 33
    invoke-virtual {p3, v1}, Ldbi;->a(Ldbl;)V

    const/4 v1, 0x6

    .line 34
    invoke-virtual {p3}, Ldbi;->a()Ldbj;

    move-result-object p3

    aput-object p3, v4, v1

    const-class p3, Lddi;

    .line 35
    invoke-static {p3}, Ldbj;->a(Ljava/lang/Class;)Ldbi;

    move-result-object p3

    const-class v1, Landroid/content/Context;

    .line 36
    invoke-static {v1}, Ldbt;->a(Ljava/lang/Class;)Ldbt;

    move-result-object v1

    invoke-virtual {p3, v1}, Ldbi;->a(Ldbt;)V

    sget-object v1, Lddg;->a:Ldbl;

    .line 37
    invoke-virtual {p3, v1}, Ldbi;->a(Ldbl;)V

    const/4 v1, 0x7

    .line 38
    invoke-virtual {p3}, Ldbi;->a()Ldbj;

    move-result-object p3

    aput-object p3, v4, v1

    .line 39
    invoke-direct {v0, v3, p2, v4}, Ldbq;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;[Ldbj;)V

    iput-object v0, p0, Ldbb;->c:Ldbq;

    new-instance p2, Ldby;

    new-instance p3, Ldaw;

    .line 40
    invoke-direct {p3, p0, p1}, Ldaw;-><init>(Ldbb;Landroid/content/Context;)V

    invoke-direct {p2, p3}, Ldby;-><init>(Ldft;)V

    iput-object p2, p0, Ldbb;->k:Ldby;

    return-void
.end method

.method public static a(Landroid/content/Context;Ldbd;)V
    .locals 6

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-nez v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 91
    sget-object v1, Lday;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 92
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 91
    new-instance v1, Lday;

    invoke-direct {v1}, Lday;-><init>()V

    sget-object v2, Lday;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    .line 93
    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    invoke-static {v0}, Lbfm;->a(Landroid/app/Application;)V

    .line 91
    sget-object v0, Lbfm;->a:Lbfm;

    .line 95
    invoke-virtual {v0, v1}, Lbfm;->a(Lbfl;)V

    .line 89
    :cond_1
    :goto_0
    const-string v0, "[DEFAULT]"

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_2
    sget-object v1, Ldbb;->a:Ljava/lang/Object;

    .line 99
    monitor-enter v1

    :try_start_0
    sget-object v2, Ldbb;->b:Ljava/util/Map;

    .line 100
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x21

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "FirebaseApp name "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " already exists!"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-static {v3, v4}, Lbir;->a(ZLjava/lang/Object;)V

    const-string v3, "Application context cannot be null."

    .line 102
    invoke-static {p0, v3}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Ldbb;

    .line 103
    invoke-direct {v3, p0, v0, p1}, Ldbb;-><init>(Landroid/content/Context;Ljava/lang/String;Ldbd;)V

    .line 104
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {v3}, Ldbb;->h()V

    return-void

    .line 95
    :catchall_0
    move-exception p0

    .line 105
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static d()Ldbb;
    .locals 7

    sget-object v0, Ldbb;->a:Ljava/lang/Object;

    .line 47
    monitor-enter v0

    :try_start_0
    sget-object v1, Ldbb;->b:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    .line 48
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldbb;

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Lbji;->a:Ljava/lang/String;

    if-nez v2, :cond_2

    sget v2, Lbji;->b:I

    if-nez v2, :cond_0

    .line 49
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    sput v2, Lbji;->b:I

    :cond_0
    sget v2, Lbji;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v3, 0x0

    if-gtz v2, :cond_1

    goto :goto_2

    .line 60
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x19

    .line 50
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/cmdline"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    .line 52
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    :try_start_3
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 55
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbir;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 54
    :catchall_0
    move-exception v1

    move-object v3, v5

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    .line 57
    :catchall_1
    move-exception v2

    .line 53
    :try_start_5
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 54
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 56
    :catchall_2
    move-exception v1

    :goto_0
    :try_start_6
    invoke-static {v3}, Lbqm;->a(Ljava/io/Closeable;)V

    .line 57
    throw v1

    .line 56
    :catch_1
    move-exception v2

    move-object v5, v3

    :goto_1
    invoke-static {v5}, Lbqm;->a(Ljava/io/Closeable;)V

    .line 49
    :goto_2
    sput-object v3, Lbji;->a:Ljava/lang/String;

    :cond_2
    sget-object v2, Lbji;->a:Ljava/lang/String;

    .line 58
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x74

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Default FirebaseApp is not initialized in this process "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Make sure to call FirebaseApp.initializeApp(Context) first."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_3
    move-exception v1

    .line 60
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1
.end method

.method private final i()V
    .locals 2

    iget-object v0, p0, Ldbb;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "FirebaseApp was deleted"

    invoke-static {v0, v1}, Lbir;->a(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .line 46
    invoke-direct {p0}, Ldbb;->i()V

    iget-object v0, p0, Ldbb;->g:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-direct {p0}, Ldbb;->i()V

    iget-object v0, p0, Ldbb;->c:Ldbq;

    .line 45
    invoke-virtual {v0, p1}, Ldbf;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 61
    invoke-direct {p0}, Ldbb;->i()V

    iget-object v0, p0, Ldbb;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ldbd;
    .locals 1

    .line 62
    invoke-direct {p0}, Ldbb;->i()V

    iget-object v0, p0, Ldbb;->i:Ldbd;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 107
    invoke-direct {p0}, Ldbb;->i()V

    iget-object v0, p0, Ldbb;->k:Ldby;

    .line 108
    invoke-virtual {v0}, Ldby;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldgt;

    iget-object v0, v0, Ldgt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 42
    instance-of v0, p1, Ldbb;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Ldbb;->h:Ljava/lang/String;

    .line 43
    check-cast p1, Ldbb;

    invoke-virtual {p1}, Ldbb;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Z
    .locals 2

    .line 110
    invoke-virtual {p0}, Ldbb;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DEFAULT]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 5

    .line 63
    invoke-virtual {p0}, Ldbb;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lbjf;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Ldbb;->c()Ldbd;

    move-result-object v1

    iget-object v1, v1, Ldbd;->b:Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 65
    invoke-static {v1}, Lbjf;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "+"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 7

    iget-object v0, p0, Ldbb;->g:Landroid/content/Context;

    .line 67
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-class v1, Landroid/os/UserManager;

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldbb;->g:Landroid/content/Context;

    .line 69
    sget-object v2, Ldba;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 70
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    .line 69
    new-instance v2, Ldba;

    .line 71
    invoke-direct {v2, v0}, Ldba;-><init>(Landroid/content/Context;)V

    .line 69
    sget-object v3, Ldba;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 72
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 69
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_UNLOCKED"

    .line 73
    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_0
    iget-object v0, p0, Ldbb;->c:Ldbq;

    .line 75
    invoke-virtual {p0}, Ldbb;->f()Z

    move-result v2

    iget-object v3, v0, Ldbq;->b:Ljava/util/Map;

    .line 76
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 77
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldbj;

    .line 78
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldby;

    iget v5, v5, Ldbj;->c:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    goto :goto_1

    .line 79
    :cond_2
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v4}, Ldby;->a()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v0, v0, Ldbq;->d:Ldbx;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Ldbx;->a:Ljava/util/Queue;

    if-eqz v2, :cond_4

    iput-object v1, v0, Ldbx;->a:Ljava/util/Queue;

    move-object v1, v2

    goto :goto_2

    .line 87
    :cond_4
    nop

    .line 80
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_7

    .line 81
    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lddc;

    .line 82
    invoke-static {v2}, Ldda;->a(Ljava/lang/Object;)V

    monitor-enter v0

    :try_start_1
    iget-object v3, v0, Ldbx;->a:Ljava/util/Queue;

    if-eqz v3, :cond_6

    .line 83
    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 84
    monitor-exit v0

    goto :goto_3

    .line 85
    :cond_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    invoke-static {}, Ldbx;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    new-instance v5, Ldbw;

    invoke-direct {v5, v3}, Ldbw;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 80
    :catchall_0
    move-exception v1

    .line 85
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 74
    :cond_7
    return-void

    .line 87
    :catchall_1
    move-exception v1

    .line 80
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Ldbb;->h:Ljava/lang/String;

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 111
    invoke-static {p0}, Lbir;->b(Ljava/lang/Object;)Lbiq;

    move-result-object v0

    iget-object v1, p0, Ldbb;->h:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lbiq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldbb;->i:Ldbd;

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Lbiq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lbiq;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
