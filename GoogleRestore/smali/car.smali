.class public final Lcar;
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

    iput-object p1, p0, Lcar;->a:Leip;

    iput-object p2, p0, Lcar;->b:Leip;

    iput-object p3, p0, Lcar;->c:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcar;->b()Lcqu;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcqu;
    .locals 2

    iget-object v0, p0, Lcar;->a:Leip;

    .line 1
    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtr;

    iget-object v1, p0, Lcar;->b:Leip;

    check-cast v1, Lbrv;

    .line 2
    invoke-virtual {v1}, Lbrv;->b()Lcaw;

    iget-object v1, p0, Lcar;->c:Leip;

    check-cast v1, Lbrt;

    .line 3
    invoke-virtual {v1}, Lbrt;->b()Lcat;

    iget-boolean v0, v0, Lbtr;->b:Z

    sget-object v0, Lcqb;->a:Lcqb;

    return-object v0
.end method
