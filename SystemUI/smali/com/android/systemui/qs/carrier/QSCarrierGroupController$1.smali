.class Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;
.super Ljava/lang/Object;
.source "QSCarrierGroupController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/carrier/QSCarrierGroupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZ)V
    .locals 0

    .line 75
    iget-object p2, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-virtual {p2, p12}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->getSlotIndex(I)I

    move-result p2

    const-string p3, "QSCarrierGroup"

    const/4 p4, 0x3

    if-lt p2, p4, :cond_0

    .line 77
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setMobileDataIndicators - slot: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p4, -0x1

    if-ne p2, p4, :cond_1

    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid SIM slot index for subscription: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 84
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p3}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$000(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object p3

    new-instance p10, Lcom/android/systemui/qs/carrier/CellSignalState;

    iget-boolean p5, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iget p6, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iget-object p7, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    .line 88
    invoke-interface {p8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p8

    move-object p4, p10

    move p9, p13

    invoke-direct/range {p4 .. p9}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(ZILjava/lang/String;Ljava/lang/String;Z)V

    aput-object p10, p3, p2

    .line 91
    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$100(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setNoSims(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {v0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$000(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$000(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/carrier/CellSignalState;->changeVisibility(Z)Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object v1

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$100(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
