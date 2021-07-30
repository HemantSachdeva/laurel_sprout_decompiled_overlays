.class public final Lcam;
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

    iput-object p1, p0, Lcam;->a:Leip;

    iput-object p2, p0, Lcam;->b:Leip;

    iput-object p3, p0, Lcam;->c:Leip;

    iput-object p4, p0, Lcam;->d:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcam;->a:Leip;

    check-cast v0, Lbvs;

    invoke-virtual {v0}, Lbvs;->b()Lbvr;

    move-result-object v0

    iget-object v1, p0, Lcam;->b:Leip;

    invoke-interface {v1}, Leip;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lczw;

    iget-object v1, p0, Lcam;->c:Leip;

    iget-object v2, p0, Lcam;->d:Leip;

    invoke-interface {v2}, Leip;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcqu;

    new-instance v3, Lcal;

    invoke-direct {v3, v0, v1, v2}, Lcal;-><init>(Lbvr;Leip;Lcqu;)V

    return-object v3
.end method
