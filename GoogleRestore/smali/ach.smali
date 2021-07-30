.class public final Lach;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public final b:Ljava/lang/String;

.field final synthetic c:Laci;

.field public final d:Lacl;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Laci;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lacl;)V
    .locals 0

    iput-object p1, p0, Lach;->c:Laci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lach;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lach;->b:Ljava/lang/String;

    iput-object p4, p0, Lach;->e:Ljava/lang/String;

    iput-object p5, p0, Lach;->d:Lacl;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-static {}, Lbir;->d()V

    iget-object v0, p0, Lach;->d:Lacl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lach;->c:Laci;

    iget-object v0, v0, Laci;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lach;->e:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacg;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p0}, Lacg;->a(Lach;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lach;->c:Laci;

    iget-object v0, v0, Laci;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lach;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v0, p0, Lach;->c:Laci;

    iget-object v0, v0, Laci;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lach;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacg;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p0}, Lacg;->a(Lach;)Z

    iget-object v0, v0, Lacg;->c:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lach;->c:Laci;

    iget-object v0, v0, Laci;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lach;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 4
    :cond_2
    return-void
.end method
