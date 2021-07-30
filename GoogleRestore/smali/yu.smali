.class final Lyu;
.super Lyp;
.source "PG"


# instance fields
.field final a:Lyv;


# direct methods
.method public constructor <init>(Lyv;)V
    .locals 0

    invoke-direct {p0}, Lyp;-><init>()V

    iput-object p1, p0, Lyu;->a:Lyv;

    return-void
.end method


# virtual methods
.method public final a(Lyo;)V
    .locals 2

    iget-object v0, p0, Lyu;->a:Lyv;

    iget v1, v0, Lyv;->n:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lyv;->n:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lyv;->o:Z

    .line 1
    invoke-virtual {v0}, Lyo;->e()V

    .line 2
    :cond_0
    invoke-virtual {p1, p0}, Lyo;->b(Lyn;)V

    return-void
.end method

.method public final b(Lyo;)V
    .locals 1

    iget-object p1, p0, Lyu;->a:Lyv;

    iget-boolean v0, p1, Lyv;->o:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lyo;->d()V

    iget-object p1, p0, Lyu;->a:Lyv;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lyv;->o:Z

    :cond_0
    return-void
.end method
