.class public Lcom/android/systemui/qs/QSPanel;
.super Landroid/widget/LinearLayout;
.source "QSPanel.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/qs/QSHost$Callback;
.implements Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSPanel$QSTileLayout;,
        Lcom/android/systemui/qs/QSPanel$TileRecord;,
        Lcom/android/systemui/qs/QSPanel$Record;,
        Lcom/android/systemui/qs/QSPanel$H;
    }
.end annotation


# instance fields
.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field protected mBrightnessView:Landroid/view/View;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mCachedSpecs:Ljava/lang/String;

.field private mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

.field private mContentMarginEnd:I

.field private mContentMarginStart:I

.field protected final mContext:Landroid/content/Context;

.field private mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

.field private mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

.field protected mDivider:Landroid/view/View;

.field private final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field protected mExpanded:Z

.field protected mFooter:Landroid/view/View;

.field private mFooterMarginStartHorizontal:I

.field private mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private mGridContentVisible:Z

.field private final mHandler:Lcom/android/systemui/qs/QSPanel$H;

.field private mHeaderContainer:Landroid/view/ViewGroup;

.field private mHorizontalContentContainer:Landroid/widget/LinearLayout;

.field private mHorizontalLinearLayout:Landroid/widget/LinearLayout;

.field private mHorizontalTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

.field protected mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mLastOrientation:I

.field protected mListening:Z

.field protected final mMediaHost:Lcom/android/systemui/media/MediaHost;

.field private mMediaTotalBottomMargin:I

.field private mMediaVisibilityChangedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mMovableContentStartIndex:I

.field private final mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field private mQsTileRevealController:Lcom/android/systemui/qs/QSTileRevealController;

.field protected final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

.field protected mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

.field protected mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

.field protected final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mUsingHorizontalLayout:Z

.field protected mUsingMediaPlayer:Z

.field private mVisualMarginEnd:I

.field private mVisualMarginStart:I

