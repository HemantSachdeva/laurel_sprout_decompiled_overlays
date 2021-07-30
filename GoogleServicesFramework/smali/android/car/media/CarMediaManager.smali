.class public final Landroid/car/media/CarMediaManager;
.super Landroid/car/CarManagerBase;
.source "CarMediaManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private mCallbackMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 55
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/media/CarMediaManager;->mLock:Ljava/lang/Object;

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/car/media/CarMediaManager;->mCallbackMap:Ljava/util/Map;

    .line 69
    invoke-static {p2}, Landroid/car/media/ICarMedia$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/media/ICarMedia;

    return-void
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 1

    .line 174
    iget-object v0, p0, Landroid/car/media/CarMediaManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarMediaManager;->mCallbackMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 176
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
