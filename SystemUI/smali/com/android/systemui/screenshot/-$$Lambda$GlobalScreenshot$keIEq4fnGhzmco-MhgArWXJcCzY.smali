.class public final synthetic Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$keIEq4fnGhzmco-MhgArWXJcCzY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field public final synthetic f$1:F

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;FLjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$keIEq4fnGhzmco-MhgArWXJcCzY;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput p2, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$keIEq4fnGhzmco-MhgArWXJcCzY;->f$1:F

    iput-object p3, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$keIEq4fnGhzmco-MhgArWXJcCzY;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$keIEq4fnGhzmco-MhgArWXJcCzY;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget v1, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$keIEq4fnGhzmco-MhgArWXJcCzY;->f$1:F

    iget-object p0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$keIEq4fnGhzmco-MhgArWXJcCzY;->f$2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotActionsShadeAnimation$15$GlobalScreenshot(FLjava/util/ArrayList;Landroid/animation/ValueAnimator;)V

    return-void
.end method
