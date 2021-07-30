.class public Lcom/google/android/pano/widget/PlaybackControlsView;
.super Lcom/google/android/pano/widget/AbsControlsView;
.source "PlaybackControlsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;,
        Lcom/google/android/pano/widget/PlaybackControlsView$Listener;
    }
.end annotation


# static fields
.field private static final ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;


# instance fields
.field protected mCapabilities:I

.field protected mDuration:I

.field protected mDurationView:Landroid/widget/TextView;

.field protected mFfwView:Lcom/google/android/pano/widget/SeekButton;

.field protected mHandledDown:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field protected mJoystickTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

.field protected mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

.field protected mNextDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

.field protected mNextView:Landroid/widget/ImageButton;

.field protected mOldSeekValue:F

.field protected mPadTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

.field protected mPauseDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

.field protected mPlayDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

.field protected mPlayView:Landroid/widget/ImageButton;

.field protected mPlaystate:I

.field protected mPosition:I

.field protected mPositionUpdateTime:J

.field protected mPositionView:Landroid/widget/TextView;

.field protected mPrevDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

.field protected mPrevSeconds:I

.field protected mPrevView:Landroid/widget/ImageButton;

.field protected mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mRes:Landroid/content/res/Resources;

.field protected mResumed:Z

.field protected mRetryDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

.field protected mRwView:Lcom/google/android/pano/widget/SeekButton;

.field protected mSeekBar:Landroid/widget/SeekBar;

.field private mSeekButtonPosition:F

.field protected mSeekHasFocus:Z

.field protected mSupportsFfw:Z

.field private mSupportsNext:Z

.field private mSupportsPrev:Z

.field protected mSupportsRw:Z

.field protected mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field protected mUpdatePeriod:I

.field private mUpdatePositionRunnable:Ljava/lang/Runnable;

.field private mUpdateViewsRunnable:Ljava/lang/Runnable;

.field protected mUpdatingPositionText:Z

