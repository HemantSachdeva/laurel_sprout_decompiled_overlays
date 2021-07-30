.class public final Lcad;
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

    iput-object p1, p0, Lcad;->a:Leip;

    iput-object p2, p0, Lcad;->b:Leip;

    iput-object p3, p0, Lcad;->c:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcad;->a:Leip;

    check-cast v0, Lbvs;

    invoke-virtual {v0}, Lbvs;->b()Lbvr;

    move-result-object v0

    iget-object v1, p0, Lcad;->b:Leip;

    iget-object v2, p0, Lcad;->c:Leip;

    invoke-interface {v2}, Leip;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbtr;

    new-instance v3, Lcac;

    invoke-direct {v3, v0, v1, v2}, Lcac;-><init>(Lbvr;Leip;Lbtr;)V

    return-object v3
.end method
