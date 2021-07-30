.class final Lyq;
.super Lyp;
.source "PG"


# instance fields
.field final synthetic a:Lth;

.field final synthetic b:Lyr;


# direct methods
.method public constructor <init>(Lyr;Lth;)V
    .locals 0

    iput-object p1, p0, Lyq;->b:Lyr;

    iput-object p2, p0, Lyq;->a:Lth;

    invoke-direct {p0}, Lyp;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyo;)V
    .locals 2

    iget-object v0, p0, Lyq;->a:Lth;

    iget-object v1, p0, Lyq;->b:Lyr;

    iget-object v1, v1, Lyr;->b:Landroid/view/ViewGroup;

    .line 1
    invoke-virtual {v0, v1}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p1, p0}, Lyo;->b(Lyn;)V

    return-void
.end method