.field protected mViewsReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    .line 159
    sput-object v0, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    .line 160
    new-instance v1, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    invoke-direct {v1}, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 161
    sget-object v0, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    aget-object v1, v0, v2

    const/16 v3, 0xff

    iput v3, v1, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;->alpha:I

    .line 162
    aget-object v1, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;->scale:F

    .line 163
    aget-object v0, v0, v2

    sget-object v1, Landroid/widget/FrameLayout;->ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;->state:[I

    .line 164
    sget-object v0, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    new-instance v1, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    invoke-direct {v1}, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 165
    sget-object v0, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    aget-object v1, v0, v2

    const/16 v3, 0x64

    iput v3, v1, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;->alpha:I

    .line 166
    aget-object v1, v0, v2

    const v3, 0x3f3ae148    # 0.73f

    iput v3, v1, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;->scale:F

    .line 167
    aget-object v0, v0, v2

    sget-object v1, Landroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;->state:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 262
    invoke-direct {p0, p1, v0}, Lcom/google/android/pano/widget/PlaybackControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/AbsControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    new-instance p1, Lcom/google/android/pano/widget/PlaybackControlsView$1;

    invoke-direct {p1, p0}, Lcom/google/android/pano/widget/PlaybackControlsView$1;-><init>(Lcom/google/android/pano/widget/PlaybackControlsView;)V

    iput-object p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatePositionRunnable:Ljava/lang/Runnable;

    .line 199
    new-instance p1, Lcom/google/android/pano/widget/PlaybackControlsView$2;

    invoke-direct {p1, p0}, Lcom/google/android/pano/widget/PlaybackControlsView$2;-><init>(Lcom/google/android/pano/widget/PlaybackControlsView;)V

    iput-object p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdateViewsRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 233
    iput p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlaystate:I

    const/4 p2, 0x0

    .line 234
    iput p2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mOldSeekValue:F

    const/16 p2, 0x3e8

    .line 236
    iput p2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatePeriod:I

    const-wide/16 v0, 0x0

    .line 237
    iput-wide v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionUpdateTime:J

    const/4 p2, -0x1

    .line 238
    iput p2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPosition:I

    .line 239
    iput p2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    .line 240
    iput p2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevSeconds:I

    .line 242
    new-instance p2, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    invoke-direct {p2, p0}, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;-><init>(Lcom/google/android/pano/widget/PlaybackControlsView;)V

    iput-object p2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mJoystickTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    .line 243
    new-instance p2, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    invoke-direct {p2, p0}, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;-><init>(Lcom/google/android/pano/widget/PlaybackControlsView;)V

    iput-object p2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPadTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    .line 244
    new-instance p2, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    invoke-direct {p2, p0}, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;-><init>(Lcom/google/android/pano/widget/PlaybackControlsView;)V

    iput-object p2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    .line 248
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandler:Landroid/os/Handler;

    .line 254
    iput-boolean p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandledDown:Z

    .line 255
    iput-boolean p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekHasFocus:Z

    .line 256
    iput-boolean p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mResumed:Z

    .line 259
    iput-boolean p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatingPositionText:Z

    .line 267
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->setupViews()V

    return-void
.end method

.method private cancelJoystickSeek()Z
    .locals 2

    .line 710
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mJoystickTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget-boolean v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 711
    invoke-virtual {p0, v1, v0}, Lcom/google/android/pano/widget/PlaybackControlsView;->onSeek(IF)V

    .line 712
    iget-object p0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mJoystickTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iput-boolean v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private sendOnSeek(IF)V
    .locals 2

    .line 772
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/pano/widget/AbsControlsView;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 774
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/widget/AbsControlsView$Listener;

    .line 775
    instance-of v1, v0, Lcom/google/android/pano/widget/PlaybackControlsView$Listener;

    if-eqz v1, :cond_0

    .line 776
    check-cast v0, Lcom/google/android/pano/widget/PlaybackControlsView$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/pano/widget/PlaybackControlsView$Listener;->onSeek(IF)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected cancelPadSeek()Z
    .locals 2

    .line 719
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPadTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget-boolean v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 720
    invoke-virtual {p0, v1, v0}, Lcom/google/android/pano/widget/PlaybackControlsView;->onSeek(IF)V

    .line 721
    iget-object p0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPadTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iput-boolean v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public cancelSeek()Z
    .locals 1

    .line 704
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->cancelPadSeek()Z

    move-result v0

    .line 705
    invoke-direct {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->cancelJoystickSeek()Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 615
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 619
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 622
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandledDown:Z

    if-eqz v0, :cond_1

    .line 623
    iput-boolean v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandledDown:Z

    return v2

    .line 626
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayView:Landroid/widget/ImageButton;

    .line 627
    invoke-virtual {v0}, Landroid/widget/ImageButton;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekHasFocus:Z

    if-eqz v0, :cond_c

    .line 628
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->handlesHorizontalGestures()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    .line 631
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-ne v0, v3, :cond_4

    const v0, -0x41b33333    # -0.2f

    goto :goto_0

    :cond_4
    const/16 v3, 0x16

    if-ne v0, v3, :cond_5

    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_5
    move v0, v4

    :goto_0
    cmpl-float v3, v0, v4

    if-eqz v3, :cond_b

    .line 638
    iget-object p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v3, p1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    add-float/2addr v3, v0

    iput v3, p1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    cmpg-float v0, v3, v4

    if-gez v0, :cond_6

    .line 639
    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsRw:Z

    if-nez v0, :cond_6

    .line 640
    iget-boolean p1, p1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    .line 641
    invoke-virtual {p0, v1, v4}, Lcom/google/android/pano/widget/PlaybackControlsView;->onSeek(IF)V

    .line 642
    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/PlaybackControlsView;->setSeekPosition(F)V

    .line 643
    iput-boolean p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandledDown:Z

    return p1

    .line 646
    :cond_6
    iget-object p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v0, p1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsFfw:Z

    if-nez v0, :cond_7

    .line 647
    iget-boolean p1, p1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    .line 648
    invoke-virtual {p0, v1, v4}, Lcom/google/android/pano/widget/PlaybackControlsView;->onSeek(IF)V

    .line 649
    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/PlaybackControlsView;->setSeekPosition(F)V

    .line 650
    iput-boolean p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandledDown:Z

    return p1

    .line 654
    :cond_7
    iget-object p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v0, p1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v5, v0, v3

    if-lez v5, :cond_8

    .line 655
    iput v3, p1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    goto :goto_1

    :cond_8
    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_9

    .line 657
    iput v3, p1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    .line 659
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v0, p1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_a

    move v1, v2

    :cond_a
    iput-boolean v1, p1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    .line 660
    iget-object p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget p1, p1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/pano/widget/PlaybackControlsView;->onSeek(IF)V

    .line 661
    iget-object p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget p1, p1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/PlaybackControlsView;->setSeekPosition(F)V

    .line 662
    iput-boolean v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandledDown:Z

    return v2

    .line 665
    :cond_b
    iput-boolean v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandledDown:Z

    .line 666
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 629
    :cond_c
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected focusDefaultView()V
    .locals 2

    .line 907
    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekHasFocus:Z

    if-eqz v0, :cond_1

    .line 908
    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsRw:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekButtonPosition:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 909
    iget-object p0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 910
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsFfw:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekButtonPosition:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 911
    iget-object p0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 914
    :cond_1
    iget-object p0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayView:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestFocus()Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected handleJoystickEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    .line 728
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    .line 729
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mJoystickTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v2, v1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_1

    .line 730
    iput p1, v1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    .line 731
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 p1, 0x0

    .line 733
    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/PlaybackControlsView;->setSeekPosition(F)V

    .line 734
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->cancelSeek()Z

    move-result p0

    return p0

    .line 736
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/pano/widget/PlaybackControlsView;->onSeek(IF)V

    .line 737
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mJoystickTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    .line 738
    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/PlaybackControlsView;->setSeekPosition(F)V

    return v1

    :cond_1
    return v0
.end method

.method public handlesHorizontalGestures()Z
    .locals 1

    .line 523
    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsRw:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsFfw:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected initDefaults()V
    .locals 4

    .line 783
    sget-object v0, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    const/4 v1, 0x0

    .line 784
    iput v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mCapabilities:I

    .line 786
    new-instance v1, Lcom/google/android/pano/widget/StateScaledDrawable;

    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/pano/ui/R$drawable;->ic_playback_rwd:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/pano/widget/StateScaledDrawable;-><init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    .line 788
    new-instance v1, Lcom/google/android/pano/widget/StateScaledDrawable;

    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/pano/ui/R$drawable;->ic_playback_fwd:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/pano/widget/StateScaledDrawable;-><init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    .line 790
    new-instance v1, Lcom/google/android/pano/widget/StateScaledDrawable;

    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/pano/ui/R$drawable;->ic_playback_pause:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/pano/widget/StateScaledDrawable;-><init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPauseDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    .line 792
    new-instance v1, Lcom/google/android/pano/widget/StateScaledDrawable;

    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/pano/ui/R$drawable;->ic_playback_play:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/pano/widget/StateScaledDrawable;-><init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    .line 794
    new-instance v1, Lcom/google/android/pano/widget/StateScaledDrawable;

    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/pano/ui/R$drawable;->ic_playback_replay:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/pano/widget/StateScaledDrawable;-><init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRetryDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    return-void
.end method

.method protected initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 800
    sget-object v0, Lcom/google/android/pano/widget/PlaybackControlsView;->ICON_STATE_PROPS:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 801
    sget-object v1, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 804
    sget p2, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_allowFastForward:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x40

    goto :goto_0

    :cond_0
    move p2, v1

    .line 808
    :goto_0
    sget v2, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_allowNext:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit16 p2, p2, 0x80

    .line 812
    :cond_1
    sget v2, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_allowPlay:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 p2, p2, 0x4

    .line 816
    :cond_2
    sget v2, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_allowPause:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 p2, p2, 0x10

    .line 820
    :cond_3
    sget v2, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_allowPrevious:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit8 p2, p2, 0x1

    .line 824
    :cond_4
    sget v2, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_allowRewind:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    or-int/lit8 p2, p2, 0x2

    .line 828
    :cond_5
    sget v2, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_nextIcon:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 829
    sget v2, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_nextIcon:I

    sget v3, Lcom/google/android/pano/ui/R$drawable;->ic_playback_fwd:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 830
    new-instance v3, Lcom/google/android/pano/widget/StateScaledDrawable;

    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lcom/google/android/pano/widget/StateScaledDrawable;-><init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V

    iput-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    .line 834
    :cond_6
    sget v2, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_prevIcon:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 835
    sget v2, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_prevIcon:I

    sget v3, Lcom/google/android/pano/ui/R$drawable;->ic_playback_rwd:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 836
    new-instance v3, Lcom/google/android/pano/widget/StateScaledDrawable;

    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lcom/google/android/pano/widget/StateScaledDrawable;-><init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V

    iput-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    .line 840
    :cond_7
    sget v2, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_fastforwardIcon:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 841
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    sget v3, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_fastforwardIcon:I

    sget v4, Lcom/google/android/pano/ui/R$drawable;->ic_playback_scrub_fwd:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/google/android/pano/widget/SeekButton;->setResource(II)V

    .line 846
    :cond_8
    sget v2, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_rewindIcon:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 847
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    sget v3, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_rewindIcon:I

    sget v4, Lcom/google/android/pano/ui/R$drawable;->ic_playback_scrub_rwd:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/google/android/pano/widget/SeekButton;->setResource(II)V

    .line 852
    :cond_9
    sget v1, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_playIcon:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 853
    sget v1, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_playIcon:I

    sget v2, Lcom/google/android/pano/ui/R$drawable;->ic_playback_play:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 855
    new-instance v2, Lcom/google/android/pano/widget/StateScaledDrawable;

    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/android/pano/widget/StateScaledDrawable;-><init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V

    iput-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    .line 859
    :cond_a
    sget v1, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_pauseIcon:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 860
    sget v1, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_pauseIcon:I

    sget v2, Lcom/google/android/pano/ui/R$drawable;->ic_playback_pause:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 862
    new-instance v2, Lcom/google/android/pano/widget/StateScaledDrawable;

    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/android/pano/widget/StateScaledDrawable;-><init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V

    iput-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPauseDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    .line 866
    :cond_b
    sget v1, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_ffwRwAlpha:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 867
    sget v1, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_ffwRwAlpha:I

    const/16 v2, 0x66

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 869
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v2, v1}, Lcom/google/android/pano/widget/SeekButton;->setButtonAlpha(I)V

    .line 870
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v2, v1}, Lcom/google/android/pano/widget/SeekButton;->setButtonAlpha(I)V

    .line 873
    :cond_c
    sget v1, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_ffwRwActiveAlpha:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 874
    sget v1, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_ffwRwActiveAlpha:I

    const/16 v2, 0xff

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 876
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v2, v1}, Lcom/google/android/pano/widget/SeekButton;->setButtonActiveAlpha(I)V

    .line 877
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v2, v1}, Lcom/google/android/pano/widget/SeekButton;->setButtonActiveAlpha(I)V

    .line 880
    :cond_d
    sget v1, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_fastforwardStretchIcon:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 881
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    sget v3, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_fastforwardStretchIcon:I

    sget v4, Lcom/google/android/pano/ui/R$drawable;->ic_playback_scrubber_line:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/pano/widget/SeekButton;->setResource(II)V

    .line 886
    :cond_e
    sget v1, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_rewindStretchIcon:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 887
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    sget v3, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_rewindStretchIcon:I

    sget v4, Lcom/google/android/pano/ui/R$drawable;->ic_playback_scrubber_line_reverse:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/pano/widget/SeekButton;->setResource(II)V

    .line 892
    :cond_f
    sget v1, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_retryIcon:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 893
    sget v1, Lcom/google/android/pano/ui/R$styleable;->PlaybackControllerView_retryIcon:I

    sget v2, Lcom/google/android/pano/ui/R$drawable;->ic_playback_replay:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 895
    new-instance v2, Lcom/google/android/pano/widget/StateScaledDrawable;

    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/android/pano/widget/StateScaledDrawable;-><init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V

    iput-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRetryDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    :cond_10
    if-eqz p2, :cond_11

    .line 900
    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/PlaybackControlsView;->setCapabilities(I)V

    .line 902
    :cond_11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 506
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/AbsControlsView;->sendOnClick(I)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->handlesHorizontalGestures()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/PlaybackControlsView;->handleJoystickEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 518
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onSeek(IF)V
    .locals 5

    int-to-float v0, p1

    mul-float/2addr v0, p2

    .line 747
    iget v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mOldSeekValue:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    return-void

    .line 753
    :cond_1
    iget v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mOldSeekValue:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_2

    cmpl-float v1, v0, v4

    if-eqz v1, :cond_2

    .line 754
    invoke-virtual {p0, v2}, Lcom/google/android/pano/widget/AbsControlsView;->sendOnActiveChange(Z)V

    goto :goto_1

    .line 755
    :cond_2
    iget v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mOldSeekValue:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_3

    cmpl-float v1, v0, v4

    if-nez v1, :cond_3

    .line 756
    invoke-virtual {p0, v3}, Lcom/google/android/pano/widget/AbsControlsView;->sendOnActiveChange(Z)V

    .line 758
    :cond_3
    :goto_1
    iput v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mOldSeekValue:F

    .line 759
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/PlaybackControlsView;->sendOnSeek(IF)V

    .line 763
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    iput-boolean v2, v0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    .line 764
    iget-object p0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float/2addr p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v2

    int-to-double p1, p1

    mul-double/2addr v0, p1

    double-to-float p1, v0

    iput p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    if-ne p0, p1, :cond_0

    if-eqz p2, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->cancelSeek()Z

    .line 923
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method protected remeasurePositionView()V
    .locals 4

    .line 1073
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1074
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v0, v0

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/high16 v2, -0x80000000

    .line 1075
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1077
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1078
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 1079
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    .line 1080
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBottom()I

    move-result v1

    .line 1081
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 1082
    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v1, v3

    .line 1083
    iget-object p0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v3, v2, v1}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 0

    .line 678
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->focusDefaultView()V

    const/4 p0, 0x1

    return p0
