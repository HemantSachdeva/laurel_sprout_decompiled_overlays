.class final Lht;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lhy;


# direct methods
.method public constructor <init>(Lhy;)V
    .locals 0

    iput-object p1, p0, Lht;->a:Lhy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lht;->a:Lhy;

    iget-object v0, p1, Lhy;->x:Landroid/os/Handler;

    iget-object p1, p1, Lhy;->b:Lix;

    .line 1
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
