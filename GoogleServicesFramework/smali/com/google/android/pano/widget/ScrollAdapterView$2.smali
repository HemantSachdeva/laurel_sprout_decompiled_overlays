.class Lcom/google/android/pano/widget/ScrollAdapterView$2;
.super Ljava/lang/Object;
.source "ScrollAdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/ScrollAdapterView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    .locals 0

    .line 1038
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1042
    :try_start_0
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$700(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1044
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$800(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    .line 1045
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$900(Lcom/google/android/pano/widget/ScrollAdapterView;)Lcom/google/android/pano/widget/ScrollAdapterErrorHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1046
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$900(Lcom/google/android/pano/widget/ScrollAdapterView;)Lcom/google/android/pano/widget/ScrollAdapterErrorHandler;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterErrorHandler;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1048
    :cond_0
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method
