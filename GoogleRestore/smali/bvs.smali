.class public final Lbvs;
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

    iput-object p1, p0, Lbvs;->a:Leip;

    iput-object p2, p0, Lbvs;->b:Leip;

    iput-object p3, p0, Lbvs;->c:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbvs;->b()Lbvr;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbvr;
    .locals 4

    iget-object v0, p0, Lbvs;->a:Leip;

    iget-object v1, p0, Lbvs;->b:Leip;

    iget-object v2, p0, Lbvs;->c:Leip;

    new-instance v3, Lbvr;

    .line 1
    invoke-direct {v3, v0, v1, v2}, Lbvr;-><init>(Leip;Leip;Leip;)V

    return-object v3
.end method
