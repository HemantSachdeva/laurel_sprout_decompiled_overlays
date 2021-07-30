.class public Lcom/android/systemui/qs/customize/QSCustomizer;
.super Landroid/widget/LinearLayout;
.source "QSCustomizer.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# instance fields
.field private isShown:Z

.field private final mClipper:Lcom/android/systemui/qs/QSDetailClipper;

.field private final mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mCustomizing:Z

.field private final mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIsShowingNavBackdrop:Z

.field private final mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

.field private mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private mOpening:Z

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

.field private final mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

.field private mToolbar:Landroid/widget/Toolbar;

.field private final mTransparentView:Landroid/view/View;

.field private mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 3

    .line 99
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/android/systemui/R$style;->edit_theme:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    new-instance p1, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {p1}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 326
    new-instance p1, Lcom/android/systemui/qs/customize/QSCustomizer$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$4;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    .line 336
    new-instance p1, Lcom/android/systemui/qs/customize/QSCustomizer$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$5;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 353
    new-instance p1, Lcom/android/systemui/qs/customize/QSCustomizer$6;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$6;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 101
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$layout;->qs_customize_panel_content:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 102
    new-instance p1, Lcom/android/systemui/qs/QSDetailClipper;

    sget p2, Lcom/android/systemui/R$id;->customize_container:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    const p1, 0x10201a6

    .line 103
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Toolbar;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    .line 104
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 105
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const v0, 0x101030b

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 106
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    .line 107
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 106
    invoke-virtual {p2, p1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    new-instance p2, Lcom/android/systemui/qs/customize/QSCustomizer$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$1;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {p1, p2}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {p1, p0}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 115
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v0, 0x10406ea

    .line 116
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 115
    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 117
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    sget p2, Lcom/android/systemui/R$string;->qs_edit:I

    invoke-virtual {p1, p2}, Landroid/widget/Toolbar;->setTitle(I)V

    const p1, 0x102000a

    .line 118
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    sget p1, Lcom/android/systemui/R$id;->customizer_transparent_view:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTransparentView:Landroid/view/View;

    .line 120
    new-instance p1, Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p7}, Lcom/android/systemui/qs/customize/TileAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 121
    iput-object p6, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    .line 122
    invoke-virtual {p6, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->setListener(Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;)V

    .line 123
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 124
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter;->getItemTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 125
    new-instance p1, Lcom/android/systemui/qs/customize/QSCustomizer$2;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p6, 0x3

    invoke-direct {p1, p0, p2, p6}, Lcom/android/systemui/qs/customize/QSCustomizer$2;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;Landroid/content/Context;I)V

    .line 132
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p2}, Lcom/android/systemui/qs/customize/TileAdapter;->getSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 133
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 134
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p2}, Lcom/android/systemui/qs/customize/TileAdapter;->getItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 135
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 p6, 0x96

    .line 136
    invoke-virtual {p1, p6, p7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 137
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 138
    iput-object p3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 139
    iput-object p4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 140
    iput-object p5, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 141
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackDrop(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/customize/QSCustomizer;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/customize/QSCustomizer;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/qs/customize/TileAdapter;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/customize/QSCustomizer;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private queryTiles()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->queryTiles(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method private reset()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/qs/QSTileHost;->getDefaultSpecs(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/qs/customize/TileAdapter;->resetTileSpecs(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)V

    return-void
.end method

.method private save()V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter;->saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V

    :cond_0
    return-void
.end method

.method private setCustomizing(Z)V
    .locals 0

    .line 257
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    .line 258
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->notifyCustomizeChanged()V

    return-void
.end method

.method private setTileSpecs()V
    .locals 3

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile;

    .line 283
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->setTileSpecs(Ljava/util/List;)V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private updateNavBackDrop(Landroid/content/res/Configuration;)V
    .locals 4

    .line 159
    sget v0, Lcom/android/systemui/R$id;->nav_bar_background:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 160
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/4 v2, 0x0

    const/16 v3, 0x258

    if-ge v1, v3, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mIsShowingNavBackdrop:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    .line 163
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    return-void
.end method

.method private updateNavColors()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mIsShowingNavBackdrop:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->setQsCustomizing(Z)V

    return-void
.end method

.method private updateResources()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTransparentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 153
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050217

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 155
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTransparentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 6

    .line 229
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 230
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz v2, :cond_2

    .line 231
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_CLOSED:Lcom/android/systemui/qs/QSEditEvent;

    invoke-interface {v2, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 232
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 233
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2}, Landroid/widget/Toolbar;->dismissPopupMenus()V

    .line 234
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSDetailClipper;->cancelAnimator()V

    .line 237
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    .line 238
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    .line 239
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->save()V

    if-eqz v0, :cond_1

    .line 241
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    iget v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 243
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 248
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    :cond_2
    return-void
.end method

.method public isCustomizing()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

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

.method public isShown()Z
    .locals 0

    .line 253
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 146
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 147
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackDrop(Landroid/content/res/Configuration;)V

    .line 148
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateResources()V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 267
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_RESET:Lcom/android/systemui/qs/QSEditEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->reset()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "qs_customizing"

    .line 304
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 306
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 307
    new-instance p1, Lcom/android/systemui/qs/customize/QSCustomizer$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$3;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 297
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 300
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    const-string v0, "qs_customizing"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-void
.end method

.method public setEditLocation(II)V
    .locals 2

    .line 321
    sget v0, Lcom/android/systemui/R$id;->customize_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 322
    aget v1, v0, v1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    const/4 p1, 0x1

    .line 323
    aget p1, v0, p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 174
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-void
.end method

.method public show(II)V
    .locals 3

    .line 189
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    .line 190
    sget v0, Lcom/android/systemui/R$id;->customize_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 191
    aget v2, v0, v1

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    const/4 p1, 0x1

    .line 192
    aget v0, v0, p1

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    .line 193
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_OPEN:Lcom/android/systemui/qs/QSEditEvent;

    invoke-interface {p2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 194
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 195
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setTileSpecs()V

    .line 197
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    iget v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->queryTiles()V

    .line 200
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 201
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 202
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    :cond_0
    return-void
.end method

.method public showImmediately()V
    .locals 3

    .line 209
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSDetailClipper;->cancelAnimator()V

    .line 212
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSDetailClipper;->showBackground()V

    const/4 v1, 0x1

    .line 213
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setTileSpecs()V

    .line 215
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->queryTiles()V

    .line 217
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    :cond_0
    return-void
.end method
