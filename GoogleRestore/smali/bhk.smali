.class public final Lbhk;
.super Lbhd;
.source "PG"


# instance fields
.field final synthetic g:Lbhl;


# direct methods
.method public constructor <init>(Lbhl;I)V
    .locals 1

    iput-object p1, p0, Lbhk;->g:Lbhl;

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbhd;-><init>(Lbhl;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected final a(Lbds;)V
    .locals 1

    iget-object v0, p0, Lbhk;->g:Lbhl;

    iget-object v0, v0, Lbhl;->f:Lbhg;

    .line 2
    invoke-interface {v0, p1}, Lbhg;->a(Lbds;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method protected final a()Z
    .locals 2

    iget-object v0, p0, Lbhk;->g:Lbhl;

    iget-object v0, v0, Lbhl;->f:Lbhg;

    .line 4
    sget-object v1, Lbds;->a:Lbds;

    invoke-interface {v0, v1}, Lbhg;->a(Lbds;)V

    const/4 v0, 0x1

    return v0
.end method
