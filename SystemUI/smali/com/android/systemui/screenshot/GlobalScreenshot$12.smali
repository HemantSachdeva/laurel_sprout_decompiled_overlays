.class Lcom/android/systemui/screenshot/GlobalScreenshot$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation(Landroid/graphics/Rect;Z)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field final synthetic val$bounds:Landroid/graphics/Rect;

.field final synthetic val$cornerScale:F

.field final synthetic val$finalPos:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/graphics/PointF;Landroid/graphics/Rect;F)V
    .locals 0

    .line 924
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->val$finalPos:Landroid/graphics/PointF;

    iput-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->val$bounds:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->val$cornerScale:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 927
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 928
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 929
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    .line 930
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 931
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->val$finalPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->val$bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->val$cornerScale:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v1

    add-float/2addr v2, v3

    goto :goto_0

    .line 932
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->val$finalPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->val$bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->val$cornerScale:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    .line 933
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setX(F)V

    .line 934
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->val$finalPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, p1

    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->val$bounds:Landroid/graphics/Rect;

    .line 935
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->val$cornerScale:F

    mul-float/2addr p1, v4

    div-float/2addr p1, v1

    sub-float/2addr v3, p1

    .line 934
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setY(F)V

    .line 936
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 937
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 938
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->val$finalPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->val$bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->val$cornerScale:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 939
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->val$finalPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->val$bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->val$cornerScale:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setY(F)V

    .line 940
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 941
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 942
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    return-void
.end method