.end method

.method public requestLayout()V
    .locals 1

    .line 671
    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatingPositionText:Z

    if-nez v0, :cond_0

    .line 672
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setCapabilities(I)V
    .locals 0

    .line 286
    iput p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mCapabilities:I

    .line 287
    iget-object p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdateViewsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSeekPosition(F)V
    .locals 2

    const v0, 0x3e19999a    # 0.15f

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 470
    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsFfw:Z

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 473
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 474
    iput-boolean v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekHasFocus:Z

    goto :goto_0

    :cond_0
    const v0, -0x41e66666    # -0.15f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 475
    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsRw:Z

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 478
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 479
    iput-boolean v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekHasFocus:Z

    goto :goto_0

    .line 480
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekHasFocus:Z

    if-eqz v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 483
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 484
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 485
    iput-boolean v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekHasFocus:Z

    .line 487
    :cond_2
    :goto_0
    iput p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekButtonPosition:F

    .line 488
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3da3d70a    # 0.08f

    cmpg-float p1, p1, v0

    const/4 v0, 0x0

    if-gez p1, :cond_3

    .line 489
    iget-object p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {p1, v0}, Lcom/google/android/pano/widget/SeekButton;->updatePosition(F)V

    .line 490
    iget-object p0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/SeekButton;->updatePosition(F)V

    goto :goto_1

    .line 491
    :cond_3
    iget p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekButtonPosition:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_4

    .line 492
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v1, p1}, Lcom/google/android/pano/widget/SeekButton;->updatePosition(F)V

    .line 493
    iget-object p0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/SeekButton;->updatePosition(F)V

    goto :goto_1

    .line 495
    :cond_4
    iget-object p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {p1, v0}, Lcom/google/android/pano/widget/SeekButton;->updatePosition(F)V

    .line 496
    iget-object p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    iget p0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekButtonPosition:F

    neg-float p0, p0

    invoke-virtual {p1, p0}, Lcom/google/android/pano/widget/SeekButton;->updatePosition(F)V

    :goto_1
    return-void
