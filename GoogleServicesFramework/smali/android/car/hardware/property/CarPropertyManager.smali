.class public Landroid/car/hardware/property/CarPropertyManager;
.super Landroid/car/CarManagerBase;
.source "CarPropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;,
        Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    }
.end annotation


# instance fields
.field private final mActivePropertyListener:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/car/hardware/property/ICarProperty;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/car/hardware/property/ICarProperty;)V
    .locals 2

    .line 172
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 66
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    .line 69
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/property/CarPropertyManager;->mConfigMap:Landroid/util/SparseArray;

    .line 173
    iput-object p2, p0, Landroid/car/hardware/property/CarPropertyManager;->mService:Landroid/car/hardware/property/ICarProperty;

    .line 174
    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 176
    :try_start_0
    iget-object p1, p0, Landroid/car/hardware/property/CarPropertyManager;->mService:Landroid/car/hardware/property/ICarProperty;

    invoke-interface {p1}, Landroid/car/hardware/property/ICarProperty;->getPropertyList()Ljava/util/List;

    move-result-object p1

    .line 177
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/CarPropertyConfig;

    .line 178
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mConfigMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getEventHandler()Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 190
    :cond_1
    new-instance p2, Landroid/car/hardware/property/CarPropertyManager$1;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Landroid/car/hardware/property/CarPropertyManager$1;-><init>(Landroid/car/hardware/property/CarPropertyManager;Landroid/os/Looper;I)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "CarPropertyManager"

    const-string p2, "getPropertyList exception "

    .line 181
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static synthetic access$000(Landroid/car/hardware/property/CarPropertyManager;)Landroid/util/SparseArray;
    .locals 0

    .line 55
    iget-object p0, p0, Landroid/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    return-object p0
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 1

    .line 912
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    monitor-enter v0

    .line 913
    :try_start_0
    iget-object p0, p0, Landroid/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 915
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
