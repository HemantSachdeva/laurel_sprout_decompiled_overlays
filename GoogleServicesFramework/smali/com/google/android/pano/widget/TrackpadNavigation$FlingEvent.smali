.class public Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;
.super Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;
.source "TrackpadNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/TrackpadNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlingEvent"
.end annotation


# instance fields
.field public direction:I

.field public repeats:I

.field public xSwipes:I

.field public ySwipes:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 96
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/pano/widget/TrackpadNavigation$1;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public set(JFFIIFFIIII)V
    .locals 0

    .line 108
    iput-wide p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;->time:J

    .line 111
    iput p5, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->xSwipes:I

    .line 112
    iput p6, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->ySwipes:I

    .line 117
    iput p11, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->direction:I

    .line 118
    iput p12, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->repeats:I

    return-void
.end method
