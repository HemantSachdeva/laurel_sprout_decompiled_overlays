.class public final Lcom/android/car/ui/recyclerview/CarUiRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "CarUiRecyclerView.java"

# interfaces
.implements Lcom/android/car/ui/toolbar/Toolbar$OnHeightChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/recyclerview/CarUiRecyclerView$UxRestrictionChangedListener;,
        Lcom/android/car/ui/recyclerview/CarUiRecyclerView$ItemCap;
    }
.end annotation


# instance fields
.field private final mCarUxRestrictionsUtil:Lcom/android/car/ui/utils/CarUxRestrictionsUtil;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContainerPadding:Landroid/graphics/Rect;

.field private mContainerPaddingRelative:Landroid/graphics/Rect;

.field private mContainerVisibility:I

.field private mDividerItemDecorationGrid:Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;

.field private mDividerItemDecorationLinear:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mHasScrolledToTop:Z

.field private mInitialTopPadding:I

.field private mInstallingExtScrollBar:Z

.field private final mListener:Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;

.field private mNumOfColumns:I

.field private mOffsetItemDecoration:Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;

.field private mScrollBar:Lcom/android/car/ui/recyclerview/ScrollBar;

.field private mScrollBarClass:Ljava/lang/String;

.field private mScrollBarEnabled:Z

.field private mScrollBarPaddingBottom:I

