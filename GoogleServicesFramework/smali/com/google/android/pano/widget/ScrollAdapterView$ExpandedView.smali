.class final Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
.super Ljava/lang/Object;
.source "ScrollAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExpandedView"
.end annotation


# instance fields
.field expandedView:Landroid/view/View;

.field grow_anim:Landroid/animation/Animator;

.field index:I

.field progress:F

.field shrink_anim:Landroid/animation/Animator;

.field final synthetic this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

.field viewType:I


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/ScrollAdapterView;Landroid/view/View;II)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 391
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->progress:F

    .line 383
    iput-object p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    .line 384
    iput p3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->index:I

    .line 385
    iput p4, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->viewType:I

    return-void
.end method


# virtual methods
.method close()V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 456
    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 459
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 460
    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    :cond_1
    return-void
.end method

.method createFadeInAnimator()Landroid/animation/Animator;
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$200(Lcom/google/android/pano/widget/ScrollAdapterView;)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 397
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 p0, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const-string v1, "alpha"

    .line 398
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xe1

    .line 399
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v0, 0x384

    .line 400
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0

    .line 403
    :cond_0
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$200(Lcom/google/android/pano/widget/ScrollAdapterView;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method createFadeOutAnimator()Landroid/animation/Animator;
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$300(Lcom/google/android/pano/widget/ScrollAdapterView;)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string v1, "alpha"

    .line 409
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1c2

    .line 410
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0

    .line 413
    :cond_0
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$300(Lcom/google/android/pano/widget/ScrollAdapterView;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method setProgress(F)V
    .locals 4

    .line 418
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$400(Lcom/google/android/pano/widget/ScrollAdapterView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    .line 421
    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->progress:F

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 422
    :goto_0
    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->progress:F

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 423
    :goto_1
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->progress:F

    const/4 p1, 0x0

    if-eqz v0, :cond_5

    .line 425
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    .line 426
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 427
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    .line 429
    :cond_3
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    if-nez p1, :cond_4

    .line 430
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->createFadeInAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    .line 431
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 432
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 434
    :cond_4
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$500(Lcom/google/android/pano/widget/ScrollAdapterView;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 435
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_8

    .line 438
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    if-eqz v0, :cond_6

    .line 439
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 440
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    .line 442
    :cond_6
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    if-nez p1, :cond_7

    .line 443
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->createFadeOutAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    .line 444
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 445
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 447
    :cond_7
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$500(Lcom/google/android/pano/widget/ScrollAdapterView;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 448
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    :cond_8
    :goto_2
    return-void
.end method
