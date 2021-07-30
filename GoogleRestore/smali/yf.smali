.class final Lyf;
.super Lyp;
.source "PG"


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Lyi;


# direct methods
.method public constructor <init>(Lyi;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lyf;->g:Lyi;

    iput-object p2, p0, Lyf;->a:Ljava/lang/Object;

    iput-object p3, p0, Lyf;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lyf;->c:Ljava/lang/Object;

    iput-object p5, p0, Lyf;->d:Ljava/util/ArrayList;

    iput-object p6, p0, Lyf;->e:Ljava/lang/Object;

    iput-object p7, p0, Lyf;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Lyp;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyo;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lyo;->b(Lyn;)V

    return-void
.end method

.method public final b(Lyo;)V
    .locals 3

    iget-object p1, p0, Lyf;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lyf;->g:Lyi;

    iget-object v2, p0, Lyf;->b:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1, p1, v2, v0}, Lyi;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget-object p1, p0, Lyf;->c:Ljava/lang/Object;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lyf;->g:Lyi;

    iget-object v2, p0, Lyf;->d:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1, p1, v2, v0}, Lyi;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    iget-object p1, p0, Lyf;->e:Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lyf;->g:Lyi;

    iget-object v2, p0, Lyf;->f:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1, p1, v2, v0}, Lyi;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
