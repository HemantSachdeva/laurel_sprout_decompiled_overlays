.class public Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;
.super Ljava/lang/Object;
.source "QSCarrierGroupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/carrier/QSCarrierGroupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mCarrierTextControllerBuilder:Lcom/android/keyguard/CarrierTextController$Builder;

.field private final mHandler:Landroid/os/Handler;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mView:Lcom/android/systemui/qs/carrier/QSCarrierGroup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/keyguard/CarrierTextController$Builder;)V
    .locals 0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 314
    iput-object p2, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mHandler:Landroid/os/Handler;

    .line 315
    iput-object p3, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mLooper:Landroid/os/Looper;

    .line 316
    iput-object p4, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 317
    iput-object p5, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mCarrierTextControllerBuilder:Lcom/android/keyguard/CarrierTextController$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/systemui/qs/carrier/QSCarrierGroupController;
    .locals 9

    .line 326
    new-instance v8, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mView:Lcom/android/systemui/qs/carrier/QSCarrierGroup;

    iget-object v2, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v3, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mLooper:Landroid/os/Looper;

    iget-object v5, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v6, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mCarrierTextControllerBuilder:Lcom/android/keyguard/CarrierTextController$Builder;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;-><init>(Lcom/android/systemui/qs/carrier/QSCarrierGroup;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/keyguard/CarrierTextController$Builder;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;)V

    return-object v8
.end method

.method public setQSCarrierGroup(Lcom/android/systemui/qs/carrier/QSCarrierGroup;)Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mView:Lcom/android/systemui/qs/carrier/QSCarrierGroup;

    return-object p0
.end method
