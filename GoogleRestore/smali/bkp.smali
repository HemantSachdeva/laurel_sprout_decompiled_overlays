.class public final Lbkp;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static b:Lbkp;


# instance fields
.field public final a:Lbkk;

.field private final c:Lbkl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbkp;

    .line 1
    invoke-direct {v0}, Lbkp;-><init>()V

    const-class v1, Lbkp;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lbkp;->b:Lbkp;

    .line 2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbkk;

    .line 3
    invoke-direct {v0}, Lbkk;-><init>()V

    iput-object v0, p0, Lbkp;->a:Lbkk;

    new-instance v0, Lbkl;

    .line 4
    invoke-direct {v0}, Lbkl;-><init>()V

    iput-object v0, p0, Lbkp;->c:Lbkl;

    return-void
.end method

.method public static a()Lbkp;
    .locals 2

    const-class v0, Lbkp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbkp;->b:Lbkp;

    .line 6
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static b()Lbkl;
    .locals 1

    .line 5
    invoke-static {}, Lbkp;->a()Lbkp;

    move-result-object v0

    iget-object v0, v0, Lbkp;->c:Lbkl;

    return-object v0
.end method
