.class public Lcom/android/keyguard/KeyguardStatusView;
.super Landroid/widget/GridLayout;
.source "KeyguardStatusView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardStatusView$Patterns;
    }
.end annotation


# instance fields
.field private mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

.field private mDarkAmount:F

.field private mHandler:Landroid/os/Handler;

.field private final mIActivityManager:Landroid/app/IActivityManager;

.field private mIconTopMargin:I

.field private mIconTopMarginWithHeader:I

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLogoutView:Landroid/widget/TextView;

.field private mNotificationIcons:Landroid/view/View;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mPendingMarqueeStart:Ljava/lang/Runnable;

.field private mPulsing:Z

.field private mShowingHeader:Z

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    .line 80
    new-instance p1, Lcom/android/keyguard/KeyguardStatusView$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardStatusView$1;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 135
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mIActivityManager:Landroid/app/IActivityManager;

    .line 136
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 137
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mHandler:Landroid/os/Handler;

    .line 138
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardStatusView;Ljava/util/TimeZone;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->updateTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateLogoutView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardStatusView;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshFormat()V

    return-void
.end method

.method public static synthetic lambda$Pryio69yVoRI9F153p5QiMZe-bw(Lcom/android/keyguard/KeyguardStatusView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->onLogoutClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$Xo7rGDTjuOiD9nJpe80IUZ1ddFw(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->onSliceContentChanged()V

    return-void
.end method

.method private synthetic lambda$setEnableMarquee$0()V
    .locals 1

    const/4 v0, 0x1

    .line 160
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarqueeImpl(Z)V

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    return-void
.end method

.method private layoutOwnerInfo()V
    .locals 4

    .line 420
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 424
    iget v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    .line 426
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 427
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 429
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setBottom(I)V

    .line 430
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mNotificationIcons:Landroid/view/View;

    if-eqz p0, :cond_1

    .line 433
    invoke-virtual {p0, v0}, Landroid/view/View;->setScrollY(I)V

    goto :goto_0

    .line 435
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mNotificationIcons:Landroid/view/View;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 436
    invoke-virtual {p0, v0}, Landroid/view/View;->setScrollY(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private loadBottomMargin()V
    .locals 2

    .line 356
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->widget_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mIconTopMargin:I

    .line 357
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->widget_vertical_padding_with_header:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mIconTopMarginWithHeader:I

    return-void
.end method

.method private onLogoutClicked(Landroid/view/View;)V
    .locals 2

    .line 453
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 456
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "KeyguardStatusView"

    const-string v0, "Failed to logout user"

    .line 458
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private onSliceContentChanged()V
    .locals 5

    .line 213
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSliceView;->hasHeader()Z

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->setKeyguardShowingHeader(Z)V

    .line 215
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mShowingHeader:Z

    if-ne v1, v0, :cond_0

    return-void

    .line 218
    :cond_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mShowingHeader:Z

    .line 219
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mNotificationIcons:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 221
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 222
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz v0, :cond_1

    .line 223
    iget v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mIconTopMarginWithHeader:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mIconTopMargin:I

    :goto_0
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 222
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 226
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mNotificationIcons:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private refreshFormat()V
    .locals 2

    .line 263
    iget-object v0, p0, Landroid/widget/GridLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView$Patterns;->update(Landroid/content/Context;)V

    .line 264
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardClockSwitch;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 265
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    sget-object v0, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->setFormat24Hour(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshTime()V
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->refresh()V

    return-void
.end method

.method private setEnableMarquee(Z)V
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Schedule setEnableMarquee: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "Enable"

    goto :goto_0

    :cond_0
    const-string v1, "Disable"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardStatusView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    .line 159
    new-instance p1, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$ps9yj97ShIVR2u2hJB8SKuKk-kQ;

    invoke-direct {p1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$ps9yj97ShIVR2u2hJB8SKuKk-kQ;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    .line 163
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 168
    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    :cond_2
    const/4 p1, 0x0

    .line 170
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarqueeImpl(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setEnableMarqueeImpl(Z)V
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "Enable"

    goto :goto_0

    :cond_0
    const-string v1, "Disable"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transport text marquee"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardStatusView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method private shouldShowLogout()Z
    .locals 0

    .line 448
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLogoutEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 449
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateDark()V
    .locals 5

    .line 403
    iget v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 404
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 405
    :cond_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 409
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 410
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->layoutOwnerInfo()V

    .line 414
    :cond_4
    iget v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mTextColor:I

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 415
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    iget v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSliceView;->setDarkAmount(F)V

    .line 416
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->setTextColor(I)V

    return-void
.end method

.method private updateLogoutView()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->shouldShowLogout()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    iget-object p0, p0, Landroid/widget/GridLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1040376

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateOwnerInfo()V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 304
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 305
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 304
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 313
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateDark()V

    return-void
.end method

.method private updateTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshTime()V

    .line 251
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView;->refresh()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "KeyguardStatusView:"

    .line 338
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOwnerInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_1

    .line 340
    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPulsing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPulsing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkAmount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTextColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mTextColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  logout visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    if-eqz v0, :cond_4

    .line 348
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardClockSwitch;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 350
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    if-eqz p0, :cond_5

    .line 351
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSliceView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public getClockPreferredY(I)I
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->getPreferredY(I)I

    move-result p0

    return p0
.end method

.method public getClockTextSize()F
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->getTextSize()F

    move-result p0

    return p0
.end method

.method public getLogoutButtonHeight()I
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 272
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    :cond_1
    return v1
.end method

.method public hasCustomClock()Z
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->hasCustomClock()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$setEnableMarquee$0$KeyguardStatusView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->lambda$setEnableMarquee$0()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 320
    invoke-super {p0}, Landroid/widget/GridLayout;->onAttachedToWindow()V

    .line 321
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 322
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->widget_big_font_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 239
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardClockSwitch;->setTextSize(IF)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->widget_label_font_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 243
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 246
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->loadBottomMargin()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 327
    invoke-super {p0}, Landroid/widget/GridLayout;->onDetachedFromWindow()V

    .line 328
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 329
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 181
    invoke-super {p0}, Landroid/widget/GridLayout;->onFinishInflate()V

    .line 182
    sget v0, Lcom/android/systemui/R$id;->status_view_container:I

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 183
    sget v0, Lcom/android/systemui/R$id;->logout:I

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    .line 184
    sget v0, Lcom/android/systemui/R$id;->clock_notification_icon_container:I

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mNotificationIcons:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 186
    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$Pryio69yVoRI9F153p5QiMZe-bw;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$Pryio69yVoRI9F153p5QiMZe-bw;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->keyguard_clock_container:I

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    const/4 v1, 0x1

    .line 190
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardClockSwitch;->setShowCurrentUserTime(Z)V

    .line 191
    iget-object v0, p0, Landroid/widget/GridLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;->isNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    new-instance v1, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;

    iget-object v2, p0, Landroid/widget/GridLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 194
    :cond_1
    sget v0, Lcom/android/systemui/R$id;->owner_info:I

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    .line 195
    sget v0, Lcom/android/systemui/R$id;->keyguard_status_area:I

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSliceView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardClockSwitch;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mTextColor:I

    .line 198
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$Xo7rGDTjuOiD9nJpe80IUZ1ddFw;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$Xo7rGDTjuOiD9nJpe80IUZ1ddFw;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSliceView;->setContentChangeListener(Ljava/lang/Runnable;)V

    .line 199
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->onSliceContentChanged()V

    .line 201
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 202
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshFormat()V

    .line 204
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    .line 205
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateLogoutView()V

    .line 206
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateDark()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 232
    invoke-super/range {p0 .. p5}, Landroid/widget/GridLayout;->onLayout(ZIIII)V

    .line 233
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->layoutOwnerInfo()V

    return-void
.end method

.method public onLocaleListChanged()V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshFormat()V

    return-void
.end method

.method public setDarkAmount(F)V
    .locals 1

    .line 394
    iget v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    .line 398
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->setDarkAmount(F)V

    .line 399
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateDark()V

    return-void
.end method

.method public setHasVisibleNotifications(Z)V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->setHasVisibleNotifications(Z)V

    return-void
.end method

.method public setPulsing(Z)V
    .locals 1

    .line 441
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mPulsing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 444
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPulsing:Z

    return-void
.end method
