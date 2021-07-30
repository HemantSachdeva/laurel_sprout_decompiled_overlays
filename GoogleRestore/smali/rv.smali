.class final Lrv;
.super Lgk;
.source "PG"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lrw;

.field private c:Z


# direct methods
.method public constructor <init>(Lrw;I)V
    .locals 0

    iput-object p1, p0, Lrv;->b:Lrw;

    iput p2, p0, Lrv;->a:I

    invoke-direct {p0}, Lgk;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lrv;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lrv;->c:Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lrv;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lrv;->b:Lrw;

    iget-object v0, v0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Lrv;->a:I

    .line 1
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lrv;->b:Lrw;

    iget-object v0, v0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    .line 2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    return-void
.end method
