.class final Lbrb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbsi;


# instance fields
.field public final a:Leip;

.field private final b:Lbtr;

.field private final c:Leip;


# direct methods
.method public constructor <init>(Lbtr;Leip;Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbrb;->b:Lbtr;

    iput-object p2, p0, Lbrb;->a:Leip;

    iput-object p3, p0, Lbrb;->c:Leip;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lbrb;->b:Lbtr;

    .line 1
    invoke-virtual {v0}, Lbtr;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lbrb;->c:Leip;

    .line 4
    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxx;

    invoke-virtual {v0}, Lbxx;->a()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lbrb;->a:Leip;

    check-cast v0, Lbwo;

    .line 2
    invoke-virtual {v0}, Lbwo;->b()Lcqu;

    move-result-object v0

    invoke-virtual {v0}, Lcqu;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcqu;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwf;

    invoke-virtual {v0}, Lbwf;->d()V

    :cond_0
    return-void
.end method
