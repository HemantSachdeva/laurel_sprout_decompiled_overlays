.class public final Lbvh;
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

    iput-object p1, p0, Lbvh;->a:Leip;

    iput-object p2, p0, Lbvh;->b:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbvh;->b()Lcqu;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcqu;
    .locals 2

    iget-object v0, p0, Lbvh;->a:Leip;

    iget-object v1, p0, Lbvh;->b:Leip;

    .line 1
    invoke-interface {v1}, Leip;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbtr;

    iget-boolean v1, v1, Lbtr;->b:Z

    if-nez v1, :cond_0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcne;

    invoke-static {v0}, Lcqu;->b(Ljava/lang/Object;)Lcqu;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcqb;->a:Lcqb;

    :goto_0
    return-object v0
.end method