.field private mScrollBarPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 159
    sget v0, Lcom/android/car/ui/R$attr;->carUiRecyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    new-instance v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$UxRestrictionChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$UxRestrictionChangedListener;-><init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;Lcom/android/car/ui/recyclerview/CarUiRecyclerView$1;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mListener:Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mHasScrolledToTop:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mInstallingExtScrollBar:Z

    .line 95
    iput v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainerVisibility:I

    .line 165
    invoke-static {p1}, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->getInstance(Landroid/content/Context;)Lcom/android/car/ui/utils/CarUxRestrictionsUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mCarUxRestrictionsUtil:Lcom/android/car/ui/utils/CarUxRestrictionsUtil;

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$101(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 66
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    const-string v0, "CarUiRecyclerView"

    .line 507
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private createScrollBarFromConfig(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarClass:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 417
    :cond_0
    const-class v1, Lcom/android/car/ui/recyclerview/DefaultScrollBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    const/4 v2, 0x0

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    .line 422
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/recyclerview/ScrollBar;

    iput-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBar:Lcom/android/car/ui/recyclerview/ScrollBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    invoke-interface {v1, p0, p1}, Lcom/android/car/ui/recyclerview/ScrollBar;->initialize(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    .line 429
    iget p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarPaddingTop:I

    iget v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarPaddingBottom:I

    invoke-virtual {p0, p1, v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setScrollBarPadding(II)V

    return-void

    :catchall_0
    move-exception p1

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating scroll bar component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarClass:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    throw v0

    :catchall_1
    move-exception p1

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading scroll bar component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarClass:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    throw v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->initRotaryScroll(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 172
    sget-object v1, Lcom/android/car/ui/R$styleable;->CarUiRecyclerView:[I

    sget v2, Lcom/android/car/ui/R$style;->Widget_CarUi_CarUiRecyclerView:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/car/ui/R$bool;->car_ui_scrollbar_enable:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarEnabled:Z

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/car/ui/R$dimen;->car_ui_scrollbar_padding_top:I

    .line 181
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarPaddingTop:I

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/car/ui/R$dimen;->car_ui_scrollbar_padding_bottom:I

    .line 183
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarPaddingBottom:I

    .line 185
    sget p3, Lcom/android/car/ui/R$styleable;->CarUiRecyclerView_layoutStyle:I

    .line 186
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 187
    sget v1, Lcom/android/car/ui/R$styleable;->CarUiRecyclerView_numOfColumns:I

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mNumOfColumns:I

    .line 188
    sget v1, Lcom/android/car/ui/R$styleable;->CarUiRecyclerView_enableDivider:I

    .line 189
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 191
    new-instance v2, Lcom/android/car/ui/recyclerview/decorations/linear/LinearDividerItemDecoration;

    sget v3, Lcom/android/car/ui/R$drawable;->car_ui_recyclerview_divider:I

    .line 192
    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/car/ui/recyclerview/decorations/linear/LinearDividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mDividerItemDecorationLinear:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 194
    new-instance v2, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;

    sget v3, Lcom/android/car/ui/R$drawable;->car_ui_divider:I

    .line 196
    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/android/car/ui/R$drawable;->car_ui_divider:I

    .line 197
    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mNumOfColumns:I

    invoke-direct {v2, v3, v4, v5}, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    iput-object v2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mDividerItemDecorationGrid:Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;

    .line 200
    sget v2, Lcom/android/car/ui/R$styleable;->CarUiRecyclerView_topOffset:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 201
    sget v3, Lcom/android/car/ui/R$styleable;->CarUiRecyclerView_bottomOffset:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    const/4 v4, 0x1

    if-nez p3, :cond_1

    if-eqz v1, :cond_0

    .line 206
    iget-object p3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mDividerItemDecorationLinear:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 208
    :cond_0
    new-instance p3, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;

    invoke-direct {p3, v2, v0}, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;-><init>(II)V

    .line 211
    new-instance v1, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;

    invoke-direct {v1, v3, v4}, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;-><init>(II)V

    .line 214
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 215
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 216
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 220
    iget-object p3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mDividerItemDecorationGrid:Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 223
    :cond_2
    new-instance p3, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;

    iget v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mNumOfColumns:I

    invoke-direct {p3, v2, v1, v0}, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;-><init>(III)V

    iput-object p3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mOffsetItemDecoration:Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;

    .line 227
    new-instance p3, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;

    iget v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mNumOfColumns:I

    invoke-direct {p3, v3, v1, v4}, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;-><init>(III)V

    .line 231
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mOffsetItemDecoration:Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 232
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 233
    new-instance p3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mNumOfColumns:I

    invoke-direct {p3, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 234
    iget p3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mNumOfColumns:I

    invoke-virtual {p0, p3}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setNumOfColumns(I)V

    .line 237
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 238
    iget-boolean p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarEnabled:Z

    if-nez p2, :cond_3

    return-void

    .line 242
    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 243
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/car/ui/R$string;->car_ui_scrollbar_component:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarClass:Ljava/lang/String;

    .line 246
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiRecyclerView$QvMxJGgsUlhlvsQUwFa8DAYyVNE;

    invoke-direct {p2, p0}, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiRecyclerView$QvMxJGgsUlhlvsQUwFa8DAYyVNE;-><init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V

    .line 247
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private initRotaryScroll(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 268
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "android.rotary.VERTICALLY_SCROLLABLE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "android.rotary.HORIZONTALLY_SCROLLABLE"

    if-nez v0, :cond_1

    .line 270
    sget-object v0, Lcom/android/car/ui/R$styleable;->RecyclerView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 272
    sget p2, Lcom/android/car/ui/R$styleable;->RecyclerView_android_orientation:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-nez p1, :cond_0

    move-object v1, v4

    .line 274
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 279
    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 285
    :cond_2
    :goto_0
    new-instance p1, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiRecyclerView$24kAtCeZVPWeWh7V-NT66niPhZg;

    invoke-direct {p1, p0}, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiRecyclerView$24kAtCeZVPWeWh7V-NT66niPhZg;-><init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 299
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    const/high16 p1, 0x20000

    .line 303
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 307
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setDefaultFocusHighlightEnabled(Z)V

    return-void
.end method

.method private installExternalScrollBar()V
    .locals 5

    .line 378
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/widget/LinearLayout;

    .line 379
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 380
    sget v1, Lcom/android/car/ui/R$layout;->car_ui_recycler_view:I

    iget-object v2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 381
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainerVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainerPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/widget/LinearLayout;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainerPaddingRelative:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 387
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/widget/LinearLayout;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    .line 392
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    const/4 v3, 0x0

    .line 391
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 393
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    .line 394
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    .line 393
    invoke-virtual {p0, v3, v0, v3, v1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setPadding(IIII)V

    .line 397
    :goto_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 399
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 400
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 402
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 404
    iget-object v3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/widget/LinearLayout;

    sget v4, Lcom/android/car/ui/R$id;->car_ui_recycler_view:I

    .line 405
    invoke-static {v3, v4}, Lcom/android/car/ui/utils/CarUiUtils;->findViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 404
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewContainer;

    .line 406
    invoke-virtual {v3, p0, v2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewContainer;->addRecyclerView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 407
    iget-object v2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 409
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/car/ui/R$id;->car_ui_scroll_bar:I

    invoke-static {v0, v1}, Lcom/android/car/ui/utils/CarUiUtils;->findViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->createScrollBarFromConfig(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$init$0()V
    .locals 1

    .line 253
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    return-void
.end method

.method private synthetic lambda$init$1()V
    .locals 2

    .line 248
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mHasScrolledToTop:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiRecyclerView$9zzFIFbBPAyBn0segDxp_ih7AqU;

    invoke-direct {v1, p0}, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiRecyclerView$9zzFIFbBPAyBn0segDxp_ih7AqU;-><init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mHasScrolledToTop:Z

    .line 257
    :cond_0
    iget v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mInitialTopPadding:I

    if-nez v0, :cond_1

    .line 258
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mInitialTopPadding:I

    :cond_1
    return-void
.end method

.method private synthetic lambda$initRotaryScroll$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 286
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 287
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    const/high16 v0, 0x400000

    if-ne p1, v0, :cond_0

    .line 288
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/16 p2, 0x2002

    .line 289
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 290
    invoke-static {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->access$101(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public synthetic lambda$init$0$CarUiRecyclerView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->lambda$init$0()V

    return-void
.end method

.method public synthetic lambda$init$1$CarUiRecyclerView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->lambda$init$1()V

    return-void
.end method

.method public synthetic lambda$initRotaryScroll$2$CarUiRecyclerView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->lambda$initRotaryScroll$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 357
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 358
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mCarUxRestrictionsUtil:Lcom/android/car/ui/utils/CarUxRestrictionsUtil;

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mListener:Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->register(Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;)V

    .line 359
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mInstallingExtScrollBar:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 367
    iput-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mInstallingExtScrollBar:Z

    .line 368
    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->installExternalScrollBar()V

    const/4 v0, 0x0

    .line 369
    iput-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mInstallingExtScrollBar:Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 434
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 435
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mCarUxRestrictionsUtil:Lcom/android/car/ui/utils/CarUxRestrictionsUtil;

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mListener:Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;

    invoke-virtual {v0, p0}, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->unregister(Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;)V

    return-void
.end method

.method public onHeightChanged(I)V
    .locals 3

    .line 329
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mInitialTopPadding:I

    add-int/2addr v1, p1

    .line 330
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    .line 329
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setPaddingRelative(IIII)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 312
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    .line 316
    iput-boolean p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mHasScrolledToTop:Z

    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 321
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 322
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBar:Lcom/android/car/ui/recyclerview/ScrollBar;

    if-eqz p0, :cond_0

    .line 323
    invoke-interface {p0}, Lcom/android/car/ui/recyclerview/ScrollBar;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setNumOfColumns(I)V
    .locals 1

    .line 337
    iput p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mNumOfColumns:I

    .line 338
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mOffsetItemDecoration:Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0, p1}, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->setNumOfColumns(I)V

    .line 341
    :cond_0
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mDividerItemDecorationGrid:Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;

    if-eqz p1, :cond_1

    .line 342
    iget p0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mNumOfColumns:I

    invoke-virtual {p1, p0}, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->setNumOfColumns(I)V

    :cond_1
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    const/4 v0, 0x0

    .line 440
    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainerPaddingRelative:Landroid/graphics/Rect;

    .line 441
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 442
    invoke-super {p0, v0, p2, v0, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 443
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p1, v0, p3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainerPadding:Landroid/graphics/Rect;

    .line 444
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    .line 445
    invoke-virtual {p2, p1, v0, p3, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 447
    :cond_0
    iget p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarPaddingTop:I

    iget p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarPaddingBottom:I

    invoke-virtual {p0, p1, p2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setScrollBarPadding(II)V

    goto :goto_0

    .line 449
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1

    const/4 v0, 0x0

    .line 455
    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainerPadding:Landroid/graphics/Rect;

    .line 456
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 457
    invoke-super {p0, v0, p2, v0, p4}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 458
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p1, v0, p3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainerPaddingRelative:Landroid/graphics/Rect;

    .line 459
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    .line 460
    invoke-virtual {p2, p1, v0, p3, v0}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 462
    :cond_0
    iget p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarPaddingTop:I

    iget p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarPaddingBottom:I

    invoke-virtual {p0, p1, p2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setScrollBarPadding(II)V

    goto :goto_0

    .line 464
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    :goto_0
    return-void
.end method

.method public setScrollBarPadding(II)V
    .locals 2

    .line 473
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarEnabled:Z

    if-eqz v0, :cond_0

    .line 474
    iput p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarPaddingTop:I

    .line 475
    iput p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarPaddingBottom:I

    .line 477
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBar:Lcom/android/car/ui/recyclerview/ScrollBar;

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr p1, v1

    .line 479
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    add-int/2addr p2, p0

    .line 478
    invoke-interface {v0, p1, p2}, Lcom/android/car/ui/recyclerview/ScrollBar;->setPadding(II)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 348
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 349
    iput p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainerVisibility:I

    .line 350
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    .line 351
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
