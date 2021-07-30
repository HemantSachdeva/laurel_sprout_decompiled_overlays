.class public final Landroid/car/hardware/CarVendorExtensionManager;
.super Landroid/car/CarManagerBase;
.source "CarVendorExtensionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mCallbacks:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPropertyManager:Landroid/car/hardware/property/CarPropertyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 1

    .line 87
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 52
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/car/hardware/CarVendorExtensionManager;->mCallbacks:Landroid/util/ArraySet;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/car/hardware/CarVendorExtensionManager;->mLock:Ljava/lang/Object;

    .line 88
    invoke-static {p2}, Landroid/car/hardware/property/ICarProperty$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/property/ICarProperty;

    move-result-object p2

    .line 89
    new-instance v0, Landroid/car/hardware/property/CarPropertyManager;

    invoke-direct {v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;-><init>(Landroid/car/Car;Landroid/car/hardware/property/ICarProperty;)V

    iput-object v0, p0, Landroid/car/hardware/CarVendorExtensionManager;->mPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    return-void
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 2

    .line 209
    iget-object v0, p0, Landroid/car/hardware/CarVendorExtensionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/CarVendorExtensionManager;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 211
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    iget-object p0, p0, Landroid/car/hardware/CarVendorExtensionManager;->mPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {p0}, Landroid/car/hardware/property/CarPropertyManager;->onCarDisconnected()V

    return-void

    :catchall_0
    move-exception p0

    .line 211
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
