.class public final Lcmq;
.super Landroid/widget/BaseAdapter;
.source "PG"

# interfaces
.implements Lcmr;


# instance fields
.field private final a:Lcms;

.field private final b:Lcmp;


# direct methods
.method public constructor <init>(Lcms;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lcmp;

    .line 2
    invoke-direct {v0}, Lcmp;-><init>()V

    iput-object v0, p0, Lcmq;->b:Lcmp;

    iput-object p1, p0, Lcmq;->a:Lcms;

    .line 3
    invoke-interface {p1, p0}, Lcms;->a(Lcmr;)V

    .line 4
    invoke-direct {p0}, Lcmq;->b()V

    return-void
.end method

.method private final b()V
    .locals 5

    const/4 v0, 0x0

    .line 21
    :goto_0
    invoke-virtual {p0}, Lcmq;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 22
    invoke-virtual {p0, v0}, Lcmq;->a(I)Lcmo;

    move-result-object v1

    iget-object v2, p0, Lcmq;->b:Lcmp;

    .line 23
    invoke-interface {v1}, Lcmo;->e()I

    move-result v1

    iget-object v3, v2, Lcmp;->a:Landroid/util/SparseIntArray;

    .line 24
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_0

    iget-object v3, v2, Lcmp;->a:Landroid/util/SparseIntArray;

    iget v4, v2, Lcmp;->b:I

    .line 25
    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget v3, v2, Lcmp;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcmp;->b:I

    :cond_0
    iget-object v2, v2, Lcmp;->a:Landroid/util/SparseIntArray;

    .line 26
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(I)Lcmo;
    .locals 1

    iget-object v0, p0, Lcmq;->a:Lcms;

    .line 6
    invoke-interface {v0, p1}, Lcms;->a(I)Lcmo;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcms;I)V
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcmq;->ad()V

    return-void
.end method

.method public final a(Lcms;II)V
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcmq;->ad()V

    return-void
.end method

.method public final ad()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcmq;->b()V

    .line 17
    invoke-virtual {p0}, Lcmq;->notifyDataSetChanged()V

    return-void
.end method

.method public final b(Lcms;II)V
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcmq;->ad()V

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcmq;->a:Lcms;

    .line 5
    invoke-interface {v0}, Lcms;->X()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcmq;->a(I)Lcmo;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 7
    invoke-virtual {p0, p1}, Lcmq;->a(I)Lcmo;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Lcmo;->e()I

    move-result p1

    iget-object v0, p0, Lcmq;->b:Lcmp;

    iget-object v0, v0, Lcmp;->a:Landroid/util/SparseIntArray;

    .line 9
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 10
    invoke-virtual {p0, p1}, Lcmq;->a(I)Lcmo;

    move-result-object p1

    if-nez p2, :cond_0

    .line 11
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 12
    invoke-interface {p1}, Lcmo;->e()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 13
    :cond_0
    nop

    :goto_0
    invoke-interface {p1, p2}, Lcmo;->a(Landroid/view/View;)V

    return-object p2
.end method

.method public final getViewTypeCount()I
    .locals 1

    iget-object v0, p0, Lcmq;->b:Lcmp;

    iget-object v0, v0, Lcmp;->a:Landroid/util/SparseIntArray;

    .line 14
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcmq;->a(I)Lcmo;

    move-result-object p1

    invoke-interface {p1}, Lcmo;->b()Z

    move-result p1

    return p1
.end method
