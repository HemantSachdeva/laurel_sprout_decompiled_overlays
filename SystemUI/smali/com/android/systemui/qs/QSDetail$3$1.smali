.class Lcom/android/systemui/qs/QSDetail$3$1;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail$3;->onToggleStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QSDetail$3;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail$3;Z)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$3$1;->this$1:Lcom/android/systemui/qs/QSDetail$3;

    iput-boolean p2, p0, Lcom/android/systemui/qs/QSDetail$3$1;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$3$1;->this$1:Lcom/android/systemui/qs/QSDetail$3;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetail$3;->this$0:Lcom/android/systemui/qs/QSDetail;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSDetail$3$1;->val$state:Z

    .line 323
    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->access$300(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail$3$1;->this$1:Lcom/android/systemui/qs/QSDetail$3;

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail$3;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {p0}, Lcom/android/systemui/qs/QSDetail;->access$300(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 322
    :goto_0
    invoke-static {v0, v1, p0}, Lcom/android/systemui/qs/QSDetail;->access$400(Lcom/android/systemui/qs/QSDetail;ZZ)V

    return-void
.end method
