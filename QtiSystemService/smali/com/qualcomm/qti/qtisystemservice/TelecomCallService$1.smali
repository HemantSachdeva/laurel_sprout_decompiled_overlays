.class Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$1;
.super Landroid/os/Handler;
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

    .line 51
    iput-object p1, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$1;->this$0:Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$1;->this$0:Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;

    invoke-static {p0}, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->access$000(Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;)Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->getForegroundCall()Landroid/telecom/ParcelableCall;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->access$100(Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;

    if-eqz p1, :cond_2

    .line 73
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$1;->this$0:Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;

    invoke-static {p0}, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->access$000(Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;)Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->unregisterListener(Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;)V

    goto :goto_0

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "failed with null object for unregister"

    .line 75
    invoke-static {p0, v0, p1}, Lcom/qualcomm/qti/qtisystemservice/QLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;

    if-eqz p1, :cond_4

    .line 64
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$1;->this$0:Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;

    invoke-static {p0}, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->access$000(Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;)Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->registerListener(Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;)V

    goto :goto_0

    :cond_4
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "failed with null object for register"

    .line 66
    invoke-static {p0, v0, p1}, Lcom/qualcomm/qti/qtisystemservice/QLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_5
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$1;->this$0:Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;

    invoke-static {p0}, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->access$000(Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;)Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->hasAnyHeldCall()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->access$100(Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_6
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$1;->this$0:Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;

    invoke-static {p0}, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->access$000(Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;)Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->hasAnyActiveCall()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->access$100(Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;Landroid/os/Message;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
