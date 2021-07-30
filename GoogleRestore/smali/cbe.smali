.class public final Lcbe;
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

    iput-object p1, p0, Lcbe;->a:Leip;

    iput-object p2, p0, Lcbe;->b:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcbe;->b()Lcbd;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcbd;
    .locals 3

    iget-object v0, p0, Lcbe;->a:Leip;

    check-cast v0, Ldsu;

    iget-object v0, v0, Ldsu;->a:Ljava/lang/Object;

    .line 1
    check-cast v0, Landroid/app/Application;

    .line 2
    invoke-static {}, Lbqd;->b()Lbqc;

    iget-object v1, p0, Lcbe;->b:Leip;

    new-instance v2, Lcbd;

    .line 3
    invoke-direct {v2, v0, v1}, Lcbd;-><init>(Landroid/app/Application;Leip;)V

    return-object v2
.end method