.field private mVisualTilePadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/media/MediaHost;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 3

    .line 162
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    const-string p2, ""

    .line 94
    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mCachedSpecs:Ljava/lang/String;

    .line 101
    new-instance p2, Lcom/android/systemui/qs/QSPanel$H;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$1;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    .line 102
    const-class p2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/logging/MetricsLogger;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 p2, 0x1

    .line 129
    iput-boolean p2, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    const/4 v0, -0x1

    .line 146
    iput v0, p0, Lcom/android/systemui/qs/QSPanel;->mLastOrientation:I

    .line 163
    invoke-static {p1}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    .line 164
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->quick_settings_bottom_margin_media:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaTotalBottomMargin:I

    .line 166
    iput-object p6, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    .line 167
    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$QSPanel$eQ8pVxxhUsNJKcJOLQN4uzlXkuA;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/-$$Lambda$QSPanel$eQ8pVxxhUsNJKcJOLQN4uzlXkuA;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    invoke-virtual {p6, v1}, Lcom/android/systemui/media/MediaHost;->addVisibilityChangeListener(Lkotlin/jvm/functions/Function1;)V

    .line 171
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    .line 172
    iput-object p5, p0, Lcom/android/systemui/qs/QSPanel;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 173
    iput-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 174
    iput-object p4, p0, Lcom/android/systemui/qs/QSPanel;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 175
    iput-object p7, p0, Lcom/android/systemui/qs/QSPanel;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 177
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->addViewsAboveTiles()V

    .line 180
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mMovableContentStartIndex:I

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->createRegularTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 183
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-eqz p1, :cond_0

    .line 184
    new-instance p1, Lcom/android/internal/widget/RemeasuringLinearLayout;

    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/android/internal/widget/RemeasuringLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    .line 185
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 186
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 187
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 189
    new-instance p1, Lcom/android/internal/widget/RemeasuringLinearLayout;

    iget-object p4, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {p1, p4}, Lcom/android/internal/widget/RemeasuringLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    .line 190
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 191
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 192
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->createHorizontalTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 195
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p1, p3, p2, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 196
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p5, Lcom/android/systemui/R$dimen;->qqs_media_spacing:I

    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 197
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 198
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    const/16 p2, 0x10

    .line 199
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 200
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    iget-object p5, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p5, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v0, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 203
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->initMediaHostState()V

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->addSecurityFooter()V

    .line 208
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of p2, p1, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz p2, :cond_1

    .line 209
    new-instance p2, Lcom/android/systemui/qs/QSTileRevealController;

    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-direct {p2, p3, p0, p1}, Lcom/android/systemui/qs/QSTileRevealController;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/PagedTileLayout;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mQsTileRevealController:Lcom/android/systemui/qs/QSTileRevealController;

    .line 212
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-boolean p2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/android/systemui/qs/QSPanel;->mCachedSpecs:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/systemui/qs/logging/QSLogger;->logAllTilesChangeListening(ZLjava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$H;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/customize/QSCustomizer;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    return-object p0
.end method

.method private fireScanStateChanged(Z)V
    .locals 0

    .line 995
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz p0, :cond_0

    .line 996
    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSDetail$Callback;->onScanStateChanged(Z)V

    :cond_0
    return-void
.end method

.method private fireShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V
    .locals 0

    .line 983
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz p0, :cond_0

    .line 984
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSDetail$Callback;->onShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    :cond_0
    return-void
.end method

.method private fireToggleStateChanged(Z)V
    .locals 0

    .line 989
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz p0, :cond_0

    .line 990
    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSDetail$Callback;->onToggleStateChanged(Z)V

    :cond_0
    return-void
.end method

.method private getTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 2

    const/4 v0, 0x0

    .line 399
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object p0

    return-object p0
.end method

.method private getTilesSpecs()Ljava/lang/String;
    .locals 1

    .line 737
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/qs/-$$Lambda$QSPanel$EbHBtJlVwGzmqefWXJDEYuyGlcQ;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSPanel$EbHBtJlVwGzmqefWXJDEYuyGlcQ;

    .line 738
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ","

    .line 739
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 953
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    if-eqz p2, :cond_1

    .line 954
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    :cond_1
    invoke-direct {p0, v0, p3, p4}, Lcom/android/systemui/qs/QSPanel;->fireShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    return-void
.end method

.method private handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V
    .locals 3

    .line 940
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 943
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-nez v0, :cond_2

    return-void

    .line 946
    :cond_2
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0, p2}, Lcom/android/systemui/plugins/qs/QSTile;->setDetailListening(Z)V

    .line 947
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 948
    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTileView;->getDetailY()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v2, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 949
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    return-void
.end method

.method static synthetic lambda$getTilesSpecs$1(Lcom/android/systemui/qs/QSPanel$TileRecord;)Ljava/lang/String;
    .locals 0

    .line 738
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->onMediaVisibilityChanged(Ljava/lang/Boolean;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private logTiles()V
    .locals 5

    const/4 v0, 0x0

    .line 975
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 976
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 977
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v3, Landroid/metrics/LogMaker;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getMetricsCategory()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v4, 0x1

    .line 978
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 977
    invoke-interface {v1, v3}, Lcom/android/systemui/plugins/qs/QSTile;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private shouldUseHorizontalLayout()Z
    .locals 1

    .line 651
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private switchAllContentToParent(Landroid/view/ViewGroup;Lcom/android/systemui/qs/QSPanel$QSTileLayout;)V
    .locals 5

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    .line 611
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mMovableContentStartIndex:I

    goto :goto_0

    :cond_0
    move v1, v0

    .line 614
    :goto_0
    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p2, p1, v1}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V

    const/4 p2, 0x1

    add-int/2addr v1, p2

    .line 617
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz v2, :cond_2

    .line 618
    invoke-virtual {v2}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v2

    .line 619
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 620
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mHeaderContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 622
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const v0, 0x3fcccccd    # 1.6f

    .line 623
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 624
    invoke-direct {p0, v2, v4, p2}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V

    goto :goto_1

    :cond_1
    const/4 p2, -0x2

    .line 626
    iput p2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 p2, 0x0

    .line 627
    iput p2, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 628
    invoke-direct {p0, v2, p1, v1}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V

    add-int/lit8 v1, v1, 0x1

    .line 631
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Landroid/view/View;

    if-eqz p2, :cond_3

    .line 636
    invoke-direct {p0, p2, p1, v1}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V

    :cond_3
    return-void
