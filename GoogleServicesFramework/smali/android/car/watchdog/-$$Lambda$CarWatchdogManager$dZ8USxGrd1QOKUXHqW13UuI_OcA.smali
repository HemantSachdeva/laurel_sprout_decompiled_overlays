.class public final synthetic Landroid/car/watchdog/-$$Lambda$CarWatchdogManager$dZ8USxGrd1QOKUXHqW13UuI_OcA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/watchdog/CarWatchdogManager;

.field public final synthetic f$1:Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/car/watchdog/CarWatchdogManager;Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/watchdog/-$$Lambda$CarWatchdogManager$dZ8USxGrd1QOKUXHqW13UuI_OcA;->f$0:Landroid/car/watchdog/CarWatchdogManager;

    iput-object p2, p0, Landroid/car/watchdog/-$$Lambda$CarWatchdogManager$dZ8USxGrd1QOKUXHqW13UuI_OcA;->f$1:Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;

    iput p3, p0, Landroid/car/watchdog/-$$Lambda$CarWatchdogManager$dZ8USxGrd1QOKUXHqW13UuI_OcA;->f$2:I

    iput p4, p0, Landroid/car/watchdog/-$$Lambda$CarWatchdogManager$dZ8USxGrd1QOKUXHqW13UuI_OcA;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/car/watchdog/-$$Lambda$CarWatchdogManager$dZ8USxGrd1QOKUXHqW13UuI_OcA;->f$0:Landroid/car/watchdog/CarWatchdogManager;

    iget-object v1, p0, Landroid/car/watchdog/-$$Lambda$CarWatchdogManager$dZ8USxGrd1QOKUXHqW13UuI_OcA;->f$1:Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;

    iget v2, p0, Landroid/car/watchdog/-$$Lambda$CarWatchdogManager$dZ8USxGrd1QOKUXHqW13UuI_OcA;->f$2:I

    iget p0, p0, Landroid/car/watchdog/-$$Lambda$CarWatchdogManager$dZ8USxGrd1QOKUXHqW13UuI_OcA;->f$3:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/car/watchdog/CarWatchdogManager;->lambda$checkClientStatus$0$CarWatchdogManager(Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;II)V

    return-void
.end method
