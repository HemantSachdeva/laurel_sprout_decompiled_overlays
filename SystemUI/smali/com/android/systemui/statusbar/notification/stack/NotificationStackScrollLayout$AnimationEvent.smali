.class Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationEvent"
.end annotation


# static fields
.field static FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

.field static LENGTHS:[I


# instance fields
.field final animationType:I

.field final filter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

.field headsUpFromBottom:Z

.field final length:J

.field final mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field viewAfterChangingView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v1, v0, [Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6045
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6049
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6050
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6051
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6052
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6053
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6054
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6058
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6059
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6060
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6061
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6062
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6063
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6067
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6068
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6069
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6070
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6071
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6075
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6076
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6077
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6078
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6079
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6083
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6087
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6091
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6092
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6093
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6094
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6095
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6099
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6100
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6101
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6102
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6103
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6104
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6108
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6112
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6113
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6114
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6115
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6119
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6120
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6121
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6122
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6123
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6127
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6128
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6129
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6130
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6134
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6135
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6136
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6137
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6138
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6142
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6143
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6144
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6145
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6146
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6150
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6151
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6152
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6153
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6157
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6158
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6159
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6160
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6161
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6162
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6163
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    new-array v0, v0, [I

    .line 6166
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    return-void

    :array_0
    .array-data 4
        0x1d0
        0x1d0
        0x168
        0x168
        0xdc
        0xdc
        0x168
        0x1c0
        0x168
        0x168
        0x168
        0x226
        0x12c
        0x12c
        0x168
        0x168
    .end array-data
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V
    .locals 2

    .line 6243
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    aget v0, v0, p2

    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V
    .locals 7

    .line 6251
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    aget-object v6, v0, p2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJLcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJLcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V
    .locals 0

    .line 6254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6255
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 6256
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 6257
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    .line 6258
    iput-wide p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    .line 6259
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->filter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    return-void
.end method

.method static combineLength(Ljava/util/ArrayList;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;)J"
        }
    .end annotation

    .line 6271
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 6273
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 6274
    iget-wide v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 6275
    iget v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_0

    .line 6276
    iget-wide v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    return-wide v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method
