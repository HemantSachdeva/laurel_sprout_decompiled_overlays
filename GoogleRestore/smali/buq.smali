.class public final Lbuq;
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

    iput-object p1, p0, Lbuq;->a:Leip;

    iput-object p2, p0, Lbuq;->b:Leip;

    iput-object p3, p0, Lbuq;->c:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbuq;->b()Lbup;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbup;
    .locals 4

    iget-object v0, p0, Lbuq;->a:Leip;

    iget-object v1, p0, Lbuq;->b:Leip;

    check-cast v1, Lbvm;

    .line 1
    invoke-virtual {v1}, Lbvm;->b()Lbvl;

    move-result-object v1

    .line 2
    invoke-static {}, Lbqd;->b()Lbqc;

    iget-object v2, p0, Lbuq;->c:Leip;

    new-instance v3, Lbup;

    .line 3
    invoke-direct {v3, v0, v1, v2}, Lbup;-><init>(Leip;Lbvl;Leip;)V

    return-object v3
.end method
