.class public final synthetic Lcom/android/systemui/qs/carrier/-$$Lambda$QSCarrierGroupController$BE6GdsSHi45repDhlm-1nTVH2F0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/carrier/-$$Lambda$QSCarrierGroupController$BE6GdsSHi45repDhlm-1nTVH2F0;->f$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/carrier/-$$Lambda$QSCarrierGroupController$BE6GdsSHi45repDhlm-1nTVH2F0;->f$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    check-cast p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->lambda$BE6GdsSHi45repDhlm-1nTVH2F0(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    return-void
.end method
