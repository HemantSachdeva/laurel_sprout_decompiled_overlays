.class final Lcmu;
.super Lqz;
.source "PG"

# interfaces
.implements Lcmf;


# instance fields
.field public q:Z

.field public r:Lcmo;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lqz;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcmu;->r:Lcmo;

    .line 2
    instance-of v1, v0, Lcmm;

    if-eqz v1, :cond_0

    check-cast v0, Lcmm;

    invoke-interface {v0}, Lcmm;->a()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcmu;->q:Z

    :goto_0
    return v0
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcmu;->r:Lcmo;

    .line 3
    instance-of v1, v0, Lcmm;

    if-eqz v1, :cond_0

    check-cast v0, Lcmm;

    invoke-interface {v0}, Lcmm;->b()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcmu;->q:Z

    :goto_0
    return v0
.end method
