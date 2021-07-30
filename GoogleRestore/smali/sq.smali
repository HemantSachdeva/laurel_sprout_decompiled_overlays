.class public final Lsq;
.super Laqq;
.source "PG"


# static fields
.field private static volatile b:Lsq;


# instance fields
.field public final a:Laqq;

.field private final c:Laqq;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Laqq;-><init>()V

    new-instance v0, Lss;

    .line 1
    invoke-direct {v0}, Lss;-><init>()V

    iput-object v0, p0, Lsq;->c:Laqq;

    iput-object v0, p0, Lsq;->a:Laqq;

    return-void
.end method

.method public static a()Lsq;
    .locals 2

    sget-object v0, Lsq;->b:Lsq;

    if-eqz v0, :cond_0

    sget-object v0, Lsq;->b:Lsq;

    return-object v0

    :cond_0
    const-class v0, Lsq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsq;->b:Lsq;

    if-nez v1, :cond_1

    new-instance v1, Lsq;

    .line 2
    invoke-direct {v1}, Lsq;-><init>()V

    sput-object v1, Lsq;->b:Lsq;

    .line 3
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lsq;->b:Lsq;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
