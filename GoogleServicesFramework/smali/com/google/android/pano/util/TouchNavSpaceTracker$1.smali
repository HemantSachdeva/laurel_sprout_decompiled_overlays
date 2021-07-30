.class Lcom/google/android/pano/util/TouchNavSpaceTracker$1;
.super Landroid/os/Handler;
.source "TouchNavSpaceTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/util/TouchNavSpaceTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/util/TouchNavSpaceTracker;


# direct methods
.method constructor <init>(Lcom/google/android/pano/util/TouchNavSpaceTracker;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker$1;->this$0:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 378
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    iget-object p0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker$1;->this$0:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    iget-object p0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mKeyEventListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;

    if-eqz p0, :cond_1

    .line 381
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/KeyEvent;

    invoke-interface {p0, v0, p1}, Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    :cond_1
    :goto_0
    return-void
.end method
