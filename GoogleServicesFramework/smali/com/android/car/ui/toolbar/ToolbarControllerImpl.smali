.class public Lcom/android/car/ui/toolbar/ToolbarControllerImpl;
.super Ljava/lang/Object;
.source "ToolbarControllerImpl.java"

# interfaces
.implements Lcom/android/car/ui/toolbar/ToolbarController;


# instance fields
.field private mBackground:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mHasLogo:Z

.field private final mIsTabsInSecondRow:Z

.field private mLogoFillsNavIconSpace:Z

.field private mLogoInNavIconSpace:Landroid/widget/ImageView;

.field private final mMenuItemRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/ui/toolbar/MenuItemRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuItemViews:[Landroid/view/View;

.field private mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/ui/toolbar/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuItemsContainer:Landroid/view/ViewGroup;

.field private mMenuItemsXmlId:I

.field private mNavButtonMode:Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

.field private mNavIcon:Landroid/widget/ImageView;

.field private mNavIconContainer:Landroid/view/ViewGroup;

.field private mNavIconSpaceReserved:Z

.field private final mOnBackListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/car/ui/toolbar/Toolbar$OnBackListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnHeightChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/car/ui/toolbar/Toolbar$OnHeightChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnSearchCompletedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/car/ui/toolbar/Toolbar$OnSearchCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnSearchListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/car/ui/toolbar/Toolbar$OnSearchListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnTabSelectedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/car/ui/toolbar/Toolbar$OnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnUxRestrictionsChangedListener:Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;

.field private final mOverflowAdapter:Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;

.field private final mOverflowButton:Lcom/android/car/ui/toolbar/MenuItem;

.field private mOverflowDialog:Landroid/app/AlertDialog;

.field private final mOverflowItemListener:Lcom/android/car/ui/toolbar/MenuItem$Listener;

.field private mOverflowItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/ui/toolbar/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchHint:Ljava/lang/CharSequence;

.field private mSearchIcon:Landroid/graphics/drawable/Drawable;

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchView:Lcom/android/car/ui/toolbar/SearchView;

.field private mSearchViewContainer:Landroid/widget/FrameLayout;

.field private mShowLogo:Z

.field private mShowMenuItemsWhileSearching:Z

.field private mShowTabsInSubpage:Z

.field private mState:Lcom/android/car/ui/toolbar/Toolbar$State;

.field private mSubtitle:Landroid/widget/TextView;

.field private mTabLayout:Lcom/android/car/ui/toolbar/TabLayout;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleContainer:Landroid/view/ViewGroup;

.field private mTitleLogo:Landroid/widget/ImageView;

.field private mTitleLogoContainer:Landroid/view/ViewGroup;

.field private final mUiOverflowItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/ui/recyclerview/CarUiListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOnSearchListeners:Ljava/util/Set;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOnSearchCompletedListeners:Ljava/util/Set;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOnBackListeners:Ljava/util/Set;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOnTabSelectedListeners:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOnHeightChangedListeners:Ljava/util/Set;

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mShowTabsInSubpage:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mHasLogo:Z

    .line 99
    sget-object v1, Lcom/android/car/ui/toolbar/Toolbar$State;->HOME:Lcom/android/car/ui/toolbar/Toolbar$State;

    iput-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mState:Lcom/android/car/ui/toolbar/Toolbar$State;

    .line 100
    sget-object v1, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;->BACK:Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    iput-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mNavButtonMode:Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    .line 102
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mMenuItems:Ljava/util/List;

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOverflowItems:Ljava/util/List;

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mUiOverflowItems:Ljava/util/List;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mMenuItemRenderers:Ljava/util/List;

    .line 108
    iput v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mMenuItemsXmlId:I

    .line 114
    new-instance v0, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$1IOFQtCJ5rtG6IDzmeG4aoQaKKw;

    invoke-direct {v0, p0}, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$1IOFQtCJ5rtG6IDzmeG4aoQaKKw;-><init>(Lcom/android/car/ui/toolbar/ToolbarControllerImpl;)V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOverflowItemListener:Lcom/android/car/ui/toolbar/MenuItem$Listener;

    .line 121
    new-instance v0, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$XuH-he7uMvOrHcAZyCrw8AehzNg;

    invoke-direct {v0, p0}, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$XuH-he7uMvOrHcAZyCrw8AehzNg;-><init>(Lcom/android/car/ui/toolbar/ToolbarControllerImpl;)V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOnUxRestrictionsChangedListener:Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mContext:Landroid/content/Context;

    .line 131
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/ui/toolbar/MenuItem;->builder(Landroid/content/Context;)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    move-result-object v0

    sget v1, Lcom/android/car/ui/R$drawable;->car_ui_icon_overflow_menu:I

    .line 132
    invoke-virtual {v0, v1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setIcon(I)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    sget v1, Lcom/android/car/ui/R$string;->car_ui_toolbar_menu_item_overflow_title:I

    .line 133
    invoke-virtual {v0, v1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setTitle(I)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    new-instance v1, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$oO5mRdAg3c9VhIPnkrwlE9PbRrU;

    invoke-direct {v1, p0}, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$oO5mRdAg3c9VhIPnkrwlE9PbRrU;-><init>(Lcom/android/car/ui/toolbar/ToolbarControllerImpl;)V

    .line 134
    invoke-virtual {v0, v1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setOnClickListener(Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    .line 143
    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->build()Lcom/android/car/ui/toolbar/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOverflowButton:Lcom/android/car/ui/toolbar/MenuItem;

    .line 145
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/car/ui/R$bool;->car_ui_toolbar_tabs_on_second_row:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mIsTabsInSecondRow:Z

    .line 147
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/car/ui/R$bool;->car_ui_toolbar_nav_icon_reserve_space:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mNavIconSpaceReserved:Z

    .line 149
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/car/ui/R$bool;->car_ui_toolbar_logo_fills_nav_icon_space:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mLogoFillsNavIconSpace:Z

    .line 151
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/car/ui/R$bool;->car_ui_toolbar_show_logo:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mShowLogo:Z

    .line 153
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/car/ui/R$string;->car_ui_toolbar_default_search_hint:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mSearchHint:Ljava/lang/CharSequence;

    .line 155
    sget v0, Lcom/android/car/ui/R$id;->car_ui_toolbar_background:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mBackground:Landroid/view/View;

    .line 156
    sget v0, Lcom/android/car/ui/R$id;->car_ui_toolbar_tabs:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/toolbar/TabLayout;

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mTabLayout:Lcom/android/car/ui/toolbar/TabLayout;

    .line 157
    sget v0, Lcom/android/car/ui/R$id;->car_ui_toolbar_nav_icon:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mNavIcon:Landroid/widget/ImageView;

    .line 158
    sget v0, Lcom/android/car/ui/R$id;->car_ui_toolbar_logo:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mLogoInNavIconSpace:Landroid/widget/ImageView;

    .line 159
    sget v0, Lcom/android/car/ui/R$id;->car_ui_toolbar_nav_icon_container:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mNavIconContainer:Landroid/view/ViewGroup;

    .line 160
    sget v0, Lcom/android/car/ui/R$id;->car_ui_toolbar_menu_items_container:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mMenuItemsContainer:Landroid/view/ViewGroup;

    .line 161
    sget v0, Lcom/android/car/ui/R$id;->car_ui_toolbar_title_container:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mTitleContainer:Landroid/view/ViewGroup;

    .line 162
    sget v0, Lcom/android/car/ui/R$id;->car_ui_toolbar_subtitle:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mSubtitle:Landroid/widget/TextView;

    .line 163
    sget v0, Lcom/android/car/ui/R$id;->car_ui_toolbar_title:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mTitle:Landroid/widget/TextView;

    .line 164
    sget v0, Lcom/android/car/ui/R$id;->car_ui_toolbar_title_logo_container:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mTitleLogoContainer:Landroid/view/ViewGroup;

    .line 165
    sget v0, Lcom/android/car/ui/R$id;->car_ui_toolbar_title_logo:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mTitleLogo:Landroid/widget/ImageView;

    .line 166
    sget v0, Lcom/android/car/ui/R$id;->car_ui_toolbar_search_view_container:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mSearchViewContainer:Landroid/widget/FrameLayout;

    .line 167
    sget v0, Lcom/android/car/ui/R$id;->car_ui_toolbar_progress_bar:I

    .line 168
    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 170
    iget-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mTabLayout:Lcom/android/car/ui/toolbar/TabLayout;

    new-instance v0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl$1;-><init>(Lcom/android/car/ui/toolbar/ToolbarControllerImpl;)V

    invoke-virtual {p1, v0}, Lcom/android/car/ui/toolbar/TabLayout;->addListener(Lcom/android/car/ui/toolbar/TabLayout$Listener;)V

    .line 179
    iget-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mBackground:Landroid/view/View;

    new-instance v0, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$0Shr4D2NlmNQK-0cQlP1vgI1j0c;

    invoke-direct {v0, p0}, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$0Shr4D2NlmNQK-0cQlP1vgI1j0c;-><init>(Lcom/android/car/ui/toolbar/ToolbarControllerImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 p1, 0x1

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->setBackgroundShown(Z)V

    .line 190
    new-instance p1, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mUiOverflowItems:Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOverflowAdapter:Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;

    .line 193
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->getInstance(Landroid/content/Context;)Lcom/android/car/ui/utils/CarUxRestrictionsUtil;

    move-result-object p1

    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOnUxRestrictionsChangedListener:Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;

    .line 194
    invoke-virtual {p1, p0}, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->register(Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/car/ui/toolbar/ToolbarControllerImpl;)Ljava/util/Set;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOnTabSelectedListeners:Ljava/util/Set;

    return-object p0
.end method

.method private countVisibleOverflowItems()I
    .locals 2

    .line 581
    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOverflowItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/toolbar/MenuItem;

    .line 582
    invoke-virtual {v1}, Lcom/android/car/ui/toolbar/MenuItem;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private createOverflowDialog()V
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mUiOverflowItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 591
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOverflowItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/toolbar/MenuItem;

    .line 592
    invoke-virtual {v1}, Lcom/android/car/ui/toolbar/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 593
    iget-object v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mUiOverflowItems:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->toCarUiContentListItem(Lcom/android/car/ui/toolbar/MenuItem;)Lcom/android/car/ui/recyclerview/CarUiContentListItem;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 597
    :cond_1
    new-instance v0, Lcom/android/car/ui/AlertDialogBuilder;

    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/car/ui/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOverflowAdapter:Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;

    .line 598
    invoke-virtual {v0, v1}, Lcom/android/car/ui/AlertDialogBuilder;->setAdapter(Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;)Lcom/android/car/ui/AlertDialogBuilder;

    .line 599
    invoke-virtual {v0}, Lcom/android/car/ui/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOverflowDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic lambda$new$0(Lcom/android/car/ui/toolbar/MenuItem;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->updateOverflowDialog(Lcom/android/car/ui/toolbar/MenuItem;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->getState()Lcom/android/car/ui/toolbar/Toolbar$State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->setState(Lcom/android/car/ui/toolbar/Toolbar$State;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 1

    .line 123
    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mMenuItemRenderers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/toolbar/MenuItemRenderer;

    .line 124
    invoke-virtual {v0, p1}, Lcom/android/car/ui/toolbar/MenuItemRenderer;->setCarUxRestrictions(Landroid/car/drivingstate/CarUxRestrictions;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Lcom/android/car/ui/toolbar/MenuItem;)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOverflowDialog:Landroid/app/AlertDialog;

    if-nez p0, :cond_0

    const/4 p0, 0x6

    const-string p1, "CarUiToolbarController"

    .line 136
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Overflow dialog was null when trying to show it!"

    .line 137
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p9, p7

    sub-int/2addr p5, p3

    if-eq p9, p5, :cond_0

    .line 182
    iget-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOnHeightChangedListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/car/ui/toolbar/Toolbar$OnHeightChangedListener;

    .line 183
    iget-object p3, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mBackground:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-interface {p2, p3}, Lcom/android/car/ui/toolbar/Toolbar$OnHeightChangedListener;->onHeightChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setMenuItemsInternal$4([Landroid/view/View;ILjava/util/concurrent/atomic/AtomicInteger;Landroid/view/View;)V
    .locals 1

    .line 478
    monitor-enter p0

    .line 479
    :try_start_0
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mMenuItemViews:[Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 480
    monitor-exit p0

    return-void

    .line 483
    :cond_0
    aput-object p4, p1, p2

    const/4 p2, 0x1

    .line 484
    invoke-virtual {p3, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p2

    array-length p3, p1

    if-ne p2, p3, :cond_1

    .line 485
    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    aget-object p4, p1, p3

    .line 486
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mMenuItemsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 489
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic lambda$setState$6(Landroid/view/View;)V
    .locals 3

    .line 694
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOnBackListeners:Ljava/util/Set;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 695
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/ui/toolbar/Toolbar$OnBackListener;

    if-nez v1, :cond_1

    .line 696
    invoke-interface {v2}, Lcom/android/car/ui/toolbar/Toolbar$OnBackListener;->onBack()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 700
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/car/ui/utils/CarUiUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 702
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$toCarUiContentListItem$5(Lcom/android/car/ui/toolbar/MenuItem;Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V
    .locals 0

    .line 625
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/MenuItem;->performClick()V

    .line 626
    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOverflowDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->hide()V

    return-void
.end method

.method private setMenuItemsInternal(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/car/ui/toolbar/MenuItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 436
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 439
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 440
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 441
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 443
    monitor-enter p0

    .line 444
    :try_start_0
    iget-object v4, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mMenuItems:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 445
    monitor-exit p0

    return-void

    .line 448
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/car/ui/toolbar/MenuItem;

    .line 449
    invoke-virtual {v5}, Lcom/android/car/ui/toolbar/MenuItem;->getDisplayBehavior()Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

    move-result-object v6

    sget-object v7, Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;->NEVER:Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

    if-ne v6, v7, :cond_2

    .line 450
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v6, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOverflowItemListener:Lcom/android/car/ui/toolbar/MenuItem$Listener;

    invoke-virtual {v5, v6}, Lcom/android/car/ui/toolbar/MenuItem;->setListener(Lcom/android/car/ui/toolbar/MenuItem$Listener;)V

    goto :goto_0

    .line 453
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 459
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mMenuItems:Ljava/util/List;

    .line 460
    iput-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOverflowItems:Ljava/util/List;

    .line 461
    iget-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mMenuItemRenderers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 462
    iget-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mMenuItemsContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 464
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 465
    iget-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOverflowButton:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->createOverflowDialog()V

    .line 469
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/view/View;

    .line 470
    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mMenuItemViews:[Landroid/view/View;

    .line 472
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_5

    .line 474
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/toolbar/MenuItem;

    .line 475
    new-instance v4, Lcom/android/car/ui/toolbar/MenuItemRenderer;

    iget-object v5, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mMenuItemsContainer:Landroid/view/ViewGroup;

    invoke-direct {v4, v1, v5}, Lcom/android/car/ui/toolbar/MenuItemRenderer;-><init>(Lcom/android/car/ui/toolbar/MenuItem;Landroid/view/ViewGroup;)V

    .line 476
    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mMenuItemRenderers:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v1, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$XM5gsKVhbzu7_zOfUfHY1DZo3yk;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$XM5gsKVhbzu7_zOfUfHY1DZo3yk;-><init>(Lcom/android/car/ui/toolbar/ToolbarControllerImpl;[Landroid/view/View;ILjava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v4, v1}, Lcom/android/car/ui/toolbar/MenuItemRenderer;->createView(Landroidx/core/util/Consumer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 492
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    iget-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mState:Lcom/android/car/ui/toolbar/Toolbar$State;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->setState(Lcom/android/car/ui/toolbar/Toolbar$State;)V

    return-void

    :catchall_0
    move-exception p1

    .line 492
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private toCarUiContentListItem(Lcom/android/car/ui/toolbar/MenuItem;)Lcom/android/car/ui/recyclerview/CarUiContentListItem;
    .locals 2

    .line 614
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/MenuItem;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    new-instance v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;

    sget-object v1, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->SWITCH:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    invoke-direct {v0, v1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;-><init>(Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;)V

    goto :goto_0

    .line 617
    :cond_0
    new-instance v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;

    sget-object v1, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->NONE:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    invoke-direct {v0, v1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;-><init>(Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;)V

    .line 619
    :goto_0
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 620
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/MenuItem;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->setActivated(Z)V

    .line 621
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->setChecked(Z)V

    .line 622
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/MenuItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->setEnabled(Z)V

    .line 623
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->setTitle(Ljava/lang/CharSequence;)V

    .line 624
    new-instance v1, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$BIQdbCziDaXophXsvsd43r0igMU;

    invoke-direct {v1, p0, p1}, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$BIQdbCziDaXophXsvsd43r0igMU;-><init>(Lcom/android/car/ui/toolbar/ToolbarControllerImpl;Lcom/android/car/ui/toolbar/MenuItem;)V

    invoke-virtual {v0, v1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->setOnItemClickedListener(Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;)V

    return-object v0
.end method

.method private updateOverflowDialog(Lcom/android/car/ui/toolbar/MenuItem;)V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOverflowItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 605
    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mUiOverflowItems:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->toCarUiContentListItem(Lcom/android/car/ui/toolbar/MenuItem;)Lcom/android/car/ui/recyclerview/CarUiContentListItem;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOverflowAdapter:Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 608
    :cond_0
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->createOverflowDialog()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getState()Lcom/android/car/ui/toolbar/Toolbar$State;
    .locals 0

    .line 784
    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mState:Lcom/android/car/ui/toolbar/Toolbar$State;

    return-object p0
.end method

.method public synthetic lambda$new$0$ToolbarControllerImpl(Lcom/android/car/ui/toolbar/MenuItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->lambda$new$0(Lcom/android/car/ui/toolbar/MenuItem;)V

    return-void
.end method

.method public synthetic lambda$new$1$ToolbarControllerImpl(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->lambda$new$1(Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method

.method public synthetic lambda$new$2$ToolbarControllerImpl(Lcom/android/car/ui/toolbar/MenuItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->lambda$new$2(Lcom/android/car/ui/toolbar/MenuItem;)V

    return-void
.end method

.method public synthetic lambda$new$3$ToolbarControllerImpl(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->lambda$new$3(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public synthetic lambda$setMenuItemsInternal$4$ToolbarControllerImpl([Landroid/view/View;ILjava/util/concurrent/atomic/AtomicInteger;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->lambda$setMenuItemsInternal$4([Landroid/view/View;ILjava/util/concurrent/atomic/AtomicInteger;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setState$6$ToolbarControllerImpl(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->lambda$setState$6(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$toCarUiContentListItem$5$ToolbarControllerImpl(Lcom/android/car/ui/toolbar/MenuItem;Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->lambda$toCarUiContentListItem$5(Lcom/android/car/ui/toolbar/MenuItem;Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V

    return-void
.end method

.method public setBackgroundShown(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 421
    iget-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mBackground:Landroid/view/View;

    .line 422
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/car/ui/R$drawable;->car_ui_toolbar_background:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 421
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 424
    :cond_0
    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mBackground:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 340
    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mShowLogo:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mLogoInNavIconSpace:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mTitleLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 347
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mHasLogo:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 349
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mHasLogo:Z

    .line 351
    :goto_0
    iget-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mState:Lcom/android/car/ui/toolbar/Toolbar$State;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->setState(Lcom/android/car/ui/toolbar/Toolbar$State;)V

    return-void
.end method

.method public setMenuItems(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/car/ui/toolbar/MenuItem;",
            ">;"
        }
    .end annotation

    .line 537
    iget v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mMenuItemsXmlId:I

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 538
    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mMenuItems:Ljava/util/List;

    return-object p0

    .line 541
    :cond_0
    iput p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mMenuItemsXmlId:I

    .line 542
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/car/ui/toolbar/MenuItemRenderer;->readMenuItemList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    .line 543
    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->setMenuItemsInternal(Ljava/util/List;)V

    return-object p1
.end method

.method public setNavButtonMode(Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;)V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mNavButtonMode:Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    if-eq p1, v0, :cond_0

    .line 406
    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mNavButtonMode:Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    .line 407
    iget-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mState:Lcom/android/car/ui/toolbar/Toolbar$State;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->setState(Lcom/android/car/ui/toolbar/Toolbar$State;)V

    :cond_0
    return-void
.end method

.method public setSearchHint(Ljava/lang/CharSequence;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mSearchHint:Ljava/lang/CharSequence;

    .line 363
    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mSearchView:Lcom/android/car/ui/toolbar/SearchView;

    if-eqz p0, :cond_0

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/SearchView;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setShowTabsInSubpage(Z)V
    .locals 1

    .line 311
    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mShowTabsInSubpage:Z

    if-eq p1, v0, :cond_0

    .line 312
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mShowTabsInSubpage:Z

    .line 313
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->getState()Lcom/android/car/ui/toolbar/Toolbar$State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->setState(Lcom/android/car/ui/toolbar/Toolbar$State;)V

    :cond_0
    return-void
.end method

.method public setState(Lcom/android/car/ui/toolbar/Toolbar$State;)V
    .locals 7

    .line 669
    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mState:Lcom/android/car/ui/toolbar/Toolbar$State;

    .line 671
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mSearchView:Lcom/android/car/ui/toolbar/SearchView;

    const/16 v1, 0x8

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/car/ui/toolbar/Toolbar$State;->SEARCH:Lcom/android/car/ui/toolbar/Toolbar$State;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/car/ui/toolbar/Toolbar$State;->EDIT:Lcom/android/car/ui/toolbar/Toolbar$State;

    if-ne p1, v0, :cond_1

    .line 672
    :cond_0
    new-instance v0, Lcom/android/car/ui/toolbar/SearchView;

    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/car/ui/toolbar/SearchView;-><init>(Landroid/content/Context;)V

    .line 673
    iget-object v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mSearchHint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/android/car/ui/toolbar/SearchView;->setHint(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mSearchIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/android/car/ui/toolbar/SearchView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 675
    iget-object v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/car/ui/toolbar/SearchView;->setSearchQuery(Ljava/lang/String;)V

    .line 676
    iget-object v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOnSearchListeners:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lcom/android/car/ui/toolbar/SearchView;->setSearchListeners(Ljava/util/Set;)V

    .line 677
    iget-object v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOnSearchCompletedListeners:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lcom/android/car/ui/toolbar/SearchView;->setSearchCompletedListeners(Ljava/util/Set;)V

    .line 678
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 680
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 683
    iget-object v3, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mSearchViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 685
    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mSearchView:Lcom/android/car/ui/toolbar/SearchView;

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mMenuItemRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/ui/toolbar/MenuItemRenderer;

    .line 689
    iget-object v3, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mState:Lcom/android/car/ui/toolbar/Toolbar$State;

    invoke-virtual {v2, v3}, Lcom/android/car/ui/toolbar/MenuItemRenderer;->setToolbarState(Lcom/android/car/ui/toolbar/Toolbar$State;)V

    goto :goto_0

    .line 692
    :cond_2
    new-instance v0, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$d5avEHTLVtyukl4Zb-MGGRS3GPY;

    invoke-direct {v0, p0}, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$d5avEHTLVtyukl4Zb-MGGRS3GPY;-><init>(Lcom/android/car/ui/toolbar/ToolbarControllerImpl;)V

    .line 707
    sget-object v2, Lcom/android/car/ui/toolbar/Toolbar$State;->SEARCH:Lcom/android/car/ui/toolbar/Toolbar$State;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_3

    .line 708
    iget-object v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mNavIcon:Landroid/widget/ImageView;

    sget v4, Lcom/android/car/ui/R$drawable;->car_ui_icon_search_nav_icon:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 710
    :cond_3
    sget-object v2, Lcom/android/car/ui/toolbar/ToolbarControllerImpl$2;->$SwitchMap$com$android$car$ui$toolbar$Toolbar$NavButtonMode:[I

    iget-object v4, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mNavButtonMode:Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    if-eq v2, v3, :cond_5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    .line 718
    iget-object v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mNavIcon:Landroid/widget/ImageView;

    sget v4, Lcom/android/car/ui/R$drawable;->car_ui_icon_arrow_back:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 715
    :cond_4
    iget-object v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mNavIcon:Landroid/widget/ImageView;

    sget v4, Lcom/android/car/ui/R$drawable;->car_ui_icon_down:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 712
    :cond_5
    iget-object v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mNavIcon:Landroid/widget/ImageView;

    sget v4, Lcom/android/car/ui/R$drawable;->car_ui_icon_close:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 723
    :goto_1
    iget-object v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mNavIcon:Landroid/widget/ImageView;

    sget-object v4, Lcom/android/car/ui/toolbar/Toolbar$State;->HOME:Lcom/android/car/ui/toolbar/Toolbar$State;

    const/4 v5, 0x0

    if-eq p1, v4, :cond_6

    move v4, v5

    goto :goto_2

    :cond_6
    move v4, v1

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 727
    iget-object v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mLogoInNavIconSpace:Landroid/widget/ImageView;

    .line 729
    iget-boolean v4, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mHasLogo:Z

    const/4 v6, 0x4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/car/ui/toolbar/Toolbar$State;->HOME:Lcom/android/car/ui/toolbar/Toolbar$State;

    if-ne p1, v4, :cond_7

    iget-boolean v4, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mLogoFillsNavIconSpace:Z

    if-eqz v4, :cond_7

    move v4, v5

    goto :goto_3

    :cond_7
    move v4, v6

    .line 727
    :goto_3
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 734
    iget-object v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mTitleLogoContainer:Landroid/view/ViewGroup;

    .line 735
    iget-boolean v4, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mHasLogo:Z

    if-eqz v4, :cond_9

    sget-object v4, Lcom/android/car/ui/toolbar/Toolbar$State;->SUBPAGE:Lcom/android/car/ui/toolbar/Toolbar$State;

    if-eq p1, v4, :cond_8

    sget-object v4, Lcom/android/car/ui/toolbar/Toolbar$State;->HOME:Lcom/android/car/ui/toolbar/Toolbar$State;

    if-ne p1, v4, :cond_9

    iget-boolean v4, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mLogoFillsNavIconSpace:Z

    if-nez v4, :cond_9

    :cond_8
    move v4, v5

    goto :goto_4

    :cond_9
    move v4, v1

    .line 734
    :goto_4
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 742
    iget-object v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mNavIconContainer:Landroid/view/ViewGroup;

    .line 743
    sget-object v4, Lcom/android/car/ui/toolbar/Toolbar$State;->HOME:Lcom/android/car/ui/toolbar/Toolbar$State;

    if-ne p1, v4, :cond_c

    iget-boolean v4, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mHasLogo:Z

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mLogoFillsNavIconSpace:Z

    if-eqz v4, :cond_a

    goto :goto_5

    .line 744
    :cond_a
    iget-boolean v4, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mNavIconSpaceReserved:Z

    if-eqz v4, :cond_b

    goto :goto_6

    :cond_b
    move v6, v1

    goto :goto_6

    :cond_c
    :goto_5
    move v6, v5

    .line 742
    :goto_6
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 745
    iget-object v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mNavIconContainer:Landroid/view/ViewGroup;

    .line 746
    sget-object v4, Lcom/android/car/ui/toolbar/Toolbar$State;->HOME:Lcom/android/car/ui/toolbar/Toolbar$State;

    const/4 v6, 0x0

    if-eq p1, v4, :cond_d

    goto :goto_7

    :cond_d
    move-object v0, v6

    .line 745
    :goto_7
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mNavIconContainer:Landroid/view/ViewGroup;

    sget-object v2, Lcom/android/car/ui/toolbar/Toolbar$State;->HOME:Lcom/android/car/ui/toolbar/Toolbar$State;

    if-eq p1, v2, :cond_e

    move v2, v3

    goto :goto_8

    :cond_e
    move v2, v5

    :goto_8
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 748
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mNavIconContainer:Landroid/view/ViewGroup;

    sget-object v2, Lcom/android/car/ui/toolbar/Toolbar$State;->HOME:Lcom/android/car/ui/toolbar/Toolbar$State;

    if-eq p1, v2, :cond_f

    .line 749
    iget-object v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/car/ui/R$string;->car_ui_toolbar_nav_icon_content_description:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 748
    :cond_f
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 752
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mTabLayout:Lcom/android/car/ui/toolbar/TabLayout;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/TabLayout;->getTabCount()I

    move-result v0

    if-lez v0, :cond_11

    sget-object v0, Lcom/android/car/ui/toolbar/Toolbar$State;->HOME:Lcom/android/car/ui/toolbar/Toolbar$State;

    if-eq p1, v0, :cond_10

    sget-object v0, Lcom/android/car/ui/toolbar/Toolbar$State;->SUBPAGE:Lcom/android/car/ui/toolbar/Toolbar$State;

    if-ne p1, v0, :cond_11

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mShowTabsInSubpage:Z

    if-eqz v0, :cond_11

    :cond_10
    move v0, v3

    goto :goto_9

    :cond_11
    move v0, v5

    .line 758
    :goto_9
    sget-object v2, Lcom/android/car/ui/toolbar/Toolbar$State;->SUBPAGE:Lcom/android/car/ui/toolbar/Toolbar$State;

    if-eq p1, v2, :cond_12

    sget-object v2, Lcom/android/car/ui/toolbar/Toolbar$State;->HOME:Lcom/android/car/ui/toolbar/Toolbar$State;

    if-ne p1, v2, :cond_13

    :cond_12
    if-eqz v0, :cond_14

    iget-boolean v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mIsTabsInSecondRow:Z

    if-eqz v2, :cond_13

    goto :goto_a

    :cond_13
    move v2, v1

    goto :goto_b

    :cond_14
    :goto_a
    move v2, v5

    .line 760
    :goto_b
    iget-object v4, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mTitleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 761
    iget-object v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mSubtitle:Landroid/widget/TextView;

    .line 762
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    move v4, v1

    goto :goto_c

    :cond_15
    move v4, v5

    .line 761
    :goto_c
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 764
    iget-object v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mTabLayout:Lcom/android/car/ui/toolbar/TabLayout;

    if-eqz v0, :cond_16

    move v0, v5

    goto :goto_d

    :cond_16
    move v0, v1

    :goto_d
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 766
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mSearchView:Lcom/android/car/ui/toolbar/SearchView;

    if-eqz v0, :cond_1a

    .line 767
    sget-object v2, Lcom/android/car/ui/toolbar/Toolbar$State;->SEARCH:Lcom/android/car/ui/toolbar/Toolbar$State;

    if-eq p1, v2, :cond_18

    sget-object v2, Lcom/android/car/ui/toolbar/Toolbar$State;->EDIT:Lcom/android/car/ui/toolbar/Toolbar$State;

    if-ne p1, v2, :cond_17

    goto :goto_e

    .line 771
    :cond_17
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_10

    .line 768
    :cond_18
    :goto_e
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mSearchView:Lcom/android/car/ui/toolbar/SearchView;

    sget-object v2, Lcom/android/car/ui/toolbar/Toolbar$State;->EDIT:Lcom/android/car/ui/toolbar/Toolbar$State;

    if-ne p1, v2, :cond_19

    move v2, v3

    goto :goto_f

    :cond_19
    move v2, v5

    :goto_f
    invoke-virtual {v0, v2}, Lcom/android/car/ui/toolbar/SearchView;->setPlainText(Z)V

    .line 769
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mSearchView:Lcom/android/car/ui/toolbar/SearchView;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 775
    :cond_1a
    :goto_10
    sget-object v0, Lcom/android/car/ui/toolbar/Toolbar$State;->SEARCH:Lcom/android/car/ui/toolbar/Toolbar$State;

    if-eq p1, v0, :cond_1b

    sget-object v0, Lcom/android/car/ui/toolbar/Toolbar$State;->EDIT:Lcom/android/car/ui/toolbar/Toolbar$State;

    if-ne p1, v0, :cond_1c

    :cond_1b
    iget-boolean p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mShowMenuItemsWhileSearching:Z

    if-eqz p1, :cond_1d

    :cond_1c
    move p1, v3

    goto :goto_11

    :cond_1d
    move p1, v5

    .line 777
    :goto_11
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mMenuItemsContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1e

    move v1, v5

    :cond_1e
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mOverflowButton:Lcom/android/car/ui/toolbar/MenuItem;

    if-eqz p1, :cond_1f

    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->countVisibleOverflowItems()I

    move-result p0

    if-lez p0, :cond_1f

    goto :goto_12

    :cond_1f
    move v3, v5

    :goto_12
    invoke-virtual {v0, v3}, Lcom/android/car/ui/toolbar/MenuItem;->setVisible(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->getState()Lcom/android/car/ui/toolbar/Toolbar$State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->setState(Lcom/android/car/ui/toolbar/Toolbar$State;)V

    return-void
.end method
