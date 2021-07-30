.class public final Lcom/android/car/ui/baselayout/Insets;
.super Ljava/lang/Object;
.source "Insets.java"


# instance fields
.field private final mBottom:I

.field private final mLeft:I

.field private final mRight:I

.field private final mTop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/android/car/ui/baselayout/Insets;->mBottom:I

    iput v0, p0, Lcom/android/car/ui/baselayout/Insets;->mTop:I

    iput v0, p0, Lcom/android/car/ui/baselayout/Insets;->mRight:I

    iput v0, p0, Lcom/android/car/ui/baselayout/Insets;->mLeft:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/android/car/ui/baselayout/Insets;->mLeft:I

    .line 39
    iput p3, p0, Lcom/android/car/ui/baselayout/Insets;->mRight:I

    .line 40
    iput p2, p0, Lcom/android/car/ui/baselayout/Insets;->mTop:I

    .line 41
    iput p4, p0, Lcom/android/car/ui/baselayout/Insets;->mBottom:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 69
    const-class v2, Lcom/android/car/ui/baselayout/Insets;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 70
    :cond_1
    check-cast p1, Lcom/android/car/ui/baselayout/Insets;

    .line 71
    iget v2, p0, Lcom/android/car/ui/baselayout/Insets;->mLeft:I

    iget v3, p1, Lcom/android/car/ui/baselayout/Insets;->mLeft:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/car/ui/baselayout/Insets;->mRight:I

    iget v3, p1, Lcom/android/car/ui/baselayout/Insets;->mRight:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/car/ui/baselayout/Insets;->mTop:I

    iget v3, p1, Lcom/android/car/ui/baselayout/Insets;->mTop:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/android/car/ui/baselayout/Insets;->mBottom:I

    iget p1, p1, Lcom/android/car/ui/baselayout/Insets;->mBottom:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getBottom()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/car/ui/baselayout/Insets;->mBottom:I

    return p0
.end method

.method public getLeft()I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/car/ui/baselayout/Insets;->mLeft:I

    return p0
.end method

.method public getRight()I
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/car/ui/baselayout/Insets;->mRight:I

    return p0
.end method

.method public getTop()I
    .locals 0

    .line 53
    iget p0, p0, Lcom/android/car/ui/baselayout/Insets;->mTop:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 79
    iget v1, p0, Lcom/android/car/ui/baselayout/Insets;->mLeft:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/car/ui/baselayout/Insets;->mRight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/car/ui/baselayout/Insets;->mTop:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/car/ui/baselayout/Insets;->mBottom:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ left: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/ui/baselayout/Insets;->mLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/ui/baselayout/Insets;->mRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/ui/baselayout/Insets;->mTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/car/ui/baselayout/Insets;->mBottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
