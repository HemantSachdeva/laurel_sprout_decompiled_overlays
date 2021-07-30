.class public final Lbzm;
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

    iput-object p1, p0, Lbzm;->a:Leip;

    iput-object p2, p0, Lbzm;->b:Leip;

    iput-object p3, p0, Lbzm;->c:Leip;

    iput-object p4, p0, Lbzm;->d:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lbzm;->a:Leip;

    check-cast v0, Lbvs;

    invoke-virtual {v0}, Lbvs;->b()Lbvr;

    move-result-object v0

    iget-object v1, p0, Lbzm;->b:Leip;

    iget-object v2, p0, Lbzm;->c:Leip;

    check-cast v2, Lbyz;

    invoke-virtual {v2}, Lbyz;->b()Lbyw;

    iget-object v2, p0, Lbzm;->d:Leip;

    check-cast v2, Lbyy;

    invoke-virtual {v2}, Lbyy;->b()Lbyx;

    new-instance v2, Lbzl;

    invoke-direct {v2, v0, v1}, Lbzl;-><init>(Lbvr;Leip;)V

    return-object v2
.end method
