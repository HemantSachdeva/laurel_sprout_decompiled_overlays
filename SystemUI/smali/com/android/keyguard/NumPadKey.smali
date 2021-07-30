.class public Lcom/android/keyguard/NumPadKey;
.super Landroid/view/ViewGroup;
.source "NumPadKey.java"


# static fields
.field static sKlondike:[Ljava/lang/String;


# instance fields
.field private mDigit:I

.field private final mDigitText:Landroid/widget/TextView;

.field private final mKlondikeText:Landroid/widget/TextView;

.field private mListener:Landroid/view/View$OnClickListener;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPM:Landroid/os/PowerManager;

.field private mTextView:Lcom/android/keyguard/PasswordTextView;

.field private mTextViewResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 76
    sget v0, Lcom/android/systemui/R$layout;->keyguard_num_pad_key:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 43
    iput p3, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    .line 47
    new-instance p3, Lcom/android/keyguard/NumPadKey$1;

    invoke-direct {p3, p0}, Lcom/android/keyguard/NumPadKey$1;-><init>(Lcom/android/keyguard/NumPadKey;)V

    iput-object p3, p0, Lcom/android/keyguard/NumPadKey;->mListener:Landroid/view/View$OnClickListener;

    const/4 p3, 0x1

    .line 81
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 83
    sget-object v0, Lcom/android/systemui/R$styleable;->NumPadKey:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    :try_start_0
    sget v1, Lcom/android/systemui/R$styleable;->NumPadKey_digit:I

    iget v2, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    .line 87
    sget v1, Lcom/android/systemui/R$styleable;->NumPadKey_textView:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v0, Lcom/android/keyguard/LiftToActivateListener;

    invoke-direct {v0, p1}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 95
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 96
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mPM:Landroid/os/PowerManager;

    .line 97
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 99
    invoke-virtual {v0, p4, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 101
    sget p3, Lcom/android/systemui/R$id;->digit_text:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    .line 102
    iget p4, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    sget p3, Lcom/android/systemui/R$id;->klondike_text:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    .line 105
    iget p3, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-ltz p3, :cond_2

    .line 106
    sget-object p3, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-nez p3, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/systemui/R$array;->lockscreen_num_pad_klondike:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    sput-object p3, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    .line 109
    :cond_0
    sget-object p3, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-eqz p3, :cond_2

    array-length p4, p3

    iget v0, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-le p4, v0, :cond_2

    .line 110
    aget-object p3, p3, v0

    .line 111
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_1

    .line 113
    iget-object p4, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object p3, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    const/4 p4, 0x4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :cond_2
    :goto_0
    sget-object p3, Landroid/R$styleable;->View:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xd

    .line 121
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p2

    if-nez p2, :cond_3

    .line 122
    iget-object p2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/systemui/R$drawable;->ripple_drawable_pin:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 124
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    iget-object p1, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :catchall_0
    move-exception p0

    .line 89
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    throw p0
.end method

.method static synthetic access$000(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/keyguard/NumPadKey;Lcom/android/keyguard/PasswordTextView;)Lcom/android/keyguard/PasswordTextView;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/NumPadKey;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/NumPadKey;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    return p0
.end method


# virtual methods
.method public doHapticKeyClick()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 167
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z

    :cond_0
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 144
    iget-object p1, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    .line 145
    iget-object p2, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    add-int p3, p1, p2

    .line 147
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p4, p3

    .line 148
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    .line 149
    iget-object p5, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    sub-int p5, p3, p5

    add-int/2addr p1, p4

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p5

    invoke-virtual {v0, p5, p4, v1, p1}, Landroid/widget/TextView;->layout(IIII)V

    int-to-float p1, p1

    int-to-float p4, p2

    const p5, 0x3eb33333    # 0.35f

    mul-float/2addr p4, p5

    sub-float/2addr p1, p4

    float-to-int p1, p1

    add-int/2addr p2, p1

    .line 155
    iget-object p4, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p3, p4

    .line 156
    iget-object p0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p3

    invoke-virtual {p0, p3, p1, p4, p2}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 138
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 139
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->doHapticKeyClick()V

    .line 133
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public userActivity()V
    .locals 3

    .line 64
    iget-object p0, p0, Lcom/android/keyguard/NumPadKey;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method
