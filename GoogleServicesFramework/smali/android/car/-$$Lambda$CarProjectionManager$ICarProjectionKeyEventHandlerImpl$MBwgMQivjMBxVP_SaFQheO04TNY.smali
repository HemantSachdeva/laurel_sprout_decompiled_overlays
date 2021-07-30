.class public final synthetic Landroid/car/-$$Lambda$CarProjectionManager$ICarProjectionKeyEventHandlerImpl$MBwgMQivjMBxVP_SaFQheO04TNY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/-$$Lambda$CarProjectionManager$ICarProjectionKeyEventHandlerImpl$MBwgMQivjMBxVP_SaFQheO04TNY;->f$0:Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;

    iput p2, p0, Landroid/car/-$$Lambda$CarProjectionManager$ICarProjectionKeyEventHandlerImpl$MBwgMQivjMBxVP_SaFQheO04TNY;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/car/-$$Lambda$CarProjectionManager$ICarProjectionKeyEventHandlerImpl$MBwgMQivjMBxVP_SaFQheO04TNY;->f$0:Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;

    iget p0, p0, Landroid/car/-$$Lambda$CarProjectionManager$ICarProjectionKeyEventHandlerImpl$MBwgMQivjMBxVP_SaFQheO04TNY;->f$1:I

    invoke-static {v0, p0}, Landroid/car/CarProjectionManager$ICarProjectionKeyEventHandlerImpl;->lambda$onKeyEvent$0(Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;I)V

    return-void
.end method
