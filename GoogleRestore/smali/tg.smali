.class final Ltg;
.super Ltl;
.source "PG"


# instance fields
.field final synthetic a:Lth;


# direct methods
.method public constructor <init>(Lth;)V
    .locals 0

    iput-object p1, p0, Ltg;->a:Lth;

    iget p1, p1, Lth;->j:I

    .line 1
    invoke-direct {p0, p1}, Ltl;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ltg;->a:Lth;

    .line 2
    invoke-virtual {v0, p1}, Lto;->c(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final b(I)V
    .locals 1

    iget-object v0, p0, Ltg;->a:Lth;

    .line 3
    invoke-virtual {v0, p1}, Lto;->d(I)Ljava/lang/Object;

    return-void
.end method
