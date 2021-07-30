.class public final Lbxi;
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

    iput-object p1, p0, Lbxi;->a:Leip;

    iput-object p2, p0, Lbxi;->b:Leip;

    iput-object p3, p0, Lbxi;->c:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lbxi;->a:Leip;

    iget-object v1, p0, Lbxi;->b:Leip;

    iget-object v2, p0, Lbxi;->c:Leip;

    check-cast v2, Lbrk;

    invoke-virtual {v2}, Lbrk;->b()Lbxd;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-boolean v2, v2, Lbxd;->b:Z

    if-eqz v2, :cond_0

    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lbvt;

    invoke-static {v0}, Lcsn;->a(Ljava/lang/Object;)Lcsn;

    move-result-object v0

    return-object v0
.end method
