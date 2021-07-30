.class final Landroid/car/watchdog/CarWatchdogManager$SessionInfo;
.super Ljava/lang/Object;
.source "CarWatchdogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/watchdog/CarWatchdogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionInfo"
.end annotation


# instance fields
.field public currentId:I

.field public lastReportedId:I


# direct methods
.method constructor <init>(Landroid/car/watchdog/CarWatchdogManager;II)V
    .locals 0

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput p2, p0, Landroid/car/watchdog/CarWatchdogManager$SessionInfo;->currentId:I

    .line 361
    iput p3, p0, Landroid/car/watchdog/CarWatchdogManager$SessionInfo;->lastReportedId:I

    return-void
.end method
