.class Lcom/android/car/ui/recyclerview/OnContinuousScrollListener$1;
.super Ljava/lang/Object;
.source "OnContinuousScrollListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;


# direct methods
.method constructor <init>(Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener$1;->this$0:Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener$1;->this$0:Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->access$000(Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener$1;->this$0:Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->access$200(Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener$1;->this$0:Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;

    invoke-static {v1}, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->access$100(Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener$1;->this$0:Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->access$300(Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener$1;->this$0:Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;

    invoke-static {v1}, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->access$000(Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 54
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener$1;->this$0:Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->access$402(Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;Z)Z

    goto :goto_0

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener$1;->this$0:Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->access$402(Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;Z)Z

    :goto_0
    return-void
.end method
