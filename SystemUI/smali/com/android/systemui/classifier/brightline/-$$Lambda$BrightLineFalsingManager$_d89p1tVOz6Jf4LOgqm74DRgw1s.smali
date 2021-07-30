.class public final synthetic Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$_d89p1tVOz6Jf4LOgqm74DRgw1s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$_d89p1tVOz6Jf4LOgqm74DRgw1s;->f$0:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$_d89p1tVOz6Jf4LOgqm74DRgw1s;->f$0:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;

    check-cast p1, Lcom/android/systemui/classifier/brightline/FalsingClassifier;

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->lambda$onProximityEvent$3(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;Lcom/android/systemui/classifier/brightline/FalsingClassifier;)V

    return-void
.end method
