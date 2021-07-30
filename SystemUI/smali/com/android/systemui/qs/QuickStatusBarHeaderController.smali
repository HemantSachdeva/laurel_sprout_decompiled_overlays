.class public Lcom/android/systemui/qs/QuickStatusBarHeaderController;
.super Ljava/lang/Object;
.source "QuickStatusBarHeaderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;
    }
.end annotation


# instance fields
.field private final mQSCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

.field private final mView:Lcom/android/systemui/qs/QuickStatusBarHeader;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mView:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 31
    sget v0, Lcom/android/systemui/R$id;->carrier_group:I

    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/carrier/QSCarrierGroup;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->setQSCarrierGroup(Lcom/android/systemui/qs/carrier/QSCarrierGroup;)Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;

    .line 33
    invoke-virtual {p2}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->build()Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mQSCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;)V

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mQSCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->setListening(Z)V

    .line 39
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mView:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setListening(Z)V

    return-void
.end method
