.class public final synthetic Lcom/android/systemui/-$$Lambda$BatteryMeterView$65vHpQiubDRpix2SSD9dASDdHfc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$BatteryMeterView$65vHpQiubDRpix2SSD9dASDdHfc;->f$0:Lcom/android/systemui/BatteryMeterView;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$BatteryMeterView$65vHpQiubDRpix2SSD9dASDdHfc;->f$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->lambda$updateShowPercent$1$BatteryMeterView()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
