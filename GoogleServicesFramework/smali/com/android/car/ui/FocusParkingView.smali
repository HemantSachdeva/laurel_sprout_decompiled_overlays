.class public Lcom/android/car/ui/FocusParkingView;
.super Landroid/view/View;
.source "FocusParkingView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0}, Lcom/android/car/ui/FocusParkingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-direct {p0}, Lcom/android/car/ui/FocusParkingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-direct {p0}, Lcom/android/car/ui/FocusParkingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    invoke-direct {p0}, Lcom/android/car/ui/FocusParkingView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(I)V

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 82
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 88
    invoke-virtual {p0, v1}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 114
    const-class p0, Lcom/android/car/ui/FocusParkingView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onMeasure(II)V
    .locals 0

    const/4 p1, 0x1

    .line 96
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 109
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const/high16 v0, 0x100000

    if-ne p1, v0, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->restoreDefaultFocus()Z

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 125
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
