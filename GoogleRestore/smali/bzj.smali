.class public final Lbzj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldst;


# instance fields
.field private final a:Leip;

.field private final b:Leip;

.field private final c:Leip;


# direct methods
.method public constructor <init>(Leip;Leip;Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzj;->a:Leip;

    iput-object p2, p0, Lbzj;->b:Leip;

    iput-object p3, p0, Lbzj;->c:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbzj;->b()Lbzi;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbzi;
    .locals 4

    iget-object v0, p0, Lbzj;->a:Leip;

    check-cast v0, Lbrf;

    .line 1
    invoke-virtual {v0}, Lbrf;->b()Lbqy;

    move-result-object v0

    iget-object v1, p0, Lbzj;->b:Leip;

    iget-object v2, p0, Lbzj;->c:Leip;

    new-instance v3, Lbzi;

    .line 2
    invoke-direct {v3, v0, v1, v2}, Lbzi;-><init>(Lbqy;Leip;Leip;)V

    return-object v3
.end method
