.class final Lacf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laci;


# direct methods
.method public constructor <init>(Laci;)V
    .locals 0

    iput-object p1, p0, Lacf;->a:Laci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lacf;->a:Laci;

    iget-object v0, v0, Laci;->c:Ljava/util/HashMap;

    .line 1
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lacg;

    .line 2
    iget-object v2, v1, Lacg;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 3
    check-cast v6, Lach;

    .line 4
    iget-object v7, v6, Lach;->d:Lacl;

    if-nez v7, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    iget-object v8, v1, Lacg;->b:Labr;

    if-nez v8, :cond_1

    .line 5
    iget-object v8, v1, Lacg;->a:Landroid/graphics/Bitmap;

    iput-object v8, v6, Lach;->a:Landroid/graphics/Bitmap;

    .line 6
    invoke-virtual {v7, v6, v4}, Lacl;->a(Lach;Z)V

    .line 4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lacf;->a:Laci;

    iget-object v0, v0, Laci;->c:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lacf;->a:Laci;

    const/4 v1, 0x0

    iput-object v1, v0, Laci;->d:Ljava/lang/Runnable;

    return-void
.end method
