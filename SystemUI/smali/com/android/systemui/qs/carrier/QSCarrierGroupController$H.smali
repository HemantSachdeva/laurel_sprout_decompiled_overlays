.class Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;
.super Landroid/os/Handler;
.source "QSCarrierGroupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/carrier/QSCarrierGroupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "H"
.end annotation


# instance fields
.field private mUpdateCarrierInfo:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateState:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/os/Looper;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 280
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 281
    iput-object p2, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;->mUpdateCarrierInfo:Ljava/util/function/Consumer;

    .line 282
    iput-object p3, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;->mUpdateState:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 287
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 296
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 293
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;->mUpdateState:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 289
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;->mUpdateCarrierInfo:Ljava/util/function/Consumer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
