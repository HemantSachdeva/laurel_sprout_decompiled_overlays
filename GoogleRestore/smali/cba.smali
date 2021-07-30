.class public final Lcba;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldst;


# instance fields
.field private final a:Leip;

.field private final b:Leip;

.field private final c:Leip;

.field private final d:Leip;

.field private final e:Leip;


# direct methods
.method public constructor <init>(Leip;Leip;Leip;Leip;Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcba;->a:Leip;

    iput-object p2, p0, Lcba;->b:Leip;

    iput-object p3, p0, Lcba;->c:Leip;

    iput-object p4, p0, Lcba;->d:Leip;

    iput-object p5, p0, Lcba;->e:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcba;->a:Leip;

    check-cast v0, Lbvs;

    invoke-virtual {v0}, Lbvs;->b()Lbvr;

    move-result-object v2

    iget-object v0, p0, Lcba;->b:Leip;

    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lczw;

    iget-object v4, p0, Lcba;->c:Leip;

    iget-object v5, p0, Lcba;->d:Leip;

    iget-object v0, p0, Lcba;->e:Leip;

    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lbtr;

    new-instance v0, Lcax;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcax;-><init>(Lbvr;Lczw;Leip;Leip;Lbtr;)V

    return-object v0
.end method
