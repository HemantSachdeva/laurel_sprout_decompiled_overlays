.class Lcom/android/systemui/statusbar/NotificationMediaManager$4;
.super Ljava/lang/Object;
.source "NotificationMediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$4;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$4;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$500(Lcom/android/systemui/statusbar/NotificationMediaManager;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$4;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$500(Lcom/android/systemui/statusbar/NotificationMediaManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 692
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$4;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$500(Lcom/android/systemui/statusbar/NotificationMediaManager;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
