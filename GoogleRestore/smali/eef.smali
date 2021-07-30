.class final Leef;
.super Ledg;
.source "PG"


# instance fields
.field public final a:Leap;

.field private final b:Lebm;


# direct methods
.method public constructor <init>(Lebm;Leap;)V
    .locals 0

    invoke-direct {p0}, Ledg;-><init>()V

    iput-object p1, p0, Leef;->b:Lebm;

    iput-object p2, p0, Leef;->a:Leap;

    return-void
.end method


# virtual methods
.method public final a(Ldxx;Ldxt;Ldvh;)Lebc;
    .locals 1

    iget-object v0, p0, Leef;->b:Lebm;

    .line 1
    invoke-interface {v0, p1, p2, p3}, Lebm;->a(Ldxx;Ldxt;Ldvh;)Lebc;

    move-result-object p1

    new-instance p2, Leee;

    .line 2
    invoke-direct {p2, p0, p1}, Leee;-><init>(Leef;Lebc;)V

    return-object p2
.end method

.method protected final c()Lebm;
    .locals 1

    iget-object v0, p0, Leef;->b:Lebm;

    return-object v0
.end method
