.class public final Lbwo;
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

    iput-object p1, p0, Lbwo;->a:Leip;

    iput-object p2, p0, Lbwo;->b:Leip;

    iput-object p3, p0, Lbwo;->c:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbwo;->b()Lcqu;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcqu;
    .locals 3

    iget-object v0, p0, Lbwo;->a:Leip;

    iget-object v1, p0, Lbwo;->b:Leip;

    .line 1
    invoke-interface {v1}, Leip;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbtr;

    iget-object v2, p0, Lbwo;->c:Leip;

    check-cast v2, Lbrh;

    .line 2
    invoke-virtual {v2}, Lbrh;->b()Lbwe;

    move-result-object v2

    iget-boolean v1, v1, Lbtr;->b:Z

    if-nez v1, :cond_0

    iget v1, v2, Lbwe;->d:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3
    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwf;

    invoke-static {v0}, Lcqu;->b(Ljava/lang/Object;)Lcqu;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcqb;->a:Lcqb;

    :goto_0
    return-object v0
.end method
