.class final Lbe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbf;


# direct methods
.method public constructor <init>(Lbf;)V
    .locals 0

    iput-object p1, p0, Lbe;->a:Lbf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbe;->a:Lbf;

    iget-object v0, v0, Lbf;->b:Lba;

    .line 1
    invoke-virtual {v0}, Lba;->H()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe;->a:Lbf;

    iget-object v0, v0, Lbf;->b:Lba;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lba;->a(Landroid/view/View;)V

    iget-object v0, p0, Lbe;->a:Lbf;

    iget-object v1, v0, Lbf;->d:Lbr;

    iget-object v2, v0, Lbf;->b:Lba;

    iget-object v0, v0, Lbf;->c:Lue;

    .line 3
    invoke-virtual {v1, v2, v0}, Lbr;->b(Lba;Lue;)V

    :cond_0
    return-void
.end method
