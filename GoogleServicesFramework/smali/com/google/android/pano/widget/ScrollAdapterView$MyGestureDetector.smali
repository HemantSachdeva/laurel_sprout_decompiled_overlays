.class Lcom/google/android/pano/widget/ScrollAdapterView$MyGestureDetector;
.super Landroid/view/GestureDetector;
.source "ScrollAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/ScrollAdapterView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/ScrollAdapterView;Landroid/content/Context;)V
    .locals 0

    .line 1808
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$MyGestureDetector;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    .line 1809
    invoke-static {p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1000(Lcom/google/android/pano/widget/ScrollAdapterView;)Landroid/view/GestureDetector$OnGestureListener;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1813
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1814
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$MyGestureDetector;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1100(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    .line 1816
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
