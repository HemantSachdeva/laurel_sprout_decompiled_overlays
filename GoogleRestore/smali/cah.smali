.class public final Lcah;
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

    iput-object p1, p0, Lcah;->a:Leip;

    iput-object p2, p0, Lcah;->b:Leip;

    iput-object p3, p0, Lcah;->c:Leip;

    iput-object p4, p0, Lcah;->d:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcah;->a:Leip;

    check-cast v0, Lcaf;

    invoke-virtual {v0}, Lcaf;->b()Lcqu;

    move-result-object v0

    iget-object v1, p0, Lcah;->b:Leip;

    check-cast v1, Lcar;

    invoke-virtual {v1}, Lcar;->b()Lcqu;

    move-result-object v1

    iget-object v2, p0, Lcah;->c:Leip;

    iget-object v3, p0, Lcah;->d:Leip;

    invoke-virtual {v0}, Lcqu;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcqu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lbvt;

    invoke-static {v0}, Lcsn;->a(Ljava/lang/Object;)Lcsn;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget v0, Lcsn;->a:I

    sget-object v0, Lctg;->b:Lctg;

    :goto_1
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ldqp;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
