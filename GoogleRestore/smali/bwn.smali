.class public final Lbwn;
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

    iput-object p1, p0, Lbwn;->a:Leip;

    iput-object p2, p0, Lbwn;->b:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbwn;->a:Leip;

    iget-object v1, p0, Lbwn;->b:Leip;

    check-cast v1, Lbwo;

    invoke-virtual {v1}, Lbwo;->b()Lcqu;

    move-result-object v1

    invoke-virtual {v1}, Lcqu;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvt;

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
