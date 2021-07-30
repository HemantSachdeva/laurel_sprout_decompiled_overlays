.class public final Lcag;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldst;


# instance fields
.field private final a:Leip;

.field private final b:Leip;

.field private final c:Leip;

.field private final d:Leip;


# direct methods
.method public constructor <init>(Leip;Leip;Leip;Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcag;->a:Leip;

    iput-object p2, p0, Lcag;->b:Leip;

    iput-object p3, p0, Lcag;->c:Leip;

    iput-object p4, p0, Lcag;->d:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcag;->a:Leip;

    check-cast v0, Lcar;

    invoke-virtual {v0}, Lcar;->b()Lcqu;

    move-result-object v0

    iget-object v1, p0, Lcag;->b:Leip;

    iget-object v2, p0, Lcag;->c:Leip;

    iget-object v3, p0, Lcag;->d:Leip;

    invoke-interface {v3}, Leip;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbtr;

    iget-boolean v3, v3, Lbtr;->b:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcqu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcan;

    invoke-static {v0}, Lcqu;->b(Ljava/lang/Object;)Lcqu;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcqb;->a:Lcqb;

    :goto_1
    return-object v0
.end method
