.class final Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;
.super Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;
.source "CarTrustAgentEnrollmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/trust/CarTrustAgentEnrollmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerToEnrollmentService"
.end annotation


# instance fields
.field private final mMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/trust/CarTrustAgentEnrollmentManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/car/trust/CarTrustAgentEnrollmentManager;)V
    .locals 1

    .line 447
    invoke-direct {p0}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;-><init>()V

    .line 448
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;->mMgr:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAuthStringAvailable(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 4

    .line 471
    iget-object p0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;

    if-nez p0, :cond_0

    return-void

    .line 475
    :cond_0
    invoke-static {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object v0

    .line 476
    invoke-static {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x5

    new-instance v2, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 475
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEnrollmentHandshakeFailure(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4

    .line 457
    iget-object p0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;

    if-nez p0, :cond_0

    return-void

    .line 461
    :cond_0
    invoke-static {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object v0

    .line 462
    invoke-static {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x4

    new-instance v2, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, p2}, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 461
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEscrowTokenActiveStateChanged(JZ)V
    .locals 3

    .line 520
    iget-object p0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;

    if-nez p0, :cond_0

    return-void

    .line 524
    :cond_0
    invoke-static {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 526
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "handle"

    .line 527
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "active"

    .line 528
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 529
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 530
    invoke-static {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEscrowTokenAdded(J)V
    .locals 3

    .line 486
    iget-object p0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;

    if-nez p0, :cond_0

    return-void

    .line 490
    :cond_0
    invoke-static {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 492
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "handle"

    .line 493
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 494
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 495
    invoke-static {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEscrowTokenRemoved(J)V
    .locals 3

    .line 503
    iget-object p0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;

    if-nez p0, :cond_0

    return-void

    .line 507
    :cond_0
    invoke-static {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 509
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "handle"

    .line 510
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 511
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 512
    invoke-static {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