.end method

.method private switchTileLayout(Z)Z
    .locals 8

    .line 537
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->shouldUseHorizontalLayout()Z

    move-result v0

    .line 538
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    .line 539
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 545
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    return v3

    .line 546
    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-eqz v0, :cond_4

    .line 547
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast p1, Landroid/view/View;

    :goto_2
    if-eqz v0, :cond_5

    .line 548
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v1, Landroid/view/View;

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    :goto_3
    if-eqz v0, :cond_6

    .line 549
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    goto :goto_4

    :cond_6
    move-object v4, p0

    :goto_4
    if-eqz v0, :cond_7

    .line 550
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    goto :goto_5

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    :goto_5
    if-eqz v1, :cond_9

    .line 551
    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-ne v6, v7, :cond_8

    if-eq v1, v6, :cond_9

    .line 556
    :cond_8
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 558
    :cond_9
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 559
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/qs/QSPanel;->switchAllContentToParent(Landroid/view/ViewGroup;Lcom/android/systemui/qs/QSPanel$QSTileLayout;)V

    .line 560
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->reAttachMediaHost()V

    .line 561
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz p1, :cond_a

    .line 562
    invoke-interface {p1, v3}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    .line 563
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 564
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v2, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 565
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto :goto_6

    .line 568
    :cond_a
    iput-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 569
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 570
    :cond_b
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-interface {v5, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    .line 571
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->needsDynamicRowsAndColumns()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_e

    if-eqz v0, :cond_c

    const/4 p1, 0x2

    goto :goto_7

    :cond_c
    move p1, v1

    .line 572
    :goto_7
    invoke-interface {v5, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setMinRows(I)Z

    if-eqz v0, :cond_d

    const/4 p1, 0x3

    goto :goto_8

    :cond_d
    const/16 p1, 0x64

    .line 574
    :goto_8
    invoke-interface {v5, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setMaxColumns(I)Z

    .line 576
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateTileLayoutMargins()V

    .line 577
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateFooterMargin()V

    .line 578
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateDividerMargin()V

    .line 579
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateMediaDisappearParameters()V

    .line 580
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateMediaHostContentMargins()V

    .line 581
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateHorizontalLinearLayoutMargins()V

    .line 582
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updatePadding()V

    return v1
.end method

.method private switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V
    .locals 1

    .line 641
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-ne p0, p2, :cond_0

    .line 642
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, p3, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    .line 644
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 646
    :cond_1
    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method private updateDividerMargin()V
    .locals 3

    .line 1092
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1093
    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginStart:I

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginEnd:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/View;II)V

    return-void
.end method

.method private updateFooterMargin()V
    .locals 4

    .line 1053
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1056
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1057
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooterMarginStartHorizontal:I

    .line 1058
    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mVisualMarginEnd:I

    sub-int v2, v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v0

    .line 1060
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Landroid/view/View;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/View;II)V

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    if-eqz v0, :cond_1

    .line 1064
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method private updateHorizontalLinearLayoutMargins()V
    .locals 3

    .line 589
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->displayMediaMarginsOnMedia()Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 591
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaTotalBottomMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 592
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updateMediaDisappearParameters()V
    .locals 6

    .line 259
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object v0

    .line 263
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    const v2, 0x3f733333    # 0.95f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    .line 265
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getDisappearSize()Landroid/graphics/PointF;

    move-result-object v1

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v3, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 267
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getGonePivot()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 269
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getContentTranslationFraction()Landroid/graphics/PointF;

    move-result-object v1

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-virtual {v1, v5, v4}, Landroid/graphics/PointF;->set(FF)V

    const v1, 0x3f19999a    # 0.6f

    .line 270
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/animation/DisappearParameters;->setDisappearEnd(F)V

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getDisappearSize()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 275
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getGonePivot()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 277
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getContentTranslationFraction()Landroid/graphics/PointF;

    move-result-object v1

    const v4, 0x3f866666    # 1.05f

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 278
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/animation/DisappearParameters;->setDisappearEnd(F)V

    .line 280
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/animation/DisappearParameters;->setFadeStartPosition(F)V

    .line 281
    invoke-virtual {v0, v3}, Lcom/android/systemui/util/animation/DisappearParameters;->setDisappearStart(F)V

    .line 282
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaHost;->setDisappearParameters(Lcom/android/systemui/util/animation/DisappearParameters;)V

    return-void
.end method

.method private updatePageIndicator()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 460
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout;->setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    :cond_0
    return-void
.end method

.method private updateTileLayoutMargins()V
    .locals 3

    .line 1084
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mVisualMarginEnd:I

    .line 1085
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1088
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v1, Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mVisualMarginStart:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/View;II)V

    return-void
