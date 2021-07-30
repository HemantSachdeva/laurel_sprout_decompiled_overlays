.class final Lcnt;
.super Lvt;
.source "PG"


# instance fields
.field final synthetic a:Lcnu;


# direct methods
.method public constructor <init>(Lcnu;)V
    .locals 0

    iput-object p1, p0, Lcnt;->a:Lcnu;

    invoke-direct {p0}, Lvt;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcnt;->a:Lcnu;

    .line 1
    invoke-virtual {v0}, Lqc;->b()V

    return-void
.end method

.method public final a(II)V
    .locals 2

    iget-object v0, p0, Lcnt;->a:Lcnu;

    iget-object v1, v0, Lcnu;->d:Landroid/view/View;

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    nop

    :goto_0
    invoke-virtual {v0, p1, p2}, Lqc;->a(II)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    iget-object v0, p0, Lcnt;->a:Lcnu;

    iget-object v1, v0, Lcnu;->d:Landroid/view/View;

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    nop

    :goto_0
    invoke-virtual {v0, p1}, Lqc;->c(I)V

    return-void
.end method

.method public final b(II)V
    .locals 2

    iget-object v0, p0, Lcnt;->a:Lcnu;

    iget-object v1, v0, Lcnu;->d:Landroid/view/View;

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    nop

    :goto_0
    invoke-virtual {v0, p1, p2}, Lqc;->b(II)V

    return-void
.end method