.end method

.method protected setupViews()V
    .locals 3

    .line 927
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 928
    sget v1, Lcom/google/android/pano/ui/R$layout;->default_controller_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 930
    sget v0, Lcom/google/android/pano/ui/R$id;->controller_prev:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevView:Landroid/widget/ImageButton;

    .line 931
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 932
    sget v0, Lcom/google/android/pano/ui/R$id;->controller_playpause:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayView:Landroid/widget/ImageButton;

    .line 933
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 934
    sget v0, Lcom/google/android/pano/ui/R$id;->controller_next:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextView:Landroid/widget/ImageButton;

    .line 935
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 936
    sget v0, Lcom/google/android/pano/ui/R$id;->controller_rw:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/widget/SeekButton;

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    .line 937
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 938
    sget v0, Lcom/google/android/pano/ui/R$id;->controller_ffw:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/widget/SeekButton;

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    .line 939
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 941
    sget v0, Lcom/google/android/pano/ui/R$id;->controller_seekBar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    .line 942
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 943
    sget v0, Lcom/google/android/pano/ui/R$id;->controller_time:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    .line 944
    sget v0, Lcom/google/android/pano/ui/R$id;->controller_duration:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDurationView:Landroid/widget/TextView;

    .line 946
    iput-boolean v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mViewsReady:Z

    .line 947
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->updateViews()V

    .line 948
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->updatePlayPause()V

    .line 949
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->updatePosition()V

    return-void
