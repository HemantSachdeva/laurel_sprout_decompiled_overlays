.class final Lbd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lud;


# instance fields
.field final synthetic a:Lba;


# direct methods
.method public constructor <init>(Lba;)V
    .locals 0

    iput-object p1, p0, Lbd;->a:Lba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lbd;->a:Lba;

    .line 1
    invoke-virtual {v0}, Lba;->H()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbd;->a:Lba;

    .line 2
    invoke-virtual {v0}, Lba;->H()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lbd;->a:Lba;

    .line 3
    invoke-virtual {v2, v1}, Lba;->a(Landroid/view/View;)V

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_0
    iget-object v0, p0, Lbd;->a:Lba;

    .line 5
    invoke-virtual {v0, v1}, Lba;->a(Landroid/animation/Animator;)V

    return-void
.end method
