.class public final Landroid/car/media/CarAudioManager;
.super Landroid/car/CarManagerBase;
.source "CarAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/media/CarAudioManager$CarVolumeCallback;
    }
.end annotation


# instance fields
.field private final mCarVolumeCallbackImpl:Landroid/car/media/ICarVolumeCallback;

.field private final mCarVolumeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/car/media/CarAudioManager$CarVolumeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/car/media/ICarAudio;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 605
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 112
    new-instance p1, Landroid/car/media/CarAudioManager$1;

    invoke-direct {p1, p0}, Landroid/car/media/CarAudioManager$1;-><init>(Landroid/car/media/CarAudioManager;)V

    iput-object p1, p0, Landroid/car/media/CarAudioManager;->mCarVolumeCallbackImpl:Landroid/car/media/ICarVolumeCallback;

    .line 606
    invoke-static {p2}, Landroid/car/media/ICarAudio$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/media/ICarAudio;

    move-result-object p1

    iput-object p1, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    .line 607
    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 608
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroid/car/media/CarAudioManager;->mCarVolumeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method static synthetic access$000(Landroid/car/media/CarAudioManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 61
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mCarVolumeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private unregisterVolumeCallback()V
    .locals 2

    .line 650
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    iget-object v1, p0, Landroid/car/media/CarAudioManager;->mCarVolumeCallbackImpl:Landroid/car/media/ICarVolumeCallback;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/car/media/ICarAudio;->unregisterVolumeCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 652
    invoke-virtual {p0, v0}, Landroid/car/CarManagerBase;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 1

    .line 598
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    if-eqz v0, :cond_0

    .line 599
    invoke-direct {p0}, Landroid/car/media/CarAudioManager;->unregisterVolumeCallback()V

    :cond_0
    return-void
.end method
