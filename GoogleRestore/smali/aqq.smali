.class public Laqq;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 2

    .line 3
    new-instance v0, Laqt;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Laqt;-><init>(II)V

    return-object v0
.end method

.method public static b()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 3

    .line 2
    new-instance v0, Laqt;

    const/4 v1, 0x3

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Laqt;-><init>(II)V

    return-object v0
.end method

.method public static c()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
