.class Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$2;
.super Lcom/qualcomm/qti/qtisystemservice/ITelecomCallService$Stub;
.source "TelecomCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$2;->this$0:Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;

    invoke-direct {p0}, Lcom/qualcomm/qti/qtisystemservice/ITelecomCallService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getForegroundCall()Landroid/telecom/ParcelableCall;
    .locals 2

    .line 110
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$2;->this$0:Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;

    new-instance v0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$ThreadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$ThreadRequest;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x5

    invoke-static {p0, v1, v0}, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->access$200(Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/ParcelableCall;

    return-object p0
.end method

.method public hasAnyActiveCall()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$2;->this$0:Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;

    new-instance v0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$ThreadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$ThreadRequest;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->access$200(Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public hasAnyHeldCall()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$2;->this$0:Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;

    new-instance v0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$ThreadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$ThreadRequest;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-static {p0, v1, v0}, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->access$200(Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public registerCallStateChanged(Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;)V
    .locals 1

    .line 100
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$2;->this$0:Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;

    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unregisterCallStateChanged(Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;)V
    .locals 1

    .line 105
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$2;->this$0:Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;

    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
