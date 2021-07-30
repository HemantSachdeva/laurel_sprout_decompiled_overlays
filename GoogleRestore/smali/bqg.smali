.class public final Lbqg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static a:Landroid/os/UserManager;

.field private static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    sput-boolean v0, Lbqg;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    invoke-static {p0}, Lbqg;->c(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    invoke-static {p0}, Lbqg;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 7

    sget-boolean v0, Lbqg;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-class v0, Lbqg;

    monitor-enter v0

    :try_start_0
    sget-boolean v2, Lbqg;->b:Z

    if-eqz v2, :cond_1

    .line 7
    monitor-exit v0

    return v1

    :cond_1
    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-gt v2, v3, :cond_5

    sget-object v3, Lbqg;->a:Landroid/os/UserManager;

    if-nez v3, :cond_2

    const-class v3, Landroid/os/UserManager;

    .line 2
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    sput-object v3, Lbqg;->a:Landroid/os/UserManager;

    :cond_2
    sget-object v3, Lbqg;->a:Landroid/os/UserManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    .line 3
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v6

    if-nez v6, :cond_4

    .line 4
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_5

    :cond_4
    const/4 v5, 0x1

    goto :goto_1

    .line 6
    :catch_0
    move-exception v3

    :try_start_2
    const-string v5, "DirectBootUtils"

    const-string v6, "Failed to check if user is unlocked."

    .line 5
    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v4, Lbqg;->a:Landroid/os/UserManager;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_5
    nop

    :goto_1
    if-eqz v5, :cond_6

    sput-object v4, Lbqg;->a:Landroid/os/UserManager;

    .line 2
    :cond_6
    :goto_2
    if-eqz v5, :cond_7

    sput-boolean v1, Lbqg;->b:Z

    .line 6
    :cond_7
    monitor-exit v0

    return v5

    .line 4
    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method
