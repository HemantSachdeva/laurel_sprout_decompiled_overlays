.class final Lpl;
.super Landroid/database/DataSetObserver;
.source "PG"


# instance fields
.field final synthetic a:Lpp;


# direct methods
.method public constructor <init>(Lpp;)V
    .locals 0

    iput-object p1, p0, Lpl;->a:Lpp;

    .line 1
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    iget-object v0, p0, Lpl;->a:Lpp;

    .line 2
    invoke-virtual {v0}, Lpp;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl;->a:Lpp;

    .line 3
    invoke-virtual {v0}, Lpp;->S()V

    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    iget-object v0, p0, Lpl;->a:Lpp;

    .line 4
    invoke-virtual {v0}, Lpp;->d()V

    return-void
.end method
