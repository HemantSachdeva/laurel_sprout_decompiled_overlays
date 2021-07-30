.class final Landroid/car/CarOccupantZoneManager$EventHandler;
.super Landroid/os/Handler;
.source "CarOccupantZoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/CarOccupantZoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/CarOccupantZoneManager;


# direct methods
.method private constructor <init>(Landroid/car/CarOccupantZoneManager;Landroid/os/Looper;)V
    .locals 0

    .line 485
    iput-object p1, p0, Landroid/car/CarOccupantZoneManager$EventHandler;->this$0:Landroid/car/CarOccupantZoneManager;

    .line 486
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/CarOccupantZoneManager;Landroid/os/Looper;Landroid/car/CarOccupantZoneManager$1;)V
    .locals 0

    .line 482
    invoke-direct {p0, p1, p2}, Landroid/car/CarOccupantZoneManager$EventHandler;-><init>(Landroid/car/CarOccupantZoneManager;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$500(Landroid/car/CarOccupantZoneManager$EventHandler;I)V
    .locals 0

    .line 482
    invoke-direct {p0, p1}, Landroid/car/CarOccupantZoneManager$EventHandler;->dispatchOnOccupantZoneConfigChanged(I)V

    return-void
.end method

.method private dispatchOnOccupantZoneConfigChanged(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 502
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 491
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 496
    invoke-static {}, Landroid/car/CarOccupantZoneManager;->access$300()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown msg not handdled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 493
    :cond_0
    iget-object p0, p0, Landroid/car/CarOccupantZoneManager$EventHandler;->this$0:Landroid/car/CarOccupantZoneManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Landroid/car/CarOccupantZoneManager;->access$200(Landroid/car/CarOccupantZoneManager;I)V

    :goto_0
    return-void
.end method
