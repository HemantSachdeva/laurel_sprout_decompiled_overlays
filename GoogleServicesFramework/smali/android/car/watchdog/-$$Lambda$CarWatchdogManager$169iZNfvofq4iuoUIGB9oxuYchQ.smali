.class public final synthetic Landroid/car/watchdog/-$$Lambda$CarWatchdogManager$169iZNfvofq4iuoUIGB9oxuYchQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/watchdog/-$$Lambda$CarWatchdogManager$169iZNfvofq4iuoUIGB9oxuYchQ;->f$0:Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroid/car/watchdog/-$$Lambda$CarWatchdogManager$169iZNfvofq4iuoUIGB9oxuYchQ;->f$0:Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;

    invoke-static {p0}, Landroid/car/watchdog/CarWatchdogManager;->lambda$notifyProcessTermination$1(Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;)V

    return-void
.end method
