.class public final Lcmy;
.super Lqc;
.source "PG"

# interfaces
.implements Lcmr;


# instance fields
.field public final c:Lcms;

.field public final d:Z

.field public e:Lcmw;


# direct methods
.method public constructor <init>(Lcms;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqc;-><init>()V

    iput-boolean p2, p0, Lcmy;->d:Z

    iput-object p1, p0, Lcmy;->c:Lcms;

    .line 2
    invoke-interface {p1, p0}, Lcms;->a(Lcmr;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcmy;->c:Lcms;

    .line 5
    invoke-interface {v0}, Lcms;->X()I

    move-result v0

    return v0
.end method

.method public final a(I)I
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcmy;->d(I)Lcmo;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Lcmo;->e()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic a(Landroid/view/ViewGroup;I)Lqz;
    .locals 9

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcmu;

    invoke-direct {v0, p2}, Lcmu;-><init>(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "noBackground"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lcmi;->o:[I

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v3, :cond_0

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v6, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcmy;->d:Z

    if-eqz v6, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v6

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lclu;->z:Lclu;

    invoke-virtual {v6, v7, v8}, Lclv;->a(Landroid/content/Context;Lclu;)I

    move-result v6

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v6, v7

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_2
    :goto_0
    if-eqz v3, :cond_4

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    new-array v4, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v1

    aput-object v3, v4, v2

    new-instance v1, Lcmx;

    invoke-direct {v1, v4}, Lcmx;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x49

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot resolve required attributes. selectableItemBackground="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " background="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerItemAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    new-instance p1, Lcmv;

    invoke-direct {p1, p0, v0}, Lcmv;-><init>(Lcmy;Lcmu;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public final a(Lcms;I)V
    .locals 0

    .line 12
    invoke-virtual {p0, p2}, Lqc;->c(I)V

    return-void
.end method

.method public final a(Lcms;II)V
    .locals 0

    .line 13
    invoke-virtual {p0, p2, p3}, Lqc;->a(II)V

    return-void
.end method

.method public final bridge synthetic a(Lqz;I)V
    .locals 2

    check-cast p1, Lcmu;

    invoke-virtual {p0, p2}, Lcmy;->d(I)Lcmo;

    move-result-object p2

    invoke-interface {p2}, Lcmo;->b()Z

    move-result v0

    iput-boolean v0, p1, Lcmu;->q:Z

    iget-object v1, p1, Lcmu;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p1, Lcmu;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p1, Lcmu;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    iput-object p2, p1, Lcmu;->r:Lcmo;

    iget-object p1, p1, Lcmu;->a:Landroid/view/View;

    invoke-interface {p2, p1}, Lcmo;->a(Landroid/view/View;)V

    return-void
.end method

.method public final ad()V
    .locals 0

    .line 11
    invoke-virtual {p0}, Lqc;->b()V

    return-void
.end method

.method public final b(I)J
    .locals 3

    .line 6
    invoke-virtual {p0, p1}, Lcmy;->d(I)Lcmo;

    move-result-object p1

    .line 7
    instance-of v0, p1, Lcom/google/android/setupdesign/items/AbstractItem;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/google/android/setupdesign/items/AbstractItem;

    iget p1, p1, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->g:I

    if-lez p1, :cond_0

    int-to-long v0, p1

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public final b(Lcms;II)V
    .locals 0

    .line 14
    invoke-virtual {p0, p2, p3}, Lqc;->b(II)V

    return-void
.end method

.method public final d(I)Lcmo;
    .locals 1

    iget-object v0, p0, Lcmy;->c:Lcms;

    .line 4
    invoke-interface {v0, p1}, Lcms;->a(I)Lcmo;

    move-result-object p1

    return-object p1
.end method

.method public final e(I)Lcms;
    .locals 1

    iget-object v0, p0, Lcmy;->c:Lcms;

    .line 3
    invoke-interface {v0, p1}, Lcms;->b(I)Lcms;

    move-result-object p1

    return-object p1
.end method
