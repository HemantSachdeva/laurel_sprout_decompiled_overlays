.class Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$5;
.super Ljava/lang/Object;
.source "NavigationBarEdgePanel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSampledRegion(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->access$700(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public onRegionDarknessChanged(Z)V
    .locals 1

    .line 341
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->access$600(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;ZZ)V

    return-void
.end method
