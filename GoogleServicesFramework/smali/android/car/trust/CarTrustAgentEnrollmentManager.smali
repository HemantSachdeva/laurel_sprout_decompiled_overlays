.class public final Landroid/car/trust/CarTrustAgentEnrollmentManager;
.super Landroid/car/CarManagerBase;
.source "CarTrustAgentEnrollmentManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;,
        Landroid/car/trust/CarTrustAgentEnrollmentManager$EventCallbackHandler;,
        Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;,
        Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;,
        Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;,
        Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mBleCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mListenerLock"
        }
    .end annotation
.end field

.field private mEnrollmentCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mListenerLock"
        }
    .end annotation
.end field

.field private final mEventCallbackHandler:Landroid/car/trust/CarTrustAgentEnrollmentManager$EventCallbackHandler;

.field private mListenerLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 90
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerLock:Ljava/lang/Object;

    .line 95
    new-instance p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;

    invoke-direct {p1, p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;-><init>(Landroid/car/trust/CarTrustAgentEnrollmentManager;)V

    .line 98
    new-instance p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;

    invoke-direct {p1, p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;-><init>(Landroid/car/trust/CarTrustAgentEnrollmentManager;)V

    .line 123
    invoke-static {p2}, Landroid/car/trust/ICarTrustAgentEnrollment$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/trust/ICarTrustAgentEnrollment;

    .line 124
    new-instance p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$EventCallbackHandler;

    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getEventHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Landroid/car/trust/CarTrustAgentEnrollmentManager$EventCallbackHandler;-><init>(Landroid/car/trust/CarTrustAgentEnrollmentManager;Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEventCallbackHandler:Landroid/car/trust/CarTrustAgentEnrollmentManager$EventCallbackHandler;

    return-void
.end method

.method static synthetic access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;
    .locals 0

    .line 75
    invoke-direct {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->getEventCallbackHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/car/trust/CarTrustAgentEnrollmentManager;Landroid/os/Message;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->dispatchBleCallback(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Landroid/car/trust/CarTrustAgentEnrollmentManager;Landroid/os/Message;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->dispatchEnrollmentCallback(Landroid/os/Message;)V

    return-void
.end method

.method private dispatchBleCallback(Landroid/os/Message;)V
    .locals 2

    .line 642
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 643
    :try_start_0
    iget-object p0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mBleCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;

    .line 644
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    return-void

    .line 648
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 659
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;->onBleEnrollmentDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 656
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;->onBleEnrollmentDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 653
    :cond_3
    invoke-interface {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;->onEnrollmentAdvertisingFailed()V

    goto :goto_0

    .line 650
    :cond_4
    invoke-interface {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;->onEnrollmentAdvertisingStarted()V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 644
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private dispatchEnrollmentCallback(Landroid/os/Message;)V
    .locals 3

    .line 673
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 674
    :try_start_0
    iget-object p0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;

    .line 675
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    return-void

    .line 681
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 708
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "handle"

    .line 712
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;->onEscrowTokenRemoved(J)V

    goto :goto_0

    .line 700
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "handle"

    .line 704
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "active"

    .line 705
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 704
    invoke-interface {p0, v0, v1, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;->onEscrowTokenActiveStateChanged(JZ)V

    goto :goto_0

    .line 693
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "handle"

    .line 697
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;->onEscrowTokenAdded(J)V

    goto :goto_0

    .line 687
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;

    .line 688
    iget-object v0, p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_4

    iget-object p1, p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;->mAuthString:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 689
    invoke-interface {p0, v0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;->onAuthStringAvailable(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    goto :goto_0

    .line 683
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;

    .line 684
    iget-object v0, p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget p1, p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;->mErrorCode:I

    invoke-interface {p0, v0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;->onEnrollmentHandshakeFailure(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_4
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 675
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEventCallbackHandler()Landroid/os/Handler;
    .locals 0

    .line 363
    iget-object p0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEventCallbackHandler:Landroid/car/trust/CarTrustAgentEnrollmentManager$EventCallbackHandler;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized onCarDisconnected()V
    .locals 0

    monitor-enter p0

    .line 130
    monitor-exit p0

    return-void
.end method
