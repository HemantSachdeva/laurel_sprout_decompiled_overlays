.class public Lcom/android/car/internal/CarPermission;
.super Ljava/lang/Object;
.source "CarPermission.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/car/internal/CarPermission;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/car/internal/CarPermission;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkGranted()Z
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/android/car/internal/CarPermission;->mName:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 42
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 43
    iget-object v0, p0, Lcom/android/car/internal/CarPermission;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/car/internal/CarPermission;->mName:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/car/internal/CarPermission;->mName:Ljava/lang/String;

    return-object p0
.end method
