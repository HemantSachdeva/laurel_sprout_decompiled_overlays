.class public Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
.super Lcom/android/systemui/statusbar/notification/stack/ViewState;
.source "NotificationIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconState"
.end annotation


# instance fields
.field public clampedAppearAmount:F

.field public customTransformHeight:I

.field public iconAppearAmount:F

.field public iconColor:I

.field public isLastExpandIcon:Z

.field public justAdded:Z

.field private justReplaced:Z

.field private final mCannedAnimationEndListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/util/Property;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Landroid/view/View;

.field public needsCannedAnimation:Z

.field public noAnimations:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public translateContent:Z

.field public useFullTransitionAmount:Z

.field public useLinearTransitionAmount:Z

.field public visibleState:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Landroid/view/View;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 697
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 698
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    const/4 p1, 0x1

    .line 700
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    const/4 p1, 0x0

    .line 706
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    const/high16 p1, -0x80000000

    .line 709
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    .line 715
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mView:Landroid/view/View;

    .line 716
    new-instance p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconContainer$IconState$017TXxTv7ZZuJUNh-HxPGZnMwVo;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconContainer$IconState$017TXxTv7ZZuJUNh-HxPGZnMwVo;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mCannedAnimationEndListener:Ljava/util/function/Consumer;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;Z)Z
    .locals 0

    .line 695
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    return p1
.end method

.method private synthetic lambda$new$0(Landroid/util/Property;)V
    .locals 1

    .line 718
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mView:Landroid/view/View;

    .line 719
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 720
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mView:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .locals 12

    .line 727
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 728
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v2, 0x0

    .line 731
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$100(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Lcom/android/systemui/statusbar/StatusBarIconView;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$200(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_e

    .line 734
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    const/4 v6, 0x2

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    if-eqz v5, :cond_1

    goto :goto_1

    .line 743
    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v7

    if-eq v5, v7, :cond_3

    .line 744
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$400()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v2

    goto :goto_2

    .line 735
    :cond_2
    :goto_1
    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 736
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_3

    .line 737
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 738
    invoke-virtual {v0, v6, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZ)V

    .line 740
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$300()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v2

    :goto_2
    move v5, v4

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    if-nez v5, :cond_5

    .line 747
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$500(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v7

    if-ltz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 748
    invoke-virtual {v7, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$500(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v8

    if-lt v7, v8, :cond_5

    .line 749
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v7

    if-ne v7, v6, :cond_4

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eq v7, v6, :cond_5

    .line 751
    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$400()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v2

    move v5, v4

    .line 754
    :cond_5
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    const-wide/16 v8, 0x64

    if-eqz v7, :cond_8

    .line 755
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v5

    .line 756
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->reset()V

    .line 758
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$700()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v7

    .line 757
    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    .line 759
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->resetCustomInterpolators()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 760
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$700()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->combineCustomInterpolators(Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 762
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->showsConversation()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 763
    sget-object v7, Lcom/android/systemui/Interpolators;->ICON_OVERSHOT_LESS:Landroid/view/animation/Interpolator;

    goto :goto_4

    .line 765
    :cond_6
    sget-object v7, Lcom/android/systemui/Interpolators;->ICON_OVERSHOT:Landroid/view/animation/Interpolator;

    .line 767
    :goto_4
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v10

    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v10, v11, v7}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 768
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v7

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mCannedAnimationEndListener:Ljava/util/function/Consumer;

    invoke-virtual {v7, v10}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setAnimationEndAction(Ljava/util/function/Consumer;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    if-eqz v2, :cond_7

    .line 770
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    .line 771
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->combineCustomInterpolators(Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 773
    :cond_7
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v2

    .line 774
    invoke-virtual {v2, v8, v9}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 776
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v5, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$802(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;I)I

    move v5, v4

    :cond_8
    if-nez v5, :cond_a

    .line 778
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$800(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v7

    if-ltz v7, :cond_a

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 779
    invoke-virtual {v7, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v7

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$800(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v10

    if-le v7, v10, :cond_a

    .line 780
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v7

    if-ne v7, v6, :cond_9

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eq v7, v6, :cond_a

    .line 782
    :cond_9
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 783
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->reset()V

    .line 784
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateX()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 785
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->resetCustomInterpolators()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 786
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v2

    .line 787
    invoke-virtual {v2, v8, v9}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move v5, v4

    .line 790
    :cond_a
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$900(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 791
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$900(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Landroid/view/View;

    move-result-object v2

    const-wide/16 v5, 0x0

    if-ne p1, v2, :cond_c

    .line 792
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$1000()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v2

    .line 794
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$1100(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v7

    if-eqz v7, :cond_b

    goto :goto_5

    :cond_b
    move-wide v8, v5

    .line 793
    :goto_5
    invoke-virtual {v2, v8, v9}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    goto :goto_7

    .line 796
    :cond_c
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$1200()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v2

    .line 798
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$1100(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v7

    if-nez v7, :cond_d

    goto :goto_6

    :cond_d
    move-wide v8, v5

    .line 797
    :goto_6
    invoke-virtual {v2, v8, v9}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    :goto_7
    move v5, v4

    goto :goto_8

    :cond_e
    move v5, v1

    .line 803
    :cond_f
    :goto_8
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    invoke-virtual {v0, v6, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZ)V

    .line 804
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    if-eqz v7, :cond_10

    if-eqz v3, :cond_10

    move v3, v4

    goto :goto_9

    :cond_10
    move v3, v1

    :goto_9
    invoke-virtual {v0, v6, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    if-eqz v5, :cond_11

    .line 806
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_a

    .line 808
    :cond_11
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 810
    :goto_a
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-nez p1, :cond_12

    goto :goto_b

    :cond_12
    move v4, v1

    .line 811
    :goto_b
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIsInShelf(Z)V

    .line 813
    :cond_13
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 814
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    .line 815
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    return-void
.end method

.method public hasCustomTransformHeight()Z
    .locals 1

    .line 819
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 1

    .line 824
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 825
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_0

    .line 826
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStaticDrawableColor()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$NotificationIconContainer$IconState(Landroid/util/Property;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->lambda$new$0(Landroid/util/Property;)V

    return-void
.end method
