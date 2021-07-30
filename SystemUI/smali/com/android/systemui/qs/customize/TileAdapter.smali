.class public Lcom/android/systemui/qs/customize/TileAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TileAdapter.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;,
        Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/systemui/qs/customize/TileAdapter$Holder;",
        ">;",
        "Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;"
    }
.end annotation


# instance fields
.field private mAccessibilityAction:I

.field private mAccessibilityFromIndex:I

.field private mAccessibilityFromLabel:Ljava/lang/CharSequence;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAllTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

.field private mCurrentSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mEditIndex:I

.field private final mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private final mMinNumTiles:I

.field private mNeedsFocus:Z

.field private mOtherTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field private mTileDividerIndex:I

.field private final mTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 532
    new-instance v0, Lcom/android/systemui/qs/customize/TileAdapter$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter$5;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 575
    new-instance v0, Lcom/android/systemui/qs/customize/TileAdapter$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter$6;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCallbacks:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 98
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 100
    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 101
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCallbacks:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 102
    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/content/Context;Lcom/android/systemui/qs/customize/TileAdapter$1;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$integer;->quick_settings_min_num_tiles:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mMinNumTiles:I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/customize/TileAdapter;IILandroid/view/View;)Z
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/customize/TileAdapter;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/customize/TileAdapter;)Landroid/os/Handler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/customize/TileAdapter;ILandroid/view/View;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->selectPosition(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/customize/TileAdapter;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/customize/TileAdapter;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/customize/TileAdapter;)Z
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->canRemoveTiles()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/customize/TileAdapter;ILandroid/view/View;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->showAccessibilityDialog(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/customize/TileAdapter;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->startAccessibleMove(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/customize/TileAdapter;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->startAccessibleAdd(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/customize/TileAdapter;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    return p0
.end method

.method private canRemoveTiles()Z
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mMinNumTiles:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private clearAccessibilityState()V
    .locals 3

    .line 129
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 133
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 134
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    return-void
.end method

.method private focusOnHolder(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V
    .locals 2

    .line 353
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    if-eqz v0, :cond_0

    .line 356
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 357
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/customize/TileAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$3;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 p1, 0x0

    .line 365
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    :cond_0
    return-void
.end method

.method private getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .locals 2

    const/4 v0, 0x0

    .line 188
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private move(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 481
    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 482
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method private move(IILandroid/view/View;)Z
    .locals 3

    const/4 p3, 0x1

    if-ne p2, p1, :cond_0

    return p3

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 438
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IILjava/util/List;)V

    .line 439
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->updateDividerLocations()V

    .line 440
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    const/4 v1, 0x0

    if-lt p2, v0, :cond_1

    .line 441
    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_REMOVE:Lcom/android/systemui/qs/QSEditEvent;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    if-lt p1, v0, :cond_2

    .line 443
    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_ADD:Lcom/android/systemui/qs/QSEditEvent;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_MOVE:Lcom/android/systemui/qs/QSEditEvent;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 447
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V

    return p3
.end method

.method private recalcSpecs()V
    .locals 5

    .line 160
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAllTiles:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 163
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAllTiles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    .line 164
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v2, v0

    .line 166
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 167
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/customize/TileAdapter;->getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 169
    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 174
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 175
    iget-boolean v3, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-eqz v3, :cond_3

    .line 176
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->updateDividerLocations()V

    .line 184
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5
    :goto_2
    return-void
.end method

.method private selectPosition(ILandroid/view/View;)V
    .locals 3

    .line 374
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 377
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_0
    const/4 v0, 0x0

    .line 379
    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 380
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IILandroid/view/View;)Z

    .line 381
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setSelectableForHeaders(Landroid/view/View;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    const/4 v0, 0x1

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 246
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    .line 247
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 250
    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_2
    return-void
.end method

.method private showAccessibilityDialog(ILandroid/view/View;)V
    .locals 8

    .line 385
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 386
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->accessibility_qs_edit_move_tile:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v6, v6, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 387
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->accessibility_qs_edit_remove_tile:I

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v6, v6, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v6, v5, v7

    .line 388
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 390
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/systemui/qs/customize/TileAdapter$4;

    invoke-direct {v3, p0, p1, v0, p2}, Lcom/android/systemui/qs/customize/TileAdapter$4;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;ILcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;Landroid/view/View;)V

    .line 391
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x1040000

    const/4 p2, 0x0

    .line 402
    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 403
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 404
    invoke-static {p0, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;Z)V

    .line 405
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->applyFlags(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 406
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startAccessibleAdd(I)V
    .locals 3

    .line 410
    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    .line 411
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object p1, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromLabel:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    .line 412
    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 414
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 416
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 417
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    .line 418
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private startAccessibleMove(I)V
    .locals 1

    .line 422
    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    .line 423
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object p1, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromLabel:Ljava/lang/CharSequence;

    const/4 p1, 0x2

    .line 424
    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    const/4 p1, 0x1

    .line 425
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    .line 426
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;
    .locals 1

    .line 472
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    const-string v0, "custom("

    .line 473
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-static {p0}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    .line 475
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private updateDividerLocations()V
    .locals 4

    const/4 v0, -0x1

    .line 455
    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 456
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    const/4 v1, 0x1

    move v2, v1

    .line 457
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 458
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 459
    iget v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ne v3, v0, :cond_0

    .line 460
    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    goto :goto_1

    .line 462
    :cond_0
    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    if-ne v0, v1, :cond_3

    .line 467
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    return-object p0
.end method

.method public getItemTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method public getItemViewType(I)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x3

    return p0

    .line 201
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 204
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    if-ne p1, v0, :cond_2

    const/4 p0, 0x4

    return p0

    .line 207
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public getSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 57
    check-cast p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->onBindViewHolder(Lcom/android/systemui/qs/customize/TileAdapter$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/qs/customize/TileAdapter$Holder;I)V
    .locals 9

    .line 256
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 257
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->setSelectableForHeaders(Landroid/view/View;)V

    return-void

    .line 260
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 261
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v3

    if-ge p2, p0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 265
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 267
    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 268
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    if-nez v0, :cond_3

    .line 269
    sget v0, Lcom/android/systemui/R$string;->drag_to_add_tiles:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 270
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->canRemoveTiles()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ge v0, v1, :cond_4

    .line 271
    sget v0, Lcom/android/systemui/R$string;->drag_to_remove_disabled:I

    new-array v1, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mMinNumTiles:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 273
    :cond_4
    sget v0, Lcom/android/systemui/R$string;->drag_to_remove_tiles:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 276
    :goto_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->setSelectableForHeaders(Landroid/view/View;)V

    return-void

    .line 281
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    .line 282
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClickable(Z)V

    .line 283
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 284
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 285
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 287
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->accessibility_qs_edit_tile_add:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromLabel:Ljava/lang/CharSequence;

    aput-object v6, v4, v2

    .line 289
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v3

    .line 287
    invoke-virtual {v1, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 290
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/qs/customize/TileAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$1;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->focusOnHolder(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    return-void

    .line 300
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 302
    iget v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-le p2, v5, :cond_7

    .line 303
    iget-object v4, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->accessibility_qs_edit_add_tile_label:I

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_1

    .line 305
    :cond_7
    iget v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    if-ne v5, v3, :cond_8

    .line 306
    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->accessibility_qs_edit_tile_add:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromLabel:Ljava/lang/CharSequence;

    aput-object v8, v4, v2

    .line 307
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v3

    .line 306
    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_8
    if-ne v5, v4, :cond_9

    .line 309
    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->accessibility_qs_edit_tile_move:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromLabel:Ljava/lang/CharSequence;

    aput-object v8, v4, v2

    .line 310
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v3

    .line 309
    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_1

    .line 312
    :cond_9
    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->accessibility_qs_edit_tile_label:I

    new-array v4, v4, [Ljava/lang/Object;

    .line 313
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v2

    iget-object v8, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v8, v8, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v8, v4, v3

    .line 312
    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 315
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/customize/CustomizeTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 316
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-le p2, v5, :cond_a

    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-nez v0, :cond_a

    move v0, v3

    goto :goto_2

    :cond_a
    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setShowAppLabel(Z)V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 319
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ge p2, v0, :cond_c

    :cond_b
    move v2, v3

    .line 320
    :cond_c
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClickable(Z)V

    .line 321
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 322
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    if-eqz v2, :cond_d

    move v1, v3

    :cond_d
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 325
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    if-eqz v2, :cond_e

    .line 327
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/customize/TileAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$2;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    if-ne p2, v0, :cond_e

    .line 346
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->focusOnHolder(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    :cond_e
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .locals 4

    .line 215
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 216
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne p2, v3, :cond_0

    .line 218
    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    sget v0, Lcom/android/systemui/R$layout;->qs_customize_header:I

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    .line 221
    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    sget v0, Lcom/android/systemui/R$layout;->qs_customize_tile_divider:I

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 224
    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    sget v0, Lcom/android/systemui/R$layout;->qs_customize_divider:I

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    return-object p2

    .line 226
    :cond_2
    sget p2, Lcom/android/systemui/R$layout;->qs_customize_tile_frame:I

    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 228
    new-instance p2, Lcom/android/systemui/qs/customize/CustomizeTileView;

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-direct {v1, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 229
    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 57
    check-cast p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->onFailedToRecycleView(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Z

    move-result p0

    return p0
.end method

.method public onFailedToRecycleView(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Z
    .locals 0

    .line 239
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->clearDrag()V

    const/4 p0, 0x1

    return p0
.end method

.method public onTilesChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;)V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAllTiles:Ljava/util/List;

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->recalcSpecs()V

    return-void
.end method

.method public resetTileSpecs(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTileHost;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 142
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->setTileSpecs(Ljava/util/List;)V

    return-void
.end method

.method public saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 3

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->clearAccessibilityState()V

    const/4 v1, 0x1

    .line 121
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v2, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 125
    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method public setTileSpecs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 149
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->recalcSpecs()V

    return-void
.end method
