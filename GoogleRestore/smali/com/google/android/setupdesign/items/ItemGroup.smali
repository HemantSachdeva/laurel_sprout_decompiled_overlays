.class public Lcom/google/android/setupdesign/items/ItemGroup;
.super Lcom/google/android/setupdesign/items/AbstractItemHierarchy;
.source "PG"

# interfaces
.implements Lcmt;
.implements Lcmr;


# instance fields
.field public final a:Ljava/util/List;

.field public b:Z

.field private final c:Landroid/util/SparseIntArray;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->a:Ljava/util/List;

    new-instance v0, Landroid/util/SparseIntArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->c:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->d:I

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->a:Ljava/util/List;

    new-instance p1, Landroid/util/SparseIntArray;

    .line 6
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->c:Landroid/util/SparseIntArray;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->d:I

    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->b:Z

    return-void
.end method

.method private final b(Lcms;)I
    .locals 5

    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->a:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_1

    .line 14
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    goto :goto_1

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 15
    :goto_1
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/ItemGroup;->b()V

    if-eq v2, v3, :cond_4

    iget-object p1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->a:Ljava/util/List;

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, -0x1

    :goto_2
    if-gez v0, :cond_2

    if-ge v2, p1, :cond_2

    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->c:Landroid/util/SparseIntArray;

    .line 17
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-ltz v0, :cond_3

    move v3, v0

    goto :goto_3

    .line 18
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ItemGroup;->X()I

    move-result p1

    return p1

    :cond_4
    nop

    .line 17
    :goto_3
    return v3
.end method

.method private final b()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->b:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->d:I

    iget-object v1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->c:Landroid/util/SparseIntArray;

    .line 40
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/setupdesign/items/ItemGroup;->a:Ljava/util/List;

    .line 41
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/setupdesign/items/ItemGroup;->a:Ljava/util/List;

    .line 42
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcms;

    .line 43
    invoke-interface {v2}, Lcms;->X()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/setupdesign/items/ItemGroup;->c:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/google/android/setupdesign/items/ItemGroup;->d:I

    .line 44
    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    iget v3, p0, Lcom/google/android/setupdesign/items/ItemGroup;->d:I

    .line 45
    invoke-interface {v2}, Lcms;->X()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/setupdesign/items/ItemGroup;->d:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->b:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final X()I
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/ItemGroup;->b()V

    iget v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->d:I

    return v0
.end method

.method public final a(I)Lcmo;
    .locals 5

    .line 20
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/ItemGroup;->b()V

    if-ltz p1, :cond_4

    iget v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->d:I

    if-ge p1, v0, :cond_4

    .line 21
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->c:Landroid/util/SparseIntArray;

    .line 22
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v1, :cond_2

    add-int v3, v2, v1

    ushr-int/lit8 v3, v3, 0x1

    .line 23
    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-ge v4, p1, :cond_0

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_0

    :cond_0
    if-le v4, p1, :cond_1

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    goto :goto_1

    .line 29
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 25
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 24
    :goto_1
    if-ltz v0, :cond_3

    .line 26
    iget-object v1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->a:Ljava/util/List;

    .line 27
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcms;

    iget-object v2, p0, Lcom/google/android/setupdesign/items/ItemGroup;->c:Landroid/util/SparseIntArray;

    .line 28
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    sub-int/2addr p1, v0

    .line 29
    invoke-interface {v1, p1}, Lcms;->a(I)Lcmo;

    move-result-object p1

    return-object p1

    .line 24
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    const-string v0, "Cannot have item start index < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->d:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x23

    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; index="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final a(Lcms;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->b:Z

    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->a:Ljava/util/List;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {p1, p0}, Lcms;->a(Lcmr;)V

    .line 9
    invoke-interface {p1}, Lcms;->X()I

    move-result v0

    if-lez v0, :cond_0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/ItemGroup;->b(Lcms;)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->a(II)V

    :cond_0
    return-void
.end method

.method public final a(Lcms;I)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/ItemGroup;->b(Lcms;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/2addr v0, p2

    .line 32
    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->c(I)V

    return-void

    .line 33
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x18

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unexpected child change "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ItemGroup"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Lcms;II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->b:Z

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/ItemGroup;->b(Lcms;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/2addr v0, p2

    .line 35
    invoke-virtual {p0, v0, p3}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->a(II)V

    return-void

    .line 36
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x18

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unexpected child insert "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ItemGroup"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final ad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->b:Z

    .line 30
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->d()V

    return-void
.end method

.method public final b(I)Lcms;
    .locals 4

    iget v0, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->g:I

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_1
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Lcms;

    .line 12
    invoke-interface {v3, p1}, Lcms;->b(I)Lcms;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    if-eqz v3, :cond_1

    return-object v3

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lcms;II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->b:Z

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/ItemGroup;->b(Lcms;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/2addr v0, p2

    .line 38
    invoke-virtual {p0, v0, p3}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->b(II)V

    return-void

    .line 39
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x18

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unexpected child remove "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ItemGroup"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
