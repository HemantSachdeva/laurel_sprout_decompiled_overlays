.class public final synthetic Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ZwaN03P50fmACzyWijOKLriVmWE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:Landroid/graphics/PointF;

.field public final synthetic f$5:Landroid/graphics/PointF;

.field public final synthetic f$6:Landroid/graphics/Rect;

.field public final synthetic f$7:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;FFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Rect;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ZwaN03P50fmACzyWijOKLriVmWE;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput p2, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ZwaN03P50fmACzyWijOKLriVmWE;->f$1:F

    iput p3, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ZwaN03P50fmACzyWijOKLriVmWE;->f$2:F

    iput p4, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ZwaN03P50fmACzyWijOKLriVmWE;->f$3:F

    iput-object p5, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ZwaN03P50fmACzyWijOKLriVmWE;->f$4:Landroid/graphics/PointF;

    iput-object p6, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ZwaN03P50fmACzyWijOKLriVmWE;->f$5:Landroid/graphics/PointF;

    iput-object p7, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ZwaN03P50fmACzyWijOKLriVmWE;->f$6:Landroid/graphics/Rect;

    iput p8, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ZwaN03P50fmACzyWijOKLriVmWE;->f$7:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ZwaN03P50fmACzyWijOKLriVmWE;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget v1, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ZwaN03P50fmACzyWijOKLriVmWE;->f$1:F

    iget v2, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ZwaN03P50fmACzyWijOKLriVmWE;->f$2:F

    iget v3, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ZwaN03P50fmACzyWijOKLriVmWE;->f$3:F

    iget-object v4, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ZwaN03P50fmACzyWijOKLriVmWE;->f$4:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ZwaN03P50fmACzyWijOKLriVmWE;->f$5:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ZwaN03P50fmACzyWijOKLriVmWE;->f$6:Landroid/graphics/Rect;

    iget v7, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ZwaN03P50fmACzyWijOKLriVmWE;->f$7:F

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotDropInAnimation$10$GlobalScreenshot(FFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Rect;FLandroid/animation/ValueAnimator;)V

    return-void
.end method
