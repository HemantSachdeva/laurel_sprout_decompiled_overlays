.class public final Lbhi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbhg;


# instance fields
.field final synthetic a:Lbhl;


# direct methods
.method public constructor <init>(Lbhl;)V
    .locals 0

    iput-object p1, p0, Lbhi;->a:Lbhl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbds;)V
    .locals 2

    invoke-virtual {p1}, Lbds;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lbhi;->a:Lbhl;

    const/4 v0, 0x0

    move-object v1, p1

    check-cast v1, Lbib;

    iget-object v1, v1, Lbib;->p:Ljava/util/Set;

    .line 1
    invoke-virtual {p1, v0, v1}, Lbhl;->a(Lbik;Ljava/util/Set;)V

    return-void

    :cond_0
    iget-object v0, p0, Lbhi;->a:Lbhl;

    iget-object v0, v0, Lbhl;->n:Lbia;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Lbia;->a(Lbds;)V

    :cond_1
    return-void
.end method
