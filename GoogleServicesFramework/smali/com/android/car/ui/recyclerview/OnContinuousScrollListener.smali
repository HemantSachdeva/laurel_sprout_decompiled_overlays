.class public Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;
.super Ljava/lang/Object;
.source "OnContinuousScrollListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInitialDelay:I

.field private mIsLongPressed:Z

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPeriodicRunnable:Ljava/lang/Runnable;

.field private mRepeatInterval:I

.field private mTouchedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener$1;

    invoke-direct {v0, p0}, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener$1;-><init>(Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mPeriodicRunnable:Ljava/lang/Runnable;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/car/ui/R$integer;->car_ui_scrollbar_longpress_initial_delay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mInitialDelay:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/car/ui/R$integer;->car_ui_scrollbar_longpress_repeat_interval:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mRepeatInterval:I

    .line 73
    iget v0, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mInitialDelay:I

    if-ltz v0, :cond_0

    if-ltz p1, :cond_0

    .line 76
    iput-object p2, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void

    .line 74
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "negative intervals are not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mTouchedView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mRepeatInterval:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mIsLongPressed:Z

    return p1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 81
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mTouchedView:Landroid/view/View;

    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    return v1

    .line 90
    :cond_0
    iget-boolean p2, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mIsLongPressed:Z

    if-nez p2, :cond_1

    .line 91
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mPeriodicRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mTouchedView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 95
    iput-boolean v1, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mIsLongPressed:Z

    return v0

    .line 84
    :cond_2
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mPeriodicRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mPeriodicRunnable:Ljava/lang/Runnable;

    iget v1, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mInitialDelay:I

    int-to-long v1, v1

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->mTouchedView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    return v0
.end method
