.class public Lcom/android/car/ui/FocusArea;
.super Landroid/widget/LinearLayout;
.source "FocusArea.java"


# instance fields
.field private mBackgroundHighlight:Landroid/graphics/drawable/Drawable;

.field private mEnableBackgroundHighlight:Z

.field private mEnableForegroundHighlight:Z

.field private mForegroundHighlight:Landroid/graphics/drawable/Drawable;

.field private mHasFocus:Z

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-direct {p0}, Lcom/android/car/ui/FocusArea;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    invoke-direct {p0}, Lcom/android/car/ui/FocusArea;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    invoke-direct {p0}, Lcom/android/car/ui/FocusArea;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 102
    invoke-direct {p0}, Lcom/android/car/ui/FocusArea;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 106
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/car/ui/R$bool;->car_ui_enable_focus_area_foreground_highlight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/FocusArea;->mEnableForegroundHighlight:Z

    .line 108
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/car/ui/R$bool;->car_ui_enable_focus_area_background_highlight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/FocusArea;->mEnableBackgroundHighlight:Z

    .line 110
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/car/ui/R$drawable;->car_ui_focus_area_foreground_highlight:I

    .line 111
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/FocusArea;->mForegroundHighlight:Landroid/graphics/drawable/Drawable;

    .line 112
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/car/ui/R$drawable;->car_ui_focus_area_background_highlight:I

    .line 113
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/FocusArea;->mBackgroundHighlight:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 123
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/car/ui/-$$Lambda$FocusArea$Mt3bujuVuhIqHFNk5yQVNfMwfXs;

    invoke-direct {v1, p0}, Lcom/android/car/ui/-$$Lambda$FocusArea$Mt3bujuVuhIqHFNk5yQVNfMwfXs;-><init>(Lcom/android/car/ui/FocusArea;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method private synthetic lambda$init$0(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 125
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->hasFocus()Z

    move-result p1

    .line 126
    iget-boolean p2, p0, Lcom/android/car/ui/FocusArea;->mHasFocus:Z

    if-eq p2, p1, :cond_0

    .line 127
    iput-boolean p1, p0, Lcom/android/car/ui/FocusArea;->mHasFocus:Z

    .line 128
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 151
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 155
    iget-boolean v0, p0, Lcom/android/car/ui/FocusArea;->mEnableForegroundHighlight:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/car/ui/FocusArea;->mHasFocus:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->mForegroundHighlight:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/car/ui/FocusArea;->mPaddingLeft:I

    .line 157
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/car/ui/FocusArea;->mPaddingTop:I

    .line 158
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    .line 159
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/car/ui/FocusArea;->mPaddingRight:I

    sub-int/2addr v3, v4

    .line 160
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/car/ui/FocusArea;->mPaddingBottom:I

    sub-int/2addr v4, v5

    .line 156
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 161
    iget-object p0, p0, Lcom/android/car/ui/FocusArea;->mForegroundHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 167
    const-class p0, Lcom/android/car/ui/FocusArea;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$init$0$FocusArea(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/FocusArea;->lambda$init$0(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 135
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 139
    iget-boolean v0, p0, Lcom/android/car/ui/FocusArea;->mEnableBackgroundHighlight:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/car/ui/FocusArea;->mHasFocus:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->mBackgroundHighlight:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/car/ui/FocusArea;->mPaddingLeft:I

    .line 141
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/car/ui/FocusArea;->mPaddingTop:I

    .line 142
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    .line 143
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/car/ui/FocusArea;->mPaddingRight:I

    sub-int/2addr v3, v4

    .line 144
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/car/ui/FocusArea;->mPaddingBottom:I

    sub-int/2addr v4, v5

    .line 140
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    iget-object p0, p0, Lcom/android/car/ui/FocusArea;->mBackgroundHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
