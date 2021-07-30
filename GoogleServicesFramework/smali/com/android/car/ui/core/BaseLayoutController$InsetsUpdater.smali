.class Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;
.super Ljava/lang/Object;
.source "BaseLayoutController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/core/BaseLayoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InsetsUpdater"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBottomInsetView:Landroid/view/View;

.field private mInsets:Lcom/android/car/ui/baselayout/Insets;

.field private mInsetsChangedListenerDelegate:Lcom/android/car/ui/baselayout/InsetsChangedListener;

.field private mInsetsDirty:Z

.field private final mLeftInsetView:Landroid/view/View;

.field private final mRightInsetView:Landroid/view/View;

.field private final mTopInsetView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mInsetsDirty:Z

    .line 201
    new-instance v0, Lcom/android/car/ui/baselayout/Insets;

    invoke-direct {v0}, Lcom/android/car/ui/baselayout/Insets;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mInsets:Lcom/android/car/ui/baselayout/Insets;

    .line 212
    iput-object p1, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mActivity:Landroid/app/Activity;

    const-string p1, "car_ui_left_inset"

    .line 214
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mLeftInsetView:Landroid/view/View;

    const-string p1, "car_ui_right_inset"

    .line 215
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mRightInsetView:Landroid/view/View;

    const-string p1, "car_ui_top_inset"

    .line 216
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mTopInsetView:Landroid/view/View;

    const-string p1, "car_ui_bottom_inset"

    .line 217
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mBottomInsetView:Landroid/view/View;

    .line 219
    new-instance p1, Lcom/android/car/ui/core/-$$Lambda$BaseLayoutController$InsetsUpdater$zzCIB0038f8j1iFmYePHWvmc4w4;

    invoke-direct {p1, p0}, Lcom/android/car/ui/core/-$$Lambda$BaseLayoutController$InsetsUpdater$zzCIB0038f8j1iFmYePHWvmc4w4;-><init>(Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;)V

    .line 228
    iget-object p2, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mLeftInsetView:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 229
    invoke-virtual {p2, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 231
    :cond_0
    iget-object p2, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mRightInsetView:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 232
    invoke-virtual {p2, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 234
    :cond_1
    iget-object p2, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mTopInsetView:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 235
    invoke-virtual {p2, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 237
    :cond_2
    iget-object p0, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mBottomInsetView:Landroid/view/View;

    if-eqz p0, :cond_3

    .line 238
    invoke-virtual {p0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 240
    :cond_3
    invoke-virtual {p3, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private static getBottomOfView(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 362
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 363
    aget v0, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static getLeftOfView(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 344
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x0

    .line 345
    aget p0, v0, p0

    return p0
.end method

.method private static getRightOfView(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 350
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 351
    aget v0, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static getTopOfView(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 356
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x1

    .line 357
    aget p0, v0, p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 224
    iput-boolean p1, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mInsetsDirty:Z

    :cond_1
    return-void
.end method


# virtual methods
.method dispatchNewInsets(Lcom/android/car/ui/baselayout/Insets;)V
    .locals 5

    .line 309
    iput-object p1, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mInsets:Lcom/android/car/ui/baselayout/Insets;

    .line 313
    iget-object v0, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mInsetsChangedListenerDelegate:Lcom/android/car/ui/baselayout/InsetsChangedListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 314
    invoke-interface {v0, p1}, Lcom/android/car/ui/baselayout/InsetsChangedListener;->onCarUiInsetsChanged(Lcom/android/car/ui/baselayout/Insets;)V

    goto :goto_2

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mActivity:Landroid/app/Activity;

    instance-of v2, v0, Lcom/android/car/ui/baselayout/InsetsChangedListener;

    if-eqz v2, :cond_1

    .line 320
    check-cast v0, Lcom/android/car/ui/baselayout/InsetsChangedListener;

    invoke-interface {v0, p1}, Lcom/android/car/ui/baselayout/InsetsChangedListener;->onCarUiInsetsChanged(Lcom/android/car/ui/baselayout/Insets;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 324
    :goto_0
    iget-object v2, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mActivity:Landroid/app/Activity;

    instance-of v3, v2, Landroidx/fragment/app/FragmentActivity;

    if-eqz v3, :cond_3

    .line 325
    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    .line 326
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    .line 325
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 327
    instance-of v4, v3, Lcom/android/car/ui/baselayout/InsetsChangedListener;

    if-eqz v4, :cond_2

    .line 328
    check-cast v3, Lcom/android/car/ui/baselayout/InsetsChangedListener;

    invoke-interface {v3, p1}, Lcom/android/car/ui/baselayout/InsetsChangedListener;->onCarUiInsetsChanged(Lcom/android/car/ui/baselayout/Insets;)V

    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_2
    if-nez v1, :cond_4

    .line 336
    iget-object p0, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-static {p0, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    .line 337
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getTop()I

    move-result v1

    .line 338
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getRight()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getBottom()I

    move-result p1

    .line 337
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    return-void
.end method

.method getInsets()Lcom/android/car/ui/baselayout/Insets;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mInsets:Lcom/android/car/ui/baselayout/Insets;

    return-object p0
.end method

.method installListeners()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 251
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public synthetic lambda$new$0$BaseLayoutController$InsetsUpdater(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 6

    .line 268
    iget-boolean v0, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mInsetsDirty:Z

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-static {v0, v1}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mTopInsetView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 281
    invoke-static {v1}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getBottomOfView(Landroid/view/View;)I

    move-result v1

    invoke-static {v0}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getTopOfView(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 283
    :goto_0
    iget-object v3, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mBottomInsetView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 284
    invoke-static {v0}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getBottomOfView(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mBottomInsetView:Landroid/view/View;

    invoke-static {v4}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getTopOfView(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    .line 286
    :goto_1
    iget-object v4, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mLeftInsetView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 287
    invoke-static {v4}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getRightOfView(Landroid/view/View;)I

    move-result v4

    invoke-static {v0}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getLeftOfView(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    :cond_3
    move v4, v2

    .line 289
    :goto_2
    iget-object v5, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mRightInsetView:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 290
    invoke-static {v0}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getRightOfView(Landroid/view/View;)I

    move-result v0

    iget-object v5, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mRightInsetView:Landroid/view/View;

    invoke-static {v5}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getLeftOfView(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v0, v5

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_3

    :cond_4
    move v0, v2

    .line 292
    :goto_3
    new-instance v5, Lcom/android/car/ui/baselayout/Insets;

    invoke-direct {v5, v4, v1, v0, v3}, Lcom/android/car/ui/baselayout/Insets;-><init>(IIII)V

    .line 294
    iput-boolean v2, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mInsetsDirty:Z

    .line 295
    iget-object v0, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mInsets:Lcom/android/car/ui/baselayout/Insets;

    invoke-virtual {v5, v0}, Lcom/android/car/ui/baselayout/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 296
    iput-object v5, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mInsets:Lcom/android/car/ui/baselayout/Insets;

    .line 297
    invoke-virtual {p0, v5}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->dispatchNewInsets(Lcom/android/car/ui/baselayout/Insets;)V

    :cond_5
    return-void
.end method
