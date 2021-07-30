.class public Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;
.super Ljava/lang/Object;
.source "PlaybackControlsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/PlaybackControlsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SeekTracker"
.end annotation


# instance fields
.field public seeking:Z

.field public value:F


# direct methods
.method protected constructor <init>(Lcom/google/android/pano/widget/PlaybackControlsView;)V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 188
    iput-boolean p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    const/4 p1, 0x0

    .line 189
    iput p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    return-void
.end method
