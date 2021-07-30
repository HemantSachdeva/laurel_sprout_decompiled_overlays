.class Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;
.super Landroid/os/Handler;
.source "TrackpadNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/TrackpadNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyRepeatHandler"
.end annotation


# instance fields
.field mDeviceId:I

.field mKey:I

.field mKeyRepeatDelayIndex:I

.field mMessage:I

.field mMetaState:I

.field mSource:I

.field final synthetic this$0:Lcom/google/android/pano/widget/TrackpadNavigation;


# direct methods
.method private constructor <init>(Lcom/google/android/pano/widget/TrackpadNavigation;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->this$0:Lcom/google/android/pano/widget/TrackpadNavigation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    .line 170
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKey:I

    const/4 p1, -0x1

    .line 171
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMessage:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/pano/widget/TrackpadNavigation;Lcom/google/android/pano/widget/TrackpadNavigation$1;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;-><init>(Lcom/google/android/pano/widget/TrackpadNavigation;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 211
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 215
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKey:I

    const/4 p1, -0x1

    .line 216
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMessage:I

    return-void

    .line 219
    :cond_0
    iget p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKeyRepeatDelayIndex:I

    invoke-static {}, Lcom/google/android/pano/widget/TrackpadNavigation;->access$000()[J

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    .line 220
    iget p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKeyRepeatDelayIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKeyRepeatDelayIndex:I

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->this$0:Lcom/google/android/pano/widget/TrackpadNavigation;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget v3, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKey:I

    iget v4, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMetaState:I

    iget v5, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mSource:I

    iget v6, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mDeviceId:I

    invoke-static/range {v0 .. v6}, Lcom/google/android/pano/widget/TrackpadNavigation;->access$100(Lcom/google/android/pano/widget/TrackpadNavigation;JIIII)V

    .line 223
    iget p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMessage:I

    invoke-static {}, Lcom/google/android/pano/widget/TrackpadNavigation;->access$000()[J

    move-result-object v0

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKeyRepeatDelayIndex:I

    aget-wide v0, v0, v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method startSendingRepeatKeys(IIII)V
    .locals 0

    .line 178
    iget p2, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKey:I

    const/4 p3, 0x0

    if-eq p1, p2, :cond_0

    .line 179
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKey:I

    .line 180
    iget p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMessage:I

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    iput p3, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMessage:I

    const-wide/16 p1, 0x1f4

    .line 185
    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 187
    :cond_0
    iget p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMessage:I

    if-nez p1, :cond_1

    .line 191
    invoke-virtual {p0, p3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x1

    .line 192
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMessage:I

    .line 193
    invoke-static {}, Lcom/google/android/pano/widget/TrackpadNavigation;->access$000()[J

    move-result-object p2

    iput p3, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKeyRepeatDelayIndex:I

    aget-wide p2, p2, p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method stopSendingRepeatKeys()V
    .locals 2

    .line 199
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMessage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 203
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 204
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKey:I

    .line 205
    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMessage:I

    :cond_0
    return-void
.end method
