.class final Leed;
.super Ledf;
.source "PG"


# instance fields
.field final synthetic a:Lebe;

.field final synthetic b:Leee;


# direct methods
.method public constructor <init>(Leee;Lebe;)V
    .locals 0

    iput-object p1, p0, Leed;->b:Leee;

    iput-object p2, p0, Leed;->a:Lebe;

    invoke-direct {p0}, Ledf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldyv;Ldxt;)V
    .locals 2

    iget-object v0, p0, Leed;->b:Leee;

    iget-object v0, v0, Leee;->b:Leef;

    iget-object v0, v0, Leef;->a:Leap;

    .line 1
    invoke-virtual {p1}, Ldyv;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Leap;->a(Z)V

    iget-object v0, p0, Leed;->a:Lebe;

    .line 2
    invoke-interface {v0, p1, p2}, Lebe;->a(Ldyv;Ldxt;)V

    return-void
.end method

.method public final a(Ldyv;Lebd;Ldxt;)V
    .locals 2

    iget-object v0, p0, Leed;->b:Leee;

    iget-object v0, v0, Leee;->b:Leef;

    iget-object v0, v0, Leef;->a:Leap;

    .line 3
    invoke-virtual {p1}, Ldyv;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Leap;->a(Z)V

    iget-object v0, p0, Leed;->a:Lebe;

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lebe;->a(Ldyv;Lebd;Ldxt;)V

    return-void
.end method

.method protected final b()Lebe;
    .locals 1

    iget-object v0, p0, Leed;->a:Lebe;

    return-object v0
.end method
