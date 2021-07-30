.class public final Lbza;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldst;


# instance fields
.field private final a:Leip;

.field private final b:Leip;


# direct methods
.method public constructor <init>(Leip;Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbza;->a:Leip;

    iput-object p2, p0, Lbza;->b:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lbza;->a:Leip;

    iget-object v1, p0, Lbza;->b:Leip;

    check-cast v1, Lbru;

    invoke-virtual {v1}, Lbru;->b()Lcaj;

    move-result-object v1

    sget-object v2, Lbzh;->b:Lbzh;

    iget-wide v2, v2, Lbzh;->d:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    iget v2, v1, Lcaj;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget v1, v1, Lcaj;->a:I

    if-lez v1, :cond_0

    check-cast v0, Lbzj;

    invoke-virtual {v0}, Lbzj;->b()Lbzi;

    move-result-object v0

    invoke-static {v0}, Lcsn;->a(Ljava/lang/Object;)Lcsn;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget v0, Lcsn;->a:I

    sget-object v0, Lctg;->b:Lctg;

    :goto_0
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ldqp;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
