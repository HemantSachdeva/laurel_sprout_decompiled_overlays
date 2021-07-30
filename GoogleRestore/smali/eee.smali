.class final Leee;
.super Lede;
.source "PG"


# instance fields
.field final synthetic a:Lebc;

.field final synthetic b:Leef;


# direct methods
.method public constructor <init>(Leef;Lebc;)V
    .locals 0

    iput-object p1, p0, Leee;->b:Leef;

    iput-object p2, p0, Leee;->a:Lebc;

    invoke-direct {p0}, Lede;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lebe;)V
    .locals 1

    iget-object v0, p0, Leee;->b:Leef;

    iget-object v0, v0, Leef;->a:Leap;

    .line 1
    invoke-virtual {v0}, Leap;->a()V

    new-instance v0, Leed;

    .line 2
    invoke-direct {v0, p0, p1}, Leed;-><init>(Leee;Lebe;)V

    iget-object p1, p0, Leee;->a:Lebc;

    .line 3
    invoke-interface {p1, v0}, Lebc;->a(Lebe;)V

    return-void
.end method

.method protected final b()Lebc;
    .locals 1

    iget-object v0, p0, Leee;->a:Lebc;

    return-object v0
.end method
