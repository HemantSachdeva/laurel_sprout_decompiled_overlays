.class public Lcom/android/car/ui/toolbar/Toolbar;
.super Landroid/widget/FrameLayout;
.source "Toolbar.java"

# interfaces
.implements Lcom/android/car/ui/toolbar/ToolbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;,
        Lcom/android/car/ui/toolbar/Toolbar$State;,
        Lcom/android/car/ui/toolbar/Toolbar$OnSearchCompletedListener;,
        Lcom/android/car/ui/toolbar/Toolbar$OnSearchListener;,
        Lcom/android/car/ui/toolbar/Toolbar$OnTabSelectedListener;,
        Lcom/android/car/ui/toolbar/Toolbar$OnBackListener;,
        Lcom/android/car/ui/toolbar/Toolbar$OnHeightChangedListener;
    }
.end annotation


# instance fields
.field private mController:Lcom/android/car/ui/toolbar/ToolbarControllerImpl;

.field private mEatingHover:Z

.field private mEatingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/toolbar/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 129
    sget v0, Lcom/android/car/ui/R$attr;->CarUiToolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/toolbar/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/ui/toolbar/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/Toolbar;->mEatingTouch:Z

    .line 122
    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/Toolbar;->mEatingHover:Z

    const-string v1, "layout_inflater"

    .line 140
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 141
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/Toolbar;->getToolbarLayout()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 143
    new-instance v1, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;

    invoke-direct {v1, p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/car/ui/toolbar/Toolbar;->mController:Lcom/android/car/ui/toolbar/ToolbarControllerImpl;

    .line 145
    sget-object v1, Lcom/android/car/ui/R$styleable;->CarUiToolbar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 149
    :try_start_0
    sget p2, Lcom/android/car/ui/R$styleable;->CarUiToolbar_showTabsInSubpage:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/car/ui/toolbar/Toolbar;->setShowTabsInSubpage(Z)V

    .line 150
    sget p2, Lcom/android/car/ui/R$styleable;->CarUiToolbar_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/car/ui/toolbar/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    sget p2, Lcom/android/car/ui/R$styleable;->CarUiToolbar_logo:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/car/ui/toolbar/Toolbar;->setLogo(I)V

    .line 152
    sget p2, Lcom/android/car/ui/R$styleable;->CarUiToolbar_showBackground:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/car/ui/toolbar/Toolbar;->setBackgroundShown(Z)V

    .line 153
    sget p2, Lcom/android/car/ui/R$styleable;->CarUiToolbar_menuItems:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/car/ui/toolbar/Toolbar;->setMenuItems(I)Ljava/util/List;

    .line 154
    sget p2, Lcom/android/car/ui/R$styleable;->CarUiToolbar_searchHint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 156
    invoke-virtual {p0, p2}, Lcom/android/car/ui/toolbar/Toolbar;->setSearchHint(Ljava/lang/CharSequence;)V

    .line 159
    :cond_0
    sget p2, Lcom/android/car/ui/R$styleable;->CarUiToolbar_car_ui_state:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, 0x5

    const/4 p4, 0x2

    const-string v1, "CarUiToolbar"

    if-eqz p2, :cond_3

    if-eq p2, v3, :cond_2

    if-eq p2, p4, :cond_1

    .line 170
    :try_start_1
    invoke-static {v1, p3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "Unknown initial state"

    .line 171
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_1
    sget-object p2, Lcom/android/car/ui/toolbar/Toolbar$State;->SEARCH:Lcom/android/car/ui/toolbar/Toolbar$State;

    invoke-virtual {p0, p2}, Lcom/android/car/ui/toolbar/Toolbar;->setState(Lcom/android/car/ui/toolbar/Toolbar$State;)V

    goto :goto_0

    .line 164
    :cond_2
    sget-object p2, Lcom/android/car/ui/toolbar/Toolbar$State;->SUBPAGE:Lcom/android/car/ui/toolbar/Toolbar$State;

    invoke-virtual {p0, p2}, Lcom/android/car/ui/toolbar/Toolbar;->setState(Lcom/android/car/ui/toolbar/Toolbar$State;)V

    goto :goto_0

    .line 161
    :cond_3
    sget-object p2, Lcom/android/car/ui/toolbar/Toolbar$State;->HOME:Lcom/android/car/ui/toolbar/Toolbar$State;

    invoke-virtual {p0, p2}, Lcom/android/car/ui/toolbar/Toolbar;->setState(Lcom/android/car/ui/toolbar/Toolbar$State;)V

    .line 176
    :cond_4
    :goto_0
    sget p2, Lcom/android/car/ui/R$styleable;->CarUiToolbar_car_ui_navButtonMode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_7

    if-eq p2, v3, :cond_6

    if-eq p2, p4, :cond_5

    .line 187
    invoke-static {v1, p3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "Unknown navigation button style"

    .line 188
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 184
    :cond_5
    sget-object p2, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;->DOWN:Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    invoke-virtual {p0, p2}, Lcom/android/car/ui/toolbar/Toolbar;->setNavButtonMode(Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;)V

    goto :goto_1

    .line 181
    :cond_6
    sget-object p2, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;->CLOSE:Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    invoke-virtual {p0, p2}, Lcom/android/car/ui/toolbar/Toolbar;->setNavButtonMode(Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;)V

    goto :goto_1

    .line 178
    :cond_7
    sget-object p2, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;->BACK:Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    invoke-virtual {p0, p2}, Lcom/android/car/ui/toolbar/Toolbar;->setNavButtonMode(Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :cond_8
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    throw p0
.end method


# virtual methods
.method protected getToolbarLayout()I
    .locals 1

    .line 203
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/car/ui/R$bool;->car_ui_toolbar_tabs_on_second_row:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 205
    sget p0, Lcom/android/car/ui/R$layout;->car_ui_toolbar_two_row:I

    return p0

    .line 208
    :cond_0
    sget p0, Lcom/android/car/ui/R$layout;->car_ui_toolbar:I

    return p0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 570
    iput-boolean v1, p0, Lcom/android/car/ui/toolbar/Toolbar;->mEatingHover:Z

    .line 573
    :cond_0
    iget-boolean v3, p0, Lcom/android/car/ui/toolbar/Toolbar;->mEatingHover:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 574
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    .line 576
    iput-boolean v4, p0, Lcom/android/car/ui/toolbar/Toolbar;->mEatingHover:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 581
    :cond_2
    iput-boolean v1, p0, Lcom/android/car/ui/toolbar/Toolbar;->mEatingHover:Z

    :cond_3
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 542
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 544
    iput-boolean v1, p0, Lcom/android/car/ui/toolbar/Toolbar;->mEatingTouch:Z

    .line 547
    :cond_0
    iget-boolean v2, p0, Lcom/android/car/ui/toolbar/Toolbar;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 548
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 550
    iput-boolean v3, p0, Lcom/android/car/ui/toolbar/Toolbar;->mEatingTouch:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 555
    :cond_2
    iput-boolean v1, p0, Lcom/android/car/ui/toolbar/Toolbar;->mEatingTouch:Z

    :cond_3
    return v3
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 414
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "You can not change the background of a CarUi toolbar, use setBackgroundShown(boolean) or an RRO instead."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBackgroundShown(Z)V
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/android/car/ui/toolbar/Toolbar;->mController:Lcom/android/car/ui/toolbar/ToolbarControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->setBackgroundShown(Z)V

    return-void
.end method

.method public setLogo(I)V
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/car/ui/toolbar/Toolbar;->mController:Lcom/android/car/ui/toolbar/ToolbarControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->setLogo(I)V

    return-void
.end method

.method public setMenuItems(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/car/ui/toolbar/MenuItem;",
            ">;"
        }
    .end annotation

    .line 470
    iget-object p0, p0, Lcom/android/car/ui/toolbar/Toolbar;->mController:Lcom/android/car/ui/toolbar/ToolbarControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->setMenuItems(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public setNavButtonMode(Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;)V
    .locals 0

    .line 400
    iget-object p0, p0, Lcom/android/car/ui/toolbar/Toolbar;->mController:Lcom/android/car/ui/toolbar/ToolbarControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->setNavButtonMode(Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;)V

    return-void
.end method

.method public setSearchHint(Ljava/lang/CharSequence;)V
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/android/car/ui/toolbar/Toolbar;->mController:Lcom/android/car/ui/toolbar/ToolbarControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->setSearchHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setShowTabsInSubpage(Z)V
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/android/car/ui/toolbar/Toolbar;->mController:Lcom/android/car/ui/toolbar/ToolbarControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->setShowTabsInSubpage(Z)V

    return-void
.end method

.method public setState(Lcom/android/car/ui/toolbar/Toolbar$State;)V
    .locals 0

    .line 524
    iget-object p0, p0, Lcom/android/car/ui/toolbar/Toolbar;->mController:Lcom/android/car/ui/toolbar/ToolbarControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->setState(Lcom/android/car/ui/toolbar/Toolbar$State;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/android/car/ui/toolbar/Toolbar;->mController:Lcom/android/car/ui/toolbar/ToolbarControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
