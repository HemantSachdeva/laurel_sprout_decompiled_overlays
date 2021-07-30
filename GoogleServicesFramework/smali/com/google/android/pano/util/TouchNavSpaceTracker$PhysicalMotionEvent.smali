.class public Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;
.super Ljava/lang/Object;
.source "TouchNavSpaceTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/util/TouchNavSpaceTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhysicalMotionEvent"
.end annotation


# instance fields
.field private final mDeviceId:I

.field private final mTime:J

.field private final mX:F

.field private final mY:F


# direct methods
.method public constructor <init>(IFFJ)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->mDeviceId:I

    .line 134
    iput p2, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->mX:F

    .line 135
    iput p3, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->mY:F

    .line 136
    iput-wide p4, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->mTime:J

    return-void
.end method


# virtual methods
.method public final getDeviceId()I
    .locals 0

    .line 143
    iget p0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->mDeviceId:I

    return p0
.end method

.method public final getTime()J
    .locals 2

    .line 176
    iget-wide v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->mTime:J

    return-wide v0
.end method

.method public final getX()F
    .locals 0

    .line 159
    iget p0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->mX:F

    return p0
.end method

.method public final getY()F
    .locals 0

    .line 167
    iget p0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->mY:F

    return p0
.end method