.end method

.method protected updatePlayPause()V
    .locals 3

    .line 953
    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mViewsReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 958
    iget v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlaystate:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRetryDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    goto :goto_0

    .line 963
    :cond_2
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPauseDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    goto :goto_0

    .line 960
    :cond_3
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    goto :goto_0

    .line 969
    :cond_4
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    :goto_0
    if-eqz v0, :cond_5

    .line 973
    iget-object p0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method protected updatePosition()V
    .locals 19

    move-object/from16 v0, p0

    .line 982
    iget-boolean v1, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mViewsReady:Z

    if-nez v1, :cond_0

    return-void

    .line 985
    :cond_0
    iget-object v1, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDurationView:Landroid/widget/TextView;

    iget v2, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    const/4 v3, 0x4

    const/4 v5, -0x1

    if-le v2, v5, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 986
    iget-object v1, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    if-le v2, v5, :cond_2

    iget v2, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPosition:I

    if-le v2, v5, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 987
    iget-object v1, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    iget v2, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPosition:I

    if-le v2, v5, :cond_3

    const/4 v3, 0x0

    :cond_3
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 989
    iget v1, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    const-string v2, "%d:%02d"

    const-string v3, "%d:%02d:%02d"

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x2

    const-wide/32 v9, 0xea60

    const-wide/32 v11, 0x36ee80

    if-le v1, v5, :cond_5

    iget-object v15, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v15}, Landroid/widget/SeekBar;->getMax()I

    move-result v15

    if-eq v1, v15, :cond_5

    .line 990
    iget v1, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    int-to-long v13, v1

    div-long/2addr v13, v11

    long-to-int v13, v13

    int-to-long v4, v1

    .line 991
    rem-long/2addr v4, v11

    div-long/2addr v4, v9

    long-to-int v4, v4

    int-to-long v14, v1

    .line 993
    rem-long/2addr v14, v9

    div-long/2addr v14, v6

    long-to-int v1, v14

    if-nez v13, :cond_4

    new-array v13, v8, [Ljava/lang/Object;

    .line 996
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v14, 0x0

    aput-object v4, v13, v14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v16, 0x1

    aput-object v1, v13, v16

    invoke-static {v2, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/4 v5, 0x3

    const/4 v14, 0x0

    const/16 v16, 0x1

    new-array v15, v5, [Ljava/lang/Object;

    move-object v5, v15

    .line 998
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v5, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1000
    :goto_2
    iget-object v4, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDurationView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    iget-object v1, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1004
    :cond_5
    iget-object v1, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatePositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1005
    iget v1, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPosition:I

    const/4 v4, -0x1

    if-le v1, v4, :cond_e

    .line 1007
    iget v4, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlaystate:I

    const-wide/16 v17, 0x0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    iget-wide v4, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionUpdateTime:J

    cmp-long v4, v4, v17

    if-lez v4, :cond_6

    .line 1008
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v14, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionUpdateTime:J

    sub-long/2addr v4, v14

    long-to-int v4, v4

    add-int/2addr v1, v4

    .line 1010
    :cond_6
    iget v4, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_7

    if-le v1, v4, :cond_7

    move v1, v4

    .line 1014
    :cond_7
    iget-object v4, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    if-eq v1, v4, :cond_d

    .line 1015
    iget-object v4, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    const/4 v4, 0x1

    .line 1016
    iput-boolean v4, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatingPositionText:Z

    .line 1017
    div-int/lit16 v4, v1, 0x3e8

    .line 1019
    iget v5, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevSeconds:I

    if-eq v5, v4, :cond_9

    .line 1020
    iput v4, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevSeconds:I

    int-to-long v4, v1

    .line 1021
    div-long v14, v4, v11

    long-to-int v14, v14

    .line 1022
    rem-long v11, v4, v11

    div-long/2addr v11, v9

    long-to-int v11, v11

    .line 1024
    rem-long/2addr v4, v9

    div-long/2addr v4, v6

    long-to-int v4, v4

    if-nez v14, :cond_8

    new-array v3, v8, [Ljava/lang/Object;

    .line 1027
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_8
    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-array v7, v2, [Ljava/lang/Object;

    .line 1030
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v8

    .line 1029
    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1032
    :goto_3
    iget-object v3, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->remeasurePositionView()V

    .line 1036
    :cond_9
    iget-object v2, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    iget-object v3, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    .line 1037
    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 1038
    iget-object v3, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    iget-object v4, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 1039
    iget-object v4, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    iget-object v5, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    .line 1040
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 1042
    iget v5, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, -0x1

    if-le v5, v7, :cond_a

    int-to-float v7, v1

    mul-float/2addr v7, v2

    int-to-float v2, v5

    div-float/2addr v7, v2

    div-float/2addr v4, v6

    sub-float/2addr v7, v4

    add-float/2addr v7, v3

    goto :goto_4

    :cond_a
    sub-float/2addr v2, v4

    div-float/2addr v2, v6

    add-float v7, v2, v3

    .line 1047
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget-object v4, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    .line 1048
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    cmpg-float v4, v7, v3

    if-gez v4, :cond_b

    goto :goto_5

    :cond_b
    int-to-float v3, v2

    cmpl-float v2, v7, v3

    if-lez v2, :cond_c

    goto :goto_5

    :cond_c
    move v3, v7

    .line 1054
    :goto_5
    iget-object v2, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    const/4 v2, 0x0

    .line 1055
    iput-boolean v2, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatingPositionText:Z

    .line 1058
    :cond_d
    iget-boolean v2, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mResumed:Z

    if-eqz v2, :cond_e

    iget v2, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlaystate:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_e

    iget-wide v2, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionUpdateTime:J

    cmp-long v2, v2, v17

    if-lez v2, :cond_e

    .line 1065
    rem-int/lit16 v1, v1, 0x3e8

    rsub-int v1, v1, 0x3e8

    iget v2, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatePeriod:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1067
    iget-object v2, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatePositionRunnable:Ljava/lang/Runnable;

    int-to-long v3, v1

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    return-void
.end method

.method protected updateViews()V
    .locals 6

    .line 1087
    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mViewsReady:Z

    if-nez v0, :cond_0

    return-void

    .line 1090
    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mCapabilities:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsRw:Z

    .line 1091
    iget v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mCapabilities:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsPrev:Z

    if-eqz v0, :cond_3

    .line 1092
    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsRw:Z

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    .line 1093
    :goto_2
    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevView:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    if-eqz v0, :cond_4

    move v5, v2

    goto :goto_3

    :cond_4
    move v5, v4

    :goto_3
    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1094
    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevView:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1095
    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevView:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1096
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevView:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1098
    iget v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mCapabilities:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsFfw:Z

    .line 1099
    iget v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mCapabilities:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_5

    :cond_6
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsNext:Z

    if-eqz v0, :cond_7

    .line 1100
    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsFfw:Z

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    move v1, v2

    .line 1101
    :goto_6
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextView:Landroid/widget/ImageButton;

    if-eqz v1, :cond_8

    move v3, v2

    goto :goto_7

    :cond_8
    move v3, v4

    :goto_7
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1102
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1103
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1104
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextView:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextDrawable:Lcom/google/android/pano/widget/StateScaledDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1106
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    iget-boolean v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsRw:Z

    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_8

    :cond_9
    move v1, v4

    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1107
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    iget-boolean v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsFfw:Z

    if-eqz v1, :cond_a

    goto :goto_9

    :cond_a
    move v2, v4

    :goto_9
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1109
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 1110
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 1112
    :cond_b
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1113
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1115
    :cond_c
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 1116
    iget-object p0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    return-void
.end method
