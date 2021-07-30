.class public final Lcap;
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

    iput-object p1, p0, Lcap;->a:Leip;

    iput-object p2, p0, Lcap;->b:Leip;

    iput-object p3, p0, Lcap;->c:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcap;->a:Leip;

    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcap;->b:Leip;

    invoke-interface {v1}, Leip;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcau;

    iget-object v2, p0, Lcap;->c:Leip;

    invoke-interface {v2}, Leip;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lczw;

    new-instance v2, Lcao;

    check-cast v0, Lcal;

    invoke-direct {v2, v1}, Lcao;-><init>(Lcau;)V

    return-object v2
.end method