.end method

.method private updateTileLayoutMargins(II)V
    .locals 0

    .line 1078
    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mVisualMarginStart:I

    .line 1079
    iput p2, p0, Lcom/android/systemui/qs/QSPanel;->mVisualMarginEnd:I

    .line 1080
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateTileLayoutMargins()V

    return-void
.end method

.method private updateViewVisibilityForTuningValue(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x1

    .line 386
    invoke-static {p2, p0}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected addSecurityFooter()V
    .locals 2

    .line 224
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooter;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    return-void
.end method

.method protected addTile(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/qs/QSPanel$TileRecord;
    .locals 1

    .line 839
    new-instance v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSPanel$TileRecord;-><init>()V

    .line 840
    iput-object p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 841
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 842
    new-instance p1, Lcom/android/systemui/qs/QSPanel$1;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/QSPanel$1;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 880
    iget-object p2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/qs/QSTile;->addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    .line 881
    iput-object p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .line 882
    iget-object p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget-object p2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-virtual {p1, p2}, Lcom/android/systemui/plugins/qs/QSTileView;->init(Lcom/android/systemui/plugins/qs/QSTile;)V

    .line 883
    iget-object p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 884
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->getTilesSpecs()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mCachedSpecs:Ljava/lang/String;

    .line 887
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz p0, :cond_0

    .line 888
    invoke-interface {p0, v0}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    :cond_0
    return-object v0
.end method

.method protected addViewsAboveTiles()V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->quick_settings_brightness_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    .line 230
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    new-instance v0, Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$id;->brightness_slider:I

    .line 232
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/settings/ToggleSlider;

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/ToggleSlider;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 3

    .line 1001
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    .line 1002
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1004
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1005
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->click()V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public closeDetail()V
    .locals 2

    .line 913
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->hide()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 918
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method protected closePanelEvent()Lcom/android/systemui/qs/QSEvent;
    .locals 0

    .line 827
    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

    return-object p0
.end method

.method protected createHorizontalTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 0

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->createRegularTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p0

    return-object p0
.end method

.method protected createRegularTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->qs_paged_tile_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 240
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    return-object p0
.end method

.method protected createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 0

    .line 819
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSTileHost;->createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object p0

    return-object p0
.end method

.method protected displayMediaMarginsOnMedia()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    .line 815
    iget-object p0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/plugins/qs/QSTileView;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Tile records:"

    .line 1156
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1157
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1158
    iget-object v1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    instance-of v1, v1, Lcom/android/systemui/Dumpable;

    if-eqz v1, :cond_0

    const-string v1, "    "

    .line 1159
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    check-cast v2, Lcom/android/systemui/Dumpable;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1160
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method getBrightnessView()Landroid/view/View;
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    return-object p0
.end method

.method public getDivider()Landroid/view/View;
    .locals 0

    .line 1031
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    return-object p0
.end method

.method protected getDumpableTag()Ljava/lang/String;
    .locals 0

    const-string p0, "QSPanel"

    return-object p0
.end method

.method public getHost()Lcom/android/systemui/qs/QSTileHost;
    .locals 0

    .line 468
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object p0
.end method

.method public getMediaHost()Lcom/android/systemui/media/MediaHost;
    .locals 0

    .line 1124
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    return-object p0
.end method

.method public getQsTileRevealController()Lcom/android/systemui/qs/QSTileRevealController;
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mQsTileRevealController:Lcom/android/systemui/qs/QSTileRevealController;

    return-object p0
.end method

.method public getSecurityFooter()Lcom/android/systemui/qs/QSSecurityFooter;
    .locals 0

    .line 1026
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    return-object p0
.end method

.method getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 0

    .line 1012
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    return-object p0
.end method

.method getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 2

    .line 1016
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1017
    iget-object v1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    if-ne v1, p1, :cond_0

    .line 1018
    iget-object p0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 2

    .line 926
    instance-of v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v0, :cond_0

    .line 927
    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 932
    iget v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    .line 933
    iget v1, p1, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    goto :goto_0

    :cond_1
    move v1, v0

    .line 935
    :goto_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    :goto_1
    return-void
.end method

.method protected initMediaHostState()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->setExpansion(F)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->setShowsOnlyActiveMedia(Z)V

    .line 251
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateMediaDisappearParameters()V

    .line 252
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/MediaHost;->init(I)V

    return-void
.end method

.method public isExpanded()Z
    .locals 0

    .line 721
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    return p0
.end method

.method public isShowingCustomize()Z
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$QSPanel(Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->lambda$new$0(Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method protected needsDynamicRowsAndColumns()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 336
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 337
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "qs_show_brightness"

    .line 338
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_1

    .line 344
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method public onBrightnessMirrorReinflated(Landroid/view/View;)V
    .locals 0

    .line 420
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateBrightnessMirror()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 509
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->onConfigurationChanged()V

    .line 513
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 515
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateBrightnessMirror()V

    .line 517
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mLastOrientation:I

    if-eq p1, v0, :cond_1

    .line 518
    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mLastOrientation:I

    .line 519
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->switchTileLayout()Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 351
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 352
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 356
    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 359
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    goto :goto_0

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 362
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_3

    .line 363
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    .line 366
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 525
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 526
    sget v0, Lcom/android/systemui/R$id;->qs_footer:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Landroid/view/View;

    .line 527
    sget v0, Lcom/android/systemui/R$id;->divider:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    const/4 v0, 0x1

    .line 528
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->switchTileLayout(Z)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v1, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    if-eqz v1, :cond_0

    .line 291
    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getNumPages()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    :cond_0
    const/16 v0, 0x2710

    .line 296
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    rsub-int p2, p2, 0x2710

    const/high16 v1, 0x40000000    # 2.0f

    .line 302
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 303
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v1, p2}, Lcom/android/systemui/qs/PagedTileLayout;->setExcessHeight(I)V

    move p2, v0

    .line 305
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 313
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    .line 314
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    .line 316
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 317
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    .line 318
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr p1, v2

    .line 319
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 320
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v1

    add-int/2addr p1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onMediaVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 217
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->switchTileLayout()Z

    .line 218
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaVisibilityChangedListener:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    .line 219
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTilesChanged()V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "qs_show_brightness"

    .line 380
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 381
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->updateViewVisibilityForTuningValue(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public openDetails(Ljava/lang/String;)V
    .locals 3

    .line 390
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->getTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 394
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object p1

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    const/4 v0, 0x0

    aput v2, v1, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V

    :cond_0
    return-void
.end method

.method protected openPanelEvent()Lcom/android/systemui/qs/QSEvent;
    .locals 0

    .line 823
    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

    return-object p0
.end method

.method protected reAttachMediaHost()V
    .locals 4

    .line 657
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-nez v0, :cond_0

    return-void

    .line 660
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->shouldUseHorizontalLayout()Z

    move-result v0

    .line 661
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 662
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_1
    move-object v2, p0

    .line 663
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eq v3, v2, :cond_7

    if-eqz v3, :cond_2

    .line 666
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 668
    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 669
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    .line 670
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    .line 671
    :goto_1
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eqz v0, :cond_4

    const v3, 0x3f99999a    # 1.2f

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 672
    :goto_2
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-eqz v0, :cond_5

    .line 676
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->displayMediaMarginsOnMedia()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 677
    :cond_5
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaTotalBottomMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p0

    sub-int v2, v0, p0

    :cond_6
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_7
    return-void
.end method

.method public refreshAllTiles()V
    .locals 2

    .line 764
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->checkRestrictionAndSetEnabled()V

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 768
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    goto :goto_0

    .line 770
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz p0, :cond_2

    .line 771
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->refreshState()V

    :cond_2
    return-void
.end method

.method public setBrightnessListening(Z)V
    .locals 0

    .line 753
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 757
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    goto :goto_0

    .line 759
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    :goto_0
    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 411
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p1, :cond_1

    .line 413
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateBrightnessMirror()V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    return-void
.end method

.method public setContentMargins(II)V
    .locals 1

    .line 1043
    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginStart:I

    .line 1044
    iput p2, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginEnd:I

    .line 1045
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mVisualTilePadding:I

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->updateTileLayoutMargins(II)V

    .line 1047
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateMediaHostContentMargins()V

    .line 1048
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateFooterMargin()V

    .line 1049
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateDividerMargin()V

    return-void
.end method

.method protected setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne p1, v0, :cond_0

    return-void

    .line 959
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    .line 960
    instance-of v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-boolean p1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 962
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    .line 698
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/logging/QSLogger;->logPanelExpanded(ZLjava/lang/String;)V

    .line 700
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-nez p1, :cond_1

    .line 701
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, p1, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_1

    .line 702
    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 704
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x6f

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    .line 705
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-nez p1, :cond_2

    .line 706
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closePanelEvent()Lcom/android/systemui/qs/QSEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 707
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    goto :goto_0

    .line 709
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->openPanelEvent()Lcom/android/systemui/qs/QSEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 710
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->logTiles()V

    :goto_0
    return-void
.end method

.method public setFooterPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_0

    .line 452
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 453
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updatePageIndicator()V

    :cond_0
    return-void
.end method

.method setGridContentVisibility(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 967
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 968
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    if-eq v1, p1, :cond_1

    .line 969
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(II)V

    .line 971
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    return-void
.end method

.method public setHeaderContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1131
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHeaderContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 1

    .line 433
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 434
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 435
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 436
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSSecurityFooter;->setHostEnvironment(Lcom/android/systemui/qs/QSTileHost;)V

    .line 439
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-eqz p2, :cond_1

    .line 441
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    :cond_1
    return-void
.end method

.method public setListening(Z)V
    .locals 3

    .line 725
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 726
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    .line 727
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mCachedSpecs:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/qs/logging/QSLogger;->logAllTilesChangeListening(ZLjava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    .line 731
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz p1, :cond_2

    .line 732
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    :cond_2
    return-void
.end method

.method public setListening(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 743
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 744
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz p2, :cond_1

    .line 745
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QSSecurityFooter;->setListening(Z)V

    .line 749
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setBrightnessListening(Z)V

    return-void
.end method

.method public setMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1135
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaVisibilityChangedListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V
    .locals 1

    .line 715
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, p0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_0

    .line 716
    check-cast p0, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    :cond_0
    return-void
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 796
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;Z)V

    return-void
.end method

.method public setTiles(Ljava/util/Collection;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQsTileRevealController:Lcom/android/systemui/qs/QSTileRevealController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileRevealController;->updateRevealedTiles(Ljava/util/Collection;)V

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 804
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v2, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 805
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto :goto_0

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, ""

    .line 808
    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCachedSpecs:Ljava/lang/String;

    .line 809
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    .line 810
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/qs/QSPanel$TileRecord;

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected shouldShowDetail()Z
    .locals 0

    .line 835
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    return p0
.end method

.method protected showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 2

    .line 792
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V
    .locals 5

    const/4 v0, 0x0

    .line 776
    aget v1, p3, v0

    const/4 v2, 0x1

    .line 777
    aget v3, p3, v2

    .line 778
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 780
    new-instance v4, Lcom/android/systemui/qs/QSPanel$Record;

    invoke-direct {v4}, Lcom/android/systemui/qs/QSPanel$Record;-><init>()V

    .line 781
    iput-object p2, v4, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 782
    aget p2, p3, v0

    sub-int p2, v1, p2

    iput p2, v4, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    .line 783
    aget p2, p3, v2

    sub-int p2, v3, p2

    iput p2, v4, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    .line 785
    aput v1, p3, v0

    .line 786
    aput v3, p3, v2

    .line 788
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method public showDeviceMonitoringDialog()V
    .locals 0

    .line 1035
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz p0, :cond_0

    .line 1036
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->showDeviceMonitoringDialog()V

    :cond_0
    return-void
.end method

.method public showEdit(Landroid/view/View;)V
    .locals 1

    .line 896
    new-instance v0, Lcom/android/systemui/qs/QSPanel$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QSPanel$2;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method switchTileLayout()Z
    .locals 1

    const/4 v0, 0x0

    .line 532
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->switchTileLayout(Z)Z

    move-result p0

    return p0
.end method

.method public updateBrightnessMirror()V
    .locals 3

    .line 682
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 683
    sget v0, Lcom/android/systemui/R$id;->brightness_slider:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSliderView;

    .line 684
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$id;->brightness_slider:I

    .line 685
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSliderView;

    .line 686
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setMirror(Lcom/android/systemui/settings/ToggleSliderView;)V

    .line 687
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/ToggleSliderView;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    :cond_0
    return-void
.end method

.method protected updateMargins(Landroid/view/View;II)V
    .locals 0

    .line 1117
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1118
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 1119
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 1120
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected updateMediaHostContentMargins()V
    .locals 3

    .line 1100
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-eqz v0, :cond_1

    .line 1101
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginStart:I

    .line 1102
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1105
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginEnd:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method protected updatePadding()V
    .locals 5

    .line 493
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 494
    sget v1, Lcom/android/systemui/R$dimen;->qs_panel_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 495
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-eqz v2, :cond_0

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 501
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v2

    .line 503
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v3

    sget v4, Lcom/android/systemui/R$dimen;->qs_panel_padding_bottom:I

    .line 504
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 501
    invoke-virtual {p0, v2, v1, v3, v0}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    return-void
.end method

.method public updateResources()V
    .locals 4

    .line 472
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_quick_tile_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 473
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_tile_background_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 474
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->qs_footer_horizontal_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mFooterMarginStartHorizontal:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 476
    iput v0, p0, Lcom/android/systemui/qs/QSPanel;->mVisualTilePadding:I

    .line 477
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updatePadding()V

    .line 479
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updatePageIndicator()V

    .line 481
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 482
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->clearState()V

    goto :goto_0

    .line 484
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v0, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 487
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz p0, :cond_2

    .line 488
    invoke-interface {p0}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->updateResources()Z

    :cond_2
    return-void
.end method
