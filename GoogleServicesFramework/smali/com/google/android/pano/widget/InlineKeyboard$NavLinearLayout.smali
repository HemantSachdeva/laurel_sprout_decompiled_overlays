.class public Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;
.super Landroid/widget/RelativeLayout;
.source "InlineKeyboard.java"

# interfaces
.implements Lcom/google/android/pano/widget/TrackpadNavigation$OnNavigationEventHandler;


# instance fields
.field private mCircleSize:I

.field private mKeyCircle:Landroid/view/View;

.field private mKeys:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 619
    invoke-direct {p0, p1, v0}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 623
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 627
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 628
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/google/android/pano/ui/R$layout;->keyboard_keys_layout:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 629
    sget p2, Lcom/google/android/pano/ui/R$id;->keys:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeys:Landroid/view/ViewGroup;

    .line 630
    sget p2, Lcom/google/android/pano/ui/R$id;->circle:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeyCircle:Landroid/view/View;

    const/16 p3, 0x8

    .line 631
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 632
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/pano/ui/R$dimen;->key_circle_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mCircleSize:I

    return-void
.end method

.method private findRelativeKey(II)Landroid/view/View;
    .locals 3

    .line 686
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeys:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 687
    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeys:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 p2, p2, 0x1

    const/16 v2, 0x11

    if-ne p1, v2, :cond_0

    const/4 p1, -0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    mul-int/2addr p2, p1

    add-int/2addr v0, p2

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    if-gez v0, :cond_2

    const/4 v0, 0x0

    .line 694
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeys:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private handleArrowKey(II)Z
    .locals 0

    .line 698
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->findRelativeKey(II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 700
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onNavigationEvent(Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;)Z
    .locals 2

    .line 677
    iget v0, p1, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 678
    check-cast p1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    .line 679
    iget v0, p1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->repeats:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    move v0, v1

    .line 680
    :cond_0
    iget p1, p1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->direction:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->handleArrowKey(II)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 657
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 658
    iget-object p1, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeys:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->bringToFront()V

    .line 659
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mCircleSize:I

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    const/4 p2, 0x0

    if-gez p1, :cond_0

    move p1, p2

    goto :goto_0

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeys:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mCircleSize:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    .line 663
    iget-object p1, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeys:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mCircleSize:I

    sub-int/2addr p1, v0

    .line 665
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 666
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeyCircle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 667
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeyCircle:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    .line 668
    iget-object p0, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeyCircle:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 670
    :cond_2
    iget-object p0, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeyCircle:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0xfa

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 671
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    return-void
.end method
