.class public final Ldcy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static b:Ldcy;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Ldcy;
    .locals 2

    const-class v0, Ldcy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ldcy;->b:Ldcy;

    if-nez v1, :cond_0

    new-instance v1, Ldcy;

    invoke-direct {v1}, Ldcy;-><init>()V

    sput-object v1, Ldcy;->b:Ldcy;

    :cond_0
    sget-object v1, Ldcy;->b:Ldcy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
